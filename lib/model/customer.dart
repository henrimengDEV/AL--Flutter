class Customer {
  final String email;
  final String password;
  final bool isConnected;

  Customer({
    this.email = "",
    this.password = "",
    this.isConnected = false,
  });

  const Customer.initialState()
      : email = "",
        password = "",
        isConnected = false;

  @override
  String toString() {
    return 'User{email: $email, password: $password, isConnected: $isConnected}';
  }
}
