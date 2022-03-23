import 'package:flutter/material.dart';

// --- BaseState<T extends StatefulWidget> normal State<*> 'e bakarsan
// * kısmında bir StatefulWidget olduğunu görebilirsin.

// --- extends State<T> etmesinin sebebi de BaseState 'in bir State olduğunu belirtmek için

// NOT: Bunu StatelessWidget için de yapabilirsin.

// --- BaseState 'i StatefulWidget 'larda ortak ve her zaman kullanılacak
// şeylerin kolaylıkla kullanılması sağlıyor.

abstract class BaseState<T extends StatefulWidget> extends State<T> {
  // theme 'e erişilmesi için
  ThemeData get themeData => Theme.of(context);

  // Ekrana oranlı bir uzunluk alınabilmesi için
  double dynamicHeight(double ratio) => MediaQuery.of(context).size.height * ratio;
  double dynamicWidth(double ratio) => MediaQuery.of(context).size.width * ratio;
}
