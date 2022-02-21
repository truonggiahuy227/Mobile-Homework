import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Product homepage'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(this.title),),
      body: ListView(
          shrinkWrap: true, padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
          children: products,
      ),
    );
  }
}

class RatingBox extends StatefulWidget {
  const RatingBox({Key? key}) : super(key: key);

  @override
  _RatingBoxState createState() {
    return _RatingBoxState();
  }
}

class _RatingBoxState extends State<RatingBox> {
  int _rating =0;
  void _setRatingAsOne() {
    setState( () {
      _rating = 1;
    });
  }
  void _setRatingAsTwo() {
    setState( () {
      _rating = 2;
    });
  }
  void _setRatingAsThree() {
    setState( () {
      _rating = 3;});
  }
  void _setRatingAsFour() {
    setState( () {
      _rating = 4;});
  }
  void _setRatingAsFive() {
    setState( () {
      _rating = 5;});
  }

  @override
  Widget build(BuildContext context) {
    double _size = 20;
    print(_rating);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(0),
          child: IconButton(
            icon: (_rating >= 1 ? Icon(Icons.star, size: _size,) :
            Icon(Icons.star_border, size: _size,)),
            color: Colors.red[500],
            onPressed: _setRatingAsOne,
            iconSize: _size,
          ),
        ),
        Container(
          padding: EdgeInsets.all(0),
          child: IconButton(
            icon: (_rating >= 2 ? Icon(Icons.star, size: _size,) :
            Icon(Icons.star_border, size: _size,)),
            color: Colors.red[500],
            onPressed: _setRatingAsTwo,
            iconSize: _size,
          ),
        ),
        Container(
          padding: EdgeInsets.all(0),
          child: IconButton(
            icon: (_rating >= 3 ? Icon(Icons.star, size: _size,) :
            Icon(Icons.star_border, size: _size,)),
            color: Colors.red[500],
            onPressed: _setRatingAsThree,
            iconSize: _size,
          ),
        ),
        Container(
          padding: EdgeInsets.all(0),
          child: IconButton(
            icon: (_rating >= 4 ? Icon(Icons.star, size: _size,) :
            Icon(Icons.star_border, size: _size,)),
            color: Colors.red[500],
            onPressed: _setRatingAsFour,
            iconSize: _size,
          ),
        ),
        Container(
          padding: EdgeInsets.all(0),
          child: IconButton(
            icon: (_rating >= 5 ? Icon(Icons.star, size: _size,) :
            Icon(Icons.star_border, size: _size,)),
            color: Colors.red[500],
            onPressed: _setRatingAsFive,
            iconSize: _size,
          ),
        ),
      ],
    );
  }
}

//Procduct widget
class ProductBox extends StatelessWidget {
   ProductBox({Key? key, required this.name,required this.description, required this.price, required this.image}) :
        super(key: key);
  final String name;
  final String description;
  final int price;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(2),
        height: 140,
        child: Card(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Image.asset("assets/appimages/" + image, width: 100,),
                  Expanded(
                      child: Container(
                          padding: EdgeInsets.all(5),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(this.name, style: const TextStyle(fontWeight:
                              FontWeight.bold)),
                              Text(this.description),
                              RichText(text: TextSpan(children: [
                                TextSpan(text: 'Price: ', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black)),
                                TextSpan(text: this.price.toString()+"\$", style: TextStyle(color: Colors.black))
                              ])),
                              RatingBox(),
                            ],
                          )
                      )
                  )
                ]
            )
        ));
  }
}
//Co the sau nay lay ds sp tu database roi push vao list
List<Widget> products = [
  ProductBox(
      name: "iPhone",
      description: "iPhone is the stylist phone ever",
      price: 1000,
      image: "iphone.jpg"
  ),
  ProductBox(
      name: "Pixel",
      description: "Pixel is the most featureful phone ever",
      price: 800,
      image: "pixel.jpg"
  ),
  ProductBox(
      name: "Laptop",
      description: "Laptop is most productive development tool",
      price: 2000,
      image: "laptop.jpg"
  ),
  ProductBox(
      name: "Tablet",
      description: "Tablet is the most useful device ever for meeting",
      price: 1500,
      image: "tablet.jpg"
  ),
  ProductBox(
      name: "Pendrive",
      description: "Pendrive is useful storage medium",
      price: 100,
      image: "pendrive.jpg"
  ),
  ProductBox(
      name: "Floppy Drive",
      description: "Floppy drive is useful rescue storage medium",
      price: 20,
      image: "floppydisk.jpg"
  ),
];

