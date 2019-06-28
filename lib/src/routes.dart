import 'package:angular_router/angular_router.dart';

import 'hero_component_plus.template.dart' as hero_list_template;
import 'route_paths.dart';

export 'route_paths.dart';

class Routes {
  static final heroes = RouteDefinition(
    routePath: RoutePaths.heroes,
    component: hero_list_template.HeroComponentPlusNgFactory,
  );

  static final all = <RouteDefinition>[
    heroes,
  ];
}
