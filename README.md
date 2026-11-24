# Napoles_NathalieNicole_Week14 — ShopLive Static UI

Two-screen non-interactive Flutter prototype built for **PC16: Mobile Development with Lab (Week 14)**.

## Screens Included
1. **Screen 1 (`lib/screens/login_screen.dart`):** ShopLive Log In screen
2. **Screen 2 (`lib/screens/home_screen.dart`):** ShopLive Home Page (featuring `Stack` & `Positioned` live stream overlays)

## How to Preview Both Screens
Open `lib/main.dart` and switch the active `home:` route inside `MaterialApp`:
- To preview **Screen 1 (Log In)**:
  ```dart
  home: const LoginScreen(),
  // home: const HomeScreen(),

- To preview **Screen 2 (Home Page)**:
// home: const LoginScreen(),
home: const HomeScreen(),
