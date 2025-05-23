import 'dart:async';

import 'package:ffmpeg_kit_flutter_new/ffmpeg_kit.dart';

class Ffmpeg {
  static Future<int?> executeFFmpeg(String command) async {
    final session = await FFmpegKit.execute(command);
    final code = await session.getReturnCode();
    return code?.getValue();
  }

  static Future<void> cancelFFmpeg() async {
    return await FFmpegKit.cancel();
  }
}
