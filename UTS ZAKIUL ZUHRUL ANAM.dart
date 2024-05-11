import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'project app shoes',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ShoesList(),
    );
  }
}

class ShoesList extends StatelessWidget {
  const ShoesList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shoes'),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 50,
              height: 50,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage("asset/peakpx.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          buildShoeItem(
            title: 'Nike SB Zoom Blazer',
            subtitle: 'Mid Premium',
            price: '28,795',
            imageUrl:
                'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/23ca5baa-65b2-4e77-b3d2-87a2c86fb939/sb-zoom-blazer-mid-premium-skate-shoes-qr7mWL.png',
          ),
          buildShoeItem(
            title: 'Nike Air Zoom Pegasus',
            subtitle: "Men's Rood Running Shoes",
            price: '29,995',
            imageUrl:
                'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/f8d836a3-bf74-499d-96f8-74b70ee5889f/air-zoom-pegasus-40-big-kids-road-running-shoes-lQJf8F.png',
          ),
          buildShoeItem(
            title: 'Nike ZoomX Vaporfly',
            subtitle: "Men's Road Racing Shoe",
            price: '219,695',
            imageUrl:
                'https://static.nike.com/a/images/t_default/c352f459-7930-4067-a51a-372df13b6ff2/vaporfly-3-womens-road-racing-shoes-4jJ4vQ.png',
          ),
          buildShoeItem(
            title: 'Nike Air Force 1 S50',
            subtitle: "Older Kids' Shoe",
            price: '26,295',
            imageUrl:
                'https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5/de8ccccd-40e8-4bcd-b86e-ab539876dd11/custom-nike-air-force-1-low-by-you.png',
          ),
          buildShoeItem(
            title: 'Nike Waffle One',
            subtitle: "Men's Shoes",
            price: '28,295',
            imageUrl:
                'https://static.nike.com/a/images/t_default/8a32b0da-59ec-4c1a-8bcc-d7e7136fdaf5/waffle-debut-vintage-womens-shoes-rfRkv2.png',
          ),
        ],
      ),
    );
  }

  Widget buildShoeItem({
    required String title,
    required String subtitle,
    required String price,
    required String imageUrl,
  }) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment:
              MainAxisAlignment.spaceBetween, // Align elements to the right
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(fontSize: 18),
                ),
                Text(
                  subtitle,
                  style: const TextStyle(fontSize: 14, color: Colors.grey),
                ),
                Text(
                  price,
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(width: 16),
            CircleAvatar(
              backgroundImage: NetworkImage(imageUrl),
              radius: 40, // Adjust the radius for larger image
            ),
          ],
        ),
      ),
    );
  }
}
