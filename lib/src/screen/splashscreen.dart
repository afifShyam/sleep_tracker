import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sleep_tracker/src/index.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    context.read<RegisterBloc>().add(UserIsSigned());

    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    );

    // Define the bouncing animation using a Tween
    _animation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.bounceOut, // Use a bouncing curve
      ),
    );

    // Start the animation when the screen is loaded
    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<RegisterBloc, RegisterState>(
      listener: (context, state) {
        Timer(
          const Duration(seconds: 3),
          () {
            if (state.loggedUser == UserLogged.signedIn) {
              Navigator.of(context).pushReplacementNamed(
                HomepageRoute.bottomRoute,
              );
            } else if (state.loggedUser == UserLogged.signedOut &&
                state.profileLogout == false) {
              Navigator.of(context).pushReplacementNamed(
                HomepageRoute.loginRoute,
              );
            }
          },
        );
      },
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                color: STColor.darkBlueBackground,
                image: DecorationImage(
                  filterQuality: FilterQuality.high,
                  fit: BoxFit.fill,
                  image: AssetImage('assets/images/image_bg_welcome.png'),
                ),
              ),
            ),
            Center(
              child: AnimatedBuilder(
                animation: _animation,
                builder: (context, child) {
                  return Transform.translate(
                    offset: Offset(
                      0.0,
                      30 * _animation.value,
                    ),
                    child: Opacity(
                      opacity: _animation.value,
                      child: SizedBox(
                        child: Text(
                          'Sleep Tracker',
                          style: TextStyleST.textStyle.title.copyWith(
                            fontSize: 50,
                            color: STColor.grey2,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
