import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:quiz_app/main.dart';

void main() {
  group('Quiz App Widget Tests', () {
    testWidgets('App should show splash screen on startup',
        (WidgetTester tester) async {
      await tester.pumpWidget(const QuizApp());

      expect(find.text('QUIZ APP'), findsOneWidget);
      expect(find.text('Developed by Zubair'), findsOneWidget);
      expect(find.byIcon(Icons.quiz), findsOneWidget);
      expect(find.byType(CircularProgressIndicator), findsOneWidget);
    });

    testWidgets('Should navigate to home screen after splash',
        (WidgetTester tester) async {
      await tester.pumpWidget(const QuizApp());
      await tester.pumpAndSettle(const Duration(seconds: 6));

      expect(find.text('Select Subject'), findsOneWidget);
      expect(find.text('English'), findsOneWidget);
      expect(find.text('General Knowledge'), findsOneWidget);
      expect(find.text('Urdu'), findsOneWidget);
      expect(find.text('Sindhi'), findsOneWidget);
    });

    testWidgets('Should show all subject cards on home screen',
        (WidgetTester tester) async {
      await tester.pumpWidget(const QuizApp());
      await tester.pumpAndSettle(const Duration(seconds: 6));

      expect(find.text('English'), findsOneWidget);
      expect(find.text('General Knowledge'), findsOneWidget);
      expect(find.text('Urdu'), findsOneWidget);
      expect(find.text('Sindhi'), findsOneWidget);

      expect(find.byIcon(Icons.language), findsOneWidget);
      expect(find.byIcon(Icons.public), findsOneWidget);
      expect(find.byIcon(Icons.menu_book), findsOneWidget);
      expect(find.byIcon(Icons.library_books), findsOneWidget);
    });
  });
}
