# tr_store

## Generate Code

If any auto-generated class file is missing just run the following command

```
flutter clean
flutter pub get
flutter pub run build_runner build --delete-conflicting-outputs
```

## Architecture

we follow an architecture that has four layers.

- **Data layer:** This layer is the one in charge of interacting with APIs.
- **Domain layer:** This is the one in charge of transforming the data that comes from the data layer.
  And finally, we want to manage the state of that data and present it on our user interface, that’s why we split the presentation layer in two:

- **Business logic layer:** This layer manages the state (usually using flutter_bloc).
- **Presentation layer:** Renders UI components based on state.
