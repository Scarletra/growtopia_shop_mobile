import 'package:flutter/material.dart';
import 'package:growtopia_shop/widgets/item_card.dart';
import 'package:growtopia_shop/widgets/left_drawer.dart';
import 'package:growtopia_shop/screens/growtopia_form.dart';

class DaftarItem extends StatelessWidget {
    DaftarItem({Key? key}) : super(key: key);
    final List<ItemGrowtopia> barangBarang = listItem;
    final List<GrowtopiaItem> cardItem = [];

    void generateCardItems() {
    for (final barang in barangBarang) {
      cardItem.add(GrowtopiaItem(barang.namaItem, barang.price.toString(), barang.description));
    }
  }

    
    @override
    Widget build(BuildContext context) {
      generateCardItems();
      return Scaffold(
    appBar: AppBar(
        title: const Text(
          'Growtopia Shop',
          style: TextStyle(
            color: Colors.white, // Set the text color to white
            ),
          ),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),
      drawer: const LeftDrawer(),
      body: SingleChildScrollView(
        // Widget wrapper yang dapat discroll
        child: Padding(
          padding: const EdgeInsets.all(10.0), // Set padding dari halaman
          child: Column(
            // Widget untuk menampilkan children secara vertikal
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                // Widget Text untuk menampilkan tulisan dengan alignment center dan style yang sesuai
                child: Text(
                  'Your Growtopia Item:', // Text yang menandakan toko
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              // Grid layout
              GridView.count(
                // Container pada card kita.
                primary: true,
                padding: const EdgeInsets.all(20),
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 3,
                shrinkWrap: true,
                children: cardItem.map((GrowtopiaItem item) {
                  // Iterasi untuk setiap item
                  return GrowtopiaItemCard(item);
                }).toList(),
              ),
            ],
          ),
        ),
      ),
    );

  }

}