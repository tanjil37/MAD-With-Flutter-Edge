# flutter_application_1

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

# Setting Up Firebase with Flutter

## Step-by-Step Guide

### Step 1: Download and Install Node.js
- Verify the installation:
  ```bash
  npm -v
  node -v
  ```

### Step 2: Download and Install Git Bash
- Use Git Bash for running commands.

### Step 3: Open Firebase Console
- Visit [Firebase Console](https://console.firebase.google.com/).

### Step 4: Create an Account and a Firebase Project
- Log in to your Firebase account.
- Create a new project and give it a name.

### Step 5: Click on the Flutter Icon
- Select Flutter integration for your Firebase project.

### Step 6: Access Firebase CLI
- Open the Firebase CLI instructions in a new window.
- Click on the **Windows** button to download the CLI.

### Step 7: Install Firebase Tools via NPM
- Scroll down a bit and click on the NPM option.
- Run the following command from any directory or command line:
  ```bash
  npm install -g firebase-tools
  ```

### Step 8: Log in to Firebase
- Run the following command and log in to your Firebase account:
  ```bash
  firebase login
  ```

### Step 9: Install FlutterFire CLI
- Run the following command:
  ```bash
  dart pub global activate flutterfire_cli
  ```

### Step 10: Configure FlutterFire for Your Project
- Navigate to your project root directory and run:
  ```bash
  flutterfire configure --project=our-new-a
  ```

### Step 11: Select Platforms
- Follow the prompts to select the platforms you want to configure.
- Hit Enter to confirm.

### Step 12: Retrieve Application ID
- Get your application ID from the file `android>app>build.gradle` and use it during configuration.

### Step 13: Test the Connection
- Copy the following code to your `main.dart` file to test the Firebase connection:
  ```dart
  void main() async {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
    runApp(MyApp());
  }
  ```

### Step 14: Required Packages
#### Add dependencies to `pubspec.yaml`:
  ```yaml
  dependencies:
    firebase_core:
    cloud_firestore:
  ```

#### Click the **Get Packages** Icon
- Use the icon in the top-right corner to download the required packages.

---

## Summary of Commands
1. Install Firebase CLI:
   ```bash
   npm install -g firebase-tools
   ```
2. Log in to Firebase:
   ```bash
   firebase login
   ```
3. Install FlutterFire CLI:
   ```bash
   dart pub global activate flutterfire_cli
   ```
4. Configure Firebase:
   ```bash
   flutterfire configure --project=our-new-a
   ```

You're now ready to integrate Firebase into your Flutter application!


