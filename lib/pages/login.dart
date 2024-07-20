
import 'package:flutter/material.dart';
import 'package:make_love/pages/home.dart';




class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

// inicjalizowanie firebase apki



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color.fromARGB(255, 208, 103, 194),Color.fromARGB(255, 212, 1, 75)],
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const SizedBox(height: 40),
                const Image(image: AssetImage("assets/login_img.png")),
                const SizedBox(height: 20),
                const Text(
                  'Stwórz swój profil',
                  style: TextStyle(
                    fontStyle: FontStyle.normal,
                    color: Colors.white,
                    fontSize: 32,
                  ),
                ),
                const SizedBox(height: 20),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    'Stwórz profil aby móc poznawać swoje postępy i kontynuować',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontStyle: FontStyle.normal,
                      color: Colors.white,
                      fontSize: 15,
                      
                    ),
                  ),
                ),
                const SizedBox(height: 40),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Podaj nazwę użytkownika',
                      border: OutlineInputBorder(),
                      labelStyle: TextStyle(color: Color.fromARGB(255, 182, 181, 181)),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Podaj E-mail',
                      border: OutlineInputBorder(),
                      labelStyle: TextStyle(color: Color.fromARGB(255, 182, 181, 181)),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Podaj Hasło',
                      border: OutlineInputBorder(),
                      labelStyle: TextStyle(color: Color.fromARGB(255, 182, 181, 181)),
                    ),
                  ),
                ),
const SizedBox(height: 50, width: 50,),

Padding(
  padding: const EdgeInsets.symmetric(horizontal: 50.0),
  child: ElevatedButton(
    style: ButtonStyle(minimumSize: WidgetStateProperty.all(const Size(200, 50))),
    onPressed: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) =>  const HomePage()),
      );
    },
    child: const Text(
      'Zaloguj',
      textAlign: TextAlign.center,
      style: TextStyle(
        fontStyle: FontStyle.italic,
        color: Color.fromARGB(255, 0, 0, 0),
        fontSize: 15,
        
      ),
    ),
   
  ),
),]
),
),
),
),
);



}}
        
