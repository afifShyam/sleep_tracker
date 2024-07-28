import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sleep_tracker/src/index.dart';

class InfoPage extends StatelessWidget {
  const InfoPage({super.key});

  void _takeSurvey(BuildContext context, QuestionsState state) async {
    await showAdaptiveDialog(
        context: context,
        barrierDismissible: false,
        builder: (_) => Dialog(
              backgroundColor: STColor.darkBlueBackground,
              insetPadding: EdgeInsets.zero,
              child: SizedBox(
                height: 350,
                width: 200,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Select Question Option',
                        style: TextStyleST.textStyle.title
                            .copyWith(color: STColor.white)),
                    SizedBox(height: 20.h),
                    ListView.separated(
                      padding: EdgeInsets.symmetric(horizontal: 40.w),
                      shrinkWrap: true,
                      itemBuilder: (_, index) {
                        return ElevatedButton(
                            style: ButtonStyle(
                              fixedSize:
                                  WidgetStateProperty.all(const Size(10, 20)),
                              padding: WidgetStateProperty.all(EdgeInsets.zero),
                            ),
                            onPressed: () {
                              context.read<QuestionsBloc>().add(
                                  GetCategoryId(state.categoryList[index]));

                              Navigator.of(context, rootNavigator: true).pop();
                            },
                            child: Text(state.categoryList[index],
                                style: TextStyleST.textStyle.interMedium));
                      },
                      separatorBuilder: (_, __) => SizedBox(height: 20.h),
                      itemCount: state.categoryList.length,
                    ),
                    SizedBox(height: 30.h),
                    ElevatedButton.icon(
                        onPressed: () {
                          context
                              .read<QuestionsBloc>()
                              .add(const ResetStatus());
                          Navigator.of(context, rootNavigator: true).pop();
                        },
                        style: ButtonStyle(
                          fixedSize: WidgetStateProperty.all(Size(100.w, 40.h)),
                        ),
                        label: Row(
                          children: [
                            Icon(Icons.arrow_back_ios_new,
                                color: STColor.black, size: 15.r),
                            Text('Back',
                                style: TextStyleST.textStyle.cardButton),
                          ],
                        ))
                  ],
                ),
              ),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<QuestionsBloc, QuestionsState>(
      listener: (context, state) {
        log('sini berapa ada: ${state.questionStatus}');

        if (state.questionStatus == QuestionStatus.storeCategoryId) {
          _takeSurvey(context, state);
        }
        if (state.questionStatus == QuestionStatus.getCategoryId) {
          context.read<QuestionsBloc>().add(GetQuestions(state.categoryId));
        }
        if (state.questionStatus == QuestionStatus.fetchQuestion) {
          log('gettttt: $state');

          Navigator.of(context).pushNamed(QuestionRoute.quesitonPage,
              arguments: {'categoryId': state.categoryId});
        }
      },
      builder: (buildCtx, buildState) => Scaffold(
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
                  onPressed: () async {
                    context.read<QuestionsBloc>().add(const GetCategoryList());

                    // context.read<QuestionsBloc>().add(const GetQuestions(15));
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
