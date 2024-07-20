import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  
void main() => runApp(
  const MaterialApp(
    home: HomePage(),
  )
);

  @override
  Widget build(BuildContext context) {
    return   const Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Icon(Icons.menu, color: Colors.white,size: 50,),
                  Icon(Icons.book_online,color: Colors.white,size: 30,)
                ],
              ),
              ),
              Padding(
                padding: EdgeInsets.all(18.0),
                child: Text('Wybierz co chcesz najpiew zrobić polecam Preferowane na start!',
                style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold, fontSize: 17,letterSpacing: 2.0 ,fontFamily: 'Courier'),),
                ),
                Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Center(
                    child: Wrap(
                      
                      children: <Widget>[
                        SizedBox(
                          width: 160.0,
                          height: 160.0,
                          child: Card(
                            color: Color.fromARGB(255, 21, 21, 21),
                            child: Padding(
                              padding: EdgeInsets.all(8.8),
                              child: Column(
                                children: <Widget>[
                                  Icon(Icons.today_rounded),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  Text(
                                    "Preferowana Płeć",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18.0
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5.0,
                                  ),
                                  Text(
                                    "1 Quiz",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15.0
                                    ),

                                  )
                                ],
                              ),
                              ),
                          ),
                        )
                      ],
                    ),
                  ) ,
                  )
          ], 
        ),
      ),
    );
  }
}