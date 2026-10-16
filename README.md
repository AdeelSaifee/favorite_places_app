# Favorite Places App Flutter

A mobile application built with Flutter and Dart for capturing, organizing, and saving personal favorite places. The app leverages native device hardware features—including on-device camera photo capture, live GPS geolocation, interactive Google Maps integration, and offline SQLite local database storage—wrapped in a clean, responsive, and robust Flutter architecture.

Targeted and optimized strictly for Android and iOS.

## Features

- **Project Scaffolding:** Clean Flutter mobile project configured specifically for Android and iOS platforms.
- **Native Device Camera Integration (Upcoming):** On-device photo capture using the device camera with local preview rendering.
- **Live GPS & Geolocation (Upcoming):** User coordinate detection with high accuracy and reverse geocoding to human-readable street addresses.
- **Interactive Google Maps (Upcoming):** Display place locations on embedded maps with custom markers and manual location picking.
- **Offline SQLite Local Persistence (Upcoming):** Permanent on-device data persistence storing place titles, image file paths, and geographic coordinates across app restarts.
- **State Management with Riverpod (Upcoming):** Reactive and decoupled state handling for managing the collection of user places.

## Key Learnings & Flutter Concepts Mastered

Throughout this project, several critical Flutter and Dart concepts are studied, practiced, and integrated into production-ready code:

### 1. Native Device Hardware & Platform Channels
- **Platform Communication:** Understanding how Flutter communicates with underlying native platform APIs (Android Java/Kotlin and iOS Swift/Objective-C) via asynchronous method channels.
- **Hardware Permission Management:** Configuring OS-level runtime permissions in `AndroidManifest.xml` and iOS `Info.plist` for camera and location access.

### 2. Camera & Filesystem Integration
- **Image Picker:** Accessing device camera hardware and temporary photo storage.
- **Path Provider & Filesystem:** Copying captured photos from temporary cache to permanent app documents directory.

### 3. Geolocation & Mapping Services
- **Location Sensors:** Querying device GPS hardware to obtain real-time latitude and longitude.
- **Google Maps Integration:** Displaying interactive native map views and static snapshot previews.

### 4. Local Database Persistence (SQLite)
- **Offline-First Storage:** Replacing volatile in-memory lists with an embedded SQLite database using `sqflite`.
- **Relational Data Mapping:** Converting Dart models to and from SQL table records.

## Technical Architecture & Design Decisions

### 1. Platform-Specific Targeting
- Built exclusively for Android and iOS native mobile execution, avoiding web or desktop overhead and ensuring full compatibility with device hardware APIs.

### 2. Layered Architecture (Planned)
- **Presentation Layer:** Widgets, custom inputs, camera preview widgets, and interactive map screens.
- **State Layer:** Riverpod state notifiers providing unidirectional data flow.
- **Data & Storage Layer:** SQLite database helper managing CRUD operations and file system references.

## Project Structure

```
favorite_place_app/
|-- android/                            # Native Android platform configuration
|-- ios/                                # Native iOS platform configuration
|-- lib/
|   `-- main.dart                       # App entry point
|-- pubspec.yaml                        # Project metadata & dependencies
`-- README.md                           # Standardized project documentation
```

## Getting Started

### Prerequisites

- Flutter SDK (v3.13.0 or higher recommended)
- Android Studio / Xcode for emulators or physical device deployment

### Dependencies

Defined in `pubspec.yaml`:

- `cupertino_icons: ^1.0.8`

### Running the App

1. **Clone the repository:**
   ```bash
   git clone https://github.com/AdeelSaifee/favorite_place_app.git
   cd favorite_place_app
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
