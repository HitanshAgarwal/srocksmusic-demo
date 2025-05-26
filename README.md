# srocksmusic_demo

The assignment Flutter application for S.Rocks.Music.

## Folder Structure:
lib/
├── main.dart
├── firebaseoptions.dart
├── home.dart
├── models/
│ ├── model.dart
│ ├── services_repository.dart
│ └── services_view_model.dart

## Approach
main.dart initializes the app and sets up necessary services.

firebaseoptions.dart contains Firebase configuration, keeping setup separate and reusable.

The home.dart file manages the main user interface.

The models folder encapsulates the core app data structures and business logic:

model.dart defines the data models.

services_repository.dart handles data retrieval and persistence, abstracting data sources.

services_view_model.dart manages app state and mediates between UI and data layers following MVVM principles.
