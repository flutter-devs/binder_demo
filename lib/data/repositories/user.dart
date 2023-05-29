import 'package:binder/binder.dart';

import '../sources/api_client.dart';

final userRepositoryRef = LogicRef((scope) => UserRepository(scope));

class UserRepository with Logic {
  const UserRepository(this.scope);

  @override
  final Scope scope;

  ApiClient get _apiClient => use(apiClientRef);

  Future<List> getUsers() {
    return _apiClient.getUsers();
  }
}
