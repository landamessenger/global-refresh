library;

import 'src/gr_state.dart';

export 'src/gr_state.dart';

class GlobalRefresh {
  static GlobalRefresh? _instance;

  GlobalRefresh._internal();

  GRState? grState;

  factory GlobalRefresh() {
    _instance ??= GlobalRefresh._internal();
    return _instance!;
  }

  void refresh() {
    final ms = grState;
    if (ms == null || !ms.mounted) {
      return;
    }
    ms.refresh();
  }
}
