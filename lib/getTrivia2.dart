import 'package:http/http.dart' as http;

class Trivia2{
  String data;
  Trivia2();
  Future<void> getData() async {
    try {
     var response = await http.get("http://numbersapi.com/random/trivia");
      data=response.body;      
    } catch (e) {
      print('error in getting data');
      print(e);
    }

}
}