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

  // Data kategori dalam 2 baris (untuk layout dinamis)
  List<List<Widget>> _buildCategoryRows() {
    return [
      const [
        CategoryItem(icon: Icons.shopping_bag, label: 'Pakaian'),
        CategoryItem(icon: Icons.watch, label: 'Aksesoris'),
      ],
      const [
        CategoryItem(icon: Icons.devices, label: 'Elektronik'),
      ],
    ];
  }

  @override
  Widget build(BuildContext context) {
    final categoryRows = _buildCategoryRows();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Amajon Store'),
      ),
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            // Banner Promo dengan Row baru
            Container(
              margin: const EdgeInsets.all(16.0),
              padding: const EdgeInsets.all(24.0),
              color: Colors.deepPurple.shade100,
              child: Column(
                children: [
                  const Text(
                    'PROMO SPESIAL HARI INI - Hanya Hari Ini!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.deepPurple,
                    ),
                  ),
                  const SizedBox(height: 12.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.discount, color: Colors.deepPurple),
                      SizedBox(width: 8),
                      Text(
                        "Gratis Ongkir Seluruh Indonesia",
                        style: TextStyle(color: Colors.deepPurple, fontWeight: FontWeight.w600),
                      ),
                      SizedBox(width: 8),
                      Icon(Icons.local_shipping_outlined, color: Colors.deepPurple),
                    ],
                  ),
                ],
              ),
            ),

            // Produk 1
            const ProductCard(
              title: 'Sepatu Running',
              rating: '4.5 (200 rating)',
              price: 'Rp 750.000',
              delivery: 'Est. pengiriman 2-3 hari',
            ),

            // Produk 2
            const ProductCard(
              title: 'Tas Ransel',
              rating: '4.8 (95 rating)',
              price: 'Rp 350.000',
              delivery: 'Est. pengiriman 1-2 hari',
            ),

            // Kategori Responsif
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
              child: LayoutBuilder(
                builder: (context, constraints) {
                  if (constraints.maxWidth < 400) {
                    return Column(
                      children: categoryRows
                          .map((row) => Padding(
                                padding: const EdgeInsets.symmetric(vertical: 8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: row,
                                ),
                              ))
                          .toList(),
                    );
                  } else {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: categoryRows.expand((row) => row).toList(),
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
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Beranda'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Akun'),
        ],
      ),
    );
  }
}

// Widget Produk Reusable
class ProductCard extends StatelessWidget {
  final String title;
  final String rating;
  final String price;
  final String delivery;

  const ProductCard({
    super.key,
    required this.title,
    required this.rating,
    required this.price,
    required this.delivery,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      padding: const EdgeInsets.only(left: 16.0, top: 20.0, right: 8.0, bottom: 16.0),
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
          Text(
            title,
            style: const TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.deepPurple),
          ),
          const SizedBox(height: 4.0),
          Row(
            children: [
              const Icon(Icons.star, color: Colors.deepPurpleAccent, size: 18),
              const SizedBox(width: 4),
              Text(rating, style: const TextStyle(color: Colors.deepPurple)),
            ],
          ),
          const SizedBox(height: 8.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                price,
                style: const TextStyle(color: Colors.deepPurple, fontSize: 16.0),
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
          Row(
            children: [
              const Icon(Icons.local_shipping, color: Colors.deepPurple),
              const SizedBox(width: 4),
              Text(delivery, style: const TextStyle(color: Colors.deepPurple)),
            ],
          )
        ],
      ),
    );
  }
}

// Widget Kategori Reusable
class CategoryItem extends StatelessWidget {
  final IconData icon;
  final String label;

  const CategoryItem({super.key, required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, color: Colors.deepPurple),
        const SizedBox(height: 8.0),
        Text(label, style: const TextStyle(color: Colors.deepPurple)),
      ],
    );
  }
}
