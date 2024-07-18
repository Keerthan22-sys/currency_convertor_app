import 'package:get/get_connect.dart';

class ApiCalls extends GetConnect {
  Future<Response> getRates(String curr) async {
    String apiKey =
        'cur_live_uXCZZW89aH0b8CMQWGxV5GBv9eycxuajYaqZQmdN'; //TODO: paste your API key from https://app.currencyapi.com
    Response response = await get(
      'https://api.currencyapi.com/v3/latest?apikey=$apiKey&base_currency=$curr',
    );
    return response;
  }
}