import 'package:flutter/material.dart';
import 'package:resale_test_1/cards.dart';

class Books extends StatefulWidget {
  const Books({Key? key}) : super(key: key);

  @override
  _BooksState createState() => _BooksState();
}

class _BooksState extends State<Books> {
  final List _posts = [
    ["Kaichou wa Maid-Sama!","For Sale!!","https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1342630688l/15758313.jpg","300","Anand","123456798"],
    ["Da Vinci Code","Dan Brown","https://m.media-amazon.com/images/I/5171w-4D2FL.jpg","500","Anand","123456798"],
    ["IKIGAI","Japanese","https://images-na.ssl-images-amazon.com/images/I/81l3rZK4lnL.jpg","400","Anand","123456798"],
    ["Harry Potter and The Chamber of Secrets","JK Rowling","https://images-na.ssl-images-amazon.com/images/I/91HHqVTAJQL.jpg","700","Anand","123456798"],
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
              Container(
                color: Colors.white30,
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height: 25,

                    child: Text("Books", style: TextStyle( fontSize: 20),textAlign: TextAlign.left,),
                  ),
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
            ]
        ),
      ),
    );
  }
}