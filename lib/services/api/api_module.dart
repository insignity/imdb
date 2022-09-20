import 'package:imdb/constants.dart';
import 'package:imdb/services/session/session_service.dart';
import 'package:injectable/injectable.dart';

import 'api.dart';

@module
abstract class ApiModule {
  @lazySingleton
  Api getClient(SessionService sessionService) => Api(
      baseUrl: Constants.baseUrl,
      getToken: () => sessionService.token,
      setToken: (token) async {
        if (token == null) {
          sessionService.clear();
        } else {
          sessionService.update(token);
        }
      });
}
