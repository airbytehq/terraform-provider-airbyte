#!/usr/bin/env python3
"""Patch provider.go and utils.go to add Google IAP authentication support.

After Speakeasy regenerates these files, this script re-applies the IAP
authentication integration (schema attributes, model fields, transport config).

This addresses:
- Issue #207: Google IAP proxy authentication support
- Issue #198: Bearer auth fix (now handled by generated code, but this script
  ensures the IAP transport layer is present)

Usage:
    python3 scripts/patch_iap_auth.py
"""

from __future__ import annotations

import re
import sys
from pathlib import Path

PROVIDER_PATH = Path("internal/provider/provider.go")
UTILS_PATH = Path("internal/provider/utils.go")


def patch_provider_model(content: str) -> str:
    """Add GoogleIAP nested field to AirbyteProviderModel struct."""
    marker = "GoogleIAP "
    if marker in content:
        print("  Skipping model field (already present)")
        return content

    # Find the closing brace of AirbyteProviderModel
    struct_start = content.find("type AirbyteProviderModel struct {")
    if struct_start == -1:
        print("WARNING: Could not find AirbyteProviderModel struct", file=sys.stderr)
        return content

    # Find the closing brace of the struct
    brace_depth = 0
    i = content.find("{", struct_start)
    for i in range(i, len(content)):
        if content[i] == "{":
            brace_depth += 1
        elif content[i] == "}":
            brace_depth -= 1
            if brace_depth == 0:
                break

    # Insert the nested model pointer before the closing brace
    insert = '\tGoogleIAP *GoogleIAPModel `tfsdk:"google_iap"`\n'

    last_newline = content.rfind("\n", struct_start, i)
    content = content[: last_newline + 1] + insert + content[last_newline + 1 :]
    print("  Added GoogleIAP nested field to AirbyteProviderModel")
    return content


def patch_provider_schema(content: str) -> str:
    """Add google_iap SingleNestedAttribute to the provider Schema function."""
    marker = '"google_iap": schema.SingleNestedAttribute{'
    if marker in content:
        print("  Skipping schema attribute (already present)")
        return content

    # Insert new attribute inside the Attributes map, before the map's closing "},".
    # The generated structure uses tabs:
    #   \t\tAttributes: map[string]schema.Attribute{
    #       \t\t\t"username": schema.StringAttribute{
    #           ...
    #       \t\t\t},
    #   \t\t},
    #   \t\tMarkdownDescription: ...
    #
    # We look for the pattern of the last attribute's closing "},\n" followed by
    # the Attributes map closing "\t\t},\n\t\tMarkdownDescription".

    # Match the closing of the Attributes map: a line with just "},", followed
    # by the MarkdownDescription line.
    pattern = r"(\n(\t\t\t)\},\n)(\t\t\},\n\t\tMarkdownDescription:)"
    match = re.search(pattern, content)
    if not match:
        # Fallback: find "\t\t}," followed by "MarkdownDescription"
        fallback = "\t\t},\n\t\tMarkdownDescription:"
        fb_idx = content.find(fallback)
        if fb_idx == -1:
            print("WARNING: Could not find Attributes map closing pattern", file=sys.stderr)
            return content
        insert_point = fb_idx
    else:
        # Insert after the last attribute closing (match.group(1)) and before
        # the map closing (match.group(3))
        insert_point = match.start() + len(match.group(1))

    insert = '''\t\t\t"google_iap": schema.SingleNestedAttribute{
\t\t\t\tOptional:    true,
\t\t\t\tDescription: `Google Identity-Aware Proxy (IAP) authentication. When set, the provider automatically obtains and refreshes IAP tokens for all API requests.`,
\t\t\t\tAttributes: map[string]schema.Attribute{
\t\t\t\t\t"service_account_key": schema.StringAttribute{
\t\t\t\t\t\tRequired:    true,
\t\t\t\t\t\tSensitive:   true,
\t\t\t\t\t\tDescription: `Google Service Account JSON key for IAP authentication (content or file path).`,
\t\t\t\t\t},
\t\t\t\t\t"client_id": schema.StringAttribute{
\t\t\t\t\t\tRequired:    true,
\t\t\t\t\t\tDescription: `OAuth2 Client ID configured for Google IAP.`,
\t\t\t\t\t},
\t\t\t\t},
\t\t\t},
'''

    content = content[:insert_point] + insert + content[insert_point:]
    print("  Added google_iap SingleNestedAttribute to schema")
    return content


def patch_provider_transport_opts(content: str) -> str:
    """Pass IAP config from nested block to ProviderHTTPTransportOpts."""
    marker = "data.GoogleIAP"
    if marker in content:
        print("  Skipping transport opts (already present)")
        return content

    # Find the ProviderHTTPTransportOpts initialization closing
    target = "providerHTTPTransportOpts := ProviderHTTPTransportOpts{"
    idx = content.find(target)
    if idx == -1:
        print(
            "WARNING: Could not find ProviderHTTPTransportOpts initialization",
            file=sys.stderr,
        )
        return content

    # Find the closing brace of this struct literal
    brace_start = content.find("{", idx)
    brace_depth = 0
    close_idx = brace_start
    for close_idx in range(brace_start, len(content)):
        if content[close_idx] == "{":
            brace_depth += 1
        elif content[close_idx] == "}":
            brace_depth -= 1
            if brace_depth == 0:
                break

    # Find the end of the struct literal line (after closing brace)
    line_end = content.find("\n", close_idx)

    # Insert conditional IAP config after the struct literal
    insert = """
\tif data.GoogleIAP != nil {
\t\tproviderHTTPTransportOpts.GoogleIAPServiceAccountKey = data.GoogleIAP.ServiceAccountKey.ValueString()
\t\tproviderHTTPTransportOpts.GoogleIAPClientID = data.GoogleIAP.ClientID.ValueString()
\t}
"""
    content = content[: line_end + 1] + insert + content[line_end + 1 :]
    print("  Added IAP nested config extraction to ProviderHTTPTransportOpts")
    return content


def patch_utils_transport_opts_struct(content: str) -> str:
    """Add IAP fields to ProviderHTTPTransportOpts struct in utils.go."""
    marker = "GoogleIAPServiceAccountKey string"
    if marker in content:
        print("  Skipping ProviderHTTPTransportOpts fields (already present)")
        return content

    # Find the struct
    target = "type ProviderHTTPTransportOpts struct {"
    idx = content.find(target)
    if idx == -1:
        print(
            "WARNING: Could not find ProviderHTTPTransportOpts struct in utils.go",
            file=sys.stderr,
        )
        return content

    # Find closing brace
    brace_start = content.find("{", idx)
    brace_depth = 0
    close_idx = brace_start
    for close_idx in range(brace_start, len(content)):
        if content[close_idx] == "{":
            brace_depth += 1
        elif content[close_idx] == "}":
            brace_depth -= 1
            if brace_depth == 0:
                break

    insert = (
        "\n\t// Google IAP Service Account Key (JSON content or file path)\n"
        "\tGoogleIAPServiceAccountKey string\n"
        "\n\t// Google IAP Client ID (OAuth2 Client ID configured for IAP)\n"
        "\tGoogleIAPClientID string\n"
    )

    content = content[:close_idx] + insert + content[close_idx:]
    print("  Added IAP fields to ProviderHTTPTransportOpts struct")
    return content


def patch_utils_transport_struct(content: str) -> str:
    """Add iapManager field to providerHttpTransport struct."""
    marker = "iapManager *IAPTokenManager"
    if marker in content:
        print("  Skipping providerHttpTransport field (already present)")
        return content

    target = "type providerHttpTransport struct {"
    idx = content.find(target)
    if idx == -1:
        print(
            "WARNING: Could not find providerHttpTransport struct",
            file=sys.stderr,
        )
        return content

    brace_start = content.find("{", idx)
    brace_depth = 0
    close_idx = brace_start
    for close_idx in range(brace_start, len(content)):
        if content[close_idx] == "{":
            brace_depth += 1
        elif content[close_idx] == "}":
            brace_depth -= 1
            if brace_depth == 0:
                break

    insert = "\tiapManager *IAPTokenManager\n"
    content = content[:close_idx] + insert + content[close_idx:]
    print("  Added iapManager to providerHttpTransport")
    return content


def patch_utils_new_transport(content: str) -> str:
    """Patch NewProviderHTTPTransport to initialize IAP manager."""
    marker = "NewIAPTokenManager("
    if marker in content:
        print("  Skipping NewProviderHTTPTransport (already patched)")
        return content

    # Find the function
    target = "func NewProviderHTTPTransport(opts ProviderHTTPTransportOpts) *providerHttpTransport {"
    idx = content.find(target)
    if idx == -1:
        print(
            "WARNING: Could not find NewProviderHTTPTransport function",
            file=sys.stderr,
        )
        return content

    # Find the return statement
    return_target = "return &providerHttpTransport{"
    return_idx = content.find(return_target, idx)
    if return_idx == -1:
        print("WARNING: Could not find return in NewProviderHTTPTransport", file=sys.stderr)
        return content

    # Insert IAP initialization before the return
    iap_init = """\tvar iapManager *IAPTokenManager
\tif opts.GoogleIAPServiceAccountKey != "" && opts.GoogleIAPClientID != "" {
\t\tvar err error
\t\tiapManager, err = NewIAPTokenManager(opts.GoogleIAPServiceAccountKey, opts.GoogleIAPClientID)
\t\tif err != nil {
\t\t\ttflog.Error(context.Background(), "Failed to initialize IAP token manager", map[string]interface{}{
\t\t\t\t"error": err.Error(),
\t\t\t})
\t\t}
\t}

"""
    content = content[:return_idx] + iap_init + content[return_idx:]

    # Now add iapManager to the return struct
    # Re-find the return after our insertion
    return_idx = content.find(return_target, idx)
    brace_start = content.find("{", return_idx)
    brace_depth = 0
    close_idx = brace_start
    for close_idx in range(brace_start, len(content)):
        if content[close_idx] == "{":
            brace_depth += 1
        elif content[close_idx] == "}":
            brace_depth -= 1
            if brace_depth == 0:
                break

    # Insert iapManager field before closing brace
    insert = "\t\tiapManager: iapManager,\n\t"
    last_nl = content.rfind("\n", brace_start, close_idx)
    content = content[: last_nl + 1] + insert + content[last_nl + 1 :]
    print("  Patched NewProviderHTTPTransport with IAP initialization")
    return content


def patch_utils_roundtrip(content: str) -> str:
    """Add IAP token injection to RoundTrip method."""
    marker = "t.iapManager.GetToken()"
    if marker in content:
        print("  Skipping RoundTrip (already patched)")
        return content

    # Find the RoundTrip function and insert after setRequestHeaders
    target = "t.setRequestHeaders(req)"
    idx = content.find(target)
    if idx == -1:
        print("WARNING: Could not find setRequestHeaders in RoundTrip", file=sys.stderr)
        return content

    # Find the end of this line
    line_end = content.find("\n", idx)

    iap_block = """

\t// Set IAP token if configured
\tif t.iapManager != nil {
\t\ttoken, err := t.iapManager.GetToken()
\t\tif err != nil {
\t\t\ttflog.Error(ctx, "Failed to get IAP token", map[string]interface{}{
\t\t\t\t"error": err.Error(),
\t\t\t})
\t\t} else if token != "" {
\t\t\treq.Header.Set("Authorization", "Bearer "+token)
\t\t}
\t}"""

    content = content[: line_end] + iap_block + content[line_end:]
    print("  Added IAP token injection to RoundTrip")
    return content


def main() -> None:
    if not PROVIDER_PATH.exists():
        print(f"ERROR: {PROVIDER_PATH} does not exist", file=sys.stderr)
        sys.exit(1)
    if not UTILS_PATH.exists():
        print(f"ERROR: {UTILS_PATH} does not exist", file=sys.stderr)
        sys.exit(1)

    # Patch provider.go
    print(f"Patching {PROVIDER_PATH}...")
    provider_content = PROVIDER_PATH.read_text()
    original_provider = provider_content
    provider_content = patch_provider_model(provider_content)
    provider_content = patch_provider_schema(provider_content)
    provider_content = patch_provider_transport_opts(provider_content)
    if provider_content != original_provider:
        PROVIDER_PATH.write_text(provider_content)
        print(f"  Written {PROVIDER_PATH}")
    else:
        print("  No changes needed for provider.go")

    # Patch utils.go
    print(f"Patching {UTILS_PATH}...")
    utils_content = UTILS_PATH.read_text()
    original_utils = utils_content
    utils_content = patch_utils_transport_opts_struct(utils_content)
    utils_content = patch_utils_transport_struct(utils_content)
    utils_content = patch_utils_new_transport(utils_content)
    utils_content = patch_utils_roundtrip(utils_content)
    if utils_content != original_utils:
        UTILS_PATH.write_text(utils_content)
        print(f"  Written {UTILS_PATH}")
    else:
        print("  No changes needed for utils.go")

    print("Done.")


if __name__ == "__main__":
    main()
