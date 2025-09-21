 class UserState {}

final class UserInitial extends UserState {}
final class SignInLoading extends UserState {}
final class SignInSuccess extends UserState {}
final class SignInFailuer extends UserState {
  final String errorMessage;

  SignInFailuer({required this.errorMessage});
  
}

final class UpLoadProfialPic extends UserState{}

final class SignUpLoading extends UserState {}
final class SignUpSuccess extends UserState {
  final String message;

  SignUpSuccess({required this.message});
  
}
final class SignUpFailuer extends UserState {
    final String errorMessage;

  SignUpFailuer({required this.errorMessage});
}