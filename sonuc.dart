//Elektrik maliyet
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Electricity Calculator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _electricityUsageTime = 0;
  double _electricityBillAmount = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Elektrik Maliyet'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Elektriği yoğun kullandığınız zamanı seçiniz'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Radio(
                  value: 1,
                  groupValue: _electricityUsageTime,
                  onChanged: (value) {
                    setState(() {
                      _electricityUsageTime = value as int;
                    });
                  },
                ),
                Text('Sabah'),
                Radio(
                  value: 2,
                  groupValue: _electricityUsageTime,
                  onChanged: (value) {
                    setState(() {
                      _electricityUsageTime = value as int;
                    });
                  },
                ),
                Text('Öğle'),
                Radio(
                  value: 3,
                  groupValue: _electricityUsageTime,
                  onChanged: (value) {
                    setState(() {
                      _electricityUsageTime = value as int;
                    });
                  },
                ),
                Text('06:00-12:00'),
                Radio(
                  value: 4,
                  groupValue: _electricityUsageTime,
                  onChanged: (value) {
                    setState(() {
                      _electricityUsageTime = value as int;
                    });
                  },
                ),
                Text('12:00-18:00'),
                Radio(
                  value: 5,
                  groupValue: _electricityUsageTime,
                  onChanged: (value) {
                    setState(() {
                      _electricityUsageTime = value as int;
                    });
                  },
                ),
                Text('Akşam'),
                Radio(
                  value: 6,
                  groupValue: _electricityUsageTime,
                  onChanged: (value) {
                    setState(() {
                      _electricityUsageTime = value as int;
                    });
                  },
                ),
                Text('18:00-06:00'),
              ],
            ),
            SizedBox(height: 20),
            Text('Aylık elektrik faturanızı seçiniz.'),
            DropdownButton<double>(
              value: _electricityBillAmount,
              onChanged: (value) {
                setState(() {
                  _electricityBillAmount = value as double;
                });
              },
              items: [
                DropdownMenuItem(
                  value: 50.0,
                  child: Text('50 TL'),
                ),
                DropdownMenuItem(
                  value: 100.0,
                  child: Text('100 TL'),
                ),
                DropdownMenuItem(
                  value: 150.0,
                  child: Text('150 TL'),
                ),
                DropdownMenuItem(
                  value: 200.0,
                  child: Text('200 TL'),
                ),
              ],
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Perform calculation here
                print('Hesapla butonuna basıldı!');
              },
              child: Text('Hesapla'),
            ),
          ],
        ),
      ),
    );
  }
}