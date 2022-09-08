import 'package:flutter/services.dart';

class PlatformChannel {
  final channel = const MethodChannel("com.meoluoi.base/flutter_channel");
  final handleNativeChannel = const MethodChannel('callbacks');
  //
  // Future<int> getNumbersOfBadgesChat() async {
  //   final numBadges = await channel.invokeMethod("getNumbersOfBadgesChat");
  //   print("NumbersOfBadgesChat:$numBadges");
  //   return numBadges;
  // }
  //
  startListeningNative(Function(dynamic) callback) async {
    handleNativeChannel.setMethodCallHandler((call) async {
      try {
        switch (call.method) {
          case 'checkIsFriend':
            print(call.arguments);
            break;
          default:
            print(
                'TestFairy: Ignoring invoke from native. This normally shouldn\'t happen.');
        }
      } catch (e) {}
    });
  }
}
