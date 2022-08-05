import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'forgot_password_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool secureText = true;

  @override
  Widget build(BuildContext context) {
    // print(MediaQuery.of(context).size.height);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: MediaQuery.of(context).size.height / 5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 93,
                width: 93,
                child: Image(
                  image: AssetImage('images/Image@3x.png'),
                ),
              ),

              //////////////////////   LOgo/Image   ////////////////
              const SizedBox(
                height: 70,
              ),
              ///////////////////////////Text Form Field////////////
              Form(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width / 6),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: const InputDecoration(
                          hintText: 'user@email.com',
                          labelText: 'Email',
                        ),
                      ),
                      TextFormField(
                        obscureText: secureText,
                        decoration: InputDecoration(
                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                secureText = !secureText;
                              });
                            },
                            icon: secureText
                                ? const Icon(Icons.visibility)
                                : const Icon(Icons.visibility_off),
                          ),
                          hintText: '...........',
                          labelText: 'Password',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              //////////////////////////////////LogIn Button//////////////
              Padding(
                padding: const EdgeInsets.only(top: 45),
                child: SizedBox(
                    height: 43,
                    width: MediaQuery.of(context).size.width / 1.5,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, 'start');
                        },
                        child: const Text('Login'))),
              ),

              const SizedBox(
                height: 27,
              ),

              ////////////////////////Text Button/////////////////////
              Center(
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ForgotPass(),
                      ),
                    );
                  },
                  child: const Text(
                    'Recover password',
                    style: TextStyle(
                        color: Color(0XFFACAFD3),
                        fontSize: 12,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
