import 'package:flutter/material.dart';

class Anasayfa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Anasayfa'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              onPressed: () {
                // Dijital Kimlik sayfasına git
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DijitalKimlik(),
                  ),
                );
              },
              child: Text('Dijital Kimlik'),
            ),
            SizedBox(height: 20.0),
            RaisedButton(
              onPressed: () {
                // Iletişim sayfasına git
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Iletisim(),
                  ),
                );
              },
              child: Text('İletişim'),
            ),
            SizedBox(height: 20.0),
            RaisedButton(
              onPressed: () {
                // Uygulamadan çık
                Navigator.pop(context);
              },
              child: Text('Çıkış'),
            ),
          ],
        ),
      ),
    );
  }
}

class DijitalKimlik extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dijital Kimlik'),
      ),
      body: Center(
        child: Text('Dijital Kimlik Sayfası'),
      ),
    );
  }
}

class Iletisim extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('İletişim'),
      ),
      body: Center(
        child: Text('İletişim Sayfası'),
      ),
    );
  }
}
