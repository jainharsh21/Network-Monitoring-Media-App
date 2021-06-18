// ignore: import_of_legacy_library_into_null_safe
import 'package:connectivity_widget/connectivity_widget.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return ConnectivityWidget(
      builder: (context, isOnline) => Center(
        child: isOnline
            ? Center(
                child: Text("Online"),
              )
            : Center(
                child: Text("Offline"),
              ),
      ),
    );
  }
}
