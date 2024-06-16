// import 'package:fl_chart/fl_chart.dart';
// import 'package:flutter/material.dart';
// import 'package:sleep_tracker/src/index.dart';

// class WeeklySleepChart extends StatelessWidget {
//   const WeeklySleepChart({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final userId = GetDataFireBase.currentUserId;
//     final sleepTrackingService = SleepTrackingService(userId);

//     return StreamBuilder<List<SleepData>>(
//       stream: sleepTrackingService.getWeeklySleepData(),
//       builder: (context, snapshot) {
//         if (snapshot.connectionState == ConnectionState.waiting) {
//           return const CircularProgressIndicator();
//         }
//         if (snapshot.hasError) {
//           return const Text('Error loading sleep data');
//         }

//         final weeklyData = snapshot.data ?? [];

//         return SizedBox(
//           height: 200,
//           child: LineChart(
//             LineChartData(
//               lineBarsData: [
//                 LineChartBarData(
//                   spots: weeklyData.map((data) {
//                     final weekDay = data.sleepTime.weekday.toDouble();
//                     final sleepDuration = data.sleepDuration.inHours +
//                         data.sleepDuration.inMinutes / 60.0;

//                     return FlSpot(weekDay, sleepDuration);
//                   }).toList(),
//                   isCurved: true,
//                   colors: [Colors.blue],
//                   barWidth: 4,
//                   belowBarData: BarAreaData(
//                     show: true,
//                     colors: [
//                       Colors.blue.withOpacity(0.3),
//                     ],
//                   ),
//                   dotData: FlDotData(show: false),
//                 ),
//               ],
//               borderData: FlBorderData(show: false),
//               titlesData: FlTitlesData(
//                 leftTitles: SideTitles(
//                   showTitles: true,
//                   reservedSize: 28,
//                   getTextStyles: (context, value) => const TextStyle(
//                     color: Colors.white,
//                     fontWeight: FontWeight.bold,
//                     fontSize: 14,
//                   ),
//                   interval: 1,
//                   getTitles: (value) {
//                     if (value.toInt() % 1 == 0) {
//                       return '${value.toInt()}h';
//                     }
//                     return '';
//                   },
//                 ),
//                 bottomTitles: SideTitles(
//                   showTitles: true,
//                   getTextStyles: (context, value) => const TextStyle(
//                     color: Colors.white,
//                     fontWeight: FontWeight.bold,
//                     fontSize: 14,
//                   ),
//                   getTitles: (value) {
//                     switch (value.toInt()) {
//                       case 1:
//                         return 'Mon';
//                       case 2:
//                         return 'Tue';
//                       case 3:
//                         return 'Wed';
//                       case 4:
//                         return 'Thu';
//                       case 5:
//                         return 'Fri';
//                       case 6:
//                         return 'Sat';
//                       case 7:
//                         return 'Sun';
//                       default:
//                         return '';
//                     }
//                   },
//                 ),
//               ),
//             ),
//           ),
//         );
//       },
//     );
//   }
// }
