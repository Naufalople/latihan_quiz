import 'package:flutter/material.dart';

import 'book.dart';
import 'book_detail.dart';

class LibraryPage extends StatelessWidget {
  // 1. Variabel 'nama' ini menerima data yang dikirim dari login.dart saat login berhasil
  const LibraryPage({super.key, required this.nama});
  final String nama;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Menampilkan nama user yang diterima dari halaman login di atas
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
        // 2. Menghitung jumlah item dari array 'modelbuku' yang berasal dari file book.dart
        itemCount: modelbuku.length,
        // 3. itemBuilder melooping data buku dan menyediakan variabel 'index' (0, 1, 2, dst)
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              // 4. Saat item diklik, ambil 1 objek buku dari array 'modelbuku' di book.dart
              // sesuai posisi [index], lalu kirimkan objek tersebut ke BookDetailPage
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => BookDetailPage(book: modelbuku[index]),
                ),
              );
            },
            child: ListTile(
              // 5. Mengambil judul dan penulis dari data 'modelbuku' di book.dart sesuai baris [index]
              title: Text(modelbuku[index].title),
              subtitle: Text(modelbuku[index].author),
              leading: Image.network(
                // Mengambil link foto cover dari 'modelbuku' di book.dart sesuai baris [index]
                modelbuku[index].imageUrl,
                width: 50,
                height: 50,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) => Container(
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
