import 'package:flutter/material.dart';
import 'package:siteweb/pages/widgets/side_bar_menu.dart';
import 'package:siteweb/shared/app_colors.dart';

import 'dashboard/dashboard.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolors.bgSideMenu,
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //side menu
            Expanded(child: sidebar()),
            //main body
            Expanded(flex: 4, child: DashBoard())
          ],
        ),
      ),
    );
  }
}
