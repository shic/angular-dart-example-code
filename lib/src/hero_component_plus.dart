import 'package:angular/angular.dart';
import 'package:angular_forms/angular_forms.dart';
import 'package:angular_router/angular_router.dart';

@Component(
  selector: 'my-hero-plus',
  template: '''
    <div>
      <h2>plus</h2>
      <button (click)="navigate()">navigate</button>

    </div>
  ''',
  directives: [coreDirectives, formDirectives],
)
class HeroComponentPlus {
  Router _router;

  HeroComponentPlus(this._router);

  void navigate() {
    _router.navigate("dash");
  }
}
