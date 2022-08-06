import 'package:flutter/material.dart';
import 'package:no_logo_proto/helpers/bottomSheet.dart';
import 'package:no_logo_proto/screens/filter_screen.dart';
import 'package:no_logo_proto/screens/list2_screen.dart';

import '../helpers/dropDown.dart';
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
      bottomNavigationBar: myBottomSheet(),
      body: ListView(
        shrinkWrap: true,
        primary: false,
        children: [
          StartTop(
            topText: 'Online',
            pageText: 'List',
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 12),
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(width: 5, color: Color(0XFFD1D6DB))),
                  width: MediaQuery.of(context).size.width / 1.4,
                  height: 40,
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
              Padding(
                padding: EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => FilterScreen()));
                  },
                  child: const SizedBox(
                      height: 25,
                      width: 25,
                      child: Image(image: AssetImage('images/Filter@3x.png'))),
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              MyDropDown(),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: SizedBox(
                height: MediaQuery.of(context).size.height / 1.5,
                width: MediaQuery.of(context).size.width / 1.2,
                // color: Colors.yellowAccent,
                child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: 5,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        decoration: const BoxDecoration(
                            border: Border(
                                bottom: BorderSide(color: Colors.black12))),
                        child: ListTile(
                          onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const List2(),
                            ),
                          ),
                          contentPadding: const EdgeInsets.all(12),
                          leading: Icon(Icons.circle,
                              size: 15, color: Color(mydotColor![index])),
                          trailing: const Icon(Icons.arrow_forward_ios_rounded),
                          title: Text(
                            "${myText![index]}",
                            style: const TextStyle(fontWeight: FontWeight.w600),
                          ),
                          subtitle: const Text(
                              'Passage ei Sol 35, house 504 Vina del Mar'),
                        ),
                      );
                    })),
          ),
          // const myBottomSheet(),
        ],
      ),
    ));
  }
}
