import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:sleep_tracker/src/index.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: STColor.darkBlueBackground,
      body: SingleChildScrollView(
        physics: const ClampingScrollPhysics(),
        child: Column(
          children: [
            Stack(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 280,
                  child: ClipPath(
                    clipper: BottomOvalClipper(),
                    child: Image.asset(
                      'assets/images/home_header.png',
                      width: 150,
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(20.w, 230.h, 20.w, 0.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Container(
                        height: 150,
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(16),
                          image: const DecorationImage(
                            filterQuality: FilterQuality.high,
                            fit: BoxFit.fill,
                            image: AssetImage('assets/images/Dark-Skies.webp'),
                          ),
                        ),
                        child: const DigitalClock(),
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                ),
              ],
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context, rootNavigator: true)
                    .pushNamed(HomepageRoute.alarmSettingRoute);
              },
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: 100,
                  width: MediaQuery.sizeOf(context).width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          'assets/images/alaarm.svg',
                          width: 40,
                          height: 40,
                        ),
                        SizedBox(width: 10.w),
                        Text(
                          'Sleep tracker and reminder',
                          style: TextStyleST.textStyle.title,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.h),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     ElevatedButton.icon(
            //       icon: Transform.rotate(
            //           angle: -10,
            //           child: const Icon(
            //             Icons.mode_night_outlined,
            //           )),
            //       onPressed: () {},
            //       label: Text(
            //         'Sleep',
            //         style: TextStyleST.textStyle.button,
            //       ),
            //       style: ButtonStyle(
            //         shape: WidgetStateProperty.all<RoundedRectangleBorder>(
            //           RoundedRectangleBorder(
            //             borderRadius: BorderRadius.circular(7),
            //           ),
            //         ),
            //       ),
            //     ),
            //     SizedBox(width: 30.w),
            //     ElevatedButton.icon(
            //       icon: const Icon(
            //         Icons.wb_sunny_sharp,
            //       ),
            //       onPressed: () {},
            //       label: Text(
            //         'Awake',
            //         style: TextStyleST.textStyle.button,
            //       ),
            //       style: ButtonStyle(
            //         shape: WidgetStateProperty.all<RoundedRectangleBorder>(
            //           RoundedRectangleBorder(
            //             borderRadius: BorderRadius.circular(7),
            //           ),
            //         ),
            //       ),
            //     )
            //   ],
            // ),

            //Switch button to daily and weekend
            // BlocBuilder<StatisticBloc, StatisticState>(
            //   builder: (context, state) {
            //     return Row(
            //       mainAxisAlignment:
            //           MainAxisAlignment.spaceBetween, // Space evenly
            //       children: [
            //         Text('Daily'), // Left side - Daily text
            //         Switch.adaptive(
            //           value: state.isWeekly,
            //           onChanged: (value) =>
            //               context.read<StatisticBloc>().add(SetIsWeekly(value)),
            //           activeTrackColor: Colors.lightBlueAccent,
            //           activeColor: Colors.blue,
            //           inactiveThumbColor: Colors.grey,
            //           inactiveTrackColor: Colors.grey.withOpacity(0.5),
            //         ),
            //         Text('Weekly'), // Right side - Weekly text
            //       ],
            //     );
            //   },
            // ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: AnimatedSwitcher(
                duration: const Duration(milliseconds: 300),
                child: BlocBuilder<StatisticBloc, StatisticState>(
                  builder: (context, state) {
                    if (state.isWeekly) {
                      return const WeeklySleepStatisticsChart();
                    } else {
                      return const DailySleepStatisticsChart();
                    }
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DigitalClock extends StatelessWidget {
  const DigitalClock({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<DateTime>(
      stream: _timeStream(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return Center(
            child: Text(
              DateFormat('hh:mm a').format(snapshot.data!),
              style: const TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          );
        } else {
          return Container();
        }
      },
    );
  }

  Stream<DateTime> _timeStream() {
    return Stream.periodic(const Duration(seconds: 1), (_) => DateTime.now());
  }
}

class BottomOvalClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, size.height - 30);

    var firstControlPoint = Offset(size.width / 4, size.height);
    var firstPoint = Offset(size.width / 2, size.height);
    path.quadraticBezierTo(
      firstControlPoint.dx,
      firstControlPoint.dy,
      firstPoint.dx,
      firstPoint.dy,
    );

    var secondControlPoint = Offset(
      size.width - (size.width / 4),
      size.height,
    );
    var secondPoint = Offset(size.width, size.height - 30);
    path.quadraticBezierTo(
      secondControlPoint.dx,
      secondControlPoint.dy,
      secondPoint.dx,
      secondPoint.dy,
    );

    path.lineTo(size.width, 0.0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
