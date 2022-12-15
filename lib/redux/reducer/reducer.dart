import 'package:my_first_app/redux/app_state.dart';
import 'package:my_first_app/redux/reducer/fetch_time_action.dart';

AppState reducer(AppState prev, dynamic action) {
  if (action is FetchTimeAction) {
    return AppState(
      isLoading: action.isLoading,
      location: action.location,
      time: action.time,
    );
  } else {
    return prev;
  }
}
