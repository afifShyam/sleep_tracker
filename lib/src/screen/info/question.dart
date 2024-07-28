import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:sleep_tracker/src/index.dart';
import 'package:sleep_tracker/src/screen/info/question_start_page.dart';

class QuestionPage extends StatefulWidget {
  final String categoryId;

  const QuestionPage({super.key, required this.categoryId});

  @override
  State<QuestionPage> createState() => _QuestionPageState();
}

class _QuestionPageState extends State<QuestionPage> {
  final PageController _pageController = PageController();

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
            context.read<QuestionsBloc>().add(const ResetStatus());
            QuestionStartPage.of(context).exit(context);
          },
          icon: const Icon(Icons.arrow_back_ios_new),
        ),
      ),
      body: BlocConsumer<QuestionsBloc, QuestionsState>(
        listener: (context, state) {},
        builder: (context, state) {
          final questions = state.categoryQuestions[widget.categoryId] ?? [];
          final userAnswers =
              state.categoryUserAnswers[widget.categoryId] ?? {};
          final shownSolutions =
              state.categoryShownSolutions[widget.categoryId] ?? {};

          if (state.questionStatus == QuestionStatus.error) {
            return const Center(child: Text('Error loading questions'));
          } else if (state.questionStatus == QuestionStatus.loading) {
            return const Center(child: CircularProgressIndicator());
          }

          return PageView.builder(
            controller: _pageController,
            itemCount: questions.length + 1,
            itemBuilder: (context, index) {
              if (index == questions.length) {
                // Summary Page
                return _buildSummaryPage(context, questions, userAnswers);
              }

              final question = questions[index];
              final userAnswer = userAnswers[index];
              final optionLabels = ['A', 'B', 'C', 'D'];

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
                      final isSelected = userAnswer == optionIndex;

                      return GestureDetector(
                        onTap: () {
                          context.read<QuestionsBloc>().add(
                                AnswerQuestion(
                                    widget.categoryId, index, optionIndex),
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
                    if (shownSolutions[index] != null)
                      Container(
                        padding: const EdgeInsets.all(16.0),
                        decoration: BoxDecoration(
                          color: Colors.green.shade50,
                          borderRadius: BorderRadius.circular(8.0),
                          border: Border.all(color: Colors.green),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Solutions:',
                              style: TextStyle(
                                color: Colors.green,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            ...List.generate(shownSolutions[index]!.length,
                                (solutionIndex) {
                              return Text(
                                '${optionLabels[solutionIndex]}: ${shownSolutions[index]![solutionIndex]}',
                                style: const TextStyle(color: Colors.green),
                              );
                            }),
                          ],
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
                        if (index < questions.length - 1)
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

  Widget _buildSummaryPage(BuildContext context, List<QuestionModel> questions,
      Map<int, int?> userAnswers) {
    final optionLabels = ['A', 'B', 'C', 'D'];

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Summary',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16.0),
          ...userAnswers.entries.map((entry) {
            final questionIndex = entry.key;
            final userAnswerIndex = entry.value;
            final question = questions[questionIndex];

            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Q${questionIndex + 1}: ${question.question}\nAnswer: ${optionLabels[userAnswerIndex!]} - ${question.answerType[userAnswerIndex]}',
                    style: const TextStyle(fontSize: 16.0),
                  ),
                  Text.rich(
                    TextSpan(
                      text: 'Solution: ',
                      style: TextStyleST.textStyle.interText.copyWith(
                        fontSize: 16.0,
                      ),
                      children: [
                        TextSpan(
                          text: question.solutions[userAnswerIndex],
                          style: TextStyleST.textStyle.interText
                              .copyWith(fontSize: 16.0, color: STColor.green),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          }),
        ],
      ),
    );
  }
}
