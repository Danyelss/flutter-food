import 'package:flutter/material.dart';
import 'package:food_app/widgets/appBar/title.dart';
import '../../theme/constants.dart';

class AppBar1 extends StatelessWidget implements PreferredSizeWidget {
  const AppBar1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
      AppBarTitle appBarTitle = const AppBarTitle();

    return AppBar(
      flexibleSpace: appBarTitle,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(appBarCircularRadius),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(appBarHeight);
}
