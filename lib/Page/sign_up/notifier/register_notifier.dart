import 'package:flutter_riverpod/flutter_riverpod.dart';

// Define a custom state class to hold the registration state
class RegisterState {
  final String userName;

  RegisterState({required this.userName});

  // Define a copyWith method to create a copy of the state with new values
  RegisterState copyWith({String? userName}) {
    return RegisterState(
      userName: userName ?? this.userName,
    );
  }
}

// Create a notifier class that extends StateNotifier and takes RegisterState as its generic type
class RegisterNotifier extends StateNotifier<RegisterState> {
  RegisterNotifier() : super(RegisterState(userName: ""));

  // Define methods to update the state
  void onUserNameChange(String name) {
    state = state.copyWith(userName: name);
  }
}

// Define a provider for the RegisterNotifier
final registerNotifierProvider =
StateNotifierProvider<RegisterNotifier, RegisterState>((ref) {
  return RegisterNotifier();
});
