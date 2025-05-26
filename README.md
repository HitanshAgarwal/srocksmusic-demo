# srocksmusic_demo

The assignment Flutter application for S.Rocks.Music.

## Folder Structure:
lib/
├── main.dart                   
├── firebaseoptions.dart        # Firebase configuration and initialization
├── home.dart                   # Home screen UI and logic
├── models/
│   ├── model.dart              # Data model used throughout the app
│   ├── services_repository.dart # Data fetching and storage logic (repository pattern)
│   └── services_view_model.dart # ViewModel handling business logic and state management

## Approach
main.dart initializes the app and sets up necessary services.

firebaseoptions.dart contains Firebase configuration, keeping setup separate and reusable.

The home.dart file manages the main user interface.

The models folder encapsulates the core app data structures and business logic:

model.dart defines the data models.

services_repository.dart handles data retrieval and persistence, abstracting data sources.

services_view_model.dart manages app state and mediates between UI and data layers following MVVM principles.
