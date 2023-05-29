import 'package:binder/binder.dart';
import 'package:flutter/material.dart';

import '../home/view.dart';

class App extends StatelessWidget {
  const App({
    Key   key,
    this.mockHome,
  }) : super(key: key);

  final Widget   mockHome;

  @override
  Widget build(BuildContext context) {
    return BinderScope(
      child: MaterialApp(
        title: 'Binder Demo App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        debugShowCheckedModeBanner: false,
        home: const HomeView(),
      ),
    );
  }
}
