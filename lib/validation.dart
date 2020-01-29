class Validation {
  
  String validateUsername(String value) {
    if (value.isEmpty) {
      return 'Username must be filled in.';
    }
    return null;
  }

  String validateToken(String value) {
    if (value.length != 10) {
      return 'Token must be 10 character.';
    }
    return null;
  }
}