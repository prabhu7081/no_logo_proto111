import 'package:flutter/material.dart';
import 'package:no_logo_proto/helpers/Divider.dart';

import '../helpers/Circular_percentage_indicator.dart';
import '../helpers/bar_chart.dart';
import '../helpers/bottomSheet.dart';
import '../helpers/start_top.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const myBottomSheet(),
      // bottomSheet: myBottomSheet(),
      body: SafeArea(
        child: ListView(
          //mainAxisAlignment: MainAxisAlignment.start,
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            StartTop(
              topText: 'Online',
              pageText: 'Start',
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Visiting Status',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                  ),
                  Text(
                    'Period: April 2022',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 22, top: 11, bottom: 14),
              child: Text(
                'Total scheduled visits 500',
                style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    color: Colors.black54),
              ),
            ),
            //////////////////////////   Divider Start here  //////////////
            myDivider(),
            const CircleProgress(),
            const SizedBox(
              height: 10,
            ),
            BarChart(),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: const [
                    SizedBox(
                      child: Icon(
                        Icons.rectangle,
                        color: Colors.green,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Completed',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Colors.black),
                      ),
                    )
                  ],
                ),
                Row(
                  children: const [
                    SizedBox(
                      child: Icon(
                        Icons.rectangle,
                        color: Colors.yellowAccent,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'In Process',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Colors.black),
                      ),
                    )
                  ],
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            myDivider()
            // const Padding(
            //   padding: EdgeInsets.all(0),
            //   child: Padding(
            //     padding: EdgeInsets.only(bottom: 50),
            //     child: myBottomSheet(),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
