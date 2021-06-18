import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:rjstudio_assignment/config/config.dart';

class ApiCaller {
  String baseUrl = 'https://api.pexels.com/v1';
  String baseVideoUrl = 'https://api.pexels.com/videos';

  getPhotos() async {
    var res = await http.get(Uri.parse("$baseUrl/search?query=nature&per_page=3"),
        headers: {HttpHeaders.authorizationHeader: API_KEY});
    var data = json.decode(res.body);
    var photos = data['photos'];
    return photos;
  }

  getVideos() async{
    var res = await http.get(Uri.parse("$baseVideoUrl/search?query=nature&per_page=3"),
        headers: {HttpHeaders.authorizationHeader: API_KEY});
    var data = json.decode(res.body);
    var videos = data['videos'];
    return videos;
  }
}
