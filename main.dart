import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: calculator(),
    );
  }
}

class calculator extends StatefulWidget {
  const calculator({super.key});

  @override
  State<calculator> createState() => _calculatorState();
}

class _calculatorState extends State<calculator> {
  String result = "";
  bool isEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 134, 123, 86),
      appBar: AppBar(
        toolbarHeight: 80,
        elevation: 0,
        backgroundColor: Color.fromARGB(255, 134, 123, 86),
        title: const Text(
          "Calculator",
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 5,
                child: Card(
                    color: Color.fromARGB(255, 255, 255, 255),
                    child: Text(result.toString(),
                        //اگر result خالی بود 0 را نشان بده
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontSize: 60))),
              ),
            ],
          ),
          Container(
            child: SizedBox(
              height: MediaQuery.of(context).size.height / 60,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width / 4,
                height: MediaQuery.of(context).size.height / 12,
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      result = '';
                    });
                  },
                  child: const Text(
                    "c",
                    style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0), fontSize: 60),
                  ),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)),
                    primary: Color.fromARGB(255, 255, 255, 255),
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 4,
                height: MediaQuery.of(context).size.height / 12,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text(
                    "n!",
                    style: TextStyle(color: Colors.white, fontSize: 60),
                  ),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)),
                    primary: Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 4,
                height: MediaQuery.of(context).size.height / 12,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text(
                    "<<",
                    style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0), fontSize: 60),
                  ),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)),
                    primary: Color.fromARGB(255, 255, 255, 255),
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 4,
                height: MediaQuery.of(context).size.height / 12,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text(
                    "=",
                    style: TextStyle(color: Colors.white, fontSize: 60),
                  ),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)),
                    primary: Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
              ),
            ],
          ),
          Container(
            child: SizedBox(
              height: MediaQuery.of(context).size.height / 25,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width / 4,
                height: MediaQuery.of(context).size.height / 12,
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      result = result + "1";
                    });
                  },
                  child: const Text(
                    "1",
                    style: TextStyle(color: Colors.white, fontSize: 60),
                  ),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)),
                    primary: Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 4,
                height: MediaQuery.of(context).size.height / 12,
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      result = result + "2";
                    });
                  },
                  child: const Text(
                    "2",
                    style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0), fontSize: 60),
                  ),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)),
                    primary: Color.fromARGB(255, 255, 255, 255),
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 4,
                height: MediaQuery.of(context).size.height / 12,
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      result = result + "3";
                    });
                  },
                  child: const Text(
                    "3",
                    style: TextStyle(color: Colors.white, fontSize: 60),
                  ),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)),
                    primary: Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 4,
                height: MediaQuery.of(context).size.height / 12,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text(
                    "+",
                    style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0), fontSize: 60),
                  ),
                  style: ElevatedButton.styleFrom(
                    //برای گرد کردن گوشه های دکمه
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)),
                    primary: Color.fromARGB(255, 255, 255, 255),
                  ),
                ),
              ),
            ],
          ),
          Container(
            child: SizedBox(
              height: MediaQuery.of(context).size.height / 25,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width / 4,
                height: MediaQuery.of(context).size.height / 12,
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      result = result + "4";
                    });
                  },
                  child: const Text(
                    "4",
                    style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0), fontSize: 60),
                  ),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)),
                    primary: Color.fromARGB(255, 255, 255, 255),
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 4,
                height: MediaQuery.of(context).size.height / 12,
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      result = result + "5";
                    });
                  },
                  child: const Text(
                    "5",
                    style: TextStyle(color: Colors.white, fontSize: 60),
                  ),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)),
                    primary: Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 4,
                height: MediaQuery.of(context).size.height / 12,
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      result = result + "6";
                    });
                  },
                  child: const Text(
                    "6",
                    style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0), fontSize: 60),
                  ),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)),
                    primary: Color.fromARGB(255, 255, 255, 255),
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 4,
                height: MediaQuery.of(context).size.height / 12,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text(
                    "-",
                    style: TextStyle(color: Colors.white, fontSize: 60),
                  ),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)),
                    primary: Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
              ),
            ],
          ),
          Container(
            child: SizedBox(
              height: MediaQuery.of(context).size.height / 25,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width / 4,
                height: MediaQuery.of(context).size.height / 12,
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      result = result + "7";
                    });
                  },
                  child: const Text(
                    "7",
                    style: TextStyle(color: Colors.white, fontSize: 60),
                  ),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)),
                    primary: Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 4,
                height: MediaQuery.of(context).size.height / 12,
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      result = result + "8";
                    });
                  },
                  child: const Text(
                    "8",
                    style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0), fontSize: 60),
                  ),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)),
                    primary: Color.fromARGB(255, 255, 255, 255),
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 4,
                height: MediaQuery.of(context).size.height / 12,
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      result = result + "9";
                    });
                  },
                  child: const Text(
                    "9",
                    style: TextStyle(color: Colors.white, fontSize: 60),
                  ),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)),
                    primary: Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 4,
                height: MediaQuery.of(context).size.height / 12,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text(
                    "x",
                    style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0), fontSize: 60),
                  ),
                  style: ElevatedButton.styleFrom(
                    //برای گرد کردن گوشه های دکمه
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)),
                    primary: Color.fromARGB(255, 255, 255, 255),
                  ),
                ),
              ),
            ],
          ),
          Container(
            child: SizedBox(
              height: MediaQuery.of(context).size.height / 25,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width / 4,
                height: MediaQuery.of(context).size.height / 12,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text(
                    "=",
                    style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0), fontSize: 60),
                  ),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)),
                    primary: Color.fromARGB(255, 255, 255, 255),
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 4,
                height: MediaQuery.of(context).size.height / 12,
                child: ElevatedButton(
                  onPressed: isEnabled
                      ? () {
                          setState(() {
                            result = result + ".";
                            isEnabled = false;
                          });
                        }
                      : null,
                  child: const Text(
                    ".",
                    style: TextStyle(color: Colors.white, fontSize: 60),
                  ),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)),
                    primary: Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 4,
                height: MediaQuery.of(context).size.height / 12,
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      result = result + "0";
                    });
                  },
                  child: const Text(
                    "0",
                    style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0), fontSize: 60),
                  ),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)),
                    primary: Color.fromARGB(255, 255, 255, 255),
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 4,
                height: MediaQuery.of(context).size.height / 12,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text(
                    "/",
                    style: TextStyle(color: Colors.white, fontSize: 60),
                  ),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)),
                    primary: Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
