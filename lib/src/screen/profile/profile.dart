import 'dart:developer';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sleep_tracker/src/index.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  void initState() {
    final user = FirebaseAuth.instance.currentUser!.uid;
    context.read<ProfileBloc>().add(GetData(id: user));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RegisterBloc, RegisterState>(
      listener: (context, state) {
        if (state.loggedUser == UserLogged.signedOut) {
          // Perform navigation logic upon logout
          Navigator.of(context, rootNavigator: true)
              .pushReplacementNamed(HomepageRoute.loginRoute);
        }
      },
      builder: (context, state) => BlocBuilder<ProfileBloc, ProfileState>(
        builder: (context, profileData) {
          return Scaffold(
            backgroundColor: STColor.darkBlueBackground,
            body: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 40.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 40.h),
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        profileData.profileModel.imageUrl.isEmpty
                            ? CircleAvatar(
                                radius: 80.w,
                                backgroundImage: const AssetImage(
                                    'assets/images/blank_profile.svg'),
                              )
                            : CircleAvatar(
                                radius: 80.w,
                                backgroundImage: NetworkImage(
                                    profileData.profileModel.imageUrl),
                              ),
                        Positioned(
                          right: 0,
                          bottom: 0,
                          child: IconButton(
                            onPressed: () {
                              Navigator.of(context, rootNavigator: true)
                                  .pushNamed(ProfileRoute.editProfileRoute,
                                      arguments: {
                                    'user': profileData.profileModel,
                                  });
                            },
                            icon: const Icon(Icons.edit, color: STColor.white),
                          ),
                        ),
                        if (profileData.profileStatus == ProfileStatus.loading)
                          const CircularProgressIndicator.adaptive()
                      ],
                    ),
                    SizedBox(height: 20.h), // Add space between image and text
                    Text(
                      profileData.profileModel.name,
                      style: TextStyle(
                        color: STColor.white,
                        fontSize: 28.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10.h),
                    Text(
                      '@${profileData.profileModel.username}',
                      style: TextStyle(
                        color: STColor.grey,
                        fontSize: 18.sp,
                      ),
                    ),
                    SizedBox(height: 30.h),
                    ProfileInfoRow(
                      label: 'Age',
                      value: profileData.profileModel.age.toString(),
                    ),
                    ProfileInfoRow(
                      label: 'Gender',
                      value: profileData.profileModel.gender,
                    ),
                    ProfileInfoRow(
                      label: 'Email',
                      value: profileData.profileModel.email,
                    ),
                    ProfileInfoRow(
                      label: 'Phone',
                      value: profileData.profileModel.phone.toString(),
                    ),
                    ProfileInfoRow(
                      label: 'Password',
                      value: profileData.profileModel
                          .password, // Display encrypted password or mask it
                    ),
                    SizedBox(height: 60.h),
                    ElevatedButton.icon(
                      onPressed: () {
                        // Dispatch the logout event to the RegisterBloc
                        context.read<RegisterBloc>().add(UserLogout());
                      },
                      icon: const Icon(Icons.logout_outlined,
                          color: STColor.black),
                      label: Text(
                        'Logout',
                        style: TextStyle(
                          color: STColor.black,
                          fontSize: 20.sp,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class ProfileInfoRow extends StatelessWidget {
  final String label;
  final String value;

  const ProfileInfoRow({
    super.key,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: TextStyle(
              color: STColor.grey,
              fontSize: 18.sp,
            ),
          ),
          Text(
            value,
            style: TextStyle(
              color: STColor.white,
              fontSize: 18.sp,
            ),
          ),
        ],
      ),
    );
  }
}
