import 'package:color_test_task/color_test_app.dart';
import 'package:color_test_task/home_page.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Renders home page', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const ColorTestApp());

    // Verify that our home page is rendered.
    expect(find.byType(HomePage), findsOneWidget);
  });
}
