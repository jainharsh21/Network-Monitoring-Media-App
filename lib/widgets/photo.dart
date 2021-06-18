import 'package:flutter/material.dart';

class Photo extends StatefulWidget {
  final dynamic photo;
  Photo({this.photo});
  @override
  _PhotoState createState() => _PhotoState();
}

class _PhotoState extends State<Photo> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Card(
          elevation: 10.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Column(
            children: [
              Image.network(widget.photo['src']['original']),
              ListTile(
                title: Text(
                  "Artist : ${widget.photo['photographer']}",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
                ),
                trailing: IconButton(
                  icon: Icon(Icons.star),
                  onPressed: () {},
                ),
              )
            ],
          )),
    );
  }
}
