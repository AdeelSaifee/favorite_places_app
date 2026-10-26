# Favorite Places App Flutter

A mobile application built with Flutter and Dart for capturing, organizing, and saving personal favorite places. The app leverages native device hardware features - including on-device camera photo capture, live GPS geolocation, interactive Google Maps integration, and offline SQLite local database storage - wrapped in a clean, responsive, and robust Flutter architecture.

Targeted and optimized strictly for Android and iOS.

## Features

- **Project Scaffolding:** Clean Flutter mobile project configured specifically for Android and iOS platforms.
- **Starter Theme & Typography:** Customized dark mode Material 3 theme with a deep purple seed color (`#6606F7`) and dark background (`#383142`), integrated with `google_fonts` (Ubuntu Condensed text theme).
- **Place Data Model:** Dedicated blueprint class for places encapsulating unique cryptographic identifiers (`uuid.v4()`) and user-specified titles.
- **Native Device Camera Integration (Upcoming):** On-device photo capture using the device camera with local preview rendering.
- **Live GPS & Geolocation (Upcoming):** User coordinate detection with high accuracy and reverse geocoding to human-readable street addresses.
- **Interactive Google Maps (Upcoming):** Display place locations on embedded maps with custom markers and manual location picking.
- **Offline SQLite Local Persistence (Upcoming):** Permanent on-device data persistence storing place titles, image file paths, and geographic coordinates across app restarts.
- **State Management with Riverpod (Upcoming):** Reactive and decoupled state handling for managing the collection of user places.

## Key Learnings & Flutter Concepts Mastered

Throughout this project, several critical Flutter and Dart concepts are studied, practiced, and integrated into production-ready code:

### 1. Data Modeling & UUID Generation
- **Dart Initializer Lists:** Leveraging constructor initializer lists (`: id = uuid.v4()`) to compute runtime values before the constructor body executes, maintaining field immutability (`final String id`).
- **Cryptographic Unique Identifiers:** Integrating the `uuid` package to generate collision-resistant version 4 random identifiers.
- **Constructor Modifiers (`const` vs non-`const`):** Understanding why models with dynamically generated runtime values cannot have `const` constructors.

### 2. Theming & Custom Typography
- **Google Fonts Package:** Integrating the `google_fonts` package to apply external web font families (`UbuntuCondensed`) dynamically without manual font asset bundling.
- **Material 3 ColorScheme from Seed:** Generating a cohesive palette with `ColorScheme.fromSeed(brightness: Brightness.dark, seedColor: ..., surface: ...)` and overriding specific surface tones for optimal contrast.
- **TextTheme Customization:** Deep copying and customizing title hierarchy (`titleSmall`, `titleMedium`, `titleLarge`) with bold typography.

### 3. Native Device Hardware & Platform Channels
- **Platform Communication:** Understanding how Flutter communicates with underlying native platform APIs (Android Java/Kotlin and iOS Swift/Objective-C) via asynchronous method channels.
- **Hardware Permission Management:** Configuring OS-level runtime permissions in `AndroidManifest.xml` and iOS `Info.plist` for camera and location access.

### 4. Camera & Filesystem Integration
- **Image Picker:** Accessing device camera hardware and temporary photo storage.
- **Path Provider & Filesystem:** Copying captured photos from temporary cache to permanent app documents directory.

### 5. Geolocation & Mapping Services
- **Location Sensors:** Querying device GPS hardware to obtain real-time latitude and longitude.
- **Google Maps Integration:** Displaying interactive native map views and static snapshot previews.

### 6. Local Database Persistence (SQLite)
- **Offline-First Storage:** Replacing volatile in-memory lists with an embedded SQLite database using `sqflite`.
- **Relational Data Mapping:** Converting Dart models to and from SQL table records.

## Technical Architecture & Design Decisions

### 1. Platform-Specific Targeting
- Built exclusively for Android and iOS native mobile execution, avoiding web or desktop overhead and ensuring full compatibility with device hardware APIs.

### 2. Layered Architecture
- **Data Models:** [`lib/models/place.dart`](lib/models/place.dart) represents pure immutable state blueprints.
- **Presentation Layer:** Widgets, custom inputs, camera preview widgets, and interactive map screens.
- **State Layer:** Riverpod state notifiers providing unidirectional data flow.
- **Data & Storage Layer:** SQLite database helper managing CRUD operations and file system references.

## Project Structure

```
favorite_places_app/
|-- android/                            # Native Android platform configuration
|-- ios/                                # Native iOS platform configuration
|-- lib/
|   |-- models/
|   |   `-- place.dart                  # Place data model with uuid.v4 auto-generation
|   `-- main.dart                       # App entry point with custom theme & Google Fonts
|-- pubspec.yaml                        # Project metadata & dependencies
`-- README.md                           # Standardized project documentation
```

## Getting Started

### Prerequisites

- Flutter SDK (v3.13.0 or higher recommended)
- Android Studio / Xcode for emulators or physical device deployment

### Dependencies

Defined in `pubspec.yaml`:

- `google_fonts: ^8.2.1`
- `uuid: ^4.6.0`
- `cupertino_icons: ^1.0.8`

### Running the App

1. **Clone the repository:**
   ```bash
   git clone https://github.com/AdeelSaifee/favorite_places_app.git
   cd favorite_places_app
   ```

2. **Fetch dependencies:**
   ```bash
   flutter pub get
   ```

3. **Run static code analysis:**
   ```bash
   flutter analyze
   ```

4. **Launch the application:**
   ```bash
   flutter run
   ```
