import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Listing extends StatefulWidget{
  const Listing({Key?key}): super(key: key);

  @override
  _ListingState createState() => _ListingState();
}

class _ListingState extends State<Listing>{
  final TextEditingController name123 = TextEditingController();
  final TextEditingController desc = TextEditingController();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/loginresale.jpeg'),fit: BoxFit.fill)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(

              padding: EdgeInsets.only(left:35,top:120),
              /*child: Text('Product name:',
                style: TextStyle(color: Colors.black,fontSize: 20,),
              ),*/
            ),

            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height*0.2,
                    left: 35,
                    right: 35),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Product name:',
                      style: TextStyle(color: Colors.black,fontSize: 20,),
                    ),
                    SizedBox(height: 10,),
                    TextField(
                      controller: name123,
                      decoration: InputDecoration(
                        fillColor: Colors.grey.shade100,
                        filled: true,
                        hintText: 'Product name',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Text('Product description:',
                      style: TextStyle(color: Colors.black,fontSize: 20,),
                    ),
                    SizedBox(height: 10,),
                    TextField(
                      controller: desc,
                      maxLines: 5,
                      //overflow: TextOverflow.ellipsis,
                      decoration: InputDecoration(
                        fillColor: Colors.grey.shade100,
                        filled: true,
                        hintText: 'Description',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    //SizedBox(height:30,),
                    SizedBox(height:10,),
                    Text('Price:',
                      style: TextStyle(color: Colors.black,fontSize: 20,),
                    ),
                    SizedBox(height: 10,),
                    TextField(
                      decoration: InputDecoration(
                        fillColor: Colors.grey.shade100,
                        filled: true,
                        hintText: "Price",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    //SizedBox(height:30,),


                  ]
                )
              ),
            ),
          ],
          //child: floatingActionButton: FloatingActionButton(onPressed: none),
        ),
        /*floatingActionButton: FloatingActionButton(

          onPressed: () => Navigator.pushNamed(context,'homepage'),

          backgroundColor: Colors.black,
          child: const Icon(Icons.house_rounded),
        ),*/
        floatingActionButton: FloatingActionButton(
          onPressed: () {print(name123.text+desc.text);},
          backgroundColor: Colors.black,
          child: const Icon(Icons.house_rounded),
        ),
      ),
    );

  }
}

