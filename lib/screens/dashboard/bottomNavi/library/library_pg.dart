import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:music_app/screens/dashboard/bottomNavi/library/AddArtist_pg.dart';
import 'package:music_app/screens/dashboard/bottomNavi/library/LikedSongs.dart';
import 'package:music_app/screens/dashboard/bottomNavi/search/search_pg.dart';
import 'package:lottie/lottie.dart';

class library_pg extends StatefulWidget {
  const library_pg({Key? key}) : super(key: key);

  @override
  State<library_pg> createState() => _library_pgState();
}

class _library_pgState extends State<library_pg> {
  var arrMap = [
    {
      'arrImage': 'assets/images/song1.jpeg',
      'arrNames': 'Liked songs',
      'arrSubNames': '15 songs',
    },
    {
      'arrImage': 'assets/images/song2.jpeg',
      'arrNames': 'PlayList1',
      'arrSubNames': 'Playlist: Krishna',
    },
    {
      'arrImage': 'assets/images/song3.jpeg',
      'arrNames': 'PlaList2',
      'arrSubNames': 'Playlist: Magic Records',
    },
    {
      'arrImage': 'assets/images/song4.jpeg',
      'arrNames': 'PlayList3',
      'arrSubNames': 'Playlist: Gym Rats',
    },
  ];

  @override
  Widget build(BuildContext context) {
    final mqh = MediaQuery.of(context).size.height;
    final mqw = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        flexibleSpace: ClipRRect(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(215),
              bottomRight: Radius.circular(190)),
          child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.pink.shade200, Colors.purple])),
          ),
        ),
        elevation: 20,
        shadowColor: Colors.white,
        title: const Text(
          'Good Morning',
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(160),
          child: Padding(
            padding: const EdgeInsets.only(bottom: 5, left: 17),
            child: Column(
              children: [
                Row(children: [
                  Text(
                    'user',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ]),
                Lottie.asset('assets/lottie/animation.json', height: 140)
              ],
            ),
          ),
        ),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(215),
                bottomRight: Radius.circular(190))),
      ),
      body: Padding(
        padding: const EdgeInsets.only(right: 10, top: 30),
        child: Expanded(
          child: ListView.builder(
            itemBuilder: (context, index) {
              return ListTile(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LikedSongs_pg()));
                },
                contentPadding: EdgeInsets.only(left: 15, bottom: 10),
                leading: CircleAvatar(
                    backgroundColor: Colors.black,
                    radius: 40,
                    child: Image.asset(
                      '${arrMap[index]['arrImage']}',
                      fit: BoxFit.cover,
                    )),
                title: Text(
                  '${arrMap[index]['arrNames']}',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
                subtitle: Text(
                  '${arrMap[index]['arrSubNames']}',
                  style: TextStyle(fontSize: 15, color: Colors.white70),
                ),
              );
            },
            itemCount: arrMap.length,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        shape: CircleBorder(),
        child: Icon(
          FontAwesomeIcons.add,
          size: 20,
          color: Colors.white,
        ),
        backgroundColor: Colors.purple.shade400,
        onPressed: () {
          showModalBottomSheet(
              backgroundColor: Colors.black,
              context: context,
              builder: (context) => bottomSheet());
        },
      ),
    );
  }

  Widget bottomSheet() => Container(
        height: 170,
        child: Column(
          children: [
            ListTile(
              shape: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              tileColor: Colors.grey.shade800,
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return addPlyListdialogBox();
                  },
                );
              },
              leading: Icon(
                FontAwesomeIcons.addressBook,
                color: Colors.white,
              ),
              title: Text(
                'add playlist',
                style: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(height: 5),
            ListTile(
              shape: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              tileColor: Colors.grey.shade800,
              onTap: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AddArtist(),
                    ));
              },
              leading: Icon(
                FontAwesomeIcons.userGroup,
                color: Colors.white,
              ),
              title: Text('add artist', style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      );

  Widget addPlyListdialogBox() => Container(
        child: AlertDialog(
          shadowColor: Colors.white70,
          elevation: 20,
          backgroundColor: Colors.white54,
          shape: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          title: Text(
            'Give a name to your playlist.',
            style: TextStyle(
              fontSize: 21,
              color: Colors.pink.shade500,
              fontWeight: FontWeight.bold,
              //letterSpacing: 5,
            ),
          ),
          content: TextField(
            cursorColor: Colors.white,
            decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(17),
                    borderSide: BorderSide(color: Colors.black)),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(17),
                  // borderSide: BorderSide(color: Colors.black)
                )),
          ),
          actions: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.purple.shade300,
                        elevation: 7,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                            side: BorderSide(width: 2, color: Colors.purple))),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      'Cancel',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    )),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.purple.shade300,
                        elevation: 7,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                          side: BorderSide(width: 2, color: Colors.purple),
                        )),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => library_pg()));
                    },
                    child: Text(
                      'Done',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    )),
              ],
            )
          ],
        ),
      );
}
