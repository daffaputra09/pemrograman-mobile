import 'package:flutter/material.dart';
import 'package:pertemuan_6/models/item.dart';
import 'package:pertemuan_6/widgets/app_footer.dart';
import 'package:pertemuan_6/widgets/item_grid_card.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<Item> items = [
    Item(
      name: 'Gula',
      price: 5000,
      imageUrl: 'https://picsum.photos/seed/sugar/400/300',
      stock: 20,
      rating: 4.5,
    ),
    Item(
      name: 'Garam',
      price: 2000,
      imageUrl: 'https://picsum.photos/seed/salt/400/300',
      stock: 35,
      rating: 4.2,
    ),
    Item(
      name: 'Kopi',
      price: 12000,
      imageUrl: 'https://picsum.photos/seed/coffee/400/300',
      stock: 15,
      rating: 4.8,
    ),
    Item(
      name: 'Teh',
      price: 9000,
      imageUrl: 'https://picsum.photos/seed/tea/400/300',
      stock: 18,
      rating: 4.6,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Marketplace'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: GridView.builder(
                itemCount: items.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                  childAspectRatio: 0.72,
                ),
                itemBuilder: (context, index) {
                  final item = items[index];
                  return ItemGridCard(
                    item: item,
                    onTap: () {
                      Navigator.pushNamed(
                        context,
                        '/item',
                        arguments: item,
                      );
                    },
                  );
                },
              ),
            ),
          ),
          const AppFooter(),
        ],
      ),
    );
  }
}
