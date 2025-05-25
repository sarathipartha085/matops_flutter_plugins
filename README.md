# Matops Flutter Package

[![pub package](https://img.shields.io/pub/v/matops.svg)](https://pub.dev/packages/matops)

**Matops - Empowering Solutions Through Technology**

---

## About

**Matops** is a Flutter package designed to provide reusable UI components, utilities, and styles that help developers build beautiful and consistent Flutter applications faster.

> **Moto:** Technology is a powerful tool, not a standalone solution.

Visit our website: [https://matops-home.web.app/](https://matops-home.web.app/)

---

## Features

- Customizable Loading Screen widget
- Gradient Background widget
- Configurable Splash Screen
- Convenient styled Snackbar and Confirm Dialog utilities
- Centralized app styling helpers
- Easily themeable and extensible components

---

## Installation

Add `matops` to your `pubspec.yaml`:

```yaml
dependencies:
  matops: ^<latest_version>
````

Then run:

```bash
flutter pub get
```

---

## Usage

Import the package:

```dart
import 'package:matops/matops.dart';
```

### Loading Screen Example

```dart
LoadingScreen(
  isLoading: true,
  spinnerColor: Colors.blue,
  imageAssetPath: 'assets/images/logo.png',
);
```

### Show Snackbar

```dart
showSnackbar(context, message: "Operation successful");
```

### Confirm Dialog

```dart
showConfirmDialog(
  context: context,
  title: "Confirm Delete",
  message: "Are you sure you want to delete this item?",
  onConfirm: () {
    // Handle confirmation
  },
);
```

---

## Folder Structure

```
lib/
├── matops.dart            # Main export file
├── styles/                # Styles and themes
├── widgets/               # Reusable UI widgets
├── dialogs/               # Dialog utilities
└── utils/                 # Helper functions and utilities
```

---

## Contributing

Contributions are welcome! Please open an issue or submit a pull request.

---

## License

[MIT License](LICENSE)

---

## Contact

**Matops** — Empowering Solutions Through Technology
Website: [https://matops-home.web.app/](https://matops-home.web.app/)
