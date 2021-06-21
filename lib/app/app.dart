import 'package:dama_online/tabuleiro/views/tabuleiro_page.dart';
import 'package:flutter/cupertino.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      title: 'Dama online',
      home: TabuleiroPage(),
    );
  }
}
