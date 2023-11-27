import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'home_page.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double widths = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: height,
        width: widths,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('welcome_image.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(child:Column( children:[
          Container(   margin: const EdgeInsets.all(300),),
          const Text("Welcome",style: TextStyle(fontSize: 70,color: Colors.white,fontWeight: FontWeight.bold,letterSpacing: 2)),
          const SizedBox(height: 10,),
          const Text("To our store",style: TextStyle(fontSize: 35,color: Colors.white,fontWeight: FontWeight.bold,letterSpacing: 2,)),
          const SizedBox(height: 10,),
          const Text("Get your groceries as fast as in hour",style: TextStyle(fontSize: 15,color: Colors.white,fontWeight: FontWeight.bold,letterSpacing: 2,)),
          const SizedBox(height: 30,),
          ElevatedButton(
            onPressed: () {
              var push = Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const HomePage(), ));
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 78, 179, 113),
              padding: const EdgeInsets.symmetric(horizontal: 140, vertical: 20), // Set the button size
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15), // Set the border radius
                // Set the border color
              ),
            ),
            child: const Text('Get Started',style: TextStyle(fontSize: 20,color: Colors.white),
            ),

          ) ],
        ),
        ),
      ),



    );



  }
}
