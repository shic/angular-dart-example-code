import 'dart:html' as dartHtml;

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
      dartHtml.Element domBodyRef = dartHtml.querySelector("body");
      domBodyRef.scrollIntoView(dartHtml.ScrollAlignment.TOP);
    });
  }

  Future<Object> navigateTo(String destinationURL,
      {bool isModal = false, bool popPrevious = false}) {
    return _router.navigate(destinationURL);
  }

  void popAndPushNamed(String destinationURL, {bool isModal: false}) {
    _router.navigate(destinationURL);
  }

  void pop({Object returnValue}) {
    _location.back();
  }

  void popUntil(String destinationURL) {
    _router.navigate(destinationURL);
  }
}
