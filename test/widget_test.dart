import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:lap1/main.dart'; // Đảm bảo đường dẫn chính xác tới file main.dart

void main() {
  testWidgets('Verify UI elements in the main screen', (WidgetTester tester) async {
    // Khởi chạy ứng dụng
    await tester.pumpWidget(MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Đỗ Hữu Nhân - 22IT.B151'),
        ),
        body: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Hello World'),
              MyWidget(),
            ],
          ),
        ),
      ),
    ));

    // Kiểm tra tiêu đề AppBar
    expect(find.text('Đỗ Hữu Nhân - 22IT.B151'), findsOneWidget);

    // Kiểm tra sự tồn tại của đoạn văn bản "Hello World"
    expect(find.text('Hello World'), findsOneWidget);

    // Kiểm tra widget MyWidget chứa ảnh
    expect(find.byType(MyWidget), findsOneWidget);

    // Kiểm tra widget Image trong MyWidget
    final image = find.byType(Image);
    expect(image, findsOneWidget);
  });
}
