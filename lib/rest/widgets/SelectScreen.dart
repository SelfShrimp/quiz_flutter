import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:quiz/rest/quiz_questions.dart';

enum Category { Linux, DevOps, Networking }

enum Difficulty { easy, medium, hard }

class SelectPage extends StatefulWidget {
  const SelectPage({
    Key? key,
  }) : super(key: key);

  @override
  State<SelectPage> createState() => _SelectPageState();
}

class _SelectPageState extends State<SelectPage> {
  bool visibleCategory = false;
  bool visibleDiff = false;
  Category? categorySelect = Category.Linux;
  Difficulty? difficultySelect = Difficulty.medium;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              GestureDetector(
                child: Container(
                  height: 20,
                  width: double.infinity,
                  clipBehavior: Clip.none,
                  child: const Center(child: Text("Category")),
                ),
                onTap: () {
                  setState(() {
                    visibleCategory == false
                        ? visibleCategory = true
                        : visibleCategory = false;
                  });
                },
              ),
              Visibility(
                visible: visibleCategory,
                child: ListView(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    ListTile(
                      title: const Text("Linux"),
                      leading: Radio(
                          value: Category.Linux,
                          groupValue: categorySelect,
                          onChanged: (Category? value) {
                            setState(() {
                              categorySelect = value;
                            });
                          }),
                    ),
                    ListTile(
                      title: const Text("DevOps"),
                      leading: Radio(
                          value: Category.DevOps,
                          groupValue: categorySelect,
                          onChanged: (Category? value) {
                            setState(() {
                              categorySelect = value;
                            });
                          }),
                    ),
                    ListTile(
                      title: const Text("Networking"),
                      leading: Radio(
                          value: Category.Networking,
                          groupValue: categorySelect,
                          onChanged: (Category? value) {
                            setState(() {
                              categorySelect = value;
                            });
                          }),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                child: Container(
                  height: 20,
                  width: double.infinity,
                  margin: const EdgeInsets.only(top: 20),
                  clipBehavior: Clip.none,
                  child: const Center(child: Text("Difficulty")),
                ),
                onTap: () {
                  setState(() {
                    visibleDiff == false
                        ? visibleDiff = true
                        : visibleDiff = false;
                  });
                },
              ),
              Visibility(
                visible: visibleDiff,
                child: ListView(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    ListTile(
                      title: const Text("Easy"),
                      leading: Radio(
                          value: Difficulty.easy,
                          groupValue: difficultySelect,
                          onChanged: (Difficulty? value) {
                            setState(() {
                              difficultySelect = value;
                            });
                          }),
                    ),
                    ListTile(
                      title: const Text("Medium"),
                      leading: Radio(
                          value: Difficulty.medium,
                          groupValue: difficultySelect,
                          onChanged: (Difficulty? value) {
                            setState(() {
                              difficultySelect = value;
                            });
                          }),
                    ),
                    ListTile(
                      title: const Text("Hard"),
                      leading: Radio(
                          value: Difficulty.hard,
                          groupValue: difficultySelect,
                          onChanged: (Difficulty? value) {
                            setState(() {
                              difficultySelect = value;
                            });
                          }),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: ElevatedButton(
                    onPressed: () {
                      auth('$categorySelect', '$difficultySelect');
                    },
                    child: const Text("Start")),
              )
            ],
          ),
        ),
      ),
    );
  }
}
