import 'package:flutter/material.dart';
import 'electricity_cost_screen.dart'; // ElectricityCostScreen dosyasını import edin

class BuildingRoofSelectionScreen extends StatefulWidget {
  @override
  _BuildingRoofSelectionScreenState createState() => _BuildingRoofSelectionScreenState();
}

class _BuildingRoofSelectionScreenState extends State<BuildingRoofSelectionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bina & Çatı Seçimi'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Bina tipini seçiniz.',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  _buildGridTile('Mesken'),
                  _buildGridTile('Ticarethane'),
                  _buildGridTile('Sanayi'),
                  _buildGridTile('OSB'),
                ],
              ),
              SizedBox(height: 20),
              Text(
                'Çatı cephesini seçiniz.',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  _buildGridTile('Güney'),
                  _buildGridTile('Kuzey'),
                  _buildGridTile('Doğu'),
                  _buildGridTile('Batı'),
                  _buildGridTile('Kuzey & Güney'),
                  _buildGridTile('Doğu & Batı'),
                  _buildGridTile('Kuzey & Güney & Doğu & Batı'),
                ],
              ),
              SizedBox(height: 20),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ElectricityCostScreen()),
                    );
                  },
                  child: Text('Elektrik Maliyeti Ekranına Git'),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Anasayfa',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.location_on),
            label: 'Konum',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Kullanıcı',
          ),
        ],
        onTap: (index) {
          // Burada sayfalar arası geçiş yapabilirsiniz
        },
      ),
    );
  }

  Widget _buildGridTile(String title) {
    return Container(
      height: 25,  // Height'ı daha da küçült
      width: 50,   // Width'ü daha da küçült
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        gradient: LinearGradient(
          colors: [Colors.green, Colors.blue],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Center(
        child: Text(
          title,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 12,  // Font boyutunu daha da küçült
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
