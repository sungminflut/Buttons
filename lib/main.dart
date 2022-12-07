import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyButtons(),
    );
  }
}

class MyButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Buttons'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                print('text button');
              },
              // onLongPress: () {
              //   print('text button');
              // },
              child: Text(
                'Text button',
                style: TextStyle(fontSize: 20.0),
              ),
              style: TextButton.styleFrom(
                foregroundColor: Colors.red,
                //backgroundColor: Colors.blue
              ),
            ),
            ElevatedButton(
              onPressed: () {
                print('Elevated button');
              },
              child: Text('Elevated button'),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orangeAccent,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  elevation: 0.0),
            ),
            OutlinedButton(
              onPressed: () {
                print('Outlined button');
              },
              child: Text('Outlined button'),
              style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.green,
                  side: BorderSide(color: Colors.black87, width: 2.0)),
            ),
            TextButton.icon(
              onPressed: () {
                print('Icon button');
              },
              icon: Icon(
                Icons.home,
                size: 30.0,
                color: Colors.black87,
              ),
              label: Text('Go to home'),
              style: TextButton.styleFrom(foregroundColor: Colors.purple),
            ),
            ElevatedButton.icon(
              onPressed: () {
                print('Go to Home');
              },
              icon: Icon(
                Icons.home,
                size: 20,
              ),
              label: Text('Go to Home'),
              style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.black, minimumSize: Size(200, 50)),
            ),
            OutlinedButton.icon(
              onPressed: () {
                print('Outlined icon button');
              },
              icon: Icon(Icons.home),
              label: Text('Go to home'),
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.black,
              ),
            ),
            ElevatedButton.icon(
              onPressed: null, // 버튼 비활성화
              icon: Icon(
                Icons.home,
                size: 20,
              ),
              label: Text('Go to Home'),
              style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.black,
                  onSurface: Colors.pink, // 비활성화된 버튼 배경색 변경
                  minimumSize: Size(200, 50)
              ),
            ),
            ButtonBar( // 버튼들을 가로 방향으로 끝정렬, 공간 부족 시 세로 방향으로 정렬
              alignment: MainAxisAlignment.center,
              buttonPadding: EdgeInsets.all(20),
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text("TextButton"),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text("ElevatedButton"),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}