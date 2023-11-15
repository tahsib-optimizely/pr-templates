# SRE Metadata Github Action

This action updates the common files of a repository according to their **repository type** and automatically creates PR so that user can merge it to update their repository's common file without any manual intervention.

### Features

In more details, this action will:

* Fetch latest common files for your repository according to the repository type.
* Automatically creates a new branch (sre-metadata-update) with the updates.
* Automatically creates a PR to **main** from **sre-metadata-update**


# Usage

### Basic example of using this action in a workflow
```
name: Update SRE Metadata
on:
  workflow_dispatch:
    inputs:
      repo-type:
        required: true
        description: Repo Type
        default: 'terraform'
        
jobs:
  update-sre-metadata:
    runs-on: ubuntu-latest

    permissions:
      contents: write
      pull-requests: write

    steps:
      - uses: actions/checkout@v4
      - uses: optimizely/sre-metadata-github-action@main
        with:
          repo-type: ${{ inputs.repo-type }}
          github-token: ${{ secrets.GITHUB_TOKEN }}
```

# Inputs

The action supports the following inputs:

* repo-type - Name of the repository type from which the common files will be fetched.
* github-token - This token will be used to create automated PR.