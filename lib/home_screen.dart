import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_project/postModel.dart';
import 'package:new_project/top_bar.dart';
import 'package:new_project/userModel.dart';


class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: new BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,
        items: <BottomNavigationBarItem>[
          new BottomNavigationBarItem(
              title: new Text(''),
              icon: new Icon(Icons.home,color: Colors.white,size: 25)),
          new BottomNavigationBarItem(
              title: new Text(''),
              icon: new Icon(Icons.people,color: Colors.white,size: 25)),
          new BottomNavigationBarItem(
              title: new Text(''),
              icon: new Icon(Icons.play_circle_filled,color: Colors.white,size: 25)),
          new BottomNavigationBarItem(
              title: new Text(''),
              icon: new Icon(Icons.notifications,color: Colors.white,size: 25)),
          new BottomNavigationBarItem(
              title: new Text(''),
              icon: new Icon(Icons.select_all,color: Colors.white,size: 25,)),
        ],
      ),
      body: Column(
       children: [
         TopBar(),
//         SizedBox(height: 10,),
         Expanded(child: HomeScreen()),
//         Expanded(child: BottonBar())
       ],
      ),
    );
  }
}




class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<UserDetails> userStory = [
    UserDetails(
        name: 'Community',
        imageUrl:
            'https://assets.forwardcdn.com/images/cropped/axe-1531828722.jpg',
        description: 'rftyguihcojsaok;'),
    UserDetails(
      name: 'Google',
      imageUrl:
          'https://assets.forwardcdn.com/images/cropped/axe-1531828722.jpg',
      description: 'sdrtfgyuhijocks',
    ),
    UserDetails(
      name: 'Dart',
      imageUrl:
          'https://images.unsplash.com/photo-1535370976884-f4376736ab06?ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=80',
      description: 'sdtrfgyuhijok',
    ),
    UserDetails(
      name: 'Dart',
      imageUrl: 'https://wallpaperplay.com/walls/full/7/c/f/34782.jpg',
      description: 'esrdtfgyhuij',
    ),
    UserDetails(
      name: 'Dart',
      imageUrl:
          'https://pbs.twimg.com/profile_images/779305023507271681/GJJhYpD2_400x400.jpg',
      description: 'ersdthfgyjuhki',
    ),
    UserDetails(
      name: 'Dart',
      imageUrl:
          'https://d33wubrfki0l68.cloudfront.net/495c5afa46922a41983f6442f54491c862bdb275/67c35/static/images/wallpapers/playground-07.png',
      description: 'setdrfgyuh',
    ),
  ];

  List<PostModel> postModel=[
    PostModel(
      imageUrl:  'https://assets.forwardcdn.com/images/cropped/axe-1531828722.jpg',
      name: "sanjay",
      description:'Oh wow! Great looking image 😍',
      postImage: 'https://assets.forwardcdn.com/images/cropped/axe-1531828722.jpg',
      times: "22/1/2020,12.00 pm"

    ),
    PostModel(
        imageUrl:  'https://assets.forwardcdn.com/images/cropped/axe-1531828722.jpg',
        name: "sanjay",
        description:'Oh wow! Great looking image 😍',
        postImage: 'https://assets.forwardcdn.com/images/cropped/axe-1531828722.jpg',
        times: "22/1/2020,12.00 pm"
    ),
    PostModel(
        imageUrl:  'https://assets.forwardcdn.com/images/cropped/axe-1531828722.jpg',
        name: "sanjay",
        description:'Oh wow! Great looking image 😍',
        postImage: 'https://assets.forwardcdn.com/images/cropped/axe-1531828722.jpg',
        times: "22/1/2020,12.00 pm"
    ),
    PostModel(
        imageUrl:  'https://assets.forwardcdn.com/images/cropped/axe-1531828722.jpg',
        name: "sanjay",
        description:'Oh wow! Great looking image 😍',
        postImage: 'https://assets.forwardcdn.com/images/cropped/axe-1531828722.jpg',
        times: "22/1/2020,12.00 pm"
    ),
    PostModel(
        imageUrl:  'https://assets.forwardcdn.com/images/cropped/axe-1531828722.jpg',
        name: "sanjay",
        description:'Oh wow! Great looking image 😍',
        postImage: 'https://assets.forwardcdn.com/images/cropped/axe-1531828722.jpg',
        times: "22/1/2020,12.00 pm"
    ),
  ];

  int postIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: Container(
      margin: EdgeInsets.only(top: 20),
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[

//            TopBar(),
            userStoryWidget(),
            writePostWidget(),listingComponent()
          ],
        ),
      ),
    ));
  }

  SizedBox _buildStoryListView() {
    return SizedBox(
      height: 150.0,
      child: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: userStory.length,
          itemExtent: 100.0,
          itemBuilder: (context, index) {
            var item = userStory[index];
            return Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 4.0, vertical: 4.0),
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      item.imageUrl,
                    ),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                      Colors.black26,
                      BlendMode.darken,
                    ),
                  ),
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.grey,
                ),
                child: Column(
//                crossAxisAlignment: CrossAxisAlignment.start,
//                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.only(top: 70),
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.green, width: 2),
                          image: DecorationImage(
                              image: NetworkImage(
                            'https://iisy.fi/wp-content/uploads/2018/08/user-profile-male-logo.jpg',
                          ))),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          item.name,
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }



  Widget userStoryWidget() {
    return Stack(
      children: [
        Container(
//        height: 250,
          margin: EdgeInsets.only(left: 20, top: 20, right: 20, bottom: 30),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15), color: Colors.black),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 20, left: 20),
                child: Text(
                  "Recently Joined",
                  style: TextStyle(fontSize: 10, color: Colors.white),
                ),
              ),
//            SizedBox(height: 10,),
              Divider(
                color: Colors.white,
                indent: 20,
                endIndent: 20,
                thickness: 1,
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 150,
                child: _buildStoryListView(),
              ),

              SizedBox(
                height: 20,
              )
            ],
          ),
        ),
        Positioned(
//         right: 0,
          top: 150,
          left: 320,
          child: Container(
            height: 30,
            width: 30,
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: Colors.green),
            child: Icon(
              Icons.keyboard_arrow_right,
              color: Colors.white,
              size: 30,
            ),
          ),
        ),
      ],
    );
  }

  Widget writePostWidget() {
    return Container(
      margin: EdgeInsets.only(
        left: 20,
        right: 20,
        top: 20,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
              offset: const Offset(0, 5),
              color: Colors.black.withOpacity(.05),
              blurRadius: 12,
              spreadRadius: 0),
        ],
      ),
      child: Material(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(
                  color: Colors.black, borderRadius: BorderRadius.circular(10)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                      onTap: () {
                        setState(() {
                          postIndex = 0;
                        });
                      },
                      child: Container(
                          child: postCommon(
                              postIndex == 0 ? Colors.green : Colors.black,
                              Icons.photo,
                              "image/video"))),
                  InkWell(
                      onTap: () {
                        setState(() {
                          postIndex = 1;
                        });
                      },
                      child: Container(
                          child: postCommon(
                              postIndex == 1 ? Colors.green : Colors.black,
                              Icons.tag_faces,
                              "feeling activity"))),
                  InkWell(
                      onTap: () {
                        setState(() {
                          postIndex = 2;
                        });
                      },
                      child: Container(
                          child: postCommon(
                              postIndex == 2 ? Colors.green : Colors.black,
                              Icons.insert_invitation,
                              "tag friends")))
                ],
              ),
            ),
            writePostTextField(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              child: Divider(
                color: Colors.grey,
                thickness: 1,
              ),
            ),
            Container(
              width:  double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(10)
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: Text("Post",textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize: 10),),
              ),
            ),
            SizedBox(height: 20,)
          ],
        ),
      ),
    );
  }

  Widget writePostTextField() {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.only(left: 30, right: 20, top: 20),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.20),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    TextFormField(
                      onTap: () {
                        setState(() {
//                          _isDescriptionTap = true;
                        });
                      },

                      style: TextStyle(fontSize: 10, color: Colors.black),
//                      focusNode: descriptionFocus,
//                      controller: _descriptionController,
                      maxLines: 5,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "share Whats new",
//                        hintStyle: Style.kyuBookTextStyle(
//                          context,
//                          textSize: 13,
//                          height: 1.29,
//                          color: ColorsBase.ligtGreyTextColor,
//                          fontFamily: StringObject.fontDMSansRegular,
//                        ),
                        // errorText: channelProvider.descriptionError,
                        alignLabelWithHint: true,
                      ),
                      onChanged: (value) {
//                        channelProvider.getChannelDescription(value);
                      },
                    ),
                  ],
                )),
          ),
        ),
        Positioned(
          top: 12,
          left: 10,
          child: Container(
            child: CircleAvatar(
              radius: 15,
              backgroundColor: Colors.black,
            ),
          ),
        ),
        Positioned(
          left: 35,
          top: 12,
//          bottom: 100,
          child: Container(
            height: 10,
            width: 10,
            decoration: BoxDecoration(
                color: Colors.green,
                border: Border.all(color: Colors.white, width: 2),
                shape: BoxShape.circle),
          ),
        ),
      ],
    );
  }

  Widget postCommon(Color color, IconData icon, String text) {
    return Container(
//      width: 50,
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(
              postIndex == 0 ? 10 : 0,
            ),
            bottomLeft: Radius.circular(postIndex == 0 ? 10 : 0),
            topRight: Radius.circular(postIndex == 2 ? 10 : 0),
            bottomRight: Radius.circular(postIndex == 2 ? 10 : 0),
          )),
      child: Padding(
        padding: const EdgeInsets.only(left: 13, top: 5, bottom: 5),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: Colors.white,
              size: 15,
            ),
            SizedBox(
              width: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 1),
              child: Text(
                text,
                style: TextStyle(color: Colors.white, fontSize: 10),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget listingComponent(){
    return Container(
      margin: EdgeInsets.only(
        left: 20,
        right: 20,
        top: 20,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
              offset: const Offset(0, 5),
              color: Colors.black.withOpacity(.05),
              blurRadius: 12,
              spreadRadius: 0),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.all(20),
        child: ListView.separated(shrinkWrap: true,
//            padding: EdgeInsets.only(top: 30),
            itemCount: postModel.length,scrollDirection: Axis.vertical,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (BuildContext context,int index){

          return Container(
            height: 360,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               Row(
                 mainAxisAlignment: MainAxisAlignment.start,
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   CircleAvatar(
                     radius: 15,
                     backgroundImage: NetworkImage(postModel[index].imageUrl),
                   ),
                   SizedBox(width: 8,),
                   Column(
                     mainAxisAlignment: MainAxisAlignment.start,
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Text(postModel[index].name,style: TextStyle(color: Colors.black,fontSize: 15),),
                       SizedBox(height: 4,),
                       Text(postModel[index].name,style: TextStyle(color: Colors.grey,fontSize: 10),)
                     ],
                   ),
                   Spacer(),
                   Icon(Icons.more_vert,
                   size: 20,)
                 ],
               ),
                
                SizedBox(height: 10,),
                Text(postModel[index].description,style: TextStyle(color: Colors.black,fontSize: 15),),
                SizedBox(height: 10,),
                Container(
                  height: 220,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      
                      image: NetworkImage(postModel[index].postImage)
                    )
                  ),
                ),
                SizedBox(height: 30,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.location_on,color: Colors.black,size: 30,
                    ),
                    Icon(
                      Icons.message,color: Colors.black,size: 30,
                    ),
                    Icon(
                      Icons.refresh,color: Colors.black,size: 30,
                    ),
                    Icon(
                      Icons.share,color: Colors.black,size: 30,
                    )
                  ],
                )
              ],
            ),
          );
        },
        separatorBuilder: (BuildContext context,int index){
          return Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Divider(
              thickness: 1,
              color: Colors.grey,
            ),
          );
        },
        ),
      ),
    );
  }
}
