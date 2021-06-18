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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(widget.photo['src']['original']),
              ExpansionTile(
                title: Text(
                  "Artist : ${widget.photo['photographer']}",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 14.0),
                ),
                trailing: IconButton(
                  color: Colors.black,
                  icon: Icon(Icons.star),
                  onPressed: () {},
                ),
                children: [
                  Text(
                    "ID : ${widget.photo['id']}",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 14.0),
                  ),
                  Text(
                    "Width : ${widget.photo['width']}",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 14.0),
                  ),
                  Text(
                    "Height : ${widget.photo['height']}",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 14.0),
                  ),
                ],
              )
            ],
          )),
    );
  }
}
