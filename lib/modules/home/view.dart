import 'package:binder/binder.dart';
import 'package:binder_demo/core/extensions/string_extension.dart';
import 'package:binder_demo/core/res/app_colors.dart';
import 'package:binder_demo/core/res/app_text_styles.dart';
import 'package:flutter/material.dart';

import '../../core/logics/busy.dart';
import '../../core/widgets/busy_listener.dart';
import '../../refs.dart';
import '../user/view.dart';
import 'logic.dart';

final userCountRef = Computed((watch) {
  return watch(usersRef).length;
});

class HomeView extends StatelessWidget {
  const HomeView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BinderScope(
      overrides: [
        busyRef.overrideWith(false),
        homeViewLogicRef.overrideWithSelf(),
      ],
      child: LogicLoader(
        refs: [homeViewLogicRef],
        child: const BusyListener(
          child: Scaffold(
            backgroundColor: AppColors.bgColor,
            // appBar: AppBar(
            //   title: Text('Home', style: AppTextStyles.extraLargeWhiteText()),
            // ),
            body: SafeArea(child: UserGridView()),
          ),
        ),
      ),
    );
  }
}

class UserGridView extends StatelessWidget {
  const UserGridView({
    Key   key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text("Users", style: AppTextStyles.xExtraLargeBlackText()),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: GridView.builder(
              physics: const BouncingScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
              ),
              itemCount: context.watch(userCountRef),
              itemBuilder: (context, index) {
                final user = context.watch(usersRef.select((users) => users[index]));
                return BinderScope(
                  overrides: [currentUserRef.overrideWith(user)],
                  child: const UserCellView(),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}

class UserCellView extends StatelessWidget {
  const UserCellView({
    Key   key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final name = context.watch(currentUserRef.select((user) => user.name));
    final initials = name.initials;
    return Card(
      child: InkWell(

        onTap: () {
          final user = context.read(currentUserRef);
          Navigator.of(context).push(
            MaterialPageRoute<void>(
              builder: (context) {
                return BinderScope(
                  overrides: [currentUserRef.overrideWith(user)],
                  child: UserView(name: name),
                );
              },
            ),
          );
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Column(
            children: [
              CircleAvatar(
                radius: 30,
                backgroundColor: AppColors.primaryColor,
                child: Text(
                  initials,
                  style: AppTextStyles.largeNormalTextLora(),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                name,
                textAlign: TextAlign.center,
                style: AppTextStyles.regularMediumText(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

