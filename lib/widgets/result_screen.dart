import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:quiz/widgets/select_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ResultScreen extends StatelessWidget{
  const ResultScreen({
    Key? key,
    required this.result,
  }) : super(key: key);

  final int result;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Correct Answers :$result"),
            ElevatedButton(
                onPressed: () async {
                  var db = FirebaseFirestore.instance;
                  final prefs = await SharedPreferences.getInstance();
                  final result = <String, dynamic>{
                    "data": DateTime.now(),
                    "correct": prefs.getInt("counter"),
                    "category": prefs.getString("categort"),
                    "diff": prefs.getString("diff")
                  };
                  db.collection("users").add(result).then((DocumentReference doc) =>
                      print('DocumentSnapshot added with ID: ${doc.id}'));
                  goBack(context);
                },
                child: const Text("Save")),
            ElevatedButton(
                onPressed: (){
                  goBack(context);
                },
                child: const Text("Menu")),

          ],
        ),
      ),
    );
  }
 void goBack(BuildContext context){
   Navigator.pushReplacement(
     context,
     MaterialPageRoute(builder: (context) => const SelectPage()),
   );
 }
}