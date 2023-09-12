import 'package:flutter/material.dart'
    show
        BorderRadius,
        BoxDecoration,
        BuildContext,
        Column,
        Container,
        EdgeInsets,
        Expanded,
        Row,
        SizedBox,
        State,
        StatefulWidget,
        Widget;
import 'package:flutter/widgets.dart';
import 'package:siteweb/pages/dashboard/widget/Notification.dart';
import 'package:siteweb/pages/dashboard/widget/calendar_widget.dart';
import 'package:siteweb/pages/dashboard/widget/headbar.dart';
import 'package:siteweb/pages/dashboard/widget/table_of_emp_data.dart';
import 'package:siteweb/shared/app_colors.dart';

class DashBoard extends StatefulWidget {
  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Appcolors.bgolor,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        children: [
          HeadBar(),
          Expanded(
            child: SingleChildScrollView(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      child: Column(
                        children: [
                          CustomNotification(),
                          SizedBox(
                            height: 20,
                          ),
                          TableOfEmpData(), // Use your custom notification widget here
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                      child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    child: Column(children: [
                      CalendarWidget(),
                    ]),
                  ))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
