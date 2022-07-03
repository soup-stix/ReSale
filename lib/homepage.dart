import 'package:flutter/material.dart';
import 'package:resale_test_1/cards.dart';
import 'package:resale_test_1/listingnew.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List _posts = [
    ["Da Vinci Code","Dan Brown","https://m.media-amazon.com/images/I/5171w-4D2FL.jpg","500","Anand","123456798"],
    ["Trek Speed","Rarely used","https://thecyclesportexperience.files.wordpress.com/2019/08/mes1.jpg","69,000","Anand","123456798"],
    ["FireFox Tarmak","Upgrading to new bike!!","https://s3.ap-south-1.amazonaws.com/choosemybicycle/images/reviews/firefox-tarmak.jpg","29,999","Anand","123456798"],
    ["Rich Dad, Poor Dad","Robert T Kiyosaki","https://images-na.ssl-images-amazon.com/images/I/81bsw6fnUiL.jpg","1000","Anand","123456798"],
  ];
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
            builder: (context) => IconButton(
              icon: Icon(Icons.menu,color: Colors.black,),
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
                ListTile(
                  leading: Icon(Icons.add_box_rounded, color: Colors.black,),
                  title: Text("New Listing",style: TextStyle(fontSize: 20),),
                  onTap: () => Navigator.pushNamed(context,'listingnew'),
                ),
              ],
            ),
          ),
        ),
        body: Column(
          children: [
            SizedBox(height: 10,),
            Container(
              padding: EdgeInsets.all(10),
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.white30,
                          //backgroundImage: NetworkImage("https://www.pinclipart.com/picdir/middle/569-5697162_school-transparent-background-books-clipart-png-download.png"),
                          backgroundImage: AssetImage('assets/iconbg.png'),
                          child: IconButton(
                            icon: Icon(Icons.auto_stories_rounded),
                            color: Colors.black,
                            onPressed: () => Navigator.pushNamed(context,'books'),
                          ),
                        ),
                        Text("𝘉𝘰𝘰𝘬𝘴"),
                      ],
                    ),
                  ),
                  SizedBox(width: 10),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage('assets/iconbg.png'),
                          child: IconButton(
                            icon: Icon(Icons.directions_bike_outlined),
                            color: Colors.black,
                            onPressed: () => Navigator.pushNamed(context,'cycles'),
                          ),
                        ),
                        Text("𝘊𝘺𝘤𝘭𝘦𝘴"),
                      ],
                    ),
                  ),
                  SizedBox(width: 10),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage('assets/iconbg.png'),
                          child: IconButton(
                            icon: Icon(Icons.book_outlined),
                            color: Colors.black,
                            onPressed: () {
                              print("You Pressed the icon!");
                            },
                          ),
                        ),
                        Text("𝘋𝘰𝘤𝘶𝘮𝘦𝘯𝘵𝘴",),
                      ],
                    ),
                  ),
                  /*Ink(
                    decoration: BoxDecoration(
                      color: Colors.black,
                      //shape: CircleBorder(),
                      borderRadius: BorderRadius.circular(40),
                    ),

                    child: SizedBox(
                      height: 60.0,
                      width: 60.0,
                      child: IconButton(
                        icon: Icon(Icons.directions_bike),
                        color: Colors.white,
                        onPressed: () {
                          print("You Pressed the icon!");
                        },
                      ),
                    ),
                  ),*/
                  SizedBox(width: 10),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage('assets/iconbg.png'),
                          child: IconButton(
                            icon: Icon(Icons.calculate_rounded),
                            color: Colors.black,
                            onPressed: () {
                              print("You Pressed the icon!");
                            },
                          ),
                        ),
                        Text("𝘊𝘢𝘭𝘤𝘶𝘭𝘢𝘵𝘰𝘳𝘴"),
                      ],
                    ),
                  ),
                  SizedBox(width: 10),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage('assets/iconbg.png'),
                          child: IconButton(
                            icon: Icon(Icons.category_rounded),
                            color: Colors.black,
                            onPressed: () {
                              print("You Pressed the icon!");
                            },
                          ),
                        ),
                        Text("𝘌𝘎 𝘛𝘰𝘰𝘭𝘴"),
                      ],
                    ),
                  ),
                  SizedBox(width: 10),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage('assets/iconbg.png'),
                          child: IconButton(
                            icon: Icon(Icons.celebration_rounded),
                            color: Colors.black,
                            onPressed: () {
                              print("You Pressed the icon!");
                            },
                          ),
                        ),
                        Text("𝘗𝘢𝘳𝘵𝘺"),
                      ],
                    ),
                  ),
                  SizedBox(width: 10),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage('assets/iconbg.png'),
                          child: IconButton(
                            icon: Icon(Icons.code_rounded),
                            color: Colors.black,
                            onPressed: () {
                              print("You Pressed the icon!");
                            },
                          ),
                        ),
                        Text("𝘊𝘰𝘥𝘦𝘴"),
                      ],
                    ),
                  ),
                  SizedBox(width: 10),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: _posts.length,
                  itemBuilder: (context, index){
                    return MyCards(child: _posts[index]);
                  }
              ),

            ),
          ],
        ),

      ),
    );
  }
}
