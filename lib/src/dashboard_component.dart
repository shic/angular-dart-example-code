import 'package:angular/angular.dart';
import 'package:angular_tour_of_heroes/src/services/navigation_service.dart';

@Component(
  selector: 'dashboard',
  template: '''
    <div>
      <h2>dashboard</h2>
      <button (click)="navigate()">navigate</button>
    </div>
  ''',
  directives: [coreDirectives],
)
class DashboardComponent {
  NavigationService _navigationService;

  DashboardComponent(
    this._navigationService,
  );

  void navigate() {
    _navigationService.navigateTo("heroes");
  }
}
