import 'package:my_first_app/model/customer.dart';

class AppState {
  final bool isLoading;
  final Customer customer;
  final String location;
  final String time;

  AppState({
    required this.isLoading,
    required this.customer,
    required this.location,
    required this.time,
  });

  const AppState.initialState()
      : isLoading = false,
        customer = const Customer.initialState(),
        location = "",
        time = "00:00";

  @override
  String toString() {
    return 'AppState{isLoading: $isLoading, user: $customer, location: $location, time: $time}';
  }
}