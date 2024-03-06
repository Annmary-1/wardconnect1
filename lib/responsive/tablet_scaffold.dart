import 'package:firstapp/util/my_box.dart';
import 'package:flutter/material.dart';
import 'package:firstapp/const.dart';

class TabletScaffold extends StatefulWidget {
  const TabletScaffold({super.key});

  @override
  State<TabletScaffold> createState() => _TabletScaffoldState();
}

class _TabletScaffoldState extends State<TabletScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: myappbar,
        backgroundColor: mydefaultbg,
        drawer: mydrawer,
        body: Column(
          children: [
            AspectRatio(
              aspectRatio: 1,
              child: SizedBox(
                  width: double.infinity,
                  child: GridView.builder(
                      //4boxesontop
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2),
                      itemBuilder: (context, index) {
                        return MyBox();
                      })
                  //tilex below
                  ),
            )
          ],
        ));
  }
}
