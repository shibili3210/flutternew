import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    List ssw = [
      "Profile",
      "notification",
      "audio & video",
      "playback",
      "language"
    ];
    List ddd = [
      Icon(
        Icons.person,
      ),
      Icon(
        Icons.notification_add,
      ),
      Icon(
        Icons.audio_file,
      ),
      Icon(
        Icons.play_disabled,
      ),
      Icon(
        Icons.language,
      )
    ];
    String nnn = 'assets/images/photo-1503443207922-dff7d543fd0e.avif';
    return Scaffold(
        appBar: AppBar(
          leading: CircleAvatar(
            backgroundImage: AssetImage(nnn),
            radius: 10,
          ),
          title: Text("profile"),
          actions: [
            Container(
              height: 50,
              width: 50,
              decoration:
                  BoxDecoration(shape: BoxShape.circle, border: Border.all()),
              child: Icon(Icons.drag_indicator_outlined),
            ),
          ],
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 50, vertical: 50),
          child: Column(
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage(nnn),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      Text(
                        "Andrew Ainsly",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text("Andrew Ainsly"),
                    ],
                  ),
                ],
              ),
              Container(
                width: 300,
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.red,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Enjoy all benefit",
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                          "enjoy listining songs and podcast with better audio quality without restriction without ads"),
                      SizedBox(
                        height: 10,
                      ),
                      ElevatedButton(
                          onPressed: () {}, child: Text("get premium"))
                    ],
                  ),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(ssw[index]),
                      leading: ddd[index],
                      trailing: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.keyboard_arrow_right)),
                    );
                  },
                ),
              )
            ],
          ),
        ));
  }
}
