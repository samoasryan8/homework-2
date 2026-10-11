class Book {
  String title;
  String author;
  int pages;

  Book({required this.title, required this.author, required this.pages});

  String getInfo() {
    return "$title by $author, $pages pages";
  }
}