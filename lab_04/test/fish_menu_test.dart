import 'package:flutter_test/flutter_test.dart';
import 'package:lab_04/main.dart';
import 'package:lab_04/carp.dart';

void main() {
  testWidgets('menu lists the three fish items', (WidgetTester tester) async {
    await tester.pumpWidget(const Lab04());

    expect(find.text('Fish Menu App'), findsOneWidget);
    expect(find.text('Carp'), findsOneWidget);
    expect(find.text('Tilapia'), findsOneWidget);
    expect(find.text('Tuna'), findsOneWidget);
  });

  testWidgets('tapping Carp opens CarpScreen', (WidgetTester tester) async {
    await tester.pumpWidget(const Lab04());

    await tester.tap(find.text('Carp'));
    await tester.pumpAndSettle();

    expect(find.byType(CarpScreen), findsOneWidget);
  });

  testWidgets('back button returns to the menu', (WidgetTester tester) async {
    await tester.pumpWidget(const Lab04());

    await tester.tap(find.text('Tuna'));
    await tester.pumpAndSettle();

    await tester.pageBack();
    await tester.pumpAndSettle();

    expect(find.text('Fish Menu App'), findsOneWidget);
  });
}
