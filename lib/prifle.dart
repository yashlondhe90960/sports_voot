import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
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
            color: const Color.fromARGB(231, 245, 118, 0),
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
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(top: 10, right: 10, left: 10),
            child: Container(
              width: 600,
              height: 400,
              color: const Color.fromARGB(231, 190, 184, 179),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 10),
                    child: Icon(Icons.contacts_outlined, size: 200),
                  ),
                  SizedBox(height: 50,),
                  Text(
                    "Club Name",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 255, 252, 252),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 113,),
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
