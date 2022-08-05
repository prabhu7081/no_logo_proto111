import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class CircleProgress extends StatefulWidget {
  const CircleProgress({Key? key}) : super(key: key);

  @override
  State<CircleProgress> createState() => _CircleProgressState();
}

class _CircleProgressState extends State<CircleProgress> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(
          top: 10,
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  const Text(
                    'Completed',
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff0844a4),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 23, left: 25),
                    child: CircularPercentIndicator(
                      radius: 47.0,
                      animation: true,
                      animationDuration: 1200,
                      lineWidth: 7.0,
                      percent: 0.5,
                      center: const Text(
                        "50%",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20.0),
                      ),
                      circularStrokeCap: CircularStrokeCap.round,
                      backgroundColor: Colors.black38,
                      progressColor: const Color(0XFF7FE1AD),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  const Text(
                    'In Process',
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff0844a4),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 23, left: 25),
                    child: CircularPercentIndicator(
                      radius: 47.0,
                      animation: true,
                      animationDuration: 1200,
                      lineWidth: 7.0,
                      percent: 0.2,
                      center: const Text(
                        "20%",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20.0),
                      ),
                      circularStrokeCap: CircularStrokeCap.round,
                      progressColor: const Color(0xfff7ff55),
                      backgroundColor: Colors.black38,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  const Text(
                    'Earnings',
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff0844a4),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 23, right: 24, left: 25),
                    child: CircularPercentIndicator(
                      radius: 47.0,
                      animation: true,
                      animationDuration: 1200,
                      lineWidth: 7.0,
                      percent: 0.3,
                      center: const Text(
                        "30%",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20.0),
                      ),
                      circularStrokeCap: CircularStrokeCap.round,
                      backgroundColor: Colors.black38,
                      progressColor: Colors.red,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
