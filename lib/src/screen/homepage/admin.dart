import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:fluttertoast/fluttertoast.dart';

class AdminQuestion extends StatefulWidget {
  const AdminQuestion({super.key});

  @override
  State<AdminQuestion> createState() => _AdminQuestionState();
}

class _AdminQuestionState extends State<AdminQuestion> {
  final _formKey = GlobalKey<FormBuilderState>();
  final List<Map<String, dynamic>> _categories = List.generate(
    3,
    (index) => {
      'categoryName': TextEditingController(),
      'questions': List.generate(
        15,
        (qIndex) => {
          'questionText': TextEditingController(),
          'answers': {
            'A': TextEditingController(),
            'B': TextEditingController(),
            'C': TextEditingController(),
            'D': TextEditingController(),
          },
          'solutions': {
            'A': TextEditingController(),
            'B': TextEditingController(),
            'C': TextEditingController(),
            'D': TextEditingController(),
          },
        },
      ),
    },
  );

  @override
  void initState() {
    super.initState();
    _fetchDataAndAutofill();
  }

  Future<void> _fetchDataAndAutofill() async {
    final firestore = FirebaseFirestore.instance;
    final categoriesSnapshot = await firestore.collection('categories').get();

    for (var i = 0; i < categoriesSnapshot.docs.length; i++) {
      if (i >= _categories.length) break;
      var categoryDoc = categoriesSnapshot.docs[i];
      var categoryData = categoryDoc.data();
      _categories[i]['categoryName'].text = categoryData['categoryName'] ?? '';

      final questionsSnapshot =
          await categoryDoc.reference.collection('questions').get();
      for (var j = 0; j < questionsSnapshot.docs.length; j++) {
        if (j >= _categories[i]['questions'].length) break;
        var questionDoc = questionsSnapshot.docs[j];
        var questionData = questionDoc.data();
        _categories[i]['questions'][j]['questionText'].text =
            questionData['questionText'] ?? '';

        var answers = questionData['answers'] as Map<String, dynamic>?;
        var solutions = questionData['solutions'] as Map<String, dynamic>?;

        if (answers != null) {
          _categories[i]['questions'][j]['answers']['A'].text =
              answers['A'] ?? '';
          _categories[i]['questions'][j]['answers']['B'].text =
              answers['B'] ?? '';
          _categories[i]['questions'][j]['answers']['C'].text =
              answers['C'] ?? '';
          _categories[i]['questions'][j]['answers']['D'].text =
              answers['D'] ?? '';
        }

        if (solutions != null) {
          _categories[i]['questions'][j]['solutions']['A'].text =
              solutions['A'] ?? '';
          _categories[i]['questions'][j]['solutions']['B'].text =
              solutions['B'] ?? '';
          _categories[i]['questions'][j]['solutions']['C'].text =
              solutions['C'] ?? '';
          _categories[i]['questions'][j]['solutions']['D'].text =
              solutions['D'] ?? '';
        }
      }
    }

    setState(() {});
  }

  Future<void> _submitForm() async {
    if (_formKey.currentState?.saveAndValidate() ?? false) {
      final firestore = FirebaseFirestore.instance;

      for (var category in _categories) {
        for (var question in category['questions']) {
          await firestore
              .collection('categories')
              .doc(category['categoryName'].text)
              .collection('questions')
              .add({
            'questionText': question['questionText'].text,
            'answers': {
              'A': question['answers']['A'].text,
              'B': question['answers']['B'].text,
              'C': question['answers']['C'].text,
              'D': question['answers']['D'].text,
            },
            'solutions': {
              'A': question['solutions']['A'].text,
              'B': question['solutions']['B'].text,
              'C': question['solutions']['C'].text,
              'D': question['solutions']['D'].text,
            },
          });
        }
      }

      Fluttertoast.showToast(msg: 'Categories and Questions Added!');
    } else {
      Fluttertoast.showToast(msg: 'Please complete the form properly.');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Add Questions'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: FormBuilder(
          key: _formKey,
          child: ListView(
            children: [
              ..._categories.asMap().entries.map((entry) {
                int catIndex = entry.key;
                var category = entry.value;
                return Card(
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Category ${catIndex + 1}',
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 10),
                        FormBuilderTextField(
                          name: 'categoryName$catIndex',
                          controller: category['categoryName'],
                          decoration: const InputDecoration(
                            labelText: 'Category Name',
                            border: OutlineInputBorder(),
                          ),
                        ),
                        const SizedBox(height: 20),
                        ...category['questions'].asMap().entries.map((qEntry) {
                          int qIndex = qEntry.key;
                          var question = qEntry.value;
                          return Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Question ${qIndex + 1}',
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(height: 10),
                                FormBuilderTextField(
                                  name: 'questionText$catIndex$qIndex',
                                  controller: question['questionText'],
                                  decoration: const InputDecoration(
                                    labelText: 'Question Text',
                                    border: OutlineInputBorder(),
                                  ),
                                ),
                                const SizedBox(height: 10),
                                ...question['answers']
                                    .entries
                                    .map((answerEntry) {
                                  String answerKey = answerEntry.key;
                                  TextEditingController answerController =
                                      answerEntry.value;
                                  return Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 5.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        FormBuilderTextField(
                                          name:
                                              'answer$catIndex$qIndex$answerKey',
                                          controller: answerController,
                                          decoration: InputDecoration(
                                            labelText: 'Answer $answerKey',
                                            border: const OutlineInputBorder(),
                                          ),
                                        ),
                                        const SizedBox(height: 5),
                                        FormBuilderTextField(
                                          name:
                                              'solution$catIndex$qIndex$answerKey',
                                          controller: question['solutions']
                                              [answerKey],
                                          decoration: InputDecoration(
                                            labelText:
                                                'Solution for Answer $answerKey',
                                            border: const OutlineInputBorder(),
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                }).toList(),
                              ],
                            ),
                          );
                        }).toList(),
                      ],
                    ),
                  ),
                );
              }),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: _submitForm,
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  textStyle: const TextStyle(fontSize: 18),
                ),
                child: const Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
