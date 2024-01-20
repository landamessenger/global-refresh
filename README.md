[![pub package](https://img.shields.io/pub/v/global_refresh.svg)](https://pub.dev/packages/global_refresh)

# Global Refresh

Basic library for refreshing the main state of an application. Useful when doing styling or language changes.

## Usage

Use the `GRState` instead of `State`:

```dart
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends GRState<MyHomePage> { // <-- use GRState
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ..
    );
  }
}
```

Then for refresh the main state:

```dart
GlobalRefresh().refresh();
```