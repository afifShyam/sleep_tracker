import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sleep_tracker/src/index.dart';

class EditProfilePage extends StatefulWidget {
  final ProfileModel? user;

  const EditProfilePage({
    super.key,
    this.user,
  });

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  late TextEditingController _nameController;
  late TextEditingController _usernameController;
  late TextEditingController _phoneController;
  late TextEditingController _ageController;
  late TextEditingController _genderController;
  late TextEditingController _passwordController;
  bool _isPasswordVisible = false;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController(text: widget.user?.name);
    _usernameController = TextEditingController(text: widget.user?.username);
    _phoneController =
        TextEditingController(text: widget.user?.phone.toString() ?? "");
    _ageController = TextEditingController(text: widget.user?.age.toString());
    _genderController = TextEditingController(text: widget.user?.gender);
    _passwordController = TextEditingController(text: widget.user?.password);
  }

  @override
  void dispose() {
    _nameController.dispose();
    _usernameController.dispose();
    _phoneController.dispose();
    _ageController.dispose();
    _genderController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF2C3E50),
      appBar: AppBar(
        backgroundColor: const Color(0xFF1F2D3D),
        title: const Text(
          'Edit Profile',
          style: TextStyle(
            color: Colors.white,
            fontSize: 22.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () => ProfileStartPage.of(context).exit(context),
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.white,
          ),
        ),
      ),
      body: BlocListener<ProfileBloc, ProfileState>(
        listener: (ctx, state) {
          if (state.profileStatus == ProfileStatus.updated) {
            ProfileStartPage.of(context).exit(context);
          }
        },
        child: BlocBuilder<ProfileBloc, ProfileState>(
          builder: (context, state) {
            return SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Form(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 20.0),
                      Center(
                        child: _buildProfilePictureField(
                          context,
                          'Profile Picture',
                          Icons.image,
                          state.image!.isEmpty
                              ? widget.user!.imageUrl.isNotEmpty
                                  ? widget.user!.imageUrl
                                  : null
                              : state.image!,
                        ),
                      ),
                      const SizedBox(height: 20.0),
                      _buildTextField(
                        'Name',
                        Icons.person,
                        _nameController,
                        false,
                      ),
                      SizedBox(height: 20.h),
                      _buildTextField(
                        'Username',
                        Icons.account_circle,
                        _usernameController,
                        false,
                      ),
                      SizedBox(height: 20.h),
                      _buildTextField(
                        'Phone',
                        Icons.phone,
                        _phoneController,
                        false,
                      ),
                      SizedBox(height: 20.h),
                      _buildTextField(
                        'Age',
                        Icons.cake,
                        _ageController,
                        false,
                      ),
                      SizedBox(height: 20.h),
                      _buildTextField(
                        'Gender',
                        Icons.person,
                        _genderController,
                        false,
                      ),
                      SizedBox(height: 20.h),
                      _buildTextField(
                        'Password',
                        Icons.lock,
                        _passwordController,
                        true,
                      ),
                      const SizedBox(height: 20.0),
                      ElevatedButton(
                        onPressed: () {
                          context.read<ProfileBloc>().add(
                                UpdateData(
                                  imageUrl: (state.image != null &&
                                          state.image!.isNotEmpty)
                                      ? state.image!
                                      : (widget.user != null &&
                                              widget.user!.imageUrl.isNotEmpty)
                                          ? widget.user!.imageUrl
                                          : '',
                                  email: state.profileModel.email,
                                  username: _usernameController.text,
                                  name: _nameController.text,
                                  age: int.tryParse(_ageController.text) ?? 0,
                                  phone:
                                      int.tryParse(_phoneController.text) ?? 0,
                                  password: _passwordController.text,
                                  gender: _genderController.text,
                                ),
                              );
                        },
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(vertical: 16.0),
                          minimumSize: const Size(double.infinity, 50.0),
                          backgroundColor:
                              const Color(0xFF3498DB), // Light Blue
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                        ),
                        child: const Text(
                          'Save Changes',
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
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
      ),
    );
  }

  Widget _buildTextField(String label, IconData icon,
      TextEditingController controller, bool isPassword) {
    return TextFormField(
      controller: controller,
      style: const TextStyle(color: STColor.white),
      onTapOutside: (_) => FocusScope.of(context).unfocus(),
      obscureText: isPassword ? !_isPasswordVisible : false,
      decoration: InputDecoration(
        labelStyle:
            TextStyleST.textStyle.bodyMedium.copyWith(color: STColor.white),
        labelText: label,
        prefixIcon: Icon(icon, color: STColor.white),
        suffixIcon: isPassword
            ? IconButton(
                icon: Icon(
                  _isPasswordVisible ? Icons.visibility : Icons.visibility_off,
                  color: _isPasswordVisible ? STColor.white : STColor.red,
                ),
                onPressed: () {
                  setState(() {
                    _isPasswordVisible = !_isPasswordVisible;
                  });
                },
              )
            : null,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return '$label cannot be empty';
        }
        return null;
      },
    );
  }

  Widget _buildProfilePictureField(
      BuildContext context, String label, IconData icon, String? imageUrl) {
    Future<void> pickImageFromGallery() async {
      final imagePicker = ImagePicker();
      final pickedFile =
          await imagePicker.pickImage(source: ImageSource.gallery);
      if (pickedFile != null) {
        final String imagePath = pickedFile.path;
        if (mounted) {
          context.read<ProfileBloc>().add(StoreImage(image: imagePath));
        }
      }
    }

    return GestureDetector(
      onTap: pickImageFromGallery,
      child: Container(
        width: 120.w,
        height: 120.h,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.grey[300],
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              spreadRadius: 1,
              blurRadius: 2,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            ClipOval(
              child: imageUrl != null
                  ? Image.network(
                      imageUrl,
                      width: 120.w,
                      height: 120.h,
                      fit: BoxFit.cover,
                    )
                  : Icon(
                      icon,
                      size: 60.w,
                      color: Colors.grey[600],
                    ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Theme.of(context).primaryColor,
                ),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.edit,
                    color: Colors.white,
                    size: 20,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
