class ApiLink {
  String apilink = 'api-medxcart.herokuapp.com';
    String getBaseLink() {
    return apilink;
  }
  String getSignUpLink() {
    return '/stayfit/api/signup';
  }

  String getSignInLink() {
    return '/stayfit/api/signin';
  }
}
