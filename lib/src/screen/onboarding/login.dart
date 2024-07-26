import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sleep_tracker/src/index.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RegisterBloc, RegisterState>(
      listener: (context, state) {
        if (state.registerStatus == RegisterStatus.error) {
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(
                content: Text(
                  state.error,
                  style: TextStyle(color: STColor.white, fontSize: 16.sp),
                ),
              ),
            );
        }

        if (state.registerStatus == RegisterStatus.loading) {
          const CircularProgressIndicator.adaptive();
        }
        if (state.registerStatus == RegisterStatus.completed) {
          Navigator.of(context).pushNamed(HomepageRoute.bottomRoute);
        }
        if (state.registerStatus == RegisterStatus.completed &&
            state.loggedUser == UserLogged.admin) {
          Navigator.of(context).pushNamed(HomepageRoute.adminRoute);
        }
      },
      builder: (context, state) {
        return Scaffold(
          resizeToAvoidBottomInset: false,
          body: SafeArea(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Container(
                height: MediaQuery.of(context).size.longestSide,
                color: STColor.darkBlueBackground,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20.h),
                        bottomRight: Radius.circular(20.h),
                      ),
                      child: Image.asset('assets/images/lognBG.jpeg'),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(16.w, 100.h, 16.w, 40.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Welcome Back!',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 16.h),
                          _buildTextField(
                            controller: _usernameController,
                            labelText: 'Username',
                          ),
                          SizedBox(height: 16.h),
                          _buildTextField(
                            controller: _passwordController,
                            labelText: 'Password',
                            obscureText: true,
                          ),
                          SizedBox(height: 26.h),
                          _buildLoginButton(),
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Text.rich(
                        TextSpan(
                          text: 'Don\'t have an account? ',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.sp,
                          ),
                          children: [
                            TextSpan(
                              text: 'Sign Up',
                              style: TextStyle(
                                color: STColor.icognitoBg,
                                fontSize: 16.sp,
                                fontWeight: FontWeight.bold,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Navigator.of(context).pushNamed(
                                    HomepageRoute.registerRoute,
                                  );
                                },
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildTextField({
    required TextEditingController controller,
    required String labelText,
    bool obscureText = false,
  }) {
    return TextField(
      controller: controller,
      obscureText: obscureText,
      onTapOutside: (_) => FocusScope.of(context).unfocus(),
      style: const TextStyle(color: Colors.white),
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: const TextStyle(color: Colors.white),
        filled: true,
        fillColor: Colors.grey.shade800,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }

  Widget _buildLoginButton() {
    return ElevatedButton(
      onPressed: () {
        context.read<RegisterBloc>().add(
              UserLogin(
                username: _usernameController.text.trim(),
                password: _passwordController.text.trim(),
              ),
            );
      },
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith<Color>((states) {
          if (states.contains(MaterialState.pressed)) {
            return STColor.icognitoBg.withOpacity(0.8);
          }
          return STColor.icognitoBg;
        }),
        fixedSize: MaterialStateProperty.all<Size>(
            Size(MediaQuery.of(context).size.width.w, 55.h)),
        elevation: MaterialStateProperty.all<double>(8),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.0),
          ),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 20.w),
        child: Text(
          'Login',
          style: TextStyle(
            color: STColor.gray70,
            fontSize: 18.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
