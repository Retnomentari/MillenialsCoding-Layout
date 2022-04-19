import 'package:flutter/material.dart';

void main() => runApp(MyHomePage());

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List products = [
    "Tas Trendi 1",
    "Tas Trendi 2",
    "Tas Trendi 3"
  ];
  List stok = [
    "Stok: 3",
    "Stok: 1",
    "Stok: 5"
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("Products"),
        backgroundColor: Colors.purple,
        elevation: 4.0,
        leading: Icon(Icons.ad_units_outlined),
      ),
      body: Column(
        children: <Widget>[
          ListView.builder(
            itemCount: 3,
            shrinkWrap: true,
            itemBuilder: (BuildContext context, int index) => Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
              child: Card(
                color: Colors.purple[50],
                elevation: 5.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0.0),
                ),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            width: 55.0,
                            height: 55.0,
                            child: CircleAvatar(
                              backgroundColor: Colors.purple,
                              foregroundColor: Colors.purple,
                              backgroundImage: NetworkImage("https://blog.atome.id/wp-content/uploads/2021/04/Tas-Selempang-Kekinian-Remaja-Wanita.jpg"),
                            ),
                          ),
                          SizedBox(width: 6.0),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(products[index], style: TextStyle(color: Colors.black, fontSize: 18.0, fontWeight: FontWeight.bold)),
                              SizedBox(height: 3.0),
                              Text(stok[index], style: TextStyle(color: Colors.grey)),
                            ],
                          ),
                        ],
                      ),
                      Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                          child: FlatButton(
                            onPressed: () {},
                            color: Colors.red[200],
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: Text("Hapus", style: TextStyle(color: Colors.white)),
                          )),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Container(
              alignment: Alignment.bottomRight,
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
              child: FlatButton(
                onPressed: () {},
                color: Colors.green[200],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Row(
                  children: <Widget>[
                    Icon(Icons.add_outlined, color: Colors.white),
                    Text("New Product", style: TextStyle(color: Colors.white, fontSize: 17)),
                  ],
                ),
              )),
        ],
      ),
    ));
  }
}
