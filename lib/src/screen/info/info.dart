import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sleep_tracker/src/index.dart';

class InfoPage extends StatelessWidget {
  const InfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<QuestionsBloc, QuestionsState>(
      listener: (context, state) {
        log('sini berapa ada: ${state.questionStatus}');

        if (state.questionStatus == QuestionStatus.fetchQuestion) {
          Navigator.of(context).pushNamed(QuestionRoute.quesitonPage);
        }
      },
      child: Scaffold(
        backgroundColor: STColor.darkBlueBackground,
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Personalized Recommendation',
            style: TextStyleST.textStyle.appbar,
          ),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 20.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(),
              SizedBox(
                height: 20.h,
              ),
              Text(
                'Dear Patient,',
                style: TextStyleST.textStyle.interText.copyWith(
                  color: STColor.white,
                  fontSize: 19,
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                'We understand how challenging insomnia can be and we are committed to helping you find a solution. To tailor our approach to your specific needs, we need your valuable input.',
                style: TextStyleST.textStyle.interText.copyWith(
                  color: STColor.white,
                  fontSize: 19,
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                'Please take a few moments to answer the following questions thoroughly. Your responses will enable us to understand your unique situation better and provide you with the best possible care and recommendations.',
                style: TextStyleST.textStyle.interText.copyWith(
                  color: STColor.white,
                  fontSize: 19,
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                'Thank you for your cooperation!',
                style: TextStyleST.textStyle.interText.copyWith(
                  color: STColor.white,
                  fontSize: 19,
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    context.read<QuestionsBloc>().add(const GetQuestions(15));
                  },
                  child: Text(
                    'Take Survey',
                    style: TextStyleST.textStyle.button.copyWith(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
