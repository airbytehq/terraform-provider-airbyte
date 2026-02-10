# Move Workflow Test: Typed to Generic Resource Migration

This test validates the `moved` block workflow for migrating from typed resources
(e.g., `airbyte_source_faker`) to generic resources (`airbyte_source`).

## Prerequisites

- Terraform >= 1.8 (required for `moved` block cross-resource-type support)
- Provider binary built from current `main` branch
- Airbyte Cloud OAuth credentials

## Test Steps

### Step 1: Deploy typed resources

```bash
cd step1-typed
TF_CLI_CONFIG_FILE=../../.terraformrc terraform apply
```

This creates:
- `airbyte_source_faker.my_source`
- `airbyte_destination_dev_null.my_dest`
- `airbyte_connection.my_connection`

### Step 2: Move to generic resources

Copy the state file from step1 into step2, then plan:

```bash
cd ../step2-generic
cp ../step1-typed/terraform.tfstate .
TF_CLI_CONFIG_FILE=../../.terraformrc terraform plan
```

**Expected output**: Terraform should show `moved` operations for the source and
destination, NOT `destroy`/`create` pairs. The connection should show only
minor in-place updates (reference changes).

### Step 3: Apply the migration

```bash
TF_CLI_CONFIG_FILE=../../.terraformrc terraform apply
```

### Step 4: Clean up

```bash
TF_CLI_CONFIG_FILE=../../.terraformrc terraform destroy
```

## What This Proves

1. The `MoveState` implementation correctly maps state from typed resources to
   generic resources.
2. Terraform recognizes the `moved` block and performs an in-place state
   migration rather than a destructive recreate.
3. The connection continues to reference the same underlying source/destination
   IDs after the move.
