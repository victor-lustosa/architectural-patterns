abstract class LoginViewPresenter{
  Future logIn();
  Future toCreateAccount();
}
abstract class HomeViewPresenter{
  Future logout();
}
abstract class CreateAccountViewPresenter{
  Future createAccount();
}