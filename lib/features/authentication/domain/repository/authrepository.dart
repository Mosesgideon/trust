


abstract class AuthRepository{
  Future<void>registerUser(String email, String password,String name,);
  Future<void>loginUser(String email, String password);
  Future<void> authenticateWithGoogle();
  Future<void>forgotPassword(String email);
}