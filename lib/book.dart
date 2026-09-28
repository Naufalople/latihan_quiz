// Blueprint / cetak biru objek buku sesuai konsep OOP pada materi praktikum
class BookModel {
  String title;
  String author;
  int year;
  String imageUrl;
  String description;
  String genre;
  String publisher;
  String pages;
  double rating;

  BookModel({
    required this.title,
    required this.author,
    required this.year,
    required this.imageUrl,
    required this.description,
    required this.genre,
    required this.publisher,
    required this.pages,
    required this.rating,
  });
}

// Array / List kumpulan data buku dummy yang akan ditampilkan di library.dart
final List<BookModel> modelbuku = [
  BookModel(
    title: "Lord of the Mysteries",
    author: "Cuttlefish That Loves Diving",
    year: 2018,
    imageUrl: "https://beyonder.pages.dev/_app/immutable/assets/web-lotm-cover.wk6YOV_J.jpg",
    description: "Dengan bangkitnya kekuatan uap dan mesin, siapa yang bisa mendekati kebenaran misterius? Terperangkap dalam kabut sejarah dan kekuatan mistis, Klein Moretti memulai perjalanannya sebagai Beyonder.",
    genre: "Fantasy, Mystery, Steampunk",
    publisher: "Webnovel (Qidian)",
    pages: "1432 Chapter",
    rating: 9.8,
  ),
  BookModel(
    title: "Omniscient Reader's Viewpoint",
    author: "Sing Shong",
    year: 2018,
    imageUrl: "https://static.wikia.nocookie.net/omniscient-readers-viewpoint/images/1/1d/Volume_3-newcover.jpg",
    description: "Dunia berubah drastis menjadi dunia novel web apokaliptik yang hanya dibaca sampai akhir oleh satu-satunya pembaca setia: Kim Dokja. Dengan pengetahuannya tentang cerita tersebut, ia berjuang menyelamatkan dunia.",
    genre: "Action, Fantasy, Apocalyptic",
    publisher: "Munpia / Webnovel",
    pages: "551 Chapter",
    rating: 9.7,
  ),
  BookModel(
    title: "Shadow Slave",
    author: "Guiltythree",
    year: 2022,
    imageUrl: "https://static.wikia.nocookie.net/shadowslave/images/e/ea/Book_cover.png",
    description: "Tumbuh dalam kemiskinan, Sunny tidak mengharapkan sesuatu yang baik dari hidup. Namun ketika ia terpilih oleh Nightmare Spell, Sunny harus berjuang bertahan hidup di dunia alam mimpi yang penuh mimpi buruk dan monster mengerikan.",
    genre: "Dark Fantasy, Adventure",
    publisher: "Webnovel",
    pages: "1900+ Chapter",
    rating: 9.5,
  ),
  BookModel(
    title: "Reverend Insanity",
    author: "Gu Zhen Ren",
    year: 2012,
    imageUrl: "https://book-pic.webnovel.com/bookcover/7996858406002505?imageMogr2/thumbnail/600x&imageId=1547701210061",
    description: "Fang Yuan terlahir kembali 500 tahun ke masa lalu menggunakan Spring Autumn Cicada. Berbekal pengalaman masa lalunya, ia menempuh jalan kultivasi yang kejam dan pragmatis demi mengejar tujuan mutlaknya: keabadian sejati.",
    genre: "Xianxia, Dark Fantasy, Psychological",
    publisher: "Qidian / Webnovel",
    pages: "2334 Chapter",
    rating: 9.4,
  ),
  BookModel(
    title: "The Beginning After the End",
    author: "TurtleMe",
    year: 2017,
    imageUrl: "https://static.wikia.nocookie.net/thebate/images/c/c6/Tapas_Novel_Cover.png",
    description: "Raja Grey yang memiliki kekuasaan dan kekuatan tak tertandingi tiba-tiba bereinkarnasi sebagai Arthur Leywin di dunia sihir dan monster. Bertekad tak mengulangi penyesalan masa lalunya, ia berjuang keras melindungi orang-orang yang dicintainya.",
    genre: "Action, Adventure, Fantasy, Isekai",
    publisher: "Tapas Media",
    pages: "480+ Chapter",
    rating: 9.4,
  ),
  BookModel(
    title: "Circle of Inevitability",
    author: "Cuttlefish That Loves Diving",
    year: 2023,
    imageUrl: "https://book-pic.webnovel.com/bookcover/25759730405792805?imageMogr2/thumbnail/600x",
    description: "Sekuel resmi dari Lord of the Mysteries. Mengikuti perjalanan Lumian Lee di desa terpencil Cordu, Republik Intis, saat ia terjerat dalam misteri sekte terlarang, entitas kosmik, dan lingkaran takdir yang tak terelakkan.",
    genre: "Fantasy, Mystery, Steampunk, Eldritch",
    publisher: "Webnovel (Qidian)",
    pages: "1100+ Chapter",
    rating: 9.7,
  ),
];
