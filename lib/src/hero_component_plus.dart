import 'package:angular/angular.dart';
import 'package:angular_forms/angular_forms.dart';
import 'package:angular_tour_of_heroes/src/services/navigation_service.dart';

@Component(
  selector: 'my-hero-plus',
  template: '''
    <div>
      <h2>plus</h2>
      <button (click)="navigateToAnotherPage()">hello navigate</button>
      <button (click)="backNavigate()">back navigate</button>

    </div>
  ''',
  directives: [coreDirectives, formDirectives],
)
class HeroComponentPlus {
  NavigationService _navigationService;

  HeroComponentPlus(this._navigationService);

  void navigateToAnotherPage() {
    _navigationService.navigateTo("dash");
  }

  void backNavigate() {
    _navigationService.pop();
  }
}
