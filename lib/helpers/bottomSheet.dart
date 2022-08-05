import 'package:flutter/material.dart';

import '../screens/ilst_screen.dart';
import '../screens/map_screen.dart';

class myBottomSheet extends StatefulWidget {
  @override
  State<myBottomSheet> createState() => _myBottomSheetState();
}

class _myBottomSheetState extends State<myBottomSheet> {
  bool isActive = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width / 1.1,
          child: const Divider(
            height: 10,
            color: Colors.black38,
          ),
        ),
        SizedBox(
          height: 90,
          child: Row(
            // crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                height: 80,
                width: 80,
                child: Padding(
                  padding: const EdgeInsets.all(0),
                  child: IconButton(
                    icon: Icon(Icons.home,
                        size: 80,
                        color: isActive
                            ? const Color(0XFF0844A4)
                            : const Color(0XFF989EB1)),
                    onPressed: () {
                      setState(() {
                        isActive = !isActive;
                      });
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 85,
                width: 85,
                child: IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => List1()));
                  },
                  icon: const Icon(
                    Icons.list,
                    size: 80,
                    color: Color(0XFF0844A4),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: SizedBox(
                  height: 85,
                  width: 85,
                  child: IconButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => MapScreen()));
                    },
                    icon: const Icon(
                      Icons.location_on,
                      size: 80,
                      color: Color(0XFF0844A4),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
