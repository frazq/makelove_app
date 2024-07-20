import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:makelove_app/pages/login.dart';




class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  //Tworzenie klasy i metody splashScreen
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> 
    with SingleTickerProviderStateMixin{

      //ustawianie pełnego ekranu z paskami stanu nawigacji
      @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

    //System przenoszenia się na kolejnego page'a wraz z splash screenem na 5sec
    Future.delayed(const Duration(seconds: 5), (){
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (_) => const LoginPage(),
        )
      );
    });
  }

  //chowanie dolnego baru apki
  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, 
      overlays: SystemUiOverlay.values);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
     body:  Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(colors: [Color.fromARGB(255, 208, 103, 194),Color.fromARGB(255, 212, 1, 75)],
        begin: Alignment.topRight,
        end: Alignment.bottomLeft
        ),
      ),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(image: AssetImage("assets/logo2.png")),
            SizedBox(height: 20,),
            Text('MakeLove',
              style: TextStyle(
                fontFamily: 'Courier', fontWeight: FontWeight.w400,
                color: Colors.white,
                fontSize: 32,
            )
            ),
          ],
        ),
     ),
    );
  }
}