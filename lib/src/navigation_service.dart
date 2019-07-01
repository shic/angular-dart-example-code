import 'package:angular_router/angular_router.dart';

class NavigationService {
  Router _router;

  NavigationService(this._router);

  void navigateTo() {
    print("object hello world");
    _router.navigate("dash");
  }
}
