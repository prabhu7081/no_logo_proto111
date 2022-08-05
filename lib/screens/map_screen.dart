import 'package:flutter/material.dart';

import '../helpers/bottomSheet.dart';
import '../helpers/start_top.dart';
import 'list2_screen.dart';

class MapScreen extends StatelessWidget {
  const MapScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            StartTop(
              topText: 'Map',
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
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => List2()));
                    },
                    icon: const Icon(
                      Icons.filter_alt,
                      size: 40,
                    ))
              ],
            ),

            /////////////Map image ////////////
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: SizedBox(
                  height: MediaQuery.of(context).size.height / 1.5,
                  width: MediaQuery.of(context).size.width / 1.2,
                  // color: Colors.yellowAccent,
                  child: Image.asset('images/mapImage.png')),
            ),
            myBottomSheet()
          ],
        ),
      ),
    ));
  }
}
