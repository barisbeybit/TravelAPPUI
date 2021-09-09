import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitDown,
    DeviceOrientation.portraitUp,
  ]);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'TravelAppUI',
        theme: ThemeData(
          primarySwatch: Colors.purple,
        ),
        home: TravelAppUI());
  }
}

class TravelAppUI extends StatelessWidget {
  const TravelAppUI({Key? key}) : super(key: key);

  get controller => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          children: [
            Card(
              color: Colors.white60,
              shadowColor: Colors.black,
              elevation: 50,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.8,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Row(
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.purple,
                              ),
                              Text(
                                "Hi,Barış ! ",
                                style: TextStyle(color: Colors.black45),
                                textAlign: TextAlign.end,
                              )
                            ],
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              color: Colors.transparent),
                          height: MediaQuery.of(context).size.height * 0.1,
                          width: MediaQuery.of(context).size.width * 0.7,
                        ),
                        IconButton(
                          alignment: Alignment.bottomCenter,
                          onPressed: () {},
                          icon: Icon(
                            Icons.notifications_none_outlined,
                            color: Colors.black45,
                          ),
                        )
                      ],
                    ),
                    Text(
                      "Where do \nyou want to go? ",
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Card(
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.65,
                            margin: EdgeInsets.all(10),
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 0.15),
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: "Search",
                                icon: Icon(Icons.search),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.purple,
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: IconButton(
                              iconSize: 40,
                              color: Colors.white,
                              onPressed: () {},
                              icon: Icon(Icons.assignment_outlined)),
                        )
                      ],
                    ),
                    Text(
                      "Categories ",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      controller: controller,
                      child: Row(
                        children: [
                          Container(
                            child: Text(
                              "Hospitals",
                              textAlign: TextAlign.center,
                            ),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.blueGrey),
                            height: 20,
                            width: 80,
                          ),
                          Container(
                            child: Text(
                              "Hotels",
                              textAlign: TextAlign.center,
                            ),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.blueGrey),
                            height: 20,
                            width: 80,
                          ),
                          Container(
                            child: Text(
                              "Restaurants",
                              textAlign: TextAlign.center,
                            ),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.blueGrey),
                            height: 20,
                            width: 80,
                          ),
                          Container(
                            child: Text(
                              "Airport",
                              textAlign: TextAlign.center,
                            ),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.blueGrey),
                            height: 20,
                            width: 80,
                          ),
                          Container(
                            child: Text(
                              "Bus Stops",
                              textAlign: TextAlign.center,
                            ),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.blueGrey),
                            height: 20,
                            width: 80,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.only(right: 20, left: 20, top: 10),
              color: Colors.black,
              shadowColor: Colors.black45,
              elevation: 30,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.11,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
