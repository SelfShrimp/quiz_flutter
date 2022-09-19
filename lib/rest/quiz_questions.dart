import 'package:http/http.dart' as http;

const String apiKey = "j24WhINsXuMG7PszLmbkLHqRiXRoFnjRZrHxkwDa";
Future<String> auth(String category, diff) async {
  try {
    var response = await http.get(Uri.parse("https://quizapi.io/api/v1/questions"),
        headers: {"X-Api-Key": apiKey, "category": category, "difficulty": diff, "limit": '3'});
    return response.body;
  } catch (e) {
    return "";
  }
}