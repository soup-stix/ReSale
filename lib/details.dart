import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  final List child;

  const Details({Key? key, required this.child}) : super(key: key);

  //Mycards({required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
        image: DecorationImage(
        image: AssetImage('assets/loginresale.jpeg'), fit: BoxFit.fill)),
    child: Scaffold(
    backgroundColor: Colors.transparent,
    appBar: AppBar(
    leading: Builder(
    builder: (context) =>
    IconButton(
    icon: Icon(Icons.menu, color: Colors.black,),
    onPressed: () {
    Scaffold.of(context).openDrawer();
    },
    ),
    ),
    backgroundColor: Colors.transparent,
    /*leading: IconButton(
            icon: Icon(Icons.menu, color: Colors.black),
            onPressed: () => Navigator.pushNamed(context, 'login'),
          ),*/
    elevation: 0,
    ),
    drawer: Drawer(
    child: Container(
    decoration: BoxDecoration(
    image: DecorationImage(
    image: AssetImage('assets/loginresale.jpeg'),fit: BoxFit.fill)),
    child: ListView(
    children: [
    SizedBox(height: 90,),
    //DrawerHeader(child: Text(""),/*child: Center(child: Text("LOGO",style: TextStyle(fontSize: 30,),)),*/),
    ListTile(
    leading: Icon(Icons.book_rounded, color: Colors.black,),
    title: Text("𝘉𝘰𝘰𝘬𝘴",style: TextStyle(fontSize: 20),),
    onTap: () => Navigator.pushNamed(context,'books'),
    ),
    ListTile(
    leading: Icon(Icons.directions_bike_rounded, color: Colors.black,),
    title: Text("𝘉𝘪𝘬𝘦𝘴/𝘊𝘺𝘤𝘭𝘦𝘴",style: TextStyle(fontSize: 20),),
    onTap: () => Navigator.pushNamed(context,'cycles'),
    ),
    ListTile(
    leading: Icon(Icons.bookmark, color: Colors.black,),
    title: Text("𝘏𝘰𝘮𝘦𝘸𝘰𝘳𝘬",style: TextStyle(fontSize: 20),),
    onTap: () => Navigator.pushNamed(context,'login'),
    ),
    ListTile(
    leading: Icon(Icons.calculate_rounded, color: Colors.black,),
    title: Text("𝘊𝘢𝘭𝘤𝘶𝘭𝘢𝘵𝘰𝘳𝘴",style: TextStyle(fontSize: 20),),
    onTap: () => Navigator.pushNamed(context,'login'),
    ),
    ListTile(
    leading: Icon(Icons.arrow_back_ios_new, color: Colors.black,),
    title: Text("𝘓𝘰𝘨𝘪𝘯",style: TextStyle(fontSize: 20),),
    onTap: () => Navigator.pushNamed(context,'login'),
    ),
    ],
    ),
    ),
    ),
    body: Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            padding: EdgeInsets.all(8),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height-140,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: Colors.black12,
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                height: 300,
                width: 350,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Colors.white,
                  image: DecorationImage(
                      image: NetworkImage(child[2]),fit: BoxFit.fill,),
                  ),
                  ),
                  SizedBox(height: 20,),
                  Text(child[0],
                    style: TextStyle(fontSize: 25,),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: 20,),
                  Text(child[1],
                    style: TextStyle(fontSize: 15,),
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      SizedBox(
                        width: 170,
                        child: Text("Contact: "+child[5],
                          style: TextStyle(fontSize: 15,),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      SizedBox(
                        width: 170,
                        child: Text("Owner: "+child[4],
                          style: TextStyle(fontSize: 15,),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      SizedBox(
                        width: 170,
                        child: Text("Contact: """,
                          style: TextStyle(fontSize: 15,),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      SizedBox(
                        width: 170,
                        child: Text("Contact: """,
                          style: TextStyle(fontSize: 15,),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      SizedBox(
                        width: 170,
                        child: Text("Contact: """,
                          style: TextStyle(fontSize: 15,),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      SizedBox(
                        width: 170,
                        child: Text("Contact: """,
                          style: TextStyle(fontSize: 15,),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Text("price: Rs."+child[3], style: TextStyle(fontSize: 25,color: Colors.black),),
                ],
              ),
            ),
          ),
        ),
      ],
    ),
    ),
    );
  }
}
