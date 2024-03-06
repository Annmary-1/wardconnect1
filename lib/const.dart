import 'package:flutter/material.dart';

var mydefaultbg = Colors.grey[300];
var myappbar = AppBar(backgroundColor: Colors.grey[900]);
var mydrawer = Drawer(
  backgroundColor: Colors.grey[300],
  child: const Column(children: [
    DrawerHeader(child: Icon(Icons.favorite)),
    ListTile(
      leading: Icon(Icons.home),
      title: Text('HOME'),
    ),
    ListTile(leading: Icon(Icons.logout), title: Text('LOGOUT')),
  ]),
);
