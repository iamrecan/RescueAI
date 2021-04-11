import 'package:deneme2/app_drawer.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class CameraPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new Scaffold(
        drawer: AppDrawer(),
        appBar: AppBar(
          leading: Icon(
            Icons.menu,
            color: Colors.red,
            size: 35,
          ),
          backgroundColor: Colors.white,
          title: Image.asset(
            "assets/images/logo1.png",
            height: 90.0,
            width: 2575.0,
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.location_on_sharp,
                color: Colors.red,
                size: 35,
              ),
            ),
          ],
        ),
        body: GoogleMap(
          initialCameraPosition: CameraPosition(
            target: LatLng(38.289937, 26.674805),
            zoom: 10,
          ),
        ),
      ),
    );
  }
}
