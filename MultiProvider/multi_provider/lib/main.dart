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
          return Employee(empName: "Kanha", empId: 10);
        }),
        ChangeNotifierProvider(create: (context) {
          return Projects(projectName: "helthCare", devType: "BackendDev");
        })
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MainApp(),
      ),
    );
  }
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State createState() => _MainAppState();
}

class _MainAppState extends State {
  String name = "Kanha";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("MultiProvider"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(Provider.of<Employee>(context).empName),
          const SizedBox(
            height: 30,
          ),
          Text("${Provider.of<Employee>(context).empId}"),
          const SizedBox(height: 30),
          const SizedBox(
            height: 30,
          ),
          Text(Provider.of<Projects>(context).projectName),
          const SizedBox(
            height: 30,
          ),
          Text(Provider.of<Projects>(context).devType),
          const SizedBox(height: 30),
          ElevatedButton(
            onPressed: () {
              Provider.of<Projects>(context, listen: false)
                  .changeProject("EdTech", "MobileDev");
            },
            child: const Text("Change Project"),
          ),
        ],
      ),
    );
  }
}

class Employee {
  String empName;
  int empId;
  Employee({required this.empName, required this.empId});
}

class Projects with ChangeNotifier {
  String projectName;
  String devType;
  Projects({required this.projectName, required this.devType});
  void changeProject(String projectName, String devType) {
    this.projectName = projectName;
    this.devType = devType;
    notifyListeners();
  }
}
