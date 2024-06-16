// import 'package:fl_chart/fl_chart.dart';
// import 'package:flutter/material.dart';
// import 'package:sleep_tracker/src/index.dart';
// import 'package:intl/intl.dart';

// class DailySleepChart extends StatelessWidget {
//   const DailySleepChart({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final userId = GetDataFireBase.currentUserId;
//     final sleepTrackingService = SleepTrackingService(userId);

//     return StreamBuilder<List<SleepData>>(
//       stream: sleepTrackingService.getDailySleepData(),
//       builder: (context, snapshot) {
//         if (snapshot.connectionState == ConnectionState.waiting) {
//           return const CircularProgressIndicator();
//         }
//         if (snapshot.hasError) {
//           return const Text('Error loading sleep data');
//         }

//         final dailyData = snapshot.data ?? [];

//         return SizedBox(
//           height: 200,
//           child: BarChart(
//             BarChartData(
//               alignment: BarChartAlignment.spaceAround,
//               barGroups: dailyData.map((data) {
//                 final day = DateFormat('E').format(data.sleepTime);
//                 final sleepDuration = data.sleepDuration.inHours +
//                     data.sleepDuration.inMinutes / 60.0;

//                 return BarChartGroupData(
//                   x: dailyData.indexOf(data),
//                   barRods: [
//                     BarChartRodData(
//                       toY: sleepDuration,
//                       color: Colors.blue,
//                     ),
//                   ],
//                   showingTooltipIndicators: [0],
//                 );
//               }).toList(),
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
//                     return dailyData[value.toInt()].sleepTime.day.toString();
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
