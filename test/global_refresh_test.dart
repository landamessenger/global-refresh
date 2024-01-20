import 'package:global_refresh/global_refresh.dart';
import 'package:test/test.dart';

void main() {
  group('A group of tests', () {
    final gr = GlobalRefresh();

    setUp(() {
      // Additional setup goes here.
    });

    test('First Test', () {
      expect(gr.grState == null, isTrue);
    });
  });
}
