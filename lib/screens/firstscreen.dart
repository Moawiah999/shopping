import 'package:flutter/material.dart';
import 'package:myprojectt/main.dart';
import 'package:myprojectt/screens/secondscreen.dart';

class Myfirstscreen extends StatefulWidget {
  const Myfirstscreen({super.key});

  @override
  State<Myfirstscreen> createState() => _MyfirstscreenState();
}

class _MyfirstscreenState extends State<Myfirstscreen> {
  List myitems = ["Saudi Arabia", "Jordan", "Syria", "United kingdom"];
  String selectitems = "Jordan";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Container(
                child: Text("Choose what you want",
                    style: TextStyle(fontSize: 24)),
              ),
              SizedBox(
                height: 30,
              ),
              ListTile(
                subtitle: Row(
                  children: [
                    Container(
                      child: Text(
                        "800",
                        style: TextStyle(
                            decoration: TextDecoration.lineThrough,
                            fontSize: 25,
                            color: Colors.red),
                      ),
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    Container(
                      child: Text(
                        "700",
                        style: TextStyle(
                            color: Colors.orangeAccent,
                            fontWeight: FontWeight.bold,
                            fontSize: 50),
                      ),
                    )
                  ],
                ),
                trailing: IconButton(
                  icon: Icon(Icons.add),
                  color: Colors.red,
                  onPressed: () {},
                ),
                leading: Image(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        "https://th.bing.com/th/id/OIP.YFm3qpSMWYkggcPfyRdMIgHaJB?w=153&h=186&c=7&r=0&o=5&pid=1.7")),
                title: Text(
                  "iphone 12",
                  style: TextStyle(fontSize: 25),
                ),
              ),
              ListTile(
                subtitle: Row(
                  children: [
                    Container(
                      child: Text(
                        "800",
                        style: TextStyle(
                            decoration: TextDecoration.lineThrough,
                            fontSize: 25,
                            color: Colors.red),
                      ),
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    Container(
                      child: Text(
                        "700",
                        style: TextStyle(
                            color: Colors.orangeAccent,
                            fontWeight: FontWeight.bold,
                            fontSize: 50),
                      ),
                    )
                  ],
                ),
                trailing: IconButton(
                  icon: Icon(Icons.add),
                  color: Colors.red,
                  onPressed: () {},
                ),
                leading: Image(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        "https://th.bing.com/th/id/OIP.59q3qDs0IO55AkkFus5LRAHaHa?w=196&h=196&c=7&r=0&o=5&pid=1.7")),
                title: Text(
                  "iphone 12",
                  style: TextStyle(fontSize: 25),
                ),
              ),
              Container(
                child: Text("Delivery to", style: TextStyle(fontSize: 24)),
              ),
              DropdownButton(
                value: selectitems,
                items: myitems
                    .map((e) => DropdownMenuItem(value: e, child: Text("$e")))
                    .toList(),
                onChanged: (val) {
                  setState(() {
                    selectitems = val.toString();
                  });
                },
              ),
              Divider(
                height: 300,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(onPrimary: Colors.amber),
                onPressed: () {
                  setState(() {
                    Navigator.pop(context, MaterialPageRoute(
                      builder: (context) {
                        return Home();
                      },
                    ));
                  });
                },
                child: Text("back"),
              ),
              ElevatedButton.icon(
                icon: Icon(Icons.drive_eta, color: Colors.greenAccent),
                label: Text(
                  "Go to the car section",
                  style: TextStyle(fontSize: 25),
                ),
                onPressed: () {
                  setState(() {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return Mysecondscreen();
                      },
                    ));
                  });
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.red,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32.0),
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
