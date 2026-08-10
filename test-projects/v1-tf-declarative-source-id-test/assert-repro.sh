#!/usr/bin/env bash
set -Eeuo pipefail

project_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$project_dir"

: "${TF_VAR_airbyte_client_id:?TF_VAR_airbyte_client_id must be set}"
: "${TF_VAR_airbyte_client_secret:?TF_VAR_airbyte_client_secret must be set}"
: "${TF_VAR_workspace_id:?TF_VAR_workspace_id must be set}"

provider_binary="${PROVIDER_BINARY:-$project_dir/../../dist/terraform-provider-airbyte}"
initial_description="${INITIAL_MANIFEST_DESCRIPTION:-initial declarative source definition}"
changed_description="${CHANGED_MANIFEST_DESCRIPTION:-updated declarative source definition}"
initial_plan="$project_dir/initial.tfplan"
changed_plan="$project_dir/changed.tfplan"
initial_output="$project_dir/initial_plan_output.txt"
drift_output="$project_dir/drift_output.txt"
changed_output="${PLAN_OUTPUT:-$project_dir/changed_plan_output.txt}"

if [[ ! -x "$provider_binary" ]]; then
  echo "provider binary is missing or not executable: $provider_binary" >&2
  exit 1
fi

mkdir -p provider-override
cp "$provider_binary" provider-override/terraform-provider-airbyte
chmod +x provider-override/terraform-provider-airbyte

cat > .terraformrc <<EOF
provider_installation {
  dev_overrides {
    "airbytehq/airbyte" = "$project_dir/provider-override"
  }
  direct {}
}
EOF
export TF_CLI_CONFIG_FILE="$project_dir/.terraformrc"

cleanup() {
  exit_code=$?
  set +e
  terraform destroy -auto-approve -no-color 2>&1 | tee "$project_dir/destroy_output.txt"
  destroy_code=${PIPESTATUS[0]}
  if [[ "$destroy_code" -ne 0 && "$exit_code" -eq 0 ]]; then
    exit_code="$destroy_code"
  fi
  exit "$exit_code"
}
trap cleanup EXIT

terraform init -no-color
terraform plan -no-color -out="$initial_plan" \
  -var="manifest_description=$initial_description" 2>&1 | tee "$initial_output"
terraform apply -no-color -auto-approve "$initial_plan"

set +e
terraform plan -no-color -detailed-exitcode \
  -var="manifest_description=$initial_description" 2>&1 | tee "$drift_output"
drift_code=${PIPESTATUS[0]}
set -e
if [[ "$drift_code" -ne 0 ]]; then
  echo "post-apply drift check failed with exit code $drift_code" >&2
  exit 1
fi

set +e
terraform plan -no-color -detailed-exitcode -out="$changed_plan" \
  -var="manifest_description=$changed_description" 2>&1 | tee "$changed_output"
changed_code=${PIPESTATUS[0]}
set -e
if [[ "$changed_code" -ne 2 ]]; then
  echo "manifest-change plan must report changes with exit code 2; got $changed_code" >&2
  exit 1
fi

if grep -Eiq 'must be replaced|forces replacement' "$changed_output"; then
  echo "manifest-change plan contains a replacement or destroy:" >&2
  grep -Ein 'must be replaced|forces replacement' "$changed_output" >&2
  exit 1
fi

if ! grep -Eq 'Plan: [0-9]+ to add, [0-9]+ to change, 0 to destroy' "$changed_output"; then
  echo "manifest-change plan did not report zero destroys:" >&2
  grep -E 'Plan:' "$changed_output" >&2 || true
  exit 1
fi

echo "PASS: post-apply drift is clean and manifest-only update has no replacement or destroy."
