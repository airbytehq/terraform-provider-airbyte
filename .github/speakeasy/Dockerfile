# Speakeasy CLI version pin
#
# This Dockerfile is **not** built or run. It exists solely so Dependabot's
# `docker` ecosystem watches the `FROM` line and opens a PR whenever the
# upstream Speakeasy CLI publishes a new release.
#
# The pinned version is consumed by `.github/workflows/generate-command.yml`,
# which extracts the `speakeasy` binary from this image before generation.
# When this `FROM` is bumped, that workflow installs the new version
# automatically — no other files need to change.
#
# Why pinned? `.speakeasy/workflow.yaml` sets `speakeasyVersion: pinned`,
# which tells the Speakeasy CLI to use the installed version and not
# auto-upgrade mid-PR. See:
#   https://www.speakeasy.com/docs/speakeasy-reference/workflow-file#speakeasy-version
FROM ghcr.io/speakeasy-api/speakeasy:v1.761.11
