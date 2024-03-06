import 'package:firstapp/const.dart';
import 'package:firstapp/util/my_box.dart';
import 'package:flutter/material.dart';

class MobileScaffold extends StatefulWidget {
  const MobileScaffold({super.key});

  @override
  State<MobileScaffold> createState() => _MobileScaffoldState();
}

class _MobileScaffoldState extends State<MobileScaffold> {
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
