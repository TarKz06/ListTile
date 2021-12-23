import 'package:flutter/material.dart';
import 'package:listtitle/details.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final items = List<String>.generate(1000, (i) => "Item $i");
  @override
  Widget build(BuildContext context) {
    List mydata = ['apple', 'banana', 'papaya'];
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      // body: ListView(
      //   children: [
      //     ListTile(
      //       onTap: () {},
      //       leading: Icon(Icons.map),
      //       title: Text(mydata[0]),
      //     ),
      //     Text("Hello list tile"),
      //     Icon(Icons.local_movies),
      //     ListTile(
      //       onTap: () {},
      //       leading: FlutterLogo(),
      //       title: Text(mydata[1]),
      //     ),
      //     ListTile(
      //       onTap: () {},
      //       leading: FlutterLogo(),
      //       title: Text(mydata[2]),
      //       subtitle: Text("Hello tar"),
      //       trailing: Icon(Icons.delete,color:Colors.red,),
      //     ),
      //   ],
      // ),
      //====================================================================
      // body: ListView.builder(itemBuilder: (context, index) {
      //   return ListTile(
      //     onTap: () {},
      //     leading: Icon(Icons.map),
      //     title: Text(items[index]),
      //   );
      // }),
      //====================================================================
      body: ListView.builder(itemBuilder: (BuildContext, int index) {
        return Card(
          elevation: 5,
          child: ListTile(
            leading: FlutterLogo(),
            title: Text(mydata[index]),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) =>  DetailsPage()));
            },
          ),
        );
      },
      itemCount: mydata.length,
      ),
    );
  }
}
