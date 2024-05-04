part of 'register_bloc.dart';

@immutable
sealed class RegisterEvent {}

class UserRegister extends RegisterEvent {
  final String username;
  final String email;
  final String password;
  UserRegister({
    required this.username,
    required this.email,
    required this.password,
  });
}

class UserLogin extends RegisterEvent {
  final String username;
  final String password;

  UserLogin({
    required this.password,
    required this.username,
  });
}
