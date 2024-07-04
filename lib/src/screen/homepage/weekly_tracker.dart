import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:sleep_tracker/src/index.dart';

class WeeklySleepStatisticsChart extends StatefulWidget {
  const WeeklySleepStatisticsChart({super.key});

  @override
  State<WeeklySleepStatisticsChart> createState() =>
      _WeeklySleepStatisticsChartState();
}

class _WeeklySleepStatisticsChartState
    extends State<WeeklySleepStatisticsChart> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _fetchWeeklySleepData(),
      builder: (context, AsyncSnapshot<List<BarChartGroupData>> snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        }
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
              // Do nothing here
            },
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
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
                        // tooltipBgColor: Colors.blueAccent,
                        getTooltipItem: (group, groupIndex, rod, rodIndex) {
                          return BarTooltipItem(
                            '${rod.toY.toStringAsFixed(1)} hours',
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
                        final touchedBarGroupIndex =
                            response.spot!.touchedBarGroupIndex;
                        final barData = snapshot.data![touchedBarGroupIndex];
                        _showDetailsDialog(context, barData);
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
                          reservedSize: 28,
                          interval: 5,
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
    );
  }

  Future<List<BarChartGroupData>> _fetchWeeklySleepData() async {
    final userId = GetDataFireBase.currentUserId;
    final sleepData = await FirebaseFirestore.instance
        .collection('users')
        .doc(userId)
        .collection('sleep_data')
        .orderBy('timestamp', descending: true)
        .limit(7)
        .get();

    List<BarChartGroupData> barData = [];

    for (var doc in sleepData.docs) {
      try {
        final data = doc.data();
        final bedtimeTimestamp = data['bedtime'] as Timestamp?;
        final wakeupTimestamp = data['wakeup'] as Timestamp?;

        if (bedtimeTimestamp == null || wakeupTimestamp == null) {
          continue; // Skip this document if either timestamp is null
        }

        final bedtime = bedtimeTimestamp.toDate();
        final wakeupTime = wakeupTimestamp.toDate();
        final duration =
            wakeupTime.difference(bedtime).inMinutes / 60; // Convert to hours

        barData.add(
          BarChartGroupData(
            x: bedtime.weekday -
                1, // Adjust for FLChart (0 = Monday, 6 = Sunday)
            barRods: [
              BarChartRodData(
                toY: duration,
                gradient: const LinearGradient(
                  colors: [Colors.cyan, Colors.blue],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                ),
                width: 12,
              ),
            ],
            showingTooltipIndicators: [
              0
            ], // Show tooltip on the first (and only) rod
            // barRodsExtras: {
            //   'bedtime': bedtime,
            //   'wakeupTime': wakeupTime
            // }
          ),
        );
      } catch (e) {
        // Handle errors, if any
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
      case 5:
        text = '5h';
        break;
      case 10:
        text = '10h';
        break;
      case 15:
        text = '15h';
        break;
      case 20:
        text = '20h';
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

  void _showDetailsDialog(BuildContext context, BarChartGroupData barData) {
    // final bedtime = barData.barRodsExtras['bedtime'];
    // final wakeupTime = barData.barRodsExtras['wakeupTime'];
    final duration = barData.barRods.first.toY;

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Sleep Details'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Total Sleep: $duration hours'),
              // Text('Bedtime: ${bedtime.toString()}'),
              // Text('Wakeup Time: ${wakeupTime.toString()}'),
            ],
          ),
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
