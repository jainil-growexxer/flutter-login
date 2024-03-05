mixin ValidationMixin {
  String? emailValidation(value) {
    if (!value!.contains('@')) {
      return 'Please enter a valid email address';
    }
    return null;
  }

  String? passwordValidation(value) {
    if (value!.length < 5) {
      return 'Please enter a long password';
    }
    return null;
  }
}
