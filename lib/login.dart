import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:resale_test_1/register.dart';
import 'package:resale_test_1/forgotpassword.dart';

class MyLogin extends StatefulWidget{
  const MyLogin({Key?key}): super(key: key);

  @override
  _MyLoginState createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin>{

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
            /*Container(
              padding: EdgeInsets.only(top: 50,left:150,),
              CircleAvatar(
                //padding: EdgeInsets.only(top: 50,left:150,),
                radius: 40,
                backgroundColor: Colors.transparent,
                backgroundImage: NetworkImage("https://library.kissclipart.com/20181217/vbe/kissclipart-recycled-icon-vector-clipart-recycling-symbol-376f83bf8521c3ee.png"),
                child: IconButton(
                  onPressed: (){},
                  icon: Icon(null),
                ),
              ),
            ),*/
            /*Container(

              padding: EdgeInsets.only(left:35,top:130),
                child: Text('Welcome\nBack',
                  style: TextStyle(color: Colors.white,fontSize: 30),
                ),
            ),*/

            Container(

              padding: EdgeInsets.only(left:35,top:255),
              child: Text('𝐒𝐢𝐠𝐧-𝐈𝐧',
                style: TextStyle(color: Colors.black,fontSize: 30,),
              ),
            ),

            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height*0.4,
                    left: 35,
                    right: 35),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        fillColor: Colors.grey.shade100,
                        filled: true,
                        hintText: 'Username',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    TextField(
                      decoration: InputDecoration(
                        fillColor: Colors.grey.shade100,
                        filled: true,
                        hintText: 'Password',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    //SizedBox(height:30,),
                    SizedBox(height:10,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(

                          padding: EdgeInsets.only(top:10),
                          child: Text('Or',
                            style: TextStyle(color: Colors.black,fontSize: 20),
                          ),
                        ),
                        SizedBox(height:10,),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                            CircleAvatar(
                              radius: 25,
                              backgroundColor: Colors.transparent,
                              backgroundImage: NetworkImage(
                                "https://www.freepnglogos.com/uploads/google-logo-png/google-logo-png-suite-everything-you-need-know-about-google-newest-0.png"
                              ),
                              child: IconButton(
                                onPressed: (){},
                                icon: Icon(null),
                              ),
                            ),

                            CircleAvatar(
                              radius: 25,
                              backgroundColor: Colors.transparent,
                              backgroundImage: NetworkImage(
                                "https://www.freepnglogos.com/uploads/facebook-logo-13.png"
                              ),
                              child: IconButton(
                                onPressed: (){},
                                icon: const Icon(null),
                              ),
                            ),
                            ]
                        ),
                        SizedBox(height: 20),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              TextButton(
                              style: TextButton.styleFrom(
                                textStyle: TextStyle(decoration: TextDecoration.underline,fontSize: 22),
                                primary: Colors.black,
                              ),
                              onPressed: () => Navigator.pushNamed(context,'register'),//{
                                //Navigator.pushNamed(context,'register');
                              //},
                              child: Text('Register...'),
                              ),
                              TextButton(
                                style: TextButton.styleFrom(
                                  textStyle: TextStyle(decoration: TextDecoration.underline,fontSize: 20),
                                  primary: Colors.black,
                                ),
                                onPressed: () => Navigator.pushNamed(context,'forgotpassword'),
                                child: Text('Forgot Password'),
                              ),
                          ]
                        ),
                      ]
                    )
                  ],

                ),
              ),
            )
          ],
          //child: floatingActionButton: FloatingActionButton(onPressed: none),
        ),
        floatingActionButton: FloatingActionButton(

          onPressed: () => Navigator.pushNamed(context,'homepage'),

          backgroundColor: Colors.black,
          child: const Icon(Icons.house_rounded),
        ),
      ),
    );
  }
}

