import 'package:flutter/material.dart';

class GunesEnerjisiHesaplama extends StatefulWidget {
  @override
  _GunesEnerjisiHesaplamaState createState() => _GunesEnerjisiHesaplamaState();
}

class _GunesEnerjisiHesaplamaState extends State<GunesEnerjisiHesaplama> {
  final _formKey = GlobalKey<FormState>();
  final _panelSayisiController = TextEditingController();
  final _gucController = TextEditingController();

  double _panelSayisi = 1;
  double _guc = 1;
  double _uretim = 0;
  double _maliyet = 0;
  double _satilabilirEnerji = 0;
  double _geriOdemeSuresi = 0;

  @override
  void initState() {
    super.initState();
    _hesapla();
  }

  @override
  void dispose() {
    _panelSayisiController.dispose();
    _gucController.dispose();
    super.dispose();
  }

  void _hesapla() {
    setState(() {
      _uretim = _panelSayisi * _guc * 1000;
      _maliyet = _panelSayisi * _guc * 10000;
      _satilabilirEnerji = _uretim * 0.6;
      _geriOdemeSuresi = _maliyet / _satilabilirEnerji;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Güneş Enerjisi Hesaplama'),
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextFormField(
                controller: _panelSayisiController,
                decoration: InputDecoration(
                  labelText: 'Panel Sayısı',
                ),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Panel sayısı boş olamaz.';
                  }
                  if (double.tryParse(value) == null) {
                    return 'Panel sayısı sayısal olmalıdır.';
                  }
                  if (double.parse(value) < 1) {
                    return 'Panel sayısı 1 den küçük olamaz.';
                  }
                  return null;
                },
                onChanged: (value) => _hesapla(),
              ),
              SizedBox(height: 16.0),
              TextFormField(
                controller: _gucController,
                decoration: InputDecoration(
                  labelText: 'Panel Gücü (kWp)',
                ),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Panel gücü boş olamaz.';
                  }
                  if (double.tryParse(value) == null) {
                    return 'Panel gücü sayısal olmalıdır.';
                  }
                  if (double.parse(value) < 0.1) {
                    return 'Panel gücü 0.1 den küçük olamaz.';
                  }
                  return null;
                },
                onChanged: (value) => _hesapla(),
              ),
              SizedBox(height: 32.0),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Text(
                        'Hesaplanan Sonuçlar',
                        style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 16.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Şehir'),
                          Text('Elazığ'),
                        ],
                      ),
                      SizedBox(height: 8.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Güç'),
                          Text('$_guc kWp'),
                        ],
                      ),
                      SizedBox(height: 8.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Üretim'),
                          Text('$_uretim kWh'),
                        ],
                      ),
                      SizedBox(height: 8.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Maliyet'),
                          Text('$_maliyet ₺'),
                        ],
                      ),
                      SizedBox(height: 8.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Satılabilir Enerji'),
                          Text('$_satilabilirEnerji kWh'),
                        ],
                      ),
                      SizedBox(height: 8.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Geri Ödeme Süresi'),
                          Text('$_geriOdemeSuresi yıl'),
                        ],
                      ),
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
