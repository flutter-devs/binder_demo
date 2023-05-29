import 'package:binder/binder.dart';
import 'package:binder_demo/core/res/app_text_styles.dart';
import 'package:flutter/material.dart';

import '../../core/res/app_colors.dart';
import '../../refs.dart';

class UserView extends StatelessWidget {
  final String name;

  const UserView({Key key, this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: SafeArea(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Welcome $name!",
                style: AppTextStyles.xExtraLargePrimaryText(),
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text("Back"))
            ],
          ),
        ),
      ),
    );
  }
}

class AppBarTitle extends StatelessWidget {
  const AppBarTitle({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final name = context.watch(currentUserRef.select((user) => user.name));
    return Text(name, style: AppTextStyles.extraLargeWhiteText());
  }
}
