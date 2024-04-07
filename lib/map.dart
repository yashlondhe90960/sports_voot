import 'package:flutter/material.dart';

class Map extends StatefulWidget {
  const Map({Key? key}) : super(key: key);

  @override
  _MapState createState() => _MapState();
}

class _MapState extends State<Map> {
  int click = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 40, bottom: 0, right: 110, left: 20),
                child: Text(
                  "Close",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Color.fromRGBO(213, 92, 11, 1)),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 40, bottom: 0, right: 125, left: 5),
                child: Text(
                  "Mode",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 40, bottom: 0, right: 0),
                child: Icon(
                  Icons.settings,
                  size: 30,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          const SizedBox(height: 30),
          Container(
            width: 350,
            height: 500,
            color: const Color.fromARGB(231, 245, 118, 0),
          ),
          const SizedBox(height: 40),
          Container(
            width: 350,
            height: 90,
            color: const Color.fromARGB(231, 245, 118, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                IconButton(
                  icon: const Icon(Icons.location_on_rounded),
                  iconSize: 40,
                  onPressed: () {
                    setState(() {
                      click += 1;
                    });
                  },
                ),
                // audiotrack directions_bike_rounded
                const SizedBox(width: 60),
                IconButton(
                  icon: const Icon(Icons.audiotrack),
                  iconSize: 40,
                  onPressed: () {
                    setState(() {
                      click += 1;
                    });
                  },
                ),
                const SizedBox(width: 60),
                IconButton(
                  icon: const Icon(Icons.directions_bike_rounded),
                  iconSize: 40,
                  onPressed: () {
                    setState(() {
                      click += 1;
                    });
                  },
                ),
              ],
            ),
          ),
          const SizedBox(height: 35),
          
          ElevatedButton(onPressed: () {}, child: const Text("Start",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,fontStyle: FontStyle.normal),),)
        ],
      ),
    );
  }
}
