# 🚀 Flutter Widgets Collection

A curated collection of **Flutter widget demos, package integrations, and development techniques** built to explore and understand Flutter widgets in a **clean, modular, and production-like architecture**.

This project serves as a **widget playground and reference library**, where each widget is demonstrated in an isolated screen with clear examples.

---

## ✨ Features

* 📱 Interactive widget demonstrations
* 📦 Package integration demos
* 🧠 Flutter development techniques
* 🧱 Clean architecture and modular code structure
* 🎨 Custom reusable UI components
* 🔍 Easy navigation between widget demos
* ⚡ Built using modern Flutter practices

---

## 📚 Categories

The demos are organized into **three categories**.

## 🧩 Widgets

Flutter built-in widget demonstrations.

Currently implemented:

* SliverFillRemaining
* NestedScrollView
* SliverToBoxAdapter
* CupertinoSliverNavigationBar
* CupertinoRadio
* CupertinoSheetRoute
* CupertinoSlidingSegmentedControl
* CupertinoCheckbox
* CupertinoSwitch
* CarouselView (Multiple Layouts)
* SearchBar & SearchAnchor

## 📦 Packages

Demonstrations of popular Flutter packages.

Currently implemented:

* video_player
* mix
* firebase_ai

## 🧠 Techniques

Useful Flutter development patterns and APIs.

Currently implemented:

* MediaQuery.propertyOf
* UnmodifiableListView
* Uint8List
* Completers
* Future.wait

More widgets, packages, and development techniques will be added regularly.

---

## 🏗 Architecture Pattern

Each demo follows the same structure:

```
WidgetScreen
     ↓
WidgetBody
     ↓
Reusable Widgets / Layouts
```

Example:

```
CupertinoSwitchScreen
        ↓
CupertinoSwitchBody
        ↓
Switch examples
```

---

## 🎨 Shared Components

To maintain consistency across demos, the project uses:

### `AppGradientScaffold`

Provides a consistent **gradient background** across all screens.

### `CommonAppBar`

Reusable **custom app bar** used in all widget screens.

---

## ▶️ Running the Project

### 1️⃣ Clone the repository

```bash
git clone https://github.com/your-username/widgets_collection.git
```

### 2️⃣ Navigate to project

```bash
cd widgets_collection
```

### 3️⃣ Install dependencies

```bash
flutter pub get
```

### 4️⃣ Generate routes

```bash
flutter pub run build_runner build
```

### 5️⃣ Run the app

```bash
flutter run
```

---

## 📦 Requirements

* Flutter 3.41+
* Dart 3+
* Android Studio / VSCode
* iOS Simulator or Android Emulator

---

## 💡 Purpose of this Project

This project was created to:

* Experiment with Flutter widgets
* Explore Flutter packages
* Demonastrate useful Flutter techniques
* Build reusable UI components
* Maintain a personal widget reference library

---

## 🤝 Contributions

Feel free to contribute by:

* Adding new widget demos
* Adding new package integrations
* Adding new development techniques
* Improving UI examples
* Optimizing existing implementations

---

## ⭐ Support

If you find this project helpful, consider giving it a ⭐ on GitHub!

---

## 👨‍💻 Author

**Aswin V Shaji**

Flutter Developer passionate about building **clean, scalable UI architectures and reusable Flutter components**.