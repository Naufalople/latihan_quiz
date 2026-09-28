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
];
