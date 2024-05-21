import 'package:flutter/material.dart';
import 'login_screen.dart';

class RegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Hesap Oluştur', style: TextStyle(fontSize: 24.0)),
            SizedBox(height: 16.0),
            TextField(
              decoration: InputDecoration(labelText: 'Email'),
            ),
            SizedBox(height: 8.0),
            TextField(
              decoration: InputDecoration(labelText: 'Şifre'),
              obscureText: true,
            ),
            SizedBox(height: 8.0),
            TextField(
              decoration: InputDecoration(labelText: 'Ad'),
            ),
            SizedBox(height: 8.0),
            TextField(
              decoration: InputDecoration(labelText: 'Soyad'),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => LoginScreen()),
                );
              },
              child: Text('Kayıt Ol'),
            ),
          ],
        ),
      ),
    );
  }
}

