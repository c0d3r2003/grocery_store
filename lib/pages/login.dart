import 'package:flutter/material.dart';
import '/widgets/txt_field.dart';
import 'home_page.dart';
import '/widgets/my_botton.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String em = '';
  String pas = '';

  void authenticate() {
    if (em == 'email@gmail.com' && pas == '1234')
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => const HomePage()));
  }

  void updateEmail(String email) {
    if (email != '') em = email;
  }

  void updatePassword(String pass) {
    if (pass != '') pas = pass;
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      // appBar: AppBar(title: Text('Hell0')),
      backgroundColor: Color.fromARGB(255, 21, 137, 233),
      body: Center(
          child: Column(
        children: [
          SizedBox(
            height: height * 0.05,
          ),
          Container(
            width: 170,
            height: height * 0.2,
            decoration: BoxDecoration(
              // shape: BoxShape.circle,
              // color: Colors.white,
              image: DecorationImage(
                image: AssetImage('picnic-basket_10457470.png'),
                fit: BoxFit.cover,
              ),
            ),

            // child: SizedBox(),
          ),
          SizedBox(
            height: height * 0.05,
          ),
          Container(
            width: width * 0.94,
            height: height * 0.60,
            child: Center(
              child: Column(children: [
                SizedBox(height: height * 0.15),
                MyTextField(hint: 'Email', f: updateEmail),
                SizedBox(
                  height: 20,
                ),
                MyTextField(hint: 'Password', f: updatePassword),
                SizedBox(
                  height: 20,
                ),
                MyButton(
                    rad: 10,
                    f: authenticate,
                    height: 25,
                    width: 140,
                    cont: 'Login')
              ]),
            ),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(200),
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40),
                )),
          ),
          // SizedBox(
          //   height: height * 0.15,
          // )
        ],
      )),
    );
  }
}
//   ElevatedButton MyButton(
//       {required Function f,
//       required double height,
//       required double width,
//       required String cont}) {
//     return ElevatedButton(
//       onPressed: () {
//         f();
//       },
//       style: ElevatedButton.styleFrom(
//         backgroundColor: Color.fromARGB(255, 78, 179, 113),
//         padding: EdgeInsets.symmetric(
//             horizontal: width, vertical: height), // Set the button size
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(15), // Set the border radius
//           // Set the border color
//         ),
//       ),
//       child: Text(
//         '$cont',
//         style: TextStyle(fontSize: 20, color: Colors.white),
//       ),
//     );
//   }
// }

