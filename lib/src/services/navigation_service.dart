import 'package:angular_router/angular_router.dart';

class NavigationService {
  Router _router;
  Location _location;

  NavigationService(
    this._router,
    this._location,
  ) {
    print("before");
    // overrides every route if the language is not supported
    _router.onRouteActivated.listen((route) {
      // enforcing scroll to top at every page route
      print("mamad");
      //Element domBodyRef = querySelector("body");
      //domBodyRef.scrollIntoView(ScrollAlignment.TOP);
    });
  }

  Future<Object> navigateTo(String destination) {
    print("object hello world");
    return _router.navigate(destination);
  }

  void popUntil(String destinationURL) {
    _router.navigate(destinationURL);
  }

  void popAndPushNamed(String destinationURL, {bool isModal: false}) {
    _router.navigate(destinationURL);
  }

  void pop() {
    print("location back");
    _location.back();
  }
}
