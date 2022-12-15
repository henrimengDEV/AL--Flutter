class AppState {
  final bool isLoading;
  final String location;
  final String time;

  AppState({
    this.isLoading = false,
    this.location = "",
    this.time = "00:00",
  });

  const AppState.initialState()
      : isLoading = false,
        location = "",
        time = "00:00";

  @override
  String toString() {
    return 'AppState{isLoading: $isLoading, location: $location, time: $time}';
  }
}
