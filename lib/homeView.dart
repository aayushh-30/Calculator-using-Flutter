import 'package:flutter/material.dart';

class homeView extends StatefulWidget {
  const homeView({super.key});

  @override
  State<homeView> createState() => _homeViewState();
}

var FirstNumber = TextEditingController();
var SecondNumber = TextEditingController();

var Result = "";

class _homeViewState extends State<homeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "My Calculator",
          style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        centerTitle: true,
        toolbarHeight: 70,
        backgroundColor: Colors.blue,
        shadowColor: Colors.blueAccent,
        elevation: 10,
      ),
      body: Container(
        color: Color.fromARGB(255, 176, 221, 241),
        child: Center(
          child: Container(
            width: 300,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  controller: FirstNumber,
                  decoration: const InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      label: Text("Enter the First Number"),
                      prefixIcon: Icon(Icons.numbers)),
                  keyboardType: TextInputType.number,
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: SecondNumber,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    filled: true,
                    enabledBorder: InputBorder.none,
                    fillColor: Colors.white,
                    label: Text("Enter the Second Number"),
                    prefixIcon: Icon(Icons.numbers_rounded),
                  ),
                  keyboardType: TextInputType.number,
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 40,
                  width: 200,
                  color: Colors.white,
                  child: Center(child: Text(Result)),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton.icon(
                        onPressed: () {
                          int res;
                          var n1 = FirstNumber.text.toString();
                          var n2 = SecondNumber.text.toString();
                          if (n1 == "" || n2 == "") {
                            Result = "Fields are Blank";
                          } else {
                            int num1 = int.parse(n1);
                            int num2 = int.parse(n2);

                            res = num1 + num2;
                            Result = "Sum is $res";
                          }
                          setState(() {
                            Result;
                          });
                        },
                        label: const Text("Add")),
                    ElevatedButton.icon(
                        onPressed: () {
                          int res;
                          var n1 = FirstNumber.text.toString();
                          var n2 = SecondNumber.text.toString();
                          if (n1 == "" || n2 == "") {
                            Result = "Fields are Blank";
                          } else {
                            int num1 = int.parse(n1);
                            int num2 = int.parse(n2);

                            res = num1 - num2;
                            Result = "Subtraction is $res";
                          }
                          setState(() {
                            Result;
                          });
                        },
                        label: const Text("Sub")),
                    ElevatedButton.icon(
                        onPressed: () {
                          int res;
                          var n1 = FirstNumber.text.toString();
                          var n2 = SecondNumber.text.toString();
                          if (n1 == "" || n2 == "") {
                            Result = "Fields are Blank";
                          } else {
                            int num1 = int.parse(n1);
                            int num2 = int.parse(n2);

                            res = num1 * num2;
                            Result = "Multiplication is $res";
                          }
                          setState(() {
                            Result;
                          });
                        },
                        label: const Text("Mul")),
                    ElevatedButton.icon(
                        onPressed: () {
                          double res;
                          var n1 = FirstNumber.text.toString();
                          var n2 = SecondNumber.text.toString();
                          if (n1 == "" || n2 == "") {
                            Result = "Fields are Blank";
                          } else {
                            int num1 = int.parse(n1);
                            int num2 = int.parse(n2);

                            res = num1 / num2;
                            Result = "Division is $res";
                          }
                          setState(() {
                            Result;
                          });
                        },
                        label: const Text("Div"))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
