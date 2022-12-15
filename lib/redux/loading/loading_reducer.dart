import 'loading_actions.dart';

bool loadingReducer(bool state, dynamic action) {
  switch(action) {
    case LoadingActions.Loading:
      return true;
    case LoadingActions.NotLoading:
      return false;
    default:
      return state;
  }
}
