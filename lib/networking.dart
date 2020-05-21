import 'package:http/http.dart';
import 'dart:convert';
const String apiKey = '74964FE9-46A9-4B90-B9E0-DA2E20C673E4';

class NetworkHelper{

  Future getData(String format, String currency) async {
    String url = 'https://rest.coinapi.io/v1/exchangerate/$format/$currency?apikey=$apiKey';
    Response response = await get(url);
    if (response.statusCode == 200){
      return jsonDecode(response.body);
    } else {
      print('error ${response.statusCode}');
    }

  }
}