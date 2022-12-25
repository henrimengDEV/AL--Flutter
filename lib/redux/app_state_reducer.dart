import 'package:my_first_app/redux/app_state.dart';
import 'package:my_first_app/redux/customer/customer_reducer.dart';
import 'package:my_first_app/redux/loading/loading_reducer.dart';

AppState appReducer(AppState prev, dynamic action) {
  print("[appReducer] {action: $action}");

  var state = AppState(
    isLoading: loadingReducer(prev.isLoading, action),
    customer: customerReducer(prev.customer, action),
    location: prev.location,
    time: prev.time,
    messages: prev.messages,
    customers: prev.customers,
  );

  print('$state');

  return state;
}
