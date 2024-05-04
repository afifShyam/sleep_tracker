import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sleep_tracker/src/index.dart';

class PageNotFound extends StatelessWidget {
  const PageNotFound({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Page Not Found',
          style: TextStyleST.textStyle.appbar,
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/page_not_found.png',
              width: MediaQuery.of(context).size.width * 0.5,
            ),

            SizedBox(
                height: 20.h), // Add some space between the image and the text
            Text(
              'Sorry, the page you are looking for could not be found.',
              textAlign: TextAlign.center,
              style: TextStyleST.textStyle.title,
            ),
          ],
        ),
      ),
    );
  }
}
