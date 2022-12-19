import 'package:counter_7/model/mywatchlist.dart';
import 'package:counter_7/model/mywatchlist_fetch.dart';
import 'package:counter_7/drawer.dart';
import 'package:flutter/material.dart';

class MyWatchlistDetail extends StatelessWidget {
  const MyWatchlistDetail({super.key, required this.MyWatchList});
  static const purple = Color(0xFF613FE5);
  static const black = Color(0xFF09050D);
  static const yellow = Color(0xFFFFCA0C);
  static const red = Color(0xFFDE1C1C);
  final MyWatchList;

  @override
  Widget build(BuildContext context) {
    String watchlist_watched = MyWatchList.fields.watched;
    String watchlist_title = MyWatchList.fields.title;
    String watchlist_rating = MyWatchList.fields.rating;
    String watchlist_date = MyWatchList.fields.releaseDate;
    String watchlist_review = MyWatchList.fields.review;

    return Scaffold(
      backgroundColor: black,
      appBar: AppBar(
        backgroundColor: purple,
        title: const Text('DETAILS WATCHLIST',
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            )),
      ),
      drawer: buildDrawer(context),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Color.fromARGB(255, 255, 255, 255).withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 7,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ],
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(watchlist_title,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: black,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                )),
            const SizedBox(
              height: 10,
            ),
            Text(
              "Release date: ${watchlist_date}",
              style: const TextStyle(
                color: black,
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "Rating: ${watchlist_rating}",
              style: const TextStyle(
                color: black,
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "Status: ${watchlist_watched}",
              style: const TextStyle(
                color: black,
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "Review: ${watchlist_review}",
              style: const TextStyle(
                color: black,
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.fromLTRB(35, 10, 10, 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Align(
              alignment: Alignment.bottomRight,
              child: FloatingActionButton(
                backgroundColor: purple,
                onPressed: () => Navigator.pop(context),
                child: const Icon(Icons.arrow_back),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
