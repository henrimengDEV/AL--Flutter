class FetchTimeAction {
  final bool _isLoading;
  final String _location;
  final String _time;

  FetchTimeAction(this._isLoading, this._location, this._time);

  String get time => _time;

  String get location => _location;

  bool get isLoading => _isLoading;
}