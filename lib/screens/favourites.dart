// ignore: import_of_legacy_library_into_null_safe
import 'package:connectivity_widget/connectivity_widget.dart';
import 'package:flutter/material.dart';

class Favourites extends StatefulWidget {
  @override
  _FavouritesState createState() => _FavouritesState();
}

class _FavouritesState extends State<Favourites> {
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
