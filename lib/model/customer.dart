class Customer {
  final String email;
  final String imgUrl;
  final bool isConnected;

  const Customer({
    this.email = "",
    this.imgUrl = "",
    this.isConnected = false,
  });

  const Customer.initialState()
      : email = "",
        imgUrl = "",
        isConnected = false;

  @override
  String toString() {
    return 'User{email: $email, imgUrl: $imgUrl, isConnected: $isConnected}';
  }
}
