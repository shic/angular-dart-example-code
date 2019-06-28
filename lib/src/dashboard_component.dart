import 'package:angular/angular.dart';
import 'package:angular_forms/angular_forms.dart';

@Component(
  selector: 'dashboard',
  template: '''
    <div>
      <h2>dashboard</h2>
    </div>
  ''',
  directives: [coreDirectives, formDirectives],
)
class DashboardComponent {}
