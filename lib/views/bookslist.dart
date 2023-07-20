import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class BooksList extends StatefulWidget {
  const BooksList({super.key});

  @override
  State<BooksList> createState() => _BooksListState();
}

class _BooksListState extends State<BooksList> {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  @override
  Widget build(BuildContext context) {
    CollectionReference booksDoc =
        FirebaseFirestore.instance.collection('books');
    return Scaffold(
      appBar: AppBar(),
      body: FutureBuilder<QuerySnapshot<Object?>>(
        future: booksDoc.get(),
        builder: (BuildContext context,
            AsyncSnapshot<QuerySnapshot<Object?>> snapshot) {
          if (snapshot.hasError) {
            return Text("Something went wrong");
          }

          if (snapshot.hasData && snapshot.data == null) {
            return Text("Document does not exist",style: TextStyle(color: Color.fromARGB(255, 183, 121, 121), fontSize: 30));
          }
          print(snapshot.connectionState.toString());
          if (snapshot.connectionState == ConnectionState.done) {
            return ListView.builder(
              itemCount: snapshot.data!.docs.length,
              itemBuilder: (BuildContext context, int index) {
                return Text(
                    "Full Name: ${snapshot.data!.docs[index]['author']} ${snapshot.data!.docs[index]['name']}  ${snapshot.data!.docs[index]['price']}");
              },
            );
          }
          ;

          return Text("loading");
        },
      ),
    );
  }
}
