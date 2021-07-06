extension TimerExt on Duration {
  String get stringify {
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    final twoDigitMinutes = twoDigits(inMinutes.remainder(60));
    final twoDigitSeconds = twoDigits(inSeconds.remainder(60));
    final twoDigitHour = twoDigits(inHours);
    if (inHours < 1) return '$twoDigitMinutes:$twoDigitSeconds';
    return '$twoDigitHour:$twoDigitMinutes:$twoDigitSeconds';
  }
}
