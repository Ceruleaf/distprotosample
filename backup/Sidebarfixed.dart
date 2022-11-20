class MyNavObserver with NavigatorObserver {
  final StreamController<int> streamController;

  MyNavObserver({required this.streamController});

  @override
  void didPop(Route route, Route? previousRoute) {
    if (previousRoute != null) {
      if (previousRoute.settings.name == null) {
        streamController.add(3);
      } else {
        streamController
            .add(int.parse(previousRoute.settings.name!.split('/').last));
      }
    }
  }

  @override
  void didPush(Route route, Route? previousRoute) {
    if (route.settings.name == null) {
      streamController.add(3);
    } else {
      streamController.add(int.parse(route.settings.name!.split('/').last));
    }
  }
}