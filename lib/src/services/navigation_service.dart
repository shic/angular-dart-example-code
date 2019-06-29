import 'dart:html';

import 'package:angular_router/angular_router.dart';

class NavigationService {
  Router _router;
  Location _location;

  NavigationService(
    this._router,
    this._location,
  ) {
    // overrides every route if the language is not supported
    _router.onRouteActivated.listen((route) {
      // enforcing scroll to top at every page route
      Element domBodyRef = querySelector("body");
      domBodyRef.scrollIntoView(ScrollAlignment.TOP);
    });
  }

  @override
  Future<Object> navigateTo(String destinationURL,
      {bool isModal = false, bool popPrevious = false}) {
    return _router.navigate(destinationURL);
  }

  @override
  void popAndPushNamed(String destinationURL, {bool isModal: false}) {
    _router.navigate(destinationURL);
  }

  @override
  void pop({Object returnValue}) {
    _location.back();
  }

  @override
  void popUntil(String destinationURL) {
    _router.navigate(destinationURL);
  }
}
