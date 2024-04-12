import 'package:flutter_riverpod/flutter_riverpod.dart';

// Define a custom state class to hold the registration state
class RegisterState {
  final String userName;
  final String email;
  final String password;
  final String rePassword;


  RegisterState({required this.userName , required this.email,required this.password ,required this.rePassword ,});

  // Define a copyWith method to create a copy of the state with new values
  RegisterState copyWith({String? userName,String? email}) {
    return RegisterState(
      userName: userName ?? this.userName,
      email: email ?? this.email,
      password: password ?? this.password,
      rePassword: rePassword ?? this.rePassword,
    );
  }
}

// Create a notifier class that extends StateNotifier and takes RegisterState as its generic type
class RegisterNotifier extends StateNotifier<RegisterState> {
  RegisterNotifier() : super(RegisterState(userName: "",email: "",password: "",rePassword: ""));

  // Define methods to update the state
  void onUserNameChange(String name) {
    state = state.copyWith(userName: name);
  }

  void onUserEmailChange(String email) {
    state = state.copyWith(email: email);
  }
  void onUserPasswordChange(String email) {
    state = state.copyWith(email: email);
  }
  void onUserRePasswordChange(String email) {
    state = state.copyWith(email: email);
  }
}

// Define a provider for the RegisterNotifier
final registerNotifierProvider =
StateNotifierProvider<RegisterNotifier, RegisterState>((ref) {
  return RegisterNotifier();
});
