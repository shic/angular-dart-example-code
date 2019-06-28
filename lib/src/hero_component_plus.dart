import 'package:angular/angular.dart';
import 'package:angular_forms/angular_forms.dart';

@Component(
  selector: 'my-hero-plus',
  template: '''
    <div>
      <h2>plus</h2>
    </div>
  ''',
  directives: [coreDirectives, formDirectives],
)
class HeroComponentPlus {}
