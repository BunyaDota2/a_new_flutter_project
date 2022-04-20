import 'package:flutter/material.dart';

// main() является главной функцией с которой начинается
// выполнение приложения
void main() {
  runApp(const MyApp());
}

// В Flutter все является виджетом (кнопки,списки, текст и т.д.)
// виджет - это отдельный компонент, который может быть отрисован
// на экране (не путать с Android виджетами)
// Наиболее простые виджеты наследуются от StatelessWidget класса
// и не имеют состояния
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

// функция build отвечает за построение иерархии виджетов
  @override
  Widget build(BuildContext context) {
    // виджет MaterialApp - главный виджет приложения, который
    // позволяет настроить тему и использовать
    // Material Design для разработки.
    return MaterialApp(
      // заголовок приложения
      // обычно виден, когда мы сворачиваем приложение
      title: 'Welcome to Flutter',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Добро Пожаловать'),
        ),
        body: const Center(
          child: Text('Здраствуйте'),
        ),
      ),
    );
  }
}
