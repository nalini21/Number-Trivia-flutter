import 'package:http/http.dart' as http;

class Trivia{
  int number;
  String data;
  Trivia(this.number);
  Future<void> getData() async {
    try {
     var response = await http.get("http://numbersapi.com/$number");
      print('hi');
      data=response.body;
      
    } catch (e) {
      print('error in getting data');
      print(e);
    }

}
}