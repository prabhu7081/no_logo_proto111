import 'package:flutter/material.dart';
import 'package:no_logo_proto/helpers/Divider.dart';

import '../helpers/bottomSheet.dart';
import '../helpers/start_top.dart';

class List2 extends StatefulWidget {
  const List2({Key? key}) : super(key: key);

  @override
  State<List2> createState() => _List2State();
}

class _List2State extends State<List2> {
  List? myIcon = [
    Icons.person,
    Icons.home,
    Icons.navigation,
    Icons.location_on_sharp,
    Icons.access_time,
    Icons.circle_outlined,
    Icons.calendar_today_outlined,
    Icons.library_books_outlined,
  ];

  List? myText = [
    'Name',
    'Address',
    'Location',
    'Read Path',
    'Meter Number',
    'Diameter',
    'Last Read',
    'Last read key',
  ];
  List? myHelperText = [
    ' Fernando Quinteros',
    ' Passage el Sol 35, house 504,',
    ' Curauma',
    ' 161-350-5',
    ' 20012565',
    '25',
    ' 03-04-2022',
    'Normal'
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      bottomNavigationBar: const myBottomSheet(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Stack(children: [
                  Positioned(
                    top: 60,
                    child: InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        height: 25,
                        width: 25,
                        child: Image(image: AssetImage('images/Back@3x.png')),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: StartTop(
                      topText: 'Online',
                      pageText: 'Client #584931',
                    ),
                  ),
                ]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Customer Data',
                    style: TextStyle(
                        fontWeight: FontWeight.w600, color: Colors.blue),
                  ),
                  myDivider(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  //  color: Colors.red,
                  height: MediaQuery.of(context).size.height / 1.7,
                  width: MediaQuery.of(context).size.width / 1.2,
                  //color: Colors.yellowAccent,
                  child: ListView.builder(
                      itemCount: myText?.length,
                      itemBuilder: (BuildContext context, int index) {
                        return ListTile(
                          minVerticalPadding: 15,
                          leading: Icon(
                            myIcon![index],
                            color: Colors.black,
                          ),
                          title: Text(
                            "${myText![index]}",
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                          subtitle: Text('${myHelperText![index]}'),
                        );
                      })),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                SizedBox(
                    height: 60,
                    width: 50,
                    child:
                        Image(image: AssetImage('images/Photograph@3x.png'))),
                Text('Photograph \nFacade')
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: () {}, child: Text('Complete form')),
                ElevatedButton(onPressed: () {}, child: Text('Save draft')),
              ],
            )
          ],
        ),
      ),
    ));
  }
}
