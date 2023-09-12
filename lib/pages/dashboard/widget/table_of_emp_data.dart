import 'package:flutter/material.dart';
import 'package:siteweb/shared/app_colors.dart';

class TableOfEmpData extends StatefulWidget {
  @override
  State<TableOfEmpData> createState() => _TableOfEmpDataState();
}

class _TableOfEmpDataState extends State<TableOfEmpData> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Appcolors.white, borderRadius: BorderRadius.circular(20)),
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "les donner des emplyeurs",
                style: TextStyle(color: Appcolors.black, fontSize: 22),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Appcolors.maincolor,
                  borderRadius: BorderRadius.circular(100),
                ),
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Text(
                  "Aller au tableau",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Appcolors.black,
                  ),
                ),
              )
            ],
          ),
          Divider(
            thickness: 0.5,
            color: Colors.grey,
          ),
          Table(
              defaultVerticalAlignment: TableCellVerticalAlignment.middle,
              children: [
                TableRow(
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(color: Colors.grey, width: 0.5),
                      ),
                    ),
                    children: [
                      tableHeader("Nom "),
                      tableHeader("Poste"),
                      tableHeader("Status"),
                      tableHeader(""),
                    ]),
                tableRow(context,
                    nom: "mohammed yacine",
                    image: "assets/yacine.png",
                    poste: "Programmer",
                    status: "Active"),
                tableRow(context,
                    nom: "Iliass",
                    image: "assets/user2.jpg",
                    poste: "Ingenieur",
                    status: "Active"),
                tableRow(context,
                    nom: "Arbaoui",
                    image: "assets/user3.jpg",
                    poste: "Ingenieur",
                    status: "Active"),
                tableRow(context,
                    nom: "khalil",
                    image: "assets/user4.jpg",
                    poste: "Ingenieur",
                    status: "Active"),
              ]),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("vue 4 formulaire 40"),
                Text(
                  "Voir tout",
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  TableRow tableRow(Context, {nom, image, poste, status}) {
    return TableRow(
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(color: Colors.grey, width: 0.5),
          ),
        ),
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 15),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(1000),
                  child: Image.asset(
                    image,
                    width: 30,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(nom)
              ],
            ),
          ),
          Text(poste),
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: Appcolors.maincolor),
                height: 10,
                width: 10,
              ),
              SizedBox(
                width: 10,
              ),
              Text(status),
            ],
          ),
          Image.asset(
            "assets/more.png",
            color: Colors.white,
            height: 30,
          )
        ]);
  }

  Widget tableHeader(text) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 15),
      child: Text(
        text,
        style: TextStyle(fontWeight: FontWeight.bold, color: Appcolors.black),
      ),
    );
  }
}
