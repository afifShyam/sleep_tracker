import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:sleep_tracker/src/index.dart';

class DailySleepStatisticsChart extends StatefulWidget {
  const DailySleepStatisticsChart({super.key});

  @override
  State<DailySleepStatisticsChart> createState() =>
      _DailySleepStatisticsChartState();
}

class _DailySleepStatisticsChartState extends State<DailySleepStatisticsChart> {
  double selectedDayTotalSleepHours = 0;
  double selectedDayTotalSleepMinutes = 0;
  DateTime selectedDate = DateTime.now();
  DateTime? selectedBedtime;
  DateTime? selectedWakeupTime;

  @override
  void initState() {
    super.initState();
    _fetchSleepDataForSelectedDate();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              child: SizedBox(
                height: 210,
                child: Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          width: 200,
                          height: 100,
                          decoration: BoxDecoration(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(12)),
                            gradient: LinearGradient(
                              colors: [
                                Colors.pink.shade300,
                                Colors.pink.shade200,
                                Colors.pink.shade100,
                              ],
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(9.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      DateFormat('E, d MMM')
                                          .format(selectedDate),
                                      style: const TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black,
                                        fontStyle: FontStyle.italic,
                                      ),
                                    ),
                                    const Spacer(),
                                    Icon(Icons.timer_sharp)
                                  ],
                                ),
                                Center(
                                  child: Text(
                                    ' ${selectedDayTotalSleepHours.toInt()}Hrs ${selectedDayTotalSleepMinutes.toInt()}Min',
                                    style: const TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                                const Text(
                                  'Time Asleep',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w300,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 5.h),
                        InkWell(
                          onTap: () => _selectDate(context),
                          child: Container(
                            width: 200,
                            height: 100,
                            decoration: BoxDecoration(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(12)),
                              gradient: LinearGradient(
                                colors: [
                                  Colors.deepOrange.shade300,
                                  Colors.deepOrange.shade200,
                                  Colors.deepOrange.shade100,
                                ],
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(9.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.calendar_month_outlined,
                                    color: Colors.black,
                                    size: 32.w,
                                  ),
                                  const Text(
                                    'Select Date',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 10.w),
                    Column(
                      children: [
                        Container(
                          width: 110,
                          height: 100,
                          decoration: BoxDecoration(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(12)),
                            gradient: LinearGradient(
                              colors: [
                                Colors.brown.shade400,
                                Colors.brown.shade300,
                                Colors.brown.shade200,
                              ],
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SvgPicture.asset(
                                  'assets/images/sleep_bed_moon_asleep_sleeping.svg',
                                  height: 40.h,
                                  width: 34.w,
                                  colorFilter: const ColorFilter.mode(
                                      Colors.white, BlendMode.srcATop),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      selectedBedtime != null
                                          ? DateFormat('h:mm a')
                                              .format(selectedBedtime!)
                                          : '00:00 AM',
                                      style: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                    const Text(
                                      'Bedtime',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w300,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 5.h),
                        Container(
                          width: 110,
                          height: 100,
                          decoration: BoxDecoration(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(12)),
                            gradient: LinearGradient(
                              colors: [
                                Colors.deepPurple.shade300,
                                Colors.deepPurple.shade200,
                                Colors.deepPurple.shade100,
                              ],
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SvgPicture.asset(
                                  'assets/images/sun.svg',
                                  height: 40.h,
                                  width: 34.w,
                                  colorFilter: const ColorFilter.mode(
                                      Colors.white, BlendMode.srcATop),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      selectedWakeupTime != null
                                          ? DateFormat('h:mm a')
                                              .format(selectedWakeupTime!)
                                          : '00:00 AM',
                                      style: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                    const Text(
                                      'Woke Up',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w300,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 20.h),
        FutureBuilder(
          future: _fetchDailySleepData(),
          builder: (context, AsyncSnapshot<List<BarChartGroupData>> snapshot) {
            // if (snapshot.connectionState == ConnectionState.waiting) {
            //   return const Center(child: CircularProgressIndicator());
            // }
            if (!snapshot.hasData ||
                snapshot.data == null ||
                snapshot.data!.isEmpty) {
              return const Center(
                child: Text(
                  'No data available',
                  style: TextStyle(color: Colors.white),
                ),
              );
            }
            return AspectRatio(
              aspectRatio: 1.5,
              child: GestureDetector(
                onTapUp: (details) {
                  _showDetailsDialog(context, details);
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.black54,
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        spreadRadius: 3,
                        blurRadius: 10,
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: BarChart(
                      BarChartData(
                        maxY: 20,
                        barTouchData: BarTouchData(
                          touchTooltipData: BarTouchTooltipData(
                            getTooltipItem: (group, groupIndex, rod, rodIndex) {
                              return BarTooltipItem(
                                '${rod.toY} hours',
                                const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              );
                            },
                          ),
                          touchCallback: (FlTouchEvent event, response) {
                            if (response == null || response.spot == null) {
                              return;
                            }
                          },
                        ),
                        titlesData: FlTitlesData(
                          show: true,
                          rightTitles: const AxisTitles(
                            sideTitles: SideTitles(showTitles: false),
                          ),
                          topTitles: const AxisTitles(
                            sideTitles: SideTitles(showTitles: false),
                          ),
                          bottomTitles: AxisTitles(
                            sideTitles: SideTitles(
                              showTitles: true,
                              getTitlesWidget: bottomTitles,
                              reservedSize: 42,
                            ),
                          ),
                          leftTitles: AxisTitles(
                            sideTitles: SideTitles(
                              showTitles: true,
                              reservedSize: 22,
                              interval: 3,
                              getTitlesWidget: leftTitles,
                            ),
                          ),
                        ),
                        borderData: FlBorderData(
                          show: false,
                        ),
                        barGroups: snapshot.data!,
                        gridData: FlGridData(
                          show: true,
                          getDrawingHorizontalLine: (value) {
                            return FlLine(
                              color: Colors.grey.withOpacity(0.2),
                              strokeWidth: 1,
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ],
    );
  }

  Future<void> _fetchSleepDataForSelectedDate() async {
    final userId = GetDataFireBase.currentUserId;
    final startOfDay =
        DateTime(selectedDate.year, selectedDate.month, selectedDate.day);
    final endOfDay = DateTime(
        selectedDate.year, selectedDate.month, selectedDate.day, 23, 59, 59);
    final sleepData = await FirebaseFirestore.instance
        .collection('users')
        .doc(userId)
        .collection('sleep_data')
        .where('bedtime',
            isGreaterThanOrEqualTo: Timestamp.fromDate(startOfDay))
        .where('bedtime', isLessThanOrEqualTo: Timestamp.fromDate(endOfDay))
        .get();

    double totalSleepMinutes = 0;
    DateTime? bedtime;
    DateTime? wakeupTime;

    for (var doc in sleepData.docs) {
      final data = doc.data();
      final bedtimeTimestamp = data['bedtime'] as Timestamp?;
      final wakeupTimestamp = data['wakeup'] as Timestamp?;

      if (bedtimeTimestamp == null || wakeupTimestamp == null) {
        continue; // Skip this document if either timestamp is null
      }

      bedtime = bedtimeTimestamp.toDate();
      wakeupTime = wakeupTimestamp.toDate();
      final duration = wakeupTime.difference(bedtime); // Get duration

      totalSleepMinutes += duration.inMinutes; // Convert to minutes
    }

    setState(() {
      selectedDayTotalSleepHours = (totalSleepMinutes ~/ 60).toDouble();
      selectedDayTotalSleepMinutes = totalSleepMinutes % 60;
      selectedBedtime = bedtime;
      selectedWakeupTime = wakeupTime;
    });
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2020),
      lastDate: DateTime.now(),
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
      _fetchSleepDataForSelectedDate();
    }
  }

  Future<List<BarChartGroupData>> _fetchDailySleepData() async {
    // Get the current date
    DateTime now = DateTime.now();

    // Determine the start (Monday) and end (Sunday) of the current week
    DateTime startOfWeek =
        now.subtract(Duration(days: now.weekday - 1)); // Monday
    DateTime endOfWeek = startOfWeek.add(const Duration(days: 6)); // Sunday

    final userId = GetDataFireBase.currentUserId;
    final sleepData = await FirebaseFirestore.instance
        .collection('users')
        .doc(userId)
        .collection('sleep_data')
        // .where('bedtime', isGreaterThanOrEqualTo: startOfWeek)
        .where('bedtime', isLessThanOrEqualTo: endOfWeek)
        .get();

    // Initialize a list with 7 elements (one for each day of the week)
    List<BarChartGroupData> barData = List.generate(7, (index) {
      return BarChartGroupData(
        x: index, // Monday (0) to Sunday (6)
        barRods: [BarChartRodData(toY: 0.0, width: 12)],
      );
    });

    for (var doc in sleepData.docs) {
      try {
        final data = doc.data();
        final bedtimeTimestamp = data['bedtime'];
        final wakeupTimestamp = data['wakeup'] as Timestamp?;

        if (bedtimeTimestamp == null || wakeupTimestamp == null) {
          continue; // Skip this document if either timestamp is null
        }

        final bedtime = bedtimeTimestamp.toDate();
        final wakeupTime = wakeupTimestamp.toDate();
        final duration =
            wakeupTime.difference(bedtime).inMinutes / 60; // Convert to hours

        // Calculate the day of the week (Monday = 0, ..., Sunday = 6)
        int weekdayIndex = bedtime.weekday - 1;

        // Update the BarChartGroupData for the specific day
        barData[weekdayIndex] = BarChartGroupData(
          x: weekdayIndex,
          barRods: [
            BarChartRodData(
              toY: duration.toDouble(),
              gradient: const LinearGradient(
                colors: [Colors.cyan, Colors.blue],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
              ),
              width: 12,
            ),
          ],
        );
      } catch (_) {
        // log('Error fetch: $e');
      }
    }

    return barData;
  }

  Widget leftTitles(double value, TitleMeta meta) {
    const style = TextStyle(
      color: Color(0xff7589a2),
      fontWeight: FontWeight.bold,
      fontSize: 14,
    );
    String text;
    switch (value.toInt()) {
      case 0:
        text = '0h';
        break;
      case 1:
        text = '1h';
        break;
      case 2:
        text = '2h';
        break;
      case 3:
        text = '3h';
        break;
      case 4:
        text = '4h';
        break;
      case 5:
        text = '5h';
        break;
      case 6:
        text = '6h';
        break;
      case 7:
        text = '7h';
        break;
      case 8:
        text = '8h';
        break;
      case 9:
        text = '9h';
        break;
      case 10:
        text = '10h';
        break;
      case 11:
        text = '11h';
        break;
      case 12:
        text = '12h';
        break;
      default:
        return Container();
    }
    return SideTitleWidget(
      axisSide: meta.axisSide,
      space: 0,
      child: Text(text, style: style),
    );
  }

  Widget bottomTitles(double value, TitleMeta meta) {
    const titles = <String>['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'];

    final Widget text = Text(
      titles[value.toInt()],
      style: const TextStyle(
        color: Color(0xff7589a2),
        fontWeight: FontWeight.bold,
        fontSize: 14,
      ),
    );

    return SideTitleWidget(
      axisSide: meta.axisSide,
      space: 16, // margin top
      child: text,
    );
  }

  void _showDetailsDialog(BuildContext context, TapUpDetails details) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Sleep Details'),
          content: const Text('More details about the selected sleep data.'),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('Close'),
            ),
          ],
        );
      },
    );
  }
}
