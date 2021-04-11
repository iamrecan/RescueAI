import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          UserAccountsDrawerHeader(
              accountName: Text(
                "AFAD-324",
                style: TextStyle(color: Colors.black),
              ),
              accountEmail: Text(
                "+905342579658",
                style: TextStyle(color: Colors.black),
              ),
              decoration: BoxDecoration(
                color: const Color(0xfffa000b),
              ),
              currentAccountPicture: CircleAvatar(
                radius: 55,
                backgroundColor: Color(0xff030303),
                child: CircleAvatar(
                  radius: 90,
                  backgroundImage: AssetImage('assets/images/x.png'),
                ),
              )),
          ListTile(
            leading: Icon(Icons.home),
            title: Text("Home"),
          ),
          ListTile(
            leading: Icon(Icons.satellite),
            title: Text("Satellite images"),
          ),
          ListTile(
            leading: Icon(Icons.info_outline),
            title: Text("Disaster News"),
          ),
          ListTile(
            leading: Icon(Icons.dangerous),
            title: Text("Risk Area"),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text("Settings"),
          ),
        ],
      ),
    );
  }
}
