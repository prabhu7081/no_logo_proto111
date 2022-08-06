import 'package:flutter/material.dart';
import 'package:no_logo_proto/helpers/start_top.dart';

import '../helpers/bottomSheet.dart';
import '../helpers/dropDown.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({Key? key}) : super(key: key);

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: myBottomSheet(),
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              children: [
                Positioned(
                  top: 58,
                  left: 20,
                  child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      height: 30,
                      width: 30,
                      child: const Image(
                        image: AssetImage('images/Back@3x.png'),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 50),
                  child: StartTop(topText: ('online'), pageText: "Filter"),
                ),
              ],
            ),
            Center(
              child: SizedBox(
                width: MediaQuery.of(context).size.width / 1.1,
                height: 10,
                child: const Divider(
                  thickness: 2,
                  height: 15,
                  color: Colors.black38,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Common',
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.w700),
                  ),
                  MyDropDown(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Location',
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.w700),
                  ),
                  MyDropDown(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 25, bottom: 50, left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Reading Route',
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.w700),
                  ),
                  MyDropDown(),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: () {}, child: Text('Clear Filters')),
                ElevatedButton(onPressed: () {}, child: Text('Apply Filters')),
              ],
            )
          ],
        ),
      ),
    );
  }
}
