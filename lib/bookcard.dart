import 'package:flutter/material.dart';
import 'package:listdatademo/book.dart';

class BookCard extends StatelessWidget {
  final Book book;
  final Function delete;
  const BookCard({super.key, required this.book, required this.delete});

  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    return Container(
      color: null,
      width: screenwidth,
      child: Card(
        color: const Color(0xFFF0FFFF),
        margin: const EdgeInsets.fromLTRB(16, 16, 16, 0),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                book.cover,
                width: screenwidth * 0.2,
                //fit: BoxFit.cover,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 8.0, 10.0, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        book.name,
                        style: const TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        book.author,
                        style:
                            const TextStyle(fontSize: 18, color: Colors.grey),
                      ),
                    ],
                  ),
                ),
              ),
              IconButton(
                onPressed: () {
                  delete();
                },
                icon: const Icon(
                  Icons.delete_outline,
                  size: 30,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}