import 'package:flutter/material.dart';

class homescreen extends StatefulWidget {
  const homescreen({super.key});

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.teal,
            title: Text(
              "Whatsapp",
              style: TextStyle(color: Colors.white),
            ),
            bottom: TabBar(
              unselectedLabelColor: Colors.white,
              unselectedLabelStyle: TextStyle(fontSize: 18),
              tabs: [
                Tab(
                    child: Icon(
                  Icons.camera_alt,
                  color: Colors.white,
                )),
                Tab(
                  child: Text("Chat"),
                ),
                Tab(
                  child: Text("Status"),
                ),
                Tab(child: Text("Calls")),
              ],
            ),
            actions: [
              Icon(
                Icons.search,
                color: Colors.white,
              ),
              SizedBox(
                width: 10,
              ),
              PopupMenuButton(
                  icon: Icon(
                    Icons.more_vert_outlined,
                    color: Colors.white,
                  ),
                  itemBuilder: (context) => [
                        PopupMenuItem(value: 1, child: Text("New Group")),
                        PopupMenuItem(value: 2, child: Text("Setting")),
                        PopupMenuItem(value: 2, child: Text("Log out"))
                      ])
            ]),
        body: TabBarView(children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.camera_alt_outlined,
                  size: 100,
                ),
                ElevatedButton(
                  child: Text("ADD"),
                  onPressed: () {},
                ),
              ],
            ),
          ),
          ListView.builder(itemBuilder: (context, index) {
            return ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('images/download.jpeg'),
              ),
              title: Text("Hridoy khan"),
              subtitle: Text("how are you?"),
              trailing: Text("6.50 pm"),
            );
          }),
          Text(""),
          //for calls
          ListView.builder(itemBuilder: (context, index) {
            return ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage('images/download.jpeg'),
                ),
                title: Text("Hridoy khan"),
                subtitle: Text("7.10 am"),
                trailing: Icon(Icons.call_end_outlined));
          }),
        ]),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.teal,
          onPressed: () {},
          child: Icon(Icons.sms_outlined),
        ),
      ),
    );
  }
}
