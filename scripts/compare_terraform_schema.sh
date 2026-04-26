#!/bin/bash
# Compare Terraform provider schemas between two git refs
#
# Usage: ./scripts/compare_terraform_schema.sh <old_ref> <new_ref>
# Example: ./scripts/compare_terraform_schema.sh v0.13.0 main
#
# This script:
# 1. Builds the provider at each git ref
# 2. Extracts the Terraform schema using `terraform providers schema -json`
# 3. Compares the schemas and outputs differences
#
# Requirements:
# - Go (for building the provider)
# - Terraform CLI
# - jq (for JSON processing)

set -e

OLD_REF="${1:-v0.13.0}"
NEW_REF="${2:-main}"

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"
WORK_DIR="/tmp/terraform-schema-compare"

echo "=== Terraform Provider Schema Comparison ==="
echo "Comparing: $OLD_REF -> $NEW_REF"
echo ""

# Check dependencies
for cmd in go terraform jq; do
    if ! command -v $cmd &> /dev/null; then
        echo "Error: $cmd is required but not installed."
        exit 1
    fi
done

# Create work directory
rm -rf "$WORK_DIR"
mkdir -p "$WORK_DIR"/{old,new}

# Function to build provider and extract schema at a given ref
extract_schema() {
    local ref="$1"
    local output_dir="$2"
    local schema_file="$output_dir/schema.json"
    
    echo "--- Processing $ref ---"
    
    # Save current branch/state
    local current_branch=$(git rev-parse --abbrev-ref HEAD 2>/dev/null || echo "detached")
    local current_commit=$(git rev-parse HEAD)
    
    # Checkout the ref
    echo "Checking out $ref..."
    git checkout "$ref" --quiet 2>/dev/null || git checkout "$ref" --quiet
    
    # Build the provider
    echo "Building provider..."
    go build -o "$output_dir/terraform-provider-airbyte" . 2>/dev/null
    
    # Create a minimal terraform config to extract schema
    cat > "$output_dir/main.tf" << 'EOF'
terraform {
  required_providers {
    airbyte = {
      source = "airbytehq/airbyte"
    }
  }
}
EOF

    # Create dev overrides to use local provider
    mkdir -p "$output_dir/.terraform.d"
    cat > "$output_dir/.terraform.d/dev.tfrc" << EOF
provider_installation {
  dev_overrides {
    "airbytehq/airbyte" = "$output_dir"
  }
  direct {}
}
EOF

    # Extract schema
    echo "Extracting schema..."
    cd "$output_dir"
    TF_CLI_CONFIG_FILE="$output_dir/.terraform.d/dev.tfrc" terraform providers schema -json > "$schema_file" 2>/dev/null || {
        echo "Warning: Could not extract schema for $ref"
        echo "{}" > "$schema_file"
    }
    cd "$REPO_ROOT"
    
    # Return to original state
    git checkout "$current_commit" --quiet 2>/dev/null || true
    if [ "$current_branch" != "detached" ] && [ "$current_branch" != "HEAD" ]; then
        git checkout "$current_branch" --quiet 2>/dev/null || true
    fi
    
    echo "Schema extracted to $schema_file"
    echo ""
}

cd "$REPO_ROOT"

# Extract schemas for both refs
extract_schema "$OLD_REF" "$WORK_DIR/old"
extract_schema "$NEW_REF" "$WORK_DIR/new"

# Compare schemas
echo "=== Schema Comparison ==="
echo ""

OLD_SCHEMA="$WORK_DIR/old/schema.json"
NEW_SCHEMA="$WORK_DIR/new/schema.json"

# Extract resource and data source names
echo "--- Resources ---"
echo "Old ($OLD_REF):"
jq -r '.provider_schemas["registry.terraform.io/airbytehq/airbyte"].resource_schemas | keys[]' "$OLD_SCHEMA" 2>/dev/null | sort > "$WORK_DIR/old_resources.txt" || echo "(none)"
cat "$WORK_DIR/old_resources.txt" | wc -l | xargs echo "  Count:"

echo "New ($NEW_REF):"
jq -r '.provider_schemas["registry.terraform.io/airbytehq/airbyte"].resource_schemas | keys[]' "$NEW_SCHEMA" 2>/dev/null | sort > "$WORK_DIR/new_resources.txt" || echo "(none)"
cat "$WORK_DIR/new_resources.txt" | wc -l | xargs echo "  Count:"

echo ""
echo "--- Added Resources ---"
comm -13 "$WORK_DIR/old_resources.txt" "$WORK_DIR/new_resources.txt" | head -50

echo ""
echo "--- Removed Resources ---"
comm -23 "$WORK_DIR/old_resources.txt" "$WORK_DIR/new_resources.txt" | head -50

echo ""
echo "--- Data Sources ---"
echo "Old ($OLD_REF):"
jq -r '.provider_schemas["registry.terraform.io/airbytehq/airbyte"].data_source_schemas | keys[]' "$OLD_SCHEMA" 2>/dev/null | sort > "$WORK_DIR/old_datasources.txt" || echo "(none)"
cat "$WORK_DIR/old_datasources.txt" | wc -l | xargs echo "  Count:"

echo "New ($NEW_REF):"
jq -r '.provider_schemas["registry.terraform.io/airbytehq/airbyte"].data_source_schemas | keys[]' "$NEW_SCHEMA" 2>/dev/null | sort > "$WORK_DIR/new_datasources.txt" || echo "(none)"
cat "$WORK_DIR/new_datasources.txt" | wc -l | xargs echo "  Count:"

echo ""
echo "--- Added Data Sources ---"
comm -13 "$WORK_DIR/old_datasources.txt" "$WORK_DIR/new_datasources.txt" | head -50

echo ""
echo "--- Removed Data Sources ---"
comm -23 "$WORK_DIR/old_datasources.txt" "$WORK_DIR/new_datasources.txt" | head -50

# Output full schema files for detailed comparison
echo ""
echo "=== Full Schema Files ==="
echo "Old schema: $OLD_SCHEMA"
echo "New schema: $NEW_SCHEMA"
echo ""
echo "For detailed attribute comparison, use:"
echo "  diff <(jq -S . $OLD_SCHEMA) <(jq -S . $NEW_SCHEMA)"
echo ""
echo "Or for a specific resource:"
echo "  jq '.provider_schemas[\"registry.terraform.io/airbytehq/airbyte\"].resource_schemas[\"airbyte_connection\"]' $OLD_SCHEMA"
echo "  jq '.provider_schemas[\"registry.terraform.io/airbytehq/airbyte\"].resource_schemas[\"airbyte_connection\"]' $NEW_SCHEMA"
