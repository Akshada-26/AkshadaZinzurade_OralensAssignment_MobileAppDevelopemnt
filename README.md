IoT-Connected Health App
Description
The IoT-Connected Health App is a mobile application built using Flutter, designed to demonstrate the integration of Internet of Things (IoT) devices with mobile technology. The app connects to various health-monitoring devices such as heart rate monitors, temperature sensors, and blood pressure monitors through Bluetooth and Wi-Fi connections. The app collects real-time data from these devices and provides a user-friendly interface for viewing and visualizing health metrics.

The app showcases features like device connectivity, real-time data visualization, and user-friendly controls with a hospital-themed UI. It can be used in healthcare environments to monitor patient health data in real-time, allowing healthcare professionals or users to track vital metrics.

Features
Device List: Displays a list of available IoT health devices (e.g., heart rate monitor, temperature sensor, blood pressure monitor).
Real-Time Data: Connects to devices via Bluetooth or Wi-Fi and displays real-time health data.
Data Visualization: Presents health data (e.g., heart rate, temperature) in a visual and easy-to-read format.
User-Friendly UI: A hospital-themed interface with intuitive navigation and well-designed visuals.
Periodic Data Fetching: Regularly fetches updated data from devices every few seconds to keep the information current.
Setup and Installation
Prerequisites
Before setting up the project, ensure you have the following:

Flutter SDK: Ensure Flutter is installed on your machine. Follow the installation guide for your platform: Flutter Install Guide.
Dart SDK: Dart comes bundled with Flutter, so no separate installation is needed.
Android Studio or VS Code: A code editor to work with Flutter.
Android Emulator or a physical Android/iOS device for running the app.
Installation Steps
Clone the Repository:

git clone https://github.com/Akshada-26/AkshadaZinzurade_OralensAssignment_MobileAppDevelopemnt/tree/main
cd IoT-Connected-Health-App
Install Dependencies: Run the following command to install the necessary Flutter dependencies.

flutter pub get
Run the Application: If you're using an emulator, make sure it's running. If you're using a physical device, ensure it's connected. Then, run the following command:

flutter run
Folder Structure
/iot_health_app
  /lib
    /screens
      home_screen.dart        # Home screen with app navigation
      device_list_screen.dart # Screen displaying available devices
      data_visual_screen.dart # Screen for displaying real-time data
  /assets
    /images
      logo.png               # App logo
    /icons
      device_icon.png        # Icons for devices
  /pubspec.yaml              # Dependencies and assets
Usage
Home Screen
Upon launching the app, the Home Screen displays a welcome message and a button to proceed to the device list.
Users can navigate to the Device List Screen to view available IoT devices for health monitoring.
Device List Screen
Displays a list of available devices such as heart rate monitors, temperature sensors, and blood pressure monitors.
Users can select a device to view its real-time data.
Data Visualization Screen
Once a device is selected, the Data Visualization Screen is shown with real-time data from the device.
Data is fetched periodically and displayed in an easily readable format.
A refresh button is provided to fetch the latest data manually.
Dependencies
This project uses the following dependencies:

flutter: The SDK for building the Flutter app.
flutter_blue: A Flutter plugin for Bluetooth support.
wifi_info_flutter: A plugin to get Wi-Fi connection information (if needed).
provider: A state management package for managing the app's state.
Dependencies are listed in the pubspec.yaml file.

dependencies:
  flutter:
    sdk: flutter
  flutter_blue: ^0.8.0
  wifi_info_flutter: ^0.1.4
  provider: ^6.0.1
Screenshots
Include a few screenshots of the app's UI to showcase the functionality and design.

Home Screen

Device List Screen

Data Visualization Screen

Future Improvements
Add More Device Types: Integrate more health-monitoring devices (e.g., glucose meters, ECG monitors).
User Authentication: Add user login and profile features to track data across devices and sessions.
Notifications: Implement notifications for critical health metrics.
Cloud Syncing: Allow data to be synced to the cloud for remote monitoring by healthcare providers.

