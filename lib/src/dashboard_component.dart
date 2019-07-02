import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import 'package:angular_tour_of_heroes/src/services/navigation_service.dart';

@Component(
  selector: 'dashboard',
  template: '''
    <div>
      <h2>dashboard</h2>
      <button (click)="navigate()">navigate</button>
      <material-dropdown-select
          [options]="myOptions"
          [(selection)]="mySelection"
          buttonText="{{mySelection}}"
          >
      </material-dropdown-select>
    </div>
  ''',
  directives: [
    coreDirectives,
    MaterialDropdownSelectComponent,
    PopupSourceDirective,
    materialInputDirectives,
    MaterialCheckboxComponent,
    MaterialIconComponent,
  ],
)
class DashboardComponent {
  NavigationService _navigationService;

  //https://dart-lang.github.io/angular_components/#/material_dropdown_select
  final myOptions = [1, 2, 3];
  int mySelection = 2;

  DashboardComponent(
    this._navigationService,
  );

  void navigate() {
    _navigationService.navigateTo("heroes");
  }
}
