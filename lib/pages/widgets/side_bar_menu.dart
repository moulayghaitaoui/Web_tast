import 'package:flutter/material.dart';
import 'package:siteweb/shared/app_colors.dart';

class sidebar extends StatefulWidget {
  @override
  State<sidebar> createState() => _sidebarState();
}

class _sidebarState extends State<sidebar> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 0,
      child: Container(
        color: Appcolors.bgSideMenu,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Text(
                "Entreprise Arbaoui De Réalisation",
                style: TextStyle(
                    color: Appcolors.maincolor,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
            ),
            DraweList(
              title: "Tableau de bord",
              icon: "assets/menu_home.png",
              press: () {},
            ),
            DraweList(
              title: "Recruitment",
              icon: "assets/menu_recruitment.png",
              press: () {},
            ),
            DraweList(
              title: "Intégration",
              icon: "assets/menu_onboarding.png",
              press: () {},
            ),
            DraweList(
              title: "calendrier",
              icon: "assets/menu_calendar.png",
              press: () {},
            ),
            DraweList(
              title: "Parametre",
              icon: "assets/menu_settings.png",
              press: () {},
            ),
            Spacer(),
            Image.asset("assets/sidebar_image.png")
          ],
        ),
      ),
    );
  }
}

class DraweList extends StatelessWidget {
  final String title, icon;
  final VoidCallback press;

  const DraweList(
      {super.key,
      required this.title,
      required this.icon,
      required this.press});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      horizontalTitleGap: 0.0,
      leading: Image.asset(
        icon,
        color: Appcolors.white,
        height: 16,
      ),
      title: Text(
        title,
        style: TextStyle(color: Appcolors.white),
      ),
      onTap: press,
    );
  }
}
