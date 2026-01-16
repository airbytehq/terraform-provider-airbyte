#!/bin/bash
# inject_custom_resources.sh
#
# This script injects hand-written custom resource registrations into the
# Speakeasy-generated provider.go file. Run this after `speakeasy run`.
#
# Custom resources cannot use the gen.yaml additionalResources mechanism
# because the "Validate Generation" CI check deletes all non-generated files
# before running Speakeasy, causing build failures.

set -e

PROVIDER_FILE="internal/provider/provider.go"

# Check if provider.go exists
if [ ! -f "$PROVIDER_FILE" ]; then
    echo "Error: $PROVIDER_FILE not found"
    exit 1
fi

# List of custom resources to inject (add new ones here)
CUSTOM_RESOURCES=(
    "NewConnectorConfigResource"
)

for RESOURCE in "${CUSTOM_RESOURCES[@]}"; do
    # Check if already present
    if grep -q "$RESOURCE" "$PROVIDER_FILE"; then
        echo "Resource $RESOURCE already registered in provider.go"
        continue
    fi

    # Find the Resources() function and inject after NewConnectionResource
    # This uses sed to add the custom resource after the first resource in the list
    if sed -i "s/NewConnectionResource,/NewConnectionResource,\n\t\t$RESOURCE, \/\/ Hand-written custom resource/" "$PROVIDER_FILE"; then
        echo "Injected $RESOURCE into provider.go"
    else
        echo "Error: Failed to inject $RESOURCE"
        exit 1
    fi
done

echo "Custom resource injection complete"
