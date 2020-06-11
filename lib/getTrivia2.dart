import 'package:http/http.dart' as http;

class Trivia2{
  int number;
  String data;
  Trivia2(this.number);
  Future<void> getData() async {
    try {
     var response = await http.get("http://numbersapi.com/$number?notfound=ceil");
      print('hi2');
      data=response.body;
      
    } catch (e) {
      print('error in getting data');
      print(e);
    }

}
}