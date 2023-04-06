import 'dart:convert';
import 'package:http/http.dart';

class FetchMeme {
  static fetchRandomMeme() async {
    Response response = await get(Uri.parse("https://meme-api.com/gimme"));
    Map bodyData = jsonDecode(response.body);
    return bodyData["url"];
  }

  static fetchDankMeme() async {
    Response response = await get(
        Uri.parse("https://bitwisedhruv.pythonanywhere.com/random/dank"));
    // print(response);
    Map bodyData = jsonDecode(response.body);
    return bodyData["url"];
  }

  static fetchWholesomeMeme() async {
    Response response = await get(
        Uri.parse("https://bitwisedhruv.pythonanywhere.com/random/wholesome"));
    // print(response);
    Map bodyData = jsonDecode(response.body);
    return bodyData["url"];
  }

  static fetchPoliticalMeme() async {
    Response response = await get(
        Uri.parse("https://bitwisedhruv.pythonanywhere.com/random/political"));
    // print(response);
    Map bodyData = jsonDecode(response.body);
    return bodyData["url"];
  }

  static fetchRelatableMeme() async {
    Response response = await get(
        Uri.parse("https://bitwisedhruv.pythonanywhere.com/random/relatable"));
    // print(response);
    Map bodyData = jsonDecode(response.body);
    return bodyData["url"];
  }

  static fetchGamingMeme() async {
    Response response = await get(
        Uri.parse("https://bitwisedhruv.pythonanywhere.com/random/gaming"));
    // print(response);
    Map bodyData = jsonDecode(response.body);
    return bodyData["url"];
  }

  static fetchFoodMeme() async {
    Response response = await get(
        Uri.parse("https://bitwisedhruv.pythonanywhere.com/random/food"));
    // print(response);
    Map bodyData = jsonDecode(response.body);
    return bodyData["url"];
  }

  static fetchRelationshipMeme() async {
    Response response = await get(Uri.parse(
        "https://bitwisedhruv.pythonanywhere.com/random/relationship"));
    // print(response);
    Map bodyData = jsonDecode(response.body);
    return bodyData["url"];
  }

  static fetchSportsMeme() async {
    Response response = await get(
        Uri.parse("https://bitwisedhruv.pythonanywhere.com/random/sports"));
    // print(response);
    Map bodyData = jsonDecode(response.body);
    return bodyData["url"];
  }

  static fetchProgrammingMeme() async {
    Response response = await get(Uri.parse(
        "https://bitwisedhruv.pythonanywhere.com/random/programming"));
    // print(response);
    Map bodyData = jsonDecode(response.body);
    return bodyData["url"];
  }
}
