import 'package:flutter/material.dart';
import 'package:siteweb/shared/app_colors.dart';

class CustomNotification extends StatefulWidget {
  @override
  State<CustomNotification> createState() => _CustomNotificationState();
}

class _CustomNotificationState extends State<CustomNotification> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Appcolors.maincolor,
        borderRadius: BorderRadius.circular(20),
      ),
      padding: EdgeInsets.all(20),
      child: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text.rich(TextSpan(
                  style: TextStyle(fontSize: 16, color: Appcolors.black),
                  children: [
                    TextSpan(
                      text: "hellooooo",
                      style: TextStyle(fontSize: 16, color: Appcolors.black),
                    ),
                    TextSpan(
                      text: "new web siiiiite",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ])),
              SizedBox(
                height: 10,
              ),
              Text(
                "L'entreprise Arbaoui de Réalisation est spécialisée \n dans la construction de bâtiments de qualité.",
                style: TextStyle(fontSize: 14, color: Appcolors.black),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "En savoir plus",
                style: TextStyle(
                  fontSize: 14.0,
                  color: Appcolors.black,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline,
                ),
              )
            ],
          ),
          Image.asset(
            'assets/disk_image.png',
            height: 150,
          ),
        ],
      ),
    );
  }
}
