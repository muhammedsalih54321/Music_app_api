import 'dart:convert';


import 'package:http/http.dart';
import 'package:music_app/Repository/Api/api_client.dart';
import 'package:music_app/Repository/Model/Music_model.dart';



class MusicApi {
  ApiClient apiClient = ApiClient();


  Future<Musicmodel> getMusic() async {
    String trendingpath = 'https://shazam.p.rapidapi.com/search?term=kiss%20the%20rain&locale=en-US&offset=0&limit=5';
    var body = {

    };
    Response response = await apiClient.invokeAPI(trendingpath, 'GET', body);

    return Musicmodel.fromJson(jsonDecode(response.body));
  }
}