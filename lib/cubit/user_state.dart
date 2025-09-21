 class UserState {}

final class UserInitial extends UserState {}
final class SignInLoading extends UserState {}
final class SignInSuccess extends UserState {}
final class SignInFailuer extends UserState {
  final String errorMessage;

  SignInFailuer({required this.errorMessage});
  
}
