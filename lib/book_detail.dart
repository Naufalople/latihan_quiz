import 'package:flutter/material.dart';

import 'book.dart';

class BookDetailPage extends StatelessWidget {
  // 1. Variabel 'book' ini menerima 1 objek BookModel utuh yang dikirim dari library.dart
  const BookDetailPage({super.key, required this.book});
  final BookModel book;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 2. Mengambil judul buku langsung dari objek 'book' di atas (sesuai poin C.1 kuis)
      appBar: AppBar(title: Text(book.title)),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 3. Menampilkan cover buku dari properti book.imageUrl.
            // Di halaman ini kita TIDAK PAKAI [index] lagi karena datanya sudah 1 objek buku tunggal
            Image.network(
              book.imageUrl,
              width: double.infinity,
              height: 300,
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
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // 4. Seluruh informasi di bawah ini diambil langsung dari atribut objek 'book'
                  Text(
                    book.title,
                    style: const TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    "Penulis: ${book.author}",
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    "Tahun Terbit: ${book.year}",
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    "Penerbit: ${book.publisher}",
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    "Jumlah Halaman: ${book.pages}",
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    "Genre: ${book.genre}",
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    "Rating: ${book.rating}",
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    "Deskripsi: ${book.description}",
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
