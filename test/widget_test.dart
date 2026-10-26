import 'package:flutter_test/flutter_test.dart';
import 'package:favorite_place_app/main.dart';

void main() {
  testWidgets('App renders placeholder smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
    expect(find.text('Places will appear here!'), findsOneWidget);
  });
}
