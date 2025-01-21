import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ChatApp extends StatefulWidget {
  const ChatApp({super.key});
  @override
  State createState() => _ChatAppState();
}

class _ChatAppState extends State {
  TextEditingController _controller = TextEditingController();
  TextStyle currentStyle = GoogleFonts.roboto();
  double currentFontSize = 20.0;
  Color currentColor = Colors.black;

  final List<Map<String, dynamic>> fonts = [
    {'name': 'Roboto', 'style': GoogleFonts.roboto()},
    {'name': 'Lobster', 'style': GoogleFonts.lobster()},
    {'name': 'Pacifico', 'style': GoogleFonts.pacifico()},
    {'name': 'Oswald', 'style': GoogleFonts.oswald()},
    {'name': 'Dancing Script', 'style': GoogleFonts.dancingScript()},
  ];

  final List<Color> colors = [
    Colors.black,
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.purple,
    Colors.white,
  ];

  TextEditingController _imageController = TextEditingController();
  String imageUrl = "";
  bool isLoading = false;

  Future<void> fetchImage(String query) async {
    setState(() {
      isLoading = true;
      imageUrl = "";
    });

    try {
      const String apiUrl = 'https://api.unsplash.com/search/photos';
      const String apiKey = 'AbWyuiH7QKqKhfM2ziBNRZKQKoNq69HLbjOKlDMTbCY';

      final response = await http.get(
        Uri.parse("$apiUrl?query=$query&per_page=1"),
        headers: {
          "Authorization": "Client-ID $apiKey",
        },
      );

      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        if (data['results'].isNotEmpty) {
          setState(() {
            imageUrl = data['results'][0]['urls']['regular'];
          });
        } else {
          setState(() {
            imageUrl = "";
          });
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('No images found for "$query"')),
          );
        }
      } else {
        throw Exception(
            "Failed to fetch image. Status code: ${response.statusCode}");
      }
    } catch (e) {
      print("Error: $e");
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("An error occured while fetching the image")));
      setState(() {
        imageUrl = "";
      });
    } finally {
      setState(() {
        isLoading = false;
      });
    }
  }

  String memeUrl = "";
  bool isLoadingMeme = false;

  Future<void> fetchMeme() async {
    setState(() {
      isLoadingMeme = true;
      memeUrl = "";
    });

    try {
      const String apiUrl = "https://api.imgflip.com/get_memes";
      final response = await http.get(Uri.parse(apiUrl));

      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        final memes = data["data"]["memes"];
        final randomMeme = (memes..shuffle()).first;

        setState(() {
          memeUrl = randomMeme["url"];
        });
      } else {
        throw Exception("Fail to load meme");
      }
    } catch (e) {
      print("Error:$e");
    } finally {
      setState(() {
        isLoadingMeme = false;
      });
    }
  }

  TextEditingController _gifController = TextEditingController();
  String gifUrl = "";
  bool isLoadingGif = false;

  Future<void> fetchGif(String query) async {
    setState(() {
      isLoadingGif = true;
      gifUrl = "";
    });

    try {
      const String apiKey =
          "2lKwXMGDAYjO2KyxtywBuGsBfHmoWrka";
      final String apiUrl =
          "https://api.giphy.com/v1/gifs/search?q=$query&api_key=$apiKey&limit=1";

      final response = await http.get(Uri.parse(apiUrl));

      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        if (data["data"].isNotEmpty) {
          setState(() {
            gifUrl = data["data"][0]["images"]["original"]["url"];
          });
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text("No GIF found for \"$query\"")),
          );
        }
      } else {
        throw Exception(
            "Failed to fetch GIF. Status code: ${response.statusCode}");
      }
    } catch (e) {
      print("Error: $e");
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("An error occurred while fetching the GIF")),
      );
    } finally {
      setState(() {
        isLoadingGif = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Material(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color.fromRGBO(195, 0, 255, 0),
                Color.fromRGBO(0, 34, 255, 1),
              ],
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 50),
                TextField(
                  controller: _controller,
                  style: currentStyle,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Enter your text",
                  ),
                ),
                SizedBox(height: 20),
                Wrap(
                  spacing: 10,
                  children: fonts.map((font) {
                    return ElevatedButton(
                      onPressed: () {
                        setState(() {
                          currentStyle = font['style'];
                        });
                      },
                      child: Text(
                        font['name'],
                        style: font['style'].copyWith(color: Colors.white),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                      ),
                    );
                  }).toList(),
                ),
                SizedBox(height: 20),
                Text(
                  "Adjust Font Size",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Slider(
                  value: currentFontSize,
                  min: 10.0,
                  max: 50.0,
                  divisions: 15,
                  label: '${currentFontSize.toInt()}',
                  onChanged: (newValue) {
                    setState(() {
                      currentFontSize = newValue;
                      currentStyle =
                          currentStyle.copyWith(fontSize: currentFontSize);
                    });
                  },
                ),
                SizedBox(height: 20),
                Text(
                  "Change the text Color",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Wrap(
                  spacing: 10,
                  children: colors.map((color) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          currentColor = color;
                          currentStyle =
                              currentStyle.copyWith(color: currentColor);
                        });
                      },
                      child: Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                            color: color,
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.black, width: 1)),
                      ),
                    );
                  }).toList(),
                ),
                SizedBox(height: 20),
                TextField(
                  controller: _imageController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Enter a word to fetch an image",
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    if (_imageController.text.isNotEmpty) {
                      fetchImage(_imageController.text);
                    }
                  },
                  child: Text("Generate Image"),
                ),
                SizedBox(height: 20),
                isLoading
                    ? Center(child: CircularProgressIndicator())
                    : imageUrl.isNotEmpty
                        ? Image.network(imageUrl)
                        : Text("Enter a word to fetch an image"),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: fetchMeme,
                  child: Text("Meme"),
                ),
                SizedBox(height: 20),
                isLoadingMeme
                    ? Center(child: CircularProgressIndicator())
                    : memeUrl.isNotEmpty
                        ? Image.network(memeUrl)
                        : Text("Click the button to generate  a meme"),
                SizedBox(height: 20),
                TextField(
                  controller: _gifController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Enter word to generate Gif",
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    if (_gifController.text.isNotEmpty) {
                      fetchGif(_gifController.text);
                    }
                  },
                  child: Text("Generate Gif"),
                ),
                SizedBox(height: 20),
                isLoadingGif
                    ? Center(child: CircularProgressIndicator())
                    : gifUrl.isNotEmpty
                        ? Image.network(gifUrl)
                        : Text("Enter a word to generate a GIF"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
