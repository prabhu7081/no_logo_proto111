import 'package:flutter/material.dart';

class ForgotPass extends StatelessWidget {
  const ForgotPass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 120, bottom: 70, right: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        height: 20,
                        width: 21,
                        child: Image.asset('images/Back@3x.png'),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 22,
                  ),
                  const Text(
                    'Recover Password',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 20.0,
                    ),
                  ),
                  // IconButton(
                  //   onPressed: () {
                  //     Navigator.pop(context);
                  //   },
                  //   icon: Icon(
                  //     Icons.arrow_back,
                  //     size: 20,
                  //     color: Colors.black,
                  //   ),
                  // ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width / 6),
              child: TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Write here your e-mail address',
                  labelText: 'Email',
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width / 6,
                  vertical: 30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Text(
                    'An email will be sent with instructions \nfor recovery of your password',
                    style: TextStyle(
                        fontSize: 12,
                        color: Color(0XFFEF7965),
                        fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 45),
              child: SizedBox(
                  height: 43,
                  width: MediaQuery.of(context).size.width / 1.5,
                  child: ElevatedButton(
                      onPressed: () {}, child: const Text('Submit'))),
            ),
          ],
        ),
      ),
    );
  }
}
