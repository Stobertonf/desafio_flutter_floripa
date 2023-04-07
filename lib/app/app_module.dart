import 'package:flutter_modular/flutter_modular.dart';
import 'package:desafio_flutter_floripa/app/modules/auth/auth_module.dart';

class AppModule extends Module {
  @override
  @override
  List<ModularRoute> get routes => [
        ModuleRoute(
          Modular.initialRoute,
          module: AuthModule(),
        ),
        /* ModuleRoute(
          Routes.customer,
          module: CustomerModule(),
        ),*/
      ];
}
