import 'package:flutter/widgets.dart';
import 'package:global_refresh/global_refresh.dart';

abstract class GRState<T extends StatefulWidget> extends State<T> {
  @override
  void initState() {
    super.initState();
    GlobalRefresh().grState = this;
  }

  void refresh() {
    if (!mounted) return;
    setState(() {
      // nothing to do here
    });
  }
}
