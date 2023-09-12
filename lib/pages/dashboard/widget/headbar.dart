import 'package:flutter/material.dart';
import 'package:siteweb/shared/app_colors.dart';

class HeadBar extends StatefulWidget {
  @override
  State<HeadBar> createState() => _HeadBarState();
}

class _HeadBarState extends State<HeadBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Row(
        children: [
          Text(
            "Tableau de bord",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          Spacer(),
          Row(
            children: [
              navIcon(icon: Icons.search),
              navIcon(icon: Icons.send),
              navIcon(icon: Icons.notifications),
            ],
          )
        ],
      ),
    );
  }

  Widget navIcon({required IconData icon}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Icon(
        icon,
        color: Appcolors.black,
      ),
    );
  }
}
