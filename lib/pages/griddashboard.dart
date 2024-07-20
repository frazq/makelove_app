import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class GridDashboard extends StatelessWidget {
  final List<Items> myList = [
    Items(
      title: "Calendar",
      subtitle: "March, Wednesday",
      event: "3 Events",
      img: "assets/calendar.png",
    ),
    Items(
      title: "Groceries",
      subtitle: "Bocali, Apple",
      event: "4 Items",
      img: "assets/food.png",
    ),
    Items(
      title: "Locations",
      subtitle: "Lucy Mao going to Office",
      event: "",
      img: "assets/map.png",
    ),
    Items(
      title: "Activity",
      subtitle: "Rose favirited your Post",
      event: "",
      img: "assets/festival.png",
    ),
    Items(
      title: "To do",
      subtitle: "Homework, Design",
      event: "4 Items",
      img: "assets/todo.png",
    ),
    Items(
      title: "Settings",
      subtitle: "",
      event: "2 Items",
      img: "assets/setting.png",
    ),
  ];

   GridDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    var color = 0xff453658;
    return Flexible(
      child: ListView.builder(
        itemCount: myList.length,
        itemBuilder: (context, index) {
          final data = myList[index];
          return Container(
            decoration: BoxDecoration(
              color: Color(color),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  data.img,
                  width: 42,
                ),
                const SizedBox(
                  height: 14,
                ),
                Text(
                  data.title,
                  style: GoogleFonts.openSans(
                    textStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  data.subtitle,
                  style: GoogleFonts.openSans(
                    textStyle: const TextStyle(
                      color: Colors.white38,
                      fontSize: 10,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 14,
                ),
                Text(
                  data.event,
                  style: GoogleFonts.openSans(
                    textStyle: const TextStyle(
                      color: Colors.white70,
                      fontSize: 11,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class Items {
  String title;
  String subtitle;
  String event;
  String img;

  Items({required this.title, required this.subtitle, required this.event, required this.img});
}