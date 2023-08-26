import 'package:flutter/material.dart';
import 'package:listdatademo/book.dart';
import 'package:listdatademo/bookcard.dart';

class ListData extends StatefulWidget {
  const ListData({super.key});

  @override
  State<ListData> createState() => _ListDataState();
}

class _ListDataState extends State<ListData> {
  List<Book> books = [
    Book(
      name: 'Flutter is easy',
      author: 'Pattaraporn',
      cover: 'assets/images/python.jpg',
    ),
    Book(
      author: 'Weerapat',
      name: 'HTML and CSS',
      cover: 'assets/images/python.jpg',
    ),
    Book(
      name: 'Data Science',
      author: 'Somchai',
      cover: 'assets/images/python.jpg',
    ),
    Book(
      name: 'React Native',
      author: 'Peter',
      cover: 'assets/images/python.jpg',
    ),
    Book(
      name: 'Yooo, WTF',
      author: 'Myself',
      cover: 'assets/images/python.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List Data'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: books
            .map((book) => BookCard(
                  book: book,
                  delete: () {
                    setState(() {
                      books.remove(book);
                    });
                  },
                ))
            .toList(),
          ),
        ),
      ),
    );
  }
}