import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget getDrawer(BuildContext context) {
  return Drawer(
      child: ListView(
    padding: EdgeInsets.zero,
    children: [
      const DrawerHeader(
        decoration: BoxDecoration(
          color: Colors.blue,
        ),
        child: Text(
          'eCoaching',
          style: TextStyle(fontSize: 20),
        ),
      ),
      ListTile(
        leading: Icon(Icons.view_list),
        title: const Text('View all student'),
        onTap: () {
          Navigator.pop(context);
        },
      ),
      ListTile(
        leading: Icon(Icons.add),
        title: const Text('Add Student'),
        onTap: () {
          Navigator.pop(context);
        },
      ),

      ListTile(
        leading: Icon(Icons.edit),
        title: const Text(' Edit Profile '),
        onTap: () {
          Navigator.pop(context);
        },
      ),
      ListTile(
        leading: Icon(Icons.logout),
        title: const Text('LogOut'),
        onTap: () {
          Navigator.pop(context);
        },
      ),
    ],
  ));
}
