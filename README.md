<!-- # provider_sam

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference. -->


step 1 -  add provider package from pub.dev
step 2 -  create controller class with changeNotifier
step 3 -  configure your controller class in main.dart
step 4 -  create a state variable
step 5 -  create a provider object using context.watch to watch the state changes
step 6 -  create function to update the state of state variable and call notifyListeners() to update the state
step 7 - create a provider object using context.read to invoke the function to update ui