import 'package:flutter/material.dart';
import 'splash_screen.dart';
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Amajon',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        scaffoldBackgroundColor: Colors.deepPurple.shade50,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.deepPurple,
          foregroundColor: Colors.white,
          centerTitle: true,
          elevation: 4,
        ),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: Colors.deepPurple,
          foregroundColor: Colors.white,
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Colors.deepPurple.shade100,
          selectedItemColor: Colors.deepPurple,
          unselectedItemColor: Colors.deepPurple.shade300,
          showUnselectedLabels: true,
        ),
        textTheme: ThemeData.light().textTheme.copyWith(
              bodyMedium: const TextStyle(color: Colors.deepPurple),
              bodySmall: const TextStyle(color: Colors.deepPurple),
              titleMedium: const TextStyle(color: Colors.deepPurple),
            ),
      ),
      home: const SplashScreen(),
    );
  }
}


class ECommerceScreen extends StatelessWidget {
  const ECommerceScreen({Key? key}) : super(key: key);

  // Fungsi untuk bikin list kategori
  List<Widget> _buildCategoryItems() {
    return const [
      Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.shopping_bag, color: Colors.deepPurple),
          SizedBox(height: 8.0),
          Text('Pakaian', style: TextStyle(color: Colors.deepPurple)),
        ],
      ),
      Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.watch, color: Colors.deepPurple),
          SizedBox(height: 8.0),
          Text('Aksesoris', style: TextStyle(color: Colors.deepPurple)),
        ],
      ),
      Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.devices, color: Colors.deepPurple),
          SizedBox(height: 8.0),
          Text('Elektronik', style: TextStyle(color: Colors.deepPurple)),
        ],
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Amajon Store'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            // Banner Promo
            Container(
              margin: const EdgeInsets.all(16.0),
              padding: const EdgeInsets.all(24.0),
              color: Colors.deepPurple.shade100,
              child: const Text(
                'PROMO SPESIAL HARI INI - Hanya Hari Ini!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple,
                ),
              ),
            ),

            // Produk 1 Container
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              padding: const EdgeInsets.only(left: 16.0, top: 20.0, bottom: 16.0),
              decoration: BoxDecoration(
                color: Colors.deepPurple.shade50,
                border: Border.all(color: Colors.deepPurple.shade100),
                borderRadius: BorderRadius.circular(8.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.deepPurple.withOpacity(0.1),
                    blurRadius: 6,
                    offset: const Offset(2, 4),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Text(
                    'Sepatu Running',
                    style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.deepPurple),
                  ),
                  const SizedBox(height: 4.0),
                  const Row(
                    children: [
                      Icon(Icons.star, color: Colors.deepPurpleAccent, size: 18),
                      SizedBox(width: 4),
                      Text('4.5 (200 rating)', style: TextStyle(color: Colors.deepPurple)),
                    ],
                  ),
                  const SizedBox(height: 8.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      const Text(
                        'Rp 750.000',
                        style: TextStyle(color: Colors.deepPurple, fontSize: 16.0),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                        decoration: BoxDecoration(
                          color: Colors.deepPurple,
                          borderRadius: BorderRadius.circular(4.0),
                        ),
                        child: const Text(
                          'Beli',
                          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8.0),
                  const Row(
                    children: [
                      Icon(Icons.local_shipping, color: Colors.deepPurple),
                      SizedBox(width: 4),
                      Text('Est. pengiriman 2-3 hari', style: TextStyle(color: Colors.deepPurple)),
                    ],
                  )
                ],
              ),
            ),

            // Produk 2 Container
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              padding: const EdgeInsets.only(left: 16.0, top: 20.0, right: 8.0),
              decoration: BoxDecoration(
                color: Colors.deepPurple.shade50,
                border: Border.all(color: Colors.deepPurple.shade100),
                borderRadius: BorderRadius.circular(8.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.deepPurple.withOpacity(0.1),
                    blurRadius: 6,
                    offset: const Offset(2, 4),
                  )
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Text(
                    'Tas Ransel',
                    style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.deepPurple),
                  ),
                  const SizedBox(height: 4.0),
                  const Row(
                    children: [
                      Icon(Icons.star, color: Colors.deepPurpleAccent, size: 18),
                      SizedBox(width: 4),
                      Text('4.8 (95 rating)', style: TextStyle(color: Colors.deepPurple)),
                    ],
                  ),
                  const SizedBox(height: 8.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      const Text(
                        'Rp 350.000',
                        style: TextStyle(color: Colors.deepPurple, fontSize: 16.0),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                        decoration: BoxDecoration(
                          color: Colors.deepPurple,
                          borderRadius: BorderRadius.circular(4.0),
                        ),
                        child: const Text(
                          'Beli',
                          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8.0),
                  const Row(
                    children: [
                      Icon(Icons.local_shipping, color: Colors.deepPurple),
                      SizedBox(width: 4),
                      Text('Est. pengiriman 1-2 hari', style: TextStyle(color: Colors.deepPurple)),
                    ],
                  )
                ],
              ),
            ),

            // Info Pengiriman
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Icon(Icons.discount, color: Colors.deepPurple),
                  Text(
                    "Gratis Ongkir Seluruh Indonesia",
                    style: TextStyle(color: Colors.deepPurple),
                  ),
                  Icon(Icons.local_shipping_outlined, color: Colors.deepPurple),
                ],
              ),
            ),

            // Kategori icons and text
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
              child: LayoutBuilder(
                builder: (context, constraints) {
                  if (constraints.maxWidth < 400) {
                    // Vertikal kalau layar kecil
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: _buildCategoryItems()
                          .map((widget) => Padding(
                                padding: const EdgeInsets.symmetric(vertical: 8.0),
                                child: widget,
                              ))
                          .toList(),
                    );
                  } else {
                    // Horizontal kalau layar lebih besar
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: _buildCategoryItems(),
                    );
                  }
                },
              ),
            ),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.shopping_cart),
      ),

      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Beranda'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Akun'),
        ],
      ),
    );
  }
}