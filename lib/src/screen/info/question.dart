import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:sleep_tracker/src/index.dart';
import 'package:sleep_tracker/src/screen/info/question_start_page.dart';

class QuestionPage extends StatelessWidget {
  final PageController _pageController = PageController();

  QuestionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Question',
          style: TextStyleST.textStyle.appbar,
        ),
        leading: IconButton(
          onPressed: () {
            context.read<QuestionsBloc>().add(ResetStatus());
            QuestionStartPage.of(context).exit(context);
          },
          icon: const Icon(Icons.arrow_back_ios_new),
        ),
      ),
      body: BlocBuilder<QuestionsBloc, QuestionsState>(
        builder: (context, state) {
          return PageView.builder(
            controller: _pageController,
            itemCount: state.questions.length,
            itemBuilder: (context, index) {
              final question = state.questions[index];
              final userAnswer = state.userAnswers[index];
              final shownSolution = state.shownSolutions[index];

              return Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      question.question,
                      style: TextStyleST.textStyle.interText.copyWith(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 24.0),
                    ...List.generate(question.answerType.length, (optionIndex) {
                      final optionLabels = ['A', 'B', 'C', 'D'];
                      final isSelected = userAnswer == optionIndex;

                      return GestureDetector(
                        onTap: () {
                          context.read<QuestionsBloc>().add(
                                AnswerQuestion(index, optionIndex),
                              );
                        },
                        child: Container(
                          margin: const EdgeInsets.symmetric(vertical: 8.0),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16.0, vertical: 12.0),
                          decoration: BoxDecoration(
                            color: isSelected
                                ? Theme.of(context)
                                    .primaryColor
                                    .withOpacity(0.1)
                                : Colors.white,
                            borderRadius: BorderRadius.circular(8.0),
                            border: Border.all(
                              color: isSelected
                                  ? Theme.of(context).primaryColor
                                  : Colors.grey.shade300,
                              width: 2.0,
                            ),
                          ),
                          child: Row(
                            children: [
                              Container(
                                width: 24.0,
                                height: 24.0,
                                decoration: BoxDecoration(
                                  color: isSelected
                                      ? Theme.of(context).primaryColor
                                      : Colors.white,
                                  borderRadius: BorderRadius.circular(12.0),
                                  border: Border.all(
                                    color: isSelected
                                        ? Theme.of(context).primaryColor
                                        : Colors.grey.shade300,
                                    width: 2.0,
                                  ),
                                ),
                                child: isSelected
                                    ? const Icon(
                                        Icons.check,
                                        color: Colors.white,
                                        size: 16.0,
                                      )
                                    : null,
                              ),
                              const SizedBox(width: 16.0),
                              Expanded(
                                child: Text(
                                  '${optionLabels[optionIndex]}. ${question.answerType[optionIndex]}',
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    color: isSelected
                                        ? Theme.of(context).primaryColor
                                        : Colors.black,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
                    const SizedBox(height: 24.0),
                    if (shownSolution != null)
                      Container(
                        padding: const EdgeInsets.all(16.0),
                        decoration: BoxDecoration(
                          color: Colors.green.shade50,
                          borderRadius: BorderRadius.circular(8.0),
                          border: Border.all(color: Colors.green),
                        ),
                        child: Text(
                          'Solution: $shownSolution',
                          style: const TextStyle(
                            color: Colors.green,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    const Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        if (index > 0)
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blueAccent,
                              foregroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 24.0, vertical: 12.0),
                            ),
                            onPressed: () {
                              _pageController.previousPage(
                                duration: const Duration(milliseconds: 300),
                                curve: Curves.ease,
                              );
                            },
                            child: const Text('Previous'),
                          ),
                        if (index < state.questions.length - 1)
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blueAccent,
                              foregroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 24.0, vertical: 12.0),
                            ),
                            onPressed: () {
                              _pageController.nextPage(
                                duration: const Duration(milliseconds: 300),
                                curve: Curves.ease,
                              );
                            },
                            child: const Text('Next'),
                          ),
                      ],
                    ),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}
