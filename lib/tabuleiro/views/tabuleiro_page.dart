import 'package:flutter/cupertino.dart';

class TabuleiroPage extends StatelessWidget {
  bool togleColor = false;

  TabuleiroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return CupertinoPageScaffold(
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: Image.asset('assets/background.png').image,
            fit: BoxFit.fill,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 60, left: 20),
                child: DefaultTextStyle(
                  style: TextStyle(color: CupertinoColors.white),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text('Jogador 1'),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/black.png',
                              width: 20, height: 20),
                          SizedBox(width: 10),
                          Text('16 restantes'),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Container(
                width: size.width,
                height: size.width,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: Image.asset('assets/tabuleiro.png').image,
                    fit: BoxFit.fill,
                  ),
                ),
                child: GridView.count(
                  physics: NeverScrollableScrollPhysics(),
                  padding: EdgeInsets.zero,
                  crossAxisCount: 8,
                  childAspectRatio: 1,
                  children: List.generate(
                    64,
                    (index) => CupertinoButton(
                      padding: EdgeInsetsDirectional.zero,
                      onPressed: () {
                        print(index);
                      },
                      child: Container(
                        width: size.width / 8,
                        height: size.width / 8,
                        child: Center(
                          child: index >= 0 && index < 16
                              ? Image.asset(
                                  'assets/black.png',
                                  width: size.width / 8 * 0.7,
                                  height: size.width / 8 * 0.7,
                                )
                              : (index >= 48 && index < 64
                                  ? Image.asset(
                                      'assets/white.png',
                                      width: size.width / 8 * 0.7,
                                      height: size.width / 8 * 0.7,
                                    )
                                  : null),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 60, left: 20),
                child: DefaultTextStyle(
                  style: TextStyle(color: CupertinoColors.white),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text('Jogador 2'),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/black.png',
                              width: 20, height: 20),
                          SizedBox(width: 10),
                          Text('16 restantes'),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
