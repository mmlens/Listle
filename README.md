# HelloXcode - Task & Clock Manager

## Overview
A sleek, dark-themed iOS application built entirely with **SwiftUI**. This app provides a seamless experience for managing daily tasks and checking the time, featuring a custom user interface with a modern aesthetic and smooth navigation.

## Key Features
* **To-Do List Management:** Easily add new tasks using a custom-styled text field and button.
* **Dynamic Interface:** Displays a friendly "No task were added" message when the list is empty, and automatically switches to a custom scrollable list as tasks are created.
* **Multi-Tab Navigation:** Utilizes a native `TabView` to separate the Task Manager (`TasksView`) from the Clock interface (`ClockView`).
* **Custom Dark Theme:** Implements a unique color palette (deep dark background with vibrant mint/blue accents) using `ZStack` and custom RGB values.
* **Reactive State Management:** Uses Swift's `@ObservableObject`, `@StateObject`, and `@ObservedObject` for efficient, real-time data flow between the app's internal logic and its user interface.

## Technologies & Architecture
* **Language:** Swift
* **UI Framework:** SwiftUI
* **Architecture:** MVVM (Model-View-ViewModel) approach for clean separation of concerns.

## Project Structure
* `ContentView.swift`: The main entry point containing the bottom tab navigation and the initialization of the data manager (The Source of Truth).
* `TasksView.swift`: The visual representation of the To-Do list, handling user input, empty states, and displaying the custom task cards.
* `addTasks.swift` (`GestorDeTareas`): The "brain" or ViewModel of the app. It holds the `@Published` array of tasks and the logic to append new items.
* `ClockView.swift`: The secondary tab interface dedicated to the time features.

## Developer
Developed by **Rafa Navarro Ortega** - All rights reserved.
