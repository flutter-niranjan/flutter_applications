import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;

class Moviedetail extends StatefulWidget {
  final String imdbID;
  Moviedetail({required this.imdbID, super.key});
  @override
  State<Moviedetail> createState() => _MoviedetailState();
}

class _MoviedetailState extends State<Moviedetail> {
  Map<String, dynamic>? movie;
  String apiKey = "88922ea3";

  void movieDetails() async {
    final response = await http.get(Uri.parse(
        "http://www.omdbapi.com/?i=${widget.imdbID}&apikey=88922ea3"));

    if (response.statusCode == 200) {
      setState(() {
        movie = json.decode(response.body);
      });
    }
  }

  @override
  void initState() {
    super.initState();
    movieDetails();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          movie?["Title"] ?? "Movie Details",
          style: GoogleFonts.poppins(
            fontSize: 30,
            fontWeight: FontWeight.w400,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      body: movie == null
          ? Center(child: CircularProgressIndicator())
          : Material(
              child: Container(
                height: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color.fromRGBO(235, 105, 105, 1),
                      Color.fromRGBO(122, 124, 229, 1),
                    ],
                  ),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(height: 20),
                      Image.network(movie!["Poster"] ??
                          "https://via.placeholder.com/150"),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Title: ${movie!["Title"]}",
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            "Runtime: ${movie!["Runtime"]}",
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            "Year: ${movie!["Year"]}",
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            "Genre: ${movie!["Genre"]}",
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            "Director: ${movie!["Director"]}",
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            "Actors: ${movie!["Actors"]}",
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            "Rating: ${movie!["imdbRating"]}",
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            "Plot: ${movie!["Plot"]}",
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            "Language: ${movie!["Language"]}",
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
    );
  }
}
