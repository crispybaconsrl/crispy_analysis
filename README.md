# Crispy Analysis

[![Crispy Bacon SRL][logo]][crispy_link]
[![Crispy Bacon SRL][logo_dark]][crispy_link_dark]

Maintained by [Riccardo Strazzer][maintainer_link]

[![style: crispy analysis][badge]][badge_link]

---

This package provides lint rules for Dart and Flutter which are used at [Crispy Bacon SRL][crispy_bacon_link]. For more information, see the [complete list of options][analysis_options_yaml].

The example folder contains some example. If you find some cases where some rules are too aggressive please fill a issue and we can discuss about it's removal.

## Usage

To use the lints, add as a dev dependency in your `pubspec.yaml`:

```yaml
crispy_analysis:
  git: https://github.com/crispybaconsrl/crispy_analysis
```

Then, add an include in `analysis_options.yaml`:

```yaml
include: package:crispy_analysis/analysis_options.yaml
```

This will ensure you always use the latest version of the lints. If you wish to restrict the lint version, specify a version of `analysis_options.yaml` instead:

```yaml
include: package:crispy_analysis/analysis_options.1.0.0.yaml
```

## Suppressing Lints

There may be cases where specific lint rules are undesirable. Lint rules can be suppressed at the line, file, or project level.

An example use case for suppressing lint rules at the file level is suppressing the `prefer_const_constructors` in order to achieve 100% code coverage. This is due to the fact that const constructors are executed before the tests are run, resulting in no coverage collection.

### Line Level

To suppress a specific lint rule for a specific line of code, use an `ignore` comment directly above the line:

```dart
// ignore: public_member_api_docs
class A {}
```

### File Level

To suppress a specific lint rule of a specific file, use an `ignore_for_file` comment at the top of the file:

```dart
// ignore_for_file: public_member_api_docs

class A {}

class B {}
```

### Project Level

To suppress a specific lint rule for an entire project, modify `analysis_options.yaml`:

```yaml
include: package:crispy_analysis/analysis_options.yaml
linter:
  rules:
    public_member_api_docs: false
```

## Badge

To indicate your project is using `crispy_analysis` →
[![style: crispy analysis][badge]][badge_link]

```md
[![style: crispy analysis](https://img.shields.io/badge/style-crispy_analysis-A1022B.svg)](https://github.com/crispybaconsrl/crispy_analysis)
```

[analysis_options_yaml]: https://github.com/crispybaconsrl/crispy_analysis/blob/main/lib/analysis_options.1.0.1.yaml
[badge]: https://img.shields.io/badge/style-crispy_analysis-A1022B.svg
[badge_link]: https://github.com/crispybaconsrl/crispy_analysis
[logo_dark]: ./assets/crispybacon_logo_white.png#gh-dark-mode-only
[logo]: ./assets/crispybacon_logo_black.png#gh-light-mode-only
[crispy_bacon_link]: https://crispybacon.it
[crispy_link]: https://crispybacon.it#gh-light-mode-only
[crispy_link_dark]: https://crispybacon.it#gh-dark-mode-only
[maintainer_link]: https://github.com/crispy-riccardo
