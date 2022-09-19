import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:quiz/Classes/quiz_class.dart';

const String apiKey = "j24WhINsXuMG7PszLmbkLHqRiXRoFnjRZrHxkwDa";
Future auth(String category, diff) async {
  try {
    var response = await http.get(Uri.parse("https://quizapi.io/api/v1/questions"),
        headers: {"X-Api-Key": apiKey, "category": category, "difficulty": diff, "limit": '3'});
    var json = jsonDecode(response.body) as List;
    return json.map((i) => Quiz.fromJson(i)).toList();
  } catch (e) {
    return "error";
  }
}