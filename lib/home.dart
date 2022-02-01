import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  get onPressed => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/fishing.jpg"),
          Container(
            transform: Matrix4.translationValues(0.0, -12.0, 0.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                  // height:400,
                  child: Padding(
                padding: const EdgeInsets.all(22.0),
                child: Column(
                  children: [
                    Image.asset("assets/dolphin.png"),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: const Text(
                          "Share your travel experience and gain trusted rocs from your friends"),
                    ),
                    // const TextField(
                    //   decoration: InputDecoration(
                    //       border: OutlineInputBorder(
                    //           borderRadius:
                    //               BorderRadius.all(Radius.circular(8.0)))),
                    // ),
                    const SizedBox(
                      height: 15,
                    ),
                    ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        // side: MaterialStateProperty.all<BorderSide>(
                        //     width: 16.0, color: Colors.blue),
                      ),
                      onPressed: () {},
                      // ElevatedButton.styleFrom(
                      //     side: BorderSide(
                      //   width: 5.0,
                      //   color: Colors.red,
                      // )),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          "Login with phone number",
                          style: TextStyle(
                            // fontWeight: FontWeight.w500,
                            fontSize: 20,
                            color: Colors.blue,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.9,
                      height: MediaQuery.of(context).size.height * 0.06,
                      child: ElevatedButton(
                        onPressed: () {},
                        // style: ElevatedButton.styleFrom(
                        //   // ignore: prefer_const_constructors
                        //   primary: Colors.green[900],
                        //   // minimumSize: const Size.fromHeight(45),
                        //   shape: RoundedRectangleBorder(
                        //     borderRadius: BorderRadius.circular(10),
                        //   ),
                        // ),
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.blue),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "Login with Facebook",
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            "Dont have an account?, ",
                            style: TextStyle(fontSize: 20),
                          ),
                          Text(
                            "Log In? ",
                            style: TextStyle(color: Colors.blue, fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )),
            ),
          ),
        ],
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  // side({double width, Color color}) {}
}
