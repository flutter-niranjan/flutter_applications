import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(create: (context) {
          return Player(playerName: "Virat", jerNo: 18);
        }),
        ChangeNotifierProvider(create: (context) {
          return Match(matchNo: 200, runs: 8800);
        }),
      ],
      child: const MaterialApp(
        home: MatchSummery(),
      ),
    );
  }
}

class MatchSummery extends StatefulWidget {
  const MatchSummery({super.key});

  @override
  State createState() => _MatchSummeryState();
}

class _MatchSummeryState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ConsumerDemo"),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(Provider.of<Player>(context).playerName),
          const SizedBox(height: 50),
          Text("${Provider.of<Player>(context).jerNo}"),
          const SizedBox(height: 50),
          Consumer(builder: (context, provider, child) {
            return Column(
              children: [
                Text("${Provider.of<Match>(context).matchNo}"),
                const SizedBox(height: 50),
                Text("${Provider.of<Match>(context).runs}"),
              ],
            );
          }),
          const SizedBox(height: 50),
          ElevatedButton(
            onPressed: () {
              Provider.of<Match>(context, listen: false).changeDate(250, 8910);
            },
            child: const Text("Change Date"),
          )
        ],
      ),
    );
  }
}

class Player {
  String playerName;
  int jerNo;
  Player({required this.playerName, required this.jerNo});
}

class Match with ChangeNotifier {
  int matchNo;
  int runs;
  Match({required this.matchNo, required this.runs});

  void changeDate(int matchNo, int runs) {
    this.matchNo = matchNo;
    this.runs = runs;
    notifyListeners();
  }
}
