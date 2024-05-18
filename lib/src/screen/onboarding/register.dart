import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sleep_tracker/src/index.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  bool _obscureTextPass = false;
  bool _obscureTextConfirmPass = false;

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
                'Error caught...',
                style: TextStyle(color: STColor.white, fontSize: 16.sp),
              ),
            ),
          );
      }
      if (state.registerStatus == RegisterStatus.completed) {
        Navigator.of(context).pushNamed(HomepageRoute.bottomRoute);
      }
    }, builder: (context, state) {
      return Scaffold(
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height,
                color: STColor.darkYellow,
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
                  child: Form(
                    key: _formKey, // Assign the form key
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 150.h,
                          width: 150.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: const DecorationImage(
                              image: AssetImage(
                                  'assets/images/register_logo.jpeg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(height: 20.h),
                        Text(
                          'Register',
                          style: TextStyle(
                            fontSize: 24.sp,
                            fontWeight: FontWeight.bold,
                            color: STColor.white,
                          ),
                        ),
                        SizedBox(height: 20.h),
                        _buildTextField(
                          controller: _usernameController,
                          labelText: 'Username',
                          passType: false,
                        ),
                        SizedBox(height: 12.h),
                        _buildTextField(
                          controller: _emailController,
                          labelText: 'Email',
                          keyboardType: TextInputType.emailAddress,
                          passType: false,
                        ),
                        SizedBox(height: 12.h),
                        _buildTextField(
                          controller: _passwordController,
                          labelText: 'Password',
                          obscureText: _obscureTextPass,
                          toggleVisibility: () {
                            setState(() {
                              _obscureTextPass = !_obscureTextPass;
                            });
                          },
                        ),
                        SizedBox(height: 12.h),
                        _buildTextField(
                          controller: _confirmPasswordController,
                          labelText: 'Confirm Password',
                          obscureText: _obscureTextConfirmPass,
                          validator: (value) {
                            if (value != _passwordController.text) {
                              return 'Passwords do not match';
                            }
                            return null;
                          },
                          toggleVisibility: () {
                            setState(() {
                              _obscureTextConfirmPass =
                                  !_obscureTextConfirmPass;
                            });
                          },
                        ),
                        SizedBox(height: 20.h),
                        ElevatedButton(
                          onPressed:
                              _onRegisterPressed, //_isButtonEnabled() ? _onRegisterPressed : null,
                          style: ElevatedButton.styleFrom(
                            backgroundColor: STColor.darkBlueBackground,
                            padding: EdgeInsets.symmetric(vertical: 16.h),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            minimumSize: Size(double.infinity, 55.h),
                          ),
                          child: Text(
                            'Register',
                            style: TextStyle(
                              color: STColor.white,
                              fontSize: 18.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30.h,
                        ),
                        Text.rich(TextSpan(
                          text: 'Already have an account? ',
                          style: TextStyle(
                            color: STColor.white,
                            fontSize: 16.sp,
                          ),
                          children: [
                            TextSpan(
                              text: 'Login',
                              style: TextStyle(
                                color: STColor.red,
                                fontSize: 16.sp,
                                fontWeight: FontWeight.bold,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  HomepageStartPage.of(context).exitUntill(
                                    context,
                                    routeName: HomepageRoute.loginRoute,
                                  );
                                },
                            ),
                          ],
                        ))
                      ],
                    ),
                  ),
                ),
              ),
              Visibility(
                visible: state.registerStatus == RegisterStatus.loading,
                child:
                    const Center(child: CircularProgressIndicator.adaptive()),
              )
            ],
          ),
        ),
      );
    });
  }

  Widget _buildTextField({
    required TextEditingController controller,
    required String labelText,
    bool obscureText = false,
    TextInputType? keyboardType,
    FormFieldValidator<String>? validator,
    VoidCallback? toggleVisibility,
    bool passType = true,
  }) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      keyboardType: keyboardType,
      onTapOutside: (_) => FocusScope.of(context).unfocus(),
      style: const TextStyle(color: Colors.black),
      validator: validator,
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: const TextStyle(color: Colors.black),
        filled: true,
        fillColor: Colors.grey.shade200,
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
        // Toggle icon
        suffixIcon: passType
            ? obscureText
                ? IconButton(
                    icon: const Icon(
                      Icons.visibility,
                      color: Colors.grey,
                    ),
                    onPressed: toggleVisibility, // Use the callback
                  )
                : IconButton(
                    icon: const Icon(
                      Icons.visibility_off,
                      color: Colors.grey,
                    ),
                    onPressed: toggleVisibility, // Use the callback
                  )
            : null,
      ),
    );
  }

  bool _isButtonEnabled() {
    return _usernameController.text.isNotEmpty &&
        _emailController.text.isNotEmpty &&
        _passwordController.text.isNotEmpty &&
        _confirmPasswordController.text.isNotEmpty;
  }

  void _onRegisterPressed() {
    if (_formKey.currentState!.validate()) {
      context.read<RegisterBloc>().add(
            UserRegister(
              username: _usernameController.text.trim(),
              email: _emailController.text.trim(),
              password: _passwordController.text.trim(),
            ),
          );
    }
  }
}
