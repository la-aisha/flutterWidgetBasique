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
       
        primarySwatch: Colors.blue,
      ),
      home: BasicsPage() ,
    );
  }
}

class BasicsPage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var platform = Theme.of(context).platform ;
    print("size : $size");
    print("plateform : $platform");
  return Scaffold(
    //bottomNavigationBar: ,
    //floatingActionButton: ,
    appBar: AppBar(
      title: Text("Mon app basique"),
      leading: Icon(
        Icons.handyman ,
      ),
      actions : [
        Icon(Icons.handyman),
        Icon(Icons.handshake),
      ],
      centerTitle : true ,
      elevation : 7.5 ,
    ) ,
    body : Container(
      height: size.height,
      width: size.width,
      color : Colors.white ,
      //margin : EdgeInsets.all(10),
      //padding: const EdgeInsets.only(top :150),
      child : Center (
        /* child: Image.asset(
          "images/sauvage.jpg",
          fit : BoxFit.cover,
          width: size.width,
          height : size.height
          ) */
          child: Card(
            elevation: 7.5,
            color: Colors.white,
            margin: EdgeInsets.all(20),
            child : Padding(
              padding : EdgeInsets.all(20),
              child : SingleChildScrollView(
                //scrollDirection: Axis.vertical,
                 child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.end,
                //crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  simpleText("hello weirdos"),
                  Stack(
                    alignment: Alignment.topCenter,

                    children: [
                    fromAsset(width:size.width, height: 150),
                    Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: profilePicture(radius: 30),
                    ),
                    Row(
                      mainAxisAlignment : MainAxisAlignment.end ,
                      children: [
                        Icon(Icons.favorite),
                        Icon(Icons.handshake),
                        Spacer(),
                        Text("another element"),
                     
                    ],)
                    

                     /// FromNetwork("https://images.pexels.com/photos/814898/pexels-photo-814898.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                    ],
                  ),
                  Divider(
                    color: Colors.blue,
                    height: 10,
                    thickness: 2,
                  ),
                  Container(
                    margin : EdgeInsets.all(20),
                    height: 200,
                    width:size.width ,
                    decoration: BoxDecoration(
                      image : DecorationImage(
                        image: AssetImage("images/sauvage.jpg"),
                        fit : BoxFit.cover,
                      ),
                      boxShadow: [
                       BoxShadow(
                        color : Colors.yellow ,
                        offset: Offset(2,2),
                        blurRadius: 2,
                        spreadRadius: 5,
                        )
                      ],
                      borderRadius: BorderRadius.all(Radius.circular(15),),
                    ),
                    child : Text("Container"),

                  ),
                  Container(
                    color : Colors.teal ,
                    padding : EdgeInsets.all(5),
                    child : Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                       profilePicture(radius: 40),
                      //fromAsset(height: 80,width: 80),
                      //Expanded(child: simpleText("aisha"),),
                      simpleText("aisha seye"),

                    ],  )                    
                  ),
                 
                  Image.asset(
                    "images/sauvage.jpg",
                  ),
                  spanDemo(),
                    Image.asset(
                    "images/sauvage.jpg",
                  ), 

              ]),
            
                
              ),
             ),
          
          ),
        ),
    ),
   

  );
  }
  CircleAvatar profilePicture({double radius =0}){
  return CircleAvatar(
    radius: radius,
    backgroundColor: Colors.blue,
    //foregroundImage:AssetImage("images/sauvage.jpg"),
    foregroundImage:NetworkImage("https://images.pexels.com/photos/3310695/pexels-photo-3310695.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),                   
    );

  }
  Image fromAsset({double height =0 ,double width=0}){
    return Image.asset(
      "images/sauvage.jpg",
      fit : BoxFit.cover,
      height: height,
      width: width);


  }
  Image FromNetwork(){
   return Image.network("https://www.pexels.com/fr-fr/photo/photo-de-foret-avec-brouillard-1671324/");
  }
  Image assetImg(){
   return Image.asset("images/sauvage.jpg");
  }
  Text simpleText (String text){
    return Text(
        text,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 40,
          fontWeight: FontWeight.w200,
          fontStyle: FontStyle.italic,

        ),
        textAlign: TextAlign.right,) ;
  }

  Text spanDemo(){
    return Text.rich(
        TextSpan(
          text : "salut ",
          style : TextStyle(
            color: Colors.yellow),
            children: [
               TextSpan(
                text : "second style ",
                style : TextStyle(
                  color: Colors.red,
                  fontSize: 30
                  ),

              ),
              TextSpan(
                text : "a l'infini",
                style : const TextStyle(
                color: Colors.teal,
                fontSize: 30
                ), 
              )
            ]
        )
      );
  }
}