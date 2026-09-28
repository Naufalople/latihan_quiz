import 'package:flutter/material.dart';

import 'book.dart';
import 'book_detail.dart';

class LibraryPage extends StatelessWidget {
  const LibraryPage({super.key, required this.nama});
  final String nama;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Halo!, $nama!',
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        itemCount: modelbuku.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => BookDetailPage(book: modelbuku[index]),
                ),
              );
            },
            child: ListTile(
              title: Text(modelbuku[index].title),
              subtitle: Text(modelbuku[index].author),
              leading: Image.network(
                modelbuku[index].imageUrl,
                width: 50,
                height: 50,
                fit: BoxFit.cover,
                errorBuilder: (context, error, StackTrace) => Container(
                  width: 50,
                  height: 50,
                  color: Colors.grey[200],
                  child: const Icon(
                    Icons.broken_image,
                    size: 24,
                    color: Colors.grey,
                  ),
                ),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                color: Colors.black54,
              ),
            ),
          );
        },
      ),
    );
  }
}
