import 'package:flutter/material.dart';
import 'package:no_logo_proto/screens/map_screen.dart';
import 'package:no_logo_proto/screens/start_screen.dart';

import '../screens/list1_screen.dart';

class myBottomSheet extends StatefulWidget {
  const myBottomSheet({Key? key}) : super(key: key);

  @override
  State<myBottomSheet> createState() => _myBottomSheetState();
}

class _myBottomSheetState extends State<myBottomSheet> {
  int _selectedIndex = 0;
  bool isActive = false;
  // void _onItemTapped(int index) {
  //   setState(() {
  //     _selectedIndex = index;
  //   });
  // }

  @override
  Widget build(
    BuildContext,
  ) {
    return BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: InkWell(
              onTap: () {
                setState(() {
                  _selectedIndex = 0;
                });
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const StartScreen(),
                  ),
                );
              },
              child: Icon(
                Icons.home,
                color: _selectedIndex == 0 ? Colors.blue : Colors.black54,
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: InkWell(
              onTap: () {
                setState(() {
                  _selectedIndex = 1;
                });
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const List1(),
                  ),
                );
              },
              child: Icon(
                Icons.list,
                color: _selectedIndex == 1 ? Colors.blue : Colors.black54,
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: InkWell(
              onTap: () {
                _selectedIndex = 2;
                //isActive = !isActive;

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MapScreen(),
                  ),
                );
              },
              child: Icon(
                Icons.location_on,
                color: _selectedIndex == 2 ? Colors.blue : Colors.black54,
              ),
            ),
            label: '',
          ),
        ],
        type: BottomNavigationBarType.shifting,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black54,
        iconSize: 42,
        // onTap: _onItemTapped,
        elevation: 0);

    //   Column(
    //   children: [
    //     SizedBox(
    //       width: MediaQuery.of(context).size.width / 1.1,
    //       child: const Divider(
    //         height: 10,
    //         color: Colors.black38,
    //       ),
    //     ),
    //     SizedBox(
    //       height: 90,
    //       child: Row(
    //         // crossAxisAlignment: CrossAxisAlignment.center,
    //         mainAxisAlignment: MainAxisAlignment.spaceAround,
    //         children: [
    //           SizedBox(
    //             height: 80,
    //             width: 80,
    //             child: Padding(
    //               padding: const EdgeInsets.all(0),
    //               child: IconButton(
    //                 icon: Icon(Icons.home,
    //                     size: 80,
    //                     color: isActive
    //                         ? const Color(0XFF0844A4)
    //                         : const Color(0XFF989EB1)),
    //                 onPressed: () {
    //                   setState(() {
    //                     isActive = !isActive;
    //                   });
    //                 },
    //               ),
    //             ),
    //           ),
    //           SizedBox(
    //             height: 85,
    //             width: 85,
    //             child: IconButton(
    //               onPressed: () {
    //                 Navigator.push(context,
    //                     MaterialPageRoute(builder: (context) => const List1()));
    //               },
    //               icon: const Icon(
    //                 Icons.list,
    //                 size: 80,
    //                 color: Color(0XFF0844A4),
    //               ),
    //             ),
    //           ),
    //           Padding(
    //             padding: const EdgeInsets.only(right: 10.0),
    //             child: SizedBox(
    //               height: 85,
    //               width: 85,
    //               child: IconButton(
    //                 onPressed: () {
    //                   Navigator.push(context,
    //                       MaterialPageRoute(builder: (context) => MapScreen()));
    //                 },
    //                 icon: const Icon(
    //                   Icons.location_on,
    //                   size: 80,
    //                   color: Color(0XFF0844A4),
    //                 ),
    //               ),
    //             ),
    //           ),
    //         ],
    //       ),
    //     ),
    //   ],
    // );
  }
}
