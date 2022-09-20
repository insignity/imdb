import 'package:imdb/models/token.dart';
import 'package:imdb/services/storage/storage_service.dart';
import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

part 'session_service.g.dart';

@singleton
class SessionService = _SessionService with _$SessionService;

abstract class _SessionService with Store {
  final StorageService storageService;

  _SessionService(this.storageService) {
    _token = storageService.sessionToken;
  }

  @readonly
  Token? _token;

  @computed
  bool get isLoggedIn => _token != null;

  @action
  void update(Token token) {
    storageService.sessionToken = _token = token;
  }

  @action
  void clear() {
    storageService.sessionToken = _token = null;
  }
}
