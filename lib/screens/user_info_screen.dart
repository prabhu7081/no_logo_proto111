import 'package:flutter/material.dart';

import '../helpers/bottomSheet.dart';

class UserInfo extends StatefulWidget {
  const UserInfo({Key? key}) : super(key: key);

  @override
  State<UserInfo> createState() => _UserInfoState();
}

class _UserInfoState extends State<UserInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 150),
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
                    'User Information',
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
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
              child: Divider(
                thickness: 2,
              ),
            ),
            const Icon(
              Icons.circle,
              size: 113,
              color: Color(0xffd9d9d9),
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                'Jaun Perez G.',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(50.0),
              child: Text(
                'Inspector Aconcagua',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 120, bottom: 20),
              child: Text(
                'App v1.0 @2022',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
              ),
            ),
            myBottomSheet()
          ],
        ),
      ),
    );
    ;
  }
}
