// ignore_for_file: invalid_annotation_target

part of 'register_bloc.dart';

enum RegisterStatus {
  initial,
  loading,
  completed,
  error,
}

enum UserLogged {
  signedIn,
  signedOut,
  errorSign,
  admin,
}

// Factory method to convert JSON string to DocumentReference
DocumentReference? _fromJsonDocumentReference(String? json) {
  if (json != null) {
    return FirebaseFirestore.instance.doc(json);
  }
  return null;
}

// Factory method to convert DocumentReference to JSON string
String? _toJsonDocumentReference(DocumentReference? docRef) {
  return docRef?.path;
}

@freezed
class RegisterState with _$RegisterState {
  factory RegisterState({
    required final RegisterStatus registerStatus,
    required final UserLogged loggedUser,
    required final String error,
    required final UserModel user,
    required final bool profileLogout,
    @JsonKey(
        fromJson: _fromJsonDocumentReference, toJson: _toJsonDocumentReference)
    final DocumentReference? newData,
  }) = _RegisterState;

  RegisterState._();

  factory RegisterState.initial() => RegisterState(
        registerStatus: RegisterStatus.initial,
        error: '',
        user: UserModel.initial(),
        loggedUser: UserLogged.signedOut,
        profileLogout: false,
      );

  factory RegisterState.fromJson(Map<String, dynamic> json) =>
      _$RegisterStateFromJson(json);
}
