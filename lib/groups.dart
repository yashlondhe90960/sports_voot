import 'package:flutter/material.dart';

class Group extends StatefulWidget {
  const Group({Key? key}) : super(key: key);

  @override
  State<Group> createState() => _GroupsState();
}

class _GroupsState extends State<Group> {
  int click = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: 600,
            height: 100,
            color: const Color.fromARGB(231, 245, 118, 0),
            child: const Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 30, left: 15, right: 100),
                  child: Text(
                    "Groups",
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Padding(
                  padding: EdgeInsets.only(top: 35, left: 40),
                  child: Icon(
                    Icons.search,
                    color: Color.fromARGB(255, 0, 0, 0),
                    size: 40,
                  ),
                ),
                SizedBox(width: 10),
                Padding(
                  padding: EdgeInsets.only(top: 35, left: 10),
                  child: Icon(
                    Icons.settings,
                    color: Color.fromARGB(255, 0, 0, 0),
                    size: 40,
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 600,
            height: 100,
            decoration: BoxDecoration(
              border: Border.all(
                color: const Color.fromARGB(255, 226, 214, 214),
              ),
            ),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                Padding(
                  padding: EdgeInsets.only(top: 30, left: 20, right: 60),
                  child: Text(
                    "Activity",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 30, left: 15, right: 60),
                  child: Text(
                    "Club",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 30, left: 15, right: 60),
                  child: Text(
                    "Challenges",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 1), 
            child: Container(
              width: 600,
              height: 100,
              color: const Color.fromARGB(231, 190, 184, 179),
              child: const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: 0,
                      bottom: 0,
                      right: 34,
                      left: 20,
                    ),
                    child: Icon(Icons.hub, size: 40),
                  ),
                  SizedBox(width: 20),
                  Padding(
                    padding: EdgeInsets.only(top: 0, bottom: 0, right: 10, left: 90),
                    child: Text(
                      "Club Name",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 255, 252, 252),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 440),
          Container(
            width: 600,
            height: 100,
            color: const Color.fromARGB(231, 245, 118, 0),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 0, left: 20, right: 60),
                  child: IconButton(
                    icon: const Icon(Icons.home),
                    iconSize: 40,
                    onPressed: () {
                      setState(() {
                        click += 1;
                      });
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 0, left: 20, right: 60),
                  child: IconButton(
                    icon: const Icon(Icons.groups_rounded),
                    iconSize: 40,
                    onPressed: () {
                      setState(() {
                        click += 1;
                      });
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 0, left: 20, right: 60),
                  child: IconButton(
                    icon: const Icon(Icons.location_on_rounded),
                    iconSize: 40,
                    onPressed: () {
                      setState(() {
                        click += 1;
                      });
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 0, left: 20, right: 60),
                  child: IconButton(
                    icon: const Icon(Icons.location_history_rounded),
                    iconSize: 40,
                    onPressed: () {
                      setState(() {
                        click += 1;
                      }
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
