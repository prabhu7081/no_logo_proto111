import 'package:flutter/material.dart';

import '../helpers/bottomSheet.dart';
import '../helpers/start_top.dart';

class List1 extends StatefulWidget {
  const List1({Key? key}) : super(key: key);

  @override
  State<List1> createState() => _List1State();
}

class _List1State extends State<List1> {
  List? mydotColor = [
    (0XFFF7FF55),
    (0XFFF7FF55),
    (0XFF05A938),
    (0XFFFF0000),
    (0XFFFF0000),
  ];

  List? myText = [
    '#F7FF55',
    '#F7FF55',
    '#F5A938',
    '#FF0000',
    '#FF0000',
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            StartTop(
              topText: 'Online',
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 12),
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(width: 5, color: Color(0XFFD1D6DB))),
                    width: MediaQuery.of(context).size.width / 1.4,
                    child: TextFormField(
                      decoration: InputDecoration(
                          label: Center(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 50),
                          child: Row(
                            children: const [
                              Icon(
                                Icons.search,
                                color: Colors.black,
                              ),
                              Text('Find client')
                            ],
                          ),
                        ),
                      )),
                    ),
                  ),
                ),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.filter_alt,
                      size: 40,
                    ))
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: SizedBox(
                  height: MediaQuery.of(context).size.height / 1.5,
                  width: MediaQuery.of(context).size.width / 1.2,
                  // color: Colors.yellowAccent,
                  child: ListView.builder(
                      itemCount: 5,
                      itemBuilder: (BuildContext context, int index) {
                        return ListTile(
                            leading: Icon(Icons.circle,
                                size: 15,
                                color: Color(mydotColor![index]) as Color),
                            trailing: Icon(Icons.arrow_forward_ios_rounded),
                            title: Text("${myText![index]}"));
                      })),
            ),
            myBottomSheet()
          ],
        ),
      ),
    ));
  }
}
