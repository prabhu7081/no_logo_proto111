import 'package:flutter/material.dart';

import '../screens/user_info_screen.dart';

class StartTop extends StatelessWidget {
  String? topText;
  String? pageText;
  StartTop({Key? key, required this.topText, required this.pageText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //
          Padding(
            padding: const EdgeInsets.only(top: 60, left: 25, bottom: 14),
            child: Text(
              '$pageText',
              style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                  color: Colors.black),
            ),
          ),
          Column(
            children: [
              Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 20.0, right: 25, bottom: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(
                          height: 50,
                          width: 50,
                          child: InkWell(
                            onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => UserInfo())),
                            child: const CircleAvatar(
                              backgroundImage: AssetImage(
                                'images/Ellipse 3.png',
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      right: 56,
                    ),
                    child: Row(
                      children: [
                        const SizedBox(
                          height: 13,
                          width: 13,
                          child: Image(
                            image: AssetImage('images/Online@3x.png'),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          '$topText',
                          style: const TextStyle(
                              color: Colors.black54,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
