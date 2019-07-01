import 'package:angular_router/angular_router.dart';

class NavigationService {
  Router _router;
  Location _location;

  NavigationService(
    this._router,
    this._location,
  );

  void navigateTo() {
    print("object hello world");
    _router.navigate("dash");
  }

  void backTo() {
    print("location back");
    _location.back();
  }
}
