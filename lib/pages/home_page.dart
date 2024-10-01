import 'package:flutter/material.dart';
import 'package:belanja/models/item.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<Item> items = [ 
    Item('Future', 75000, 'assets/1_future.jpeg'),
    Item('Camisa', 80000, 'assets/2_camisa.jpeg'),
    Item('SkyPoet', 60000, 'assets/3_skypoet.jpeg'),
    Item('NeverUp', 65000, 'assets/4_neverup.jpeg'),
    Item('Saitama Street', 70000, 'assets/5_st.jpeg'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Daftar Barang Belanja'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Card(
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(
                  context,
                  '/item',
                  arguments: items[index],
                );
              },
              child: ListTile(
                title: Text(items[index].name),
                subtitle: Text('Rp ${items[index].price}'),
              ),
            ),
          );
        },
      ),
    );
  }
}