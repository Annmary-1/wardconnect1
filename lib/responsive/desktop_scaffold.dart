import 'package:firstapp/util/my_box.dart';
import 'package:flutter/material.dart';
import 'package:firstapp/const.dart';

class DesktopScaffold extends StatefulWidget {
  const DesktopScaffold({super.key});

  @override
  State<DesktopScaffold> createState() => _DesktopScaffoldState();
}

class _DesktopScaffoldState extends State<DesktopScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myappbar,
      backgroundColor: mydefaultbg,
      body: Row(
        children: [
          mydrawer,
          Expanded(
            child: Column(
              children: [
                AspectRatio(
                  aspectRatio: 4,
                  child: SizedBox(
                      width: double.infinity,
                      child: GridView.builder(
                          //4boxesontop
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 4),
                          itemBuilder: (context, index) {
                            return MyBox();
                          })
                      //tilex below
                      ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
