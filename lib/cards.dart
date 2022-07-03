import 'package:flutter/material.dart';
import 'package:resale_test_1/details.dart';

class MyCards extends StatelessWidget{
  final List child;

  const MyCards({Key? key, required this.child}) : super(key: key);

  //Mycards({required this.child});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => Details(child: child)));
      },
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            /*image: DecorationImage(
              image: NetworkImage("https://images.unsplash.com/photo-1503455637927-730bce8583c0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8M3w4NzU1OTYwfHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=1000&q=60"),
              fit: BoxFit.fill,
            ),*/
            color: Colors.black12,
          ),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 150,
                  width: 140,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    image: DecorationImage(
                      image: NetworkImage(child[2]),
                      fit: BoxFit.fill,
                    ),
                    color: Colors.black,
                  ),
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width:200,
                            child: Text(child[0],
                              style: TextStyle(fontSize: 20,),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          SizedBox(height: 10,),
                          SizedBox(
                            height: 70,
                            width:200,
                            child: Text(child[1],
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                              softWrap: false,
                              style: TextStyle(fontSize: 13,),),
                          ),

                          SizedBox(
                            width:200,
                            child: Text("Price: Rs."+child[3],
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(fontSize: 18, color: Colors.pink),),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          height: 150,
        ),
      );
  }
}