# DartPedia

DartPedia is a small command-line project that searches Wikipedia and reads
article summaries. It is built as a Dart workspace and is intended **only for
learning and practice**.

The project follows concepts from the official Dart documentation.
If you are learning alongside this repository, start here:

- [Dart documentation](https://dart.dev/learn/tutorial)

## Project structure

- `cli/` — the command-line application.
- `command_runner/` — a small reusable command parser and runner.
- `wikipedia/` — code for requesting and modelling Wikipedia data.

## Getting started

Install a compatible Dart SDK, then fetch the workspace dependencies from the
repository root:

```sh
dart pub get
```

## Run the CLI

Show available commands:

```sh
dart run cli/bin/cli.dart help
```

Search Wikipedia:

```sh
dart run cli/bin/cli.dart search Dart
```

Read an article:

```sh
dart run cli/bin/cli.dart article cat
```

Use the top search result's summary:

```sh
dart run cli/bin/cli.dart search Dart --im-feeling-lucky
```

## Run tests

Run a package's tests by targeting its test directory or file. For example:

```sh
dart test cli/test
dart test wikipedia/test
```

## Notes

This repository is a learning project, not a production-ready Wikipedia
Feel free to experiment, change the commands, add tests, and use the official documentation to understand each part of the code.
