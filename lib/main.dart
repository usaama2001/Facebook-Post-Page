import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Comment()));
}

class Comment extends StatefulWidget {
  const Comment({super.key});

  @override
  State<Comment> createState() => _CommentState();
}

class _CommentState extends State<Comment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Post Page')),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 20.0, right: 20.0),
        child: Center(
          child: Container(
            height: 380,
            child: Card(
              elevation: 5,
              child: Column(
                children: [
                  SizedBox(height: 15),
                  Row(
                    children: [
                      Padding(padding: EdgeInsets.only(left: 10)),
                      CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage('assets/girl.jpg'),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Column(
                        children: [
                          Text(
                            'Usaama Muhudiin',
                            style: TextStyle(
                              fontSize: 15.0,
                            ),
                          ),
                          Text(
                            '5 mins ago',
                            style: TextStyle(fontSize: 15.0),
                          ),
                        ],
                      ),
                      SizedBox(width: 140.0),
                      Icon(
                        Icons.more_vert,
                      ),
                    ],
                  ), //here is the end of the frist row
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    child: Image.asset(
                      'assets/zaam.jpg',
                      // height: 240,
                    ),
                  ),
                  //------------------------- icons
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.favorite,
                        size: 30,
                        color: Colors.blue,
                      ),
                      Text('Like'),
                      SizedBox(
                        width: 50,
                      ),
                      //---------------
                      Icon(
                        Icons.comment,
                        size: 30,
                        color: Colors.blue,
                      ),
                      Text('Comment'),
                      //--------------
                      SizedBox(
                        width: 50,
                      ),
                      Icon(
                        Icons.share,
                        size: 30,
                        color: Colors.blue,
                      ),
                      Text('Share'),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
