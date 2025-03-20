import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'package:movie_app/moviedetails.dart';

class Movieapp extends StatefulWidget {
  const Movieapp({super.key});
  @override
  State createState() => _MovieappState();
}

class _MovieappState extends State {
  final TextEditingController _movieSearchController = TextEditingController();
  List<dynamic> movies = [];
  String apiKey = "88922ea3";

  void movieSearch(String name) async {
    final response = await http.get(
        Uri.parse("https://www.omdbapi.com/?i=${name.trim()}&apikey=$apiKey"));

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      setState(() {
        movies = data.containsKey("Search") ? data["Search"] : [];
      });
    } else {
      setState(() {
        movies = [];
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "MovieFinder",
          style: GoogleFonts.poppins(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.w400,
          ),
        ),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      body: Material(
        child: Container(
          height: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color.fromRGBO(235, 105, 105, 1),
                Color.fromRGBO(119, 83, 180, 1),
              ],
            ),
          ),
          child: Column(
            children: [
              SizedBox(height: 25),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: TextField(
                  controller: _movieSearchController,
                  decoration: InputDecoration(
                    labelText: "Search Movies",
                    labelStyle: GoogleFonts.poppins(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    suffixIcon: IconButton(
                      onPressed: () => movieSearch(_movieSearchController.text),
                      icon: Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: movies.isEmpty
                    ? Center(
                        child: Text(
                        "Search for Movies",
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ))
                    : ListView.builder(
                        itemCount: movies.length,
                        itemBuilder: (context, index) {
                          final movie = movies[index];
                          return ListTile(
                            leading: Image.network(
                              movie["Poster"] ??
                                  "https://via.placeholder.com/150",
                              height: 250,
                              width: 100,
                              fit: BoxFit.cover,
                            ),
                            title: Text(movie["Title"],
                                style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                )),
                            subtitle: Text(movie["Year"],
                                style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                )),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Moviedetail(
                                      imdbID: movie["imdbID"] ?? ""),
                                ),
                              );
                            },
                          );
                        },
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
