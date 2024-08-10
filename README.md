# Print Date and Time GitHub Action

This GitHub Action prints the current date and time in Israel Standard Time (IST). It's simple to integrate into your GitHub workflows.

## Environment Variables

- **None required** - This action does not require any environment variables. 

## Usage

### Add to Your Workflow

To use this action directly from this repository, add the following to your workflow file (`.github/workflows/your-workflow.yml`):

```yaml
name: "Print Date and Time"
on: [push]

jobs:
  print-time:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v2

      - name: Print Date and Time
        uses: nikolhodos/date-time-action@main