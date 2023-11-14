import 'package:flutter/material.dart';

class GrowtopiaItem {
  final String name;
  final String price;
  final String description;

  GrowtopiaItem(this.name, this.price, this.description);
}

class GrowtopiaItemCard extends StatelessWidget {
  final GrowtopiaItem item;

  const GrowtopiaItemCard(this.item, {super.key}); // Constructor

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.indigo,
      child: InkWell(
        child: Container(
          // Container untuk menyimpan Icon dan Text
          padding: const EdgeInsets.all(8),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  item.name,
                ),
                const Padding(padding: EdgeInsets.all(3)),
                Text(
                  item.price,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.white),
                ),
                const Padding(padding: EdgeInsets.all(3)),
                Text(
                  item.description,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}