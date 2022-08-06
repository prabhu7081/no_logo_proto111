import 'package:flutter/material.dart';
import 'package:no_logo_proto/helpers/Divider.dart';
import 'package:no_logo_proto/screens/filter_screen.dart';

import '../helpers/bottomSheet.dart';
import '../helpers/start_top.dart';

class MapScreen extends StatelessWidget {
  const MapScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      bottomNavigationBar: myBottomSheet(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            StartTop(
              topText: 'Online',
              pageText: 'Map',
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 12),
                  child: Container(
                    height: 40,
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
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FilterScreen(),
                      ),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                        height: 25,
                        width: 25,
                        child: Image.asset('images/Filter@3x.png')),
                  ),
                )
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
            myDivider()
            // myBottomSheet()
          ],
        ),
      ),
    ));
  }
}
