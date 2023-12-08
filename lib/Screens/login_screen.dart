import 'package:ecommerce/Screens/register_screen.dart';
import 'package:flutter/material.dart';

import '../main.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Container(
            margin: EdgeInsets.only(left: 16, right: 16),
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 68),
                Image.asset(
                  'assets/images/Vector_add_color.png',
                  height: 60,
                  width: 60,
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  "Welcome to Lafyuu",
                  style: TextStyle(
                      color: Color(0xff223263),
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  "Sign in to continue",
                  style: TextStyle(
                      color: Color(0xff9098B1),
                      fontSize: 12,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 28,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "Your Email",
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.email)),
                ),
                const SizedBox(
                  height: 8,
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Password",
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.lock_outline),
                    suffixIcon: Icon(Icons.visibility_off),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                ElevatedButton(
                  onPressed: () {},
                  // style: ButtonStyle(elevation: MaterialStateProperty(12.0 )),
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size(340, 36),
                      elevation: 0,
                      textStyle: const TextStyle(color: Colors.white)),
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: const Text('Sign In',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold)),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: const Divider(
                        height: 1,
                        thickness: 1,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Text("OR",
                          style: TextStyle(
                              fontSize: 14,
                              color: Color(0xff9098B1),
                              fontWeight: FontWeight.bold)),
                    ),
                    Expanded(
                      child: const Divider(
                        height: 1,
                        thickness: 1,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                OutlinedButton.icon(
                  onPressed: () {},
                  icon: Image.asset(
                    "assets/images/google_logo.png",
                    height: 16,
                    width: 16,
                  ),
                  label: Center(
                      child: Text(
                        "Login with Google",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff9098B1)),
                      )),
                  style: OutlinedButton.styleFrom(
                    fixedSize: Size(MediaQuery.of(context).size.width,
                        MediaQuery.of(context).size.height * 0.070),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                OutlinedButton.icon(
                  onPressed: () {},
                  icon: Image.asset(
                    "assets/images/facebook_logo.png",
                    height: 16,
                    width: 16,
                  ),
                  label: Center(
                      child: Text(
                        "Login with facebook",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff9098B1)),
                      )),
                  style: OutlinedButton.styleFrom(
                    fixedSize: Size(MediaQuery.of(context).size.width,
                        MediaQuery.of(context).size.height * 0.070),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  "Forgot Password?",
                  style: TextStyle(
                      color: Color(0xff40BFFF),
                      fontSize: 12,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don’t have a account? ",
                      style: TextStyle(
                          color: Color(0xff9098B1),
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => RegisterScreen(),
                          ),
                        );
                      },
                      child: Text(
                        "Register",
                        style: TextStyle(
                            color: Color(0xff40BFFF),
                            fontSize: 12,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
