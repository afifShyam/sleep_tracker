import 'dart:async';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:sleep_tracker/src/index.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

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
                    child: GestureDetector(
                      onTap: () {
                        // Handle tap event here
                      },
                      child: Image.asset(
                        'assets/images/home_header.png',
                        width: 150, // Adjust width as needed
                        height: 150, // Adjust height as needed
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 230, horizontal: 20),
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
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _showSleepTrackerSetupDialog(context);
        },
        backgroundColor: STColor.black,
        child: const Icon(
          Icons.add,
          color: STColor.white,
        ),
      ),
    );
  }

  void _showSleepTrackerSetupDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            'Set Sleep Tracker',
            style: TextStyleST.textStyle.title.copyWith(
              color: STColor.grey2,
            ),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Set Your Sleep Goal',
                style: TextStyleST.textStyle.subtitle.copyWith(
                  color: STColor.grey2,
                ),
              ),
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Hours',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 10),
              Text(
                'Set Your Bedtime',
                style: TextStyleST.textStyle.subtitle.copyWith(
                  color: STColor.grey2,
                ),
              ),
              TextFormField(
                keyboardType: TextInputType.datetime,
                decoration: const InputDecoration(
                  labelText: 'Bedtime',
                  border: OutlineInputBorder(),
                ),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context); // Close the dialog
              },
              child: const Text('Cancel'),
            ),
            ElevatedButton(
              onPressed: () {
                // Save sleep tracker settings
                Navigator.pop(context); // Close the dialog
              },
              child: const Text('Save'),
            ),
          ],
        );
      },
    );
  }
}

class DigitalClock extends StatelessWidget {
  const DigitalClock({Key? key}) : super(key: key);

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
                color: STColor.white,
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
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstPoint.dx, firstPoint.dy);

    var secondControlPoint = Offset(size.width - (size.width / 4), size.height);
    var secondPoint = Offset(size.width, size.height - 30);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondPoint.dx, secondPoint.dy);

    path.lineTo(size.width, 0.0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
