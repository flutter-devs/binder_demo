import 'package:binder/binder.dart';

import '../../core/logics/busy.dart';
import '../../data/entities/user.dart';
import '../../data/repositories/user.dart';

final homeViewLogicRef = LogicRef((scope) => HomeViewLogic(scope));

final usersRef = StateRef(const <User>[]);

class HomeViewLogic with Logic, BusyLogic implements Loadable {
  const HomeViewLogic(this.scope);

  @override
  final Scope scope;

  UserRepository get _userRepository => use(userRepositoryRef);

  @override
  Future<void> load() async {
    busy = true;
    final users = await _userRepository.getUsers();
    write(usersRef, users);
    busy = false;
  }
}
