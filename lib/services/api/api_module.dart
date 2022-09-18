import 'package:imdb/constants.dart';
import 'package:injectable/injectable.dart';

import 'api.dart';

@module
abstract class ApiModule{
  @lazySingleton
  Api getClient() => Api(baseUrl: Constants.baseUrl);
}