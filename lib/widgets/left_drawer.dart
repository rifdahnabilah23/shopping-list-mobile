import 'package:flutter/material.dart';
import 'package:shopping_list/screens/menu.dart';
import 'package:shopping_list/screens/shoplist_form.dart';
// TODO: Impor halaman ShopFormPage jika sudah dibuat


class LeftDrawer extends StatelessWidget {
  const LeftDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const DrawerHeader(
            // TODO: Bagian drawer header
            
            decoration: BoxDecoration(
              color: Colors.indigo,
            ),
            child: Column(
              children: [
                Text(
                  'Shopping List',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Padding(padding: EdgeInsets.all(10)),
                Text("Catat seluruh keperluan belanjamu di sini!",
                    // TODO: Tambahkan gaya teks dengan center alignment, font ukuran 15, warna putih, dan weight biasa
                    textAlign: TextAlign.center, // Center alignment
                    style: TextStyle(
                    fontSize: 15, // Font size 15
                    color: Colors.white, // Text color white
                    fontWeight: FontWeight.normal, // Normal font weight
                  ),
                    ),
              ],
            ),
          ),
          // TODO: Bagian routing
          ListTile(
          leading: const Icon(Icons.home_outlined),
          title: const Text('Halaman Utama'),
          // Bagian redirection ke MyHomePage
          onTap: () {
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => MyHomePage(),
                ));
          },
        ),
        ListTile(
          leading: const Icon(Icons.add_shopping_cart),
          title: const Text('Tambah Produk'),
          // Bagian redirection ke ShopFormPage
          onTap: () {
            /*
            TODO: Buatlah routing ke ShopFormPage di sini,
            setelah halaman ShopFormPage sudah dibuat.
            */
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => ShopFormPage(),
                ));
          },
        ),
        ],
      ),
    );
  }
}