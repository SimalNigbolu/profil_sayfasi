import 'package:flutter/material.dart';




void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  final url= 'https://cdn.pixabay.com/photo/2013/10/25/17/26/tree-200795_960_720.jpg';
  


  static Widget _buildItem(String value, String label){
    return Expanded(
      child: Column(
      children: [
                        Text(value,style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
                        Text(label),
                      ],
                      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor:  Colors.grey.shade100,
        appBar: AppBar(
          centerTitle: true,
          title: Text("Profil Sayfası"),
        ),
        body: Center(
          child: Column(
            children: [
              CircleAvatar(
                radius: 50,
                backgroundColor: Colors.grey.shade100,
                backgroundImage: NetworkImage(url),
              ),
              Text("Şimal Niğbolu",style: TextStyle(color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold),),
              Text("Flutter Geliştiricisi",style: TextStyle(color: Colors.grey, fontSize: 14, fontWeight: FontWeight.w400),),
              SizedBox(height: 18),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      _buildItem("1.4k", "takipçi"),
                      _buildItem("1.5k", "takip"),
                      _buildItem("140", "gönderi"),
                    ],
                  ),
                ),
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Hakkımda", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                      Text(
                      "flutter geliştirmeyi öğreniyorum ve çok seviyorum,flutter geliştirmeyi öğreniyorum ve çok seviyorum"
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),      
    );
  }
}