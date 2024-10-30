import 'package:depi_proj/depi/other_pages/exam_home.dart';
import 'package:depi_proj/depi/log_layout/signup.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Login extends StatelessWidget {
  Login({super.key});
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 9, 82, 108),
          title: const Text("welcom DEPI & Eng.Mohammed Nagy"),
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 60,
                  ),
                  Image.network(
                    "https://static.vecteezy.com/system/resources/previews/029/711/176/non_2x/developer-with-ai-generated-free-png.png",
                    height: 200,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text("let's see a complet app you can test it it",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)),
                      labelText: 'Enter E-mail of project',
                      hintText: 'depi@depi.com ',
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    obscureText: true,
                    obscuringCharacter: "\$",
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30)),
                        labelText: "Write password ",
                        hintText: "123456789"),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                      onPressed: () /*async*/ {
                        /*try {
                          final userCredential = await FirebaseAuth.instance
                              .signInWithEmailAndPassword(
                            email: emailController.text,
                            password: passwordController.text,
                          );
                          // Handle successful login
                          final user = userCredential.user;
                          if (user != null) {
                            print('User signed in successfully: ${user.uid}');*/
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PersistentBottomNavPage(),
                          ),
                        );
                        /*} else {
                            // Handle login failure
                            print('Login failed');
                            // Show an error message to the user
                          }
                        } catch (error) {
                          // Handle authentication errors
                          print('Authentication error: $error');
                          // Show an error message to the user
                        }*/
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromARGB(255, 9, 82,
                              108), // Set button background color to blue
                          foregroundColor: Colors.white,
                          fixedSize:
                              const Size(50.0, 20.0), // Set width and height
                          shape: const StadiumBorder(),
                          minimumSize: const Size(200, 48),
                          shadowColor: const Color.fromARGB(255, 0, 243, 227)),
                      child: const Text(
                        "Login", // Use Text for clarity
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20 // Set text color to red
                            ),
                      )),
                  const SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const SignUp()),
                      );
                    },
                    child: const Text(
                      'you have no account!? Sign up now',
                      style: TextStyle(
                        color: Color.fromARGB(255, 9, 82, 108),
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
