import 'package:flutter/material.dart';

class Home_page extends StatefulWidget {
  static final String id="home_page";
  @override
  _Home_pageState createState() => _Home_pageState();
}

class _Home_pageState extends State<Home_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("facebook",style:TextStyle(color: Colors.blue,fontSize: 25,fontWeight: FontWeight.bold),),
        actions: [
          // #search
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              color: Colors.grey.shade500,
            ),
          ),
          // #camera
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.camera_alt,
              color: Colors.grey.shade500,
            ),
          ),
        ],
        elevation: 0,
      ),
      backgroundColor: Colors.grey.shade800,
      //body
      body: ListView(
        children: <Widget>[
          // #search account
          Container(
            color: Colors.black87,
            padding: EdgeInsets.only(top: 10,left: 10,right: 10),
            height: 120,
            child: Column(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Container(
                        width: 45,
                        height: 45,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: AssetImage("assets/images/user_3.jpeg"),
                                fit: BoxFit.cover
                            ),
                        ),
                    child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          gradient: LinearGradient(
                              begin: Alignment.bottomRight,
                              colors: [
                                Colors.black.withOpacity(0.6),
                                Colors.black.withOpacity(0.3),
                              ]
                          )
                      ),
                      ),
                      ),
                      SizedBox(width: 10,),
                      Expanded(
                        child: Container(
                          height: 46,
                          padding: EdgeInsets.only(left: 15,right: 15),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(23),
                            border: Border.all(
                              width: 1,
                              color: Colors.grey.shade600,
                            ),
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "What`s on your mind?",
                              border: InputBorder.none,
                              hintStyle: TextStyle(color: Colors.grey[600]),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.video_call,color: Colors.red,),
                            SizedBox(width: 5,),
                            Text("Live",style: TextStyle(color: Colors.grey.shade600),),
                          ],
                        ),
                      ),
                      Container(
                        width: 1,
                        margin: EdgeInsets.only(top: 16,bottom: 16),
                        color: Colors.grey[600],
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.photo,color: Colors.green,),
                            SizedBox(width: 5,),
                            Text("Photo",style: TextStyle(color: Colors.grey.shade600),),
                          ],
                        ),
                      ),
                      Container(
                        width: 1,
                        margin: EdgeInsets.only(top: 14,bottom: 14),
                        color: Colors.grey[600],
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.location_on,color: Colors.red,),
                            SizedBox(width: 5,),
                            Text("Check in",style: TextStyle(color: Colors.grey.shade600),),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          //listview horizontal
          Container(
            margin: EdgeInsets.only(top: 10),
            height: 200,
            padding: EdgeInsets.only(top: 10,bottom: 10),
            color: Colors.black87,

            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                SizedBox(width: 10,),
                othersStory(
                    storyImage: 'assets/images/story_5.jpeg',
                    userImage: 'assets/images/user_5.jpeg',
                    userName: 'User one'
                ),
                othersStory(
                    storyImage: 'assets/images/story_4.jpeg',
                    userImage: 'assets/images/user_4.jpeg',
                    userName: 'User two'
                ),
                othersStory(
                    storyImage: 'assets/images/story_3.jpeg',
                    userImage: 'assets/images/user_3.jpeg',
                    userName: 'User Three'
                ),
                othersStory(
                    storyImage: 'assets/images/story_2.jpeg',
                    userImage: 'assets/images/user_2.jpeg',
                    userName: 'User four'
                ),
                othersStory(
                    storyImage: 'assets/images/story_1.jpeg',
                    userImage: 'assets/images/user_1.jpeg',
                    userName: 'User five'
                ),
              ],
            ),
          ),
          // #addfeeds
          addFeed(
              userName: 'User Two',
              userImage: 'assets/images/user_2.jpeg',
              feedTime: '1 hr ago',
              feedText: 'All the Lorem Ipsum generators on the Internet tend to repeat predefined.',
              feedImageleft: 'assets/images/story_2.jpeg',
              feedImageright: 'assets/images/story_5.jpeg'
          ),
          addFeed(
              userName: 'User Three',
              userImage: 'assets/images/user_1.jpeg',
              feedTime: '1 hr ago',
              feedText: 'All the Lorem Ipsum generators on the Internet tend to repeat predefined.',
              feedImageleft: 'assets/images/story_3.jpeg',
              feedImageright: 'assets/images/story_1.jpeg'
          ),
          addFeed(
              userName: 'User Four',
              userImage: 'assets/images/user_5.jpeg',
              feedTime: '1 hr ago',
              feedText: 'All the Lorem Ipsum generators on the Internet tend to repeat predefined.',
              feedImageleft: 'assets/images/story_4.jpeg',
              feedImageright: 'assets/images/story_2.jpeg'
          ),
        ],
      ),
    );
  }
   // #story
  Widget othersStory({storyImage, userImage, userName}) {
    return AspectRatio(
      aspectRatio: 1.3 / 2,
      child: Container(
        margin: EdgeInsets.only(right: 8.0,),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          image: DecorationImage(
              image: AssetImage(storyImage),
              fit: BoxFit.cover
          ),
        ),
        child: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              gradient: LinearGradient(
                  begin: Alignment.bottomRight,
                  colors: [
                    Colors.black.withOpacity(0.6),
                    Colors.black.withOpacity(0.5),
                  ]
              ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.blue.shade600, width: 1.5),
                    image: DecorationImage(
                        image: AssetImage(userImage),
                        fit: BoxFit.cover
                    ),
                ),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(
                          begin: Alignment.bottomRight,
                          colors: [
                            Colors.black.withOpacity(0.6),
                            Colors.black.withOpacity(0.5),
                          ]
                      )
                  ),
                ),
          ),
              Text(userName, style: TextStyle(color: Colors.grey.shade600,),)
            ],
          ),
        ),
      ),
    );
  }
  // #post
  Widget addFeed({userName, userImage, feedTime, feedText, feedImageleft, feedImageright}) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      color: Colors.black87,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          // post header
          Container(
            padding: EdgeInsets.only(left: 10,right: 10),
            child: Column(
              children: [
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: AssetImage(userImage),
                                  fit: BoxFit.cover,
                              ),
                          ),
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        gradient: LinearGradient(
                            begin: Alignment.bottomRight,
                            colors: [
                              Colors.black.withOpacity(0.6),
                              Colors.black.withOpacity(0.3),
                            ]
                        )
                    ),
                  ),
                ),
                        SizedBox(width: 10,),
                        // information user
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(userName, style: TextStyle(color: Colors.grey[600], fontSize: 18, fontWeight: FontWeight.bold, letterSpacing: 1),),
                            SizedBox(height: 3,),
                            Text(feedTime, style: TextStyle(fontSize: 14, color: Colors.grey.shade700),),
                          ],
                        )
                      ],
                    ),
                    // more icon
                    IconButton(
                      icon: Icon(Icons.more_horiz, size: 30, color: Colors.grey[600],),
                      onPressed: () {},
                    )
                  ],
                ),
                SizedBox(height: 20,),
                Text(feedText, style: TextStyle(fontSize: 15, color: Colors.grey[700], height: 1.5, letterSpacing: .7),),
                SizedBox(height: 20,),
              ],
            ),
          ),
          // post photo
          Container(
            height: 240,

           child: Row(
             children: [
               // feed image left
               Expanded(
                 child: Container(
                   decoration: BoxDecoration(
                     image:DecorationImage(
                       image:AssetImage(feedImageleft),
                       fit: BoxFit.cover,
                     ),
                   ),
                   child: Container(
                     decoration: BoxDecoration(
                         gradient: LinearGradient(
                             begin: Alignment.bottomRight,
                             colors: [
                               Colors.black.withOpacity(0.6),
                               Colors.black.withOpacity(0.4),
                             ]
                         )
                     ),
                   ),
                 ),
               ),
               // feed image right
               Expanded(
                 child: Container(
                 decoration: BoxDecoration(
                   image:DecorationImage(
                     image:AssetImage(feedImageright),
                     fit: BoxFit.cover,
                   ),
                 ),
                 child: Container(
                   decoration: BoxDecoration(
                       gradient: LinearGradient(
                           begin: Alignment.bottomRight,
                           colors: [
                             Colors.black.withOpacity(0.6),
                             Colors.black.withOpacity(0.4),
                           ]
                       )
                   ),
                 ),
               ),
               ),
             ],
           ),
          ),
          SizedBox(height: 20,),
          // post footer
          Container(
            padding: EdgeInsets.only(left: 10,right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    // #addlike body
                    addLike(),
                    Transform.translate(
                        offset: Offset(-5, 0),
                        // #addlove body
                        child: addLove(),
                    ),
                    SizedBox(width: 5,),
                    Text("2.5K", style: TextStyle(fontSize: 15, color: Colors.grey[800]),)
                  ],
                ),
                Text("400 Comments", style: TextStyle(fontSize: 13, color: Colors.grey[800]),)
              ],
            ),
          ),
          SizedBox(height: 20,),
          // share comment like body
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              LikeButton(isActive: true),
              CommentButton(),
              ShareButton(),
            ],
          ),
          SizedBox(height: 10,),
        ],
      ),
    );
  }

 // #add like
  Widget addLike() {
    return Container(
      width: 25,
      height: 25,
      decoration: BoxDecoration(
          color: Colors.blue,
          shape: BoxShape.circle,
          border: Border.all(color: Colors.white70)
      ),
      child: Center(
        child: Icon(Icons.thumb_up, size: 12, color: Colors.white),
      ),
    );
  }
  // #add love
  Widget addLove() {
    return Container(
      width: 25,
      height: 25,
      decoration: BoxDecoration(
          color: Colors.red,
          shape: BoxShape.circle,
          border: Border.all(color: Colors.white70)
      ),
      child: Center(
        child: Icon(Icons.favorite, size: 12, color: Colors.white),
      ),
    );
  }
  // #like button
  Widget LikeButton({isActive}) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.thumb_up, color: isActive ? Colors.blue : Colors.grey.shade600, size: 18,),
            SizedBox(width: 5,),
            Text("Like", style: TextStyle(color: isActive ? Colors.blue : Colors.grey.shade600),)
          ],
        ),
      ),
    );
  }
  // #comment button
  Widget CommentButton() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.chat, color: Colors.grey.shade600, size: 18),
            SizedBox(width: 5,),
            Text("Comment", style: TextStyle(color: Colors.grey.shade600),)
          ],
        ),
      ),
    );
  }
  // #share button
  Widget ShareButton() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.share, color: Colors.grey.shade600, size: 18),
            SizedBox(width: 5,),
            Text("Share", style: TextStyle(color: Colors.grey.shade600),)
          ],
        ),
      ),
    );
  }
}