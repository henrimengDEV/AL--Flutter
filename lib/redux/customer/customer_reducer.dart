import 'package:my_first_app/model/customer.dart';
import 'package:my_first_app/redux/customer/customer_update.dart';

Customer customerReducer(Customer state, dynamic action) {
  if (action is CustomerUpdate) {
    return action.updatedCustomer;
  }

  return state;
}
