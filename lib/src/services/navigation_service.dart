import 'package:angular_router/angular_router.dart';

class NavigationService {
  Router _router;
  Location _location;

  NavigationService(
    this._router,
    this._location,
  );

  Future<Object> navigateTo(String destination) {
    print("object hello world");
    return _router.navigate(destination);
  }

  void pop() {
    print("location back");
    _location.back();
  }
}
