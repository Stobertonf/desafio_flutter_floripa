import 'package:flutter_modular/flutter_modular.dart';
import 'package:desafio_flutter_floripa/app/shared/constants/routes/routes.dart';
import 'package:desafio_flutter_floripa/app/modules/auth/presenter/auth_page.dart';

class AuthModule extends Module {
  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          Modular.initialRoute,
          child: (_, args) => const AuthPage(),
        ),
        ChildRoute(
          Routes.auth,
          child: (_, args) => const AuthPage(),
        ),
      ];
}
