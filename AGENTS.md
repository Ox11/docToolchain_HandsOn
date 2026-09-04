# Agent Notes for docToolchain_HandsOn

## docToolchain Environment

This project uses **docToolchain via Docker**.

- Do **not** install Java or docToolchain locally (e.g. via `./dtcw local install java` or `./dtcw local install doctoolchain`).
- Use the Docker environment: `./dtcw docker <task>`.

Do not generate the doc. but remind the user to do so.

## Common Tasks

- Generate HTML: `./dtcw docker generateHTML`
- Generate PDF: `./dtcw docker generatePDF`
- List tasks: `./dtcw docker tasks`

## Input Files

AsciiDoc sources live in `src/docs/` and are registered in `docToolchainConfig.groovy` under `inputFiles`.
