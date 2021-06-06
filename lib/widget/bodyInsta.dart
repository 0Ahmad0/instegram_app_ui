
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instgram/screens/on_click.dart';

class BodyInsta extends StatelessWidget {
  final String imageup;
  final String textupanddounLike;
  final String imagebody;
  final String numberLikes;
  final String numberComments;
  final String imageYourComment;
  final String hourAgo;

  const BodyInsta({Key key, this.imageup, this.textupanddounLike, this.imagebody, this.numberLikes, this.numberComments, this.imageYourComment, this.hourAgo}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(color: Colors.black38),
                  BoxShadow(color: Colors.black38),
                ]
            ),
            padding: EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.baseline,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    GestureDetector(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>
                            OnClick(imageView: imageup,text: textupanddounLike,)
                        ));
                      },
                      child: CircleAvatar(
                        backgroundImage: AssetImage(imageup),
                      ),
                    ),
                    SizedBox(width: 10.0,),
                    Text(textupanddounLike),
                  ],
                ),
                Icon(FontAwesomeIcons.list),
              ],
            ),
          ),
          GestureDetector(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>
                  OnClick(imageView: imagebody,text: textupanddounLike,)
              ));
            },
            child: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.4,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(imagebody),
                  )
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(8.0),
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.22,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.favorite,color: Colors.red[700],),
                        SizedBox(width: 8.0,),
                        Icon(FontAwesomeIcons.comments,),
                        SizedBox(width: 8.0,),
                        Icon(FontAwesomeIcons.telegramPlane,),
                      ],
                    ),
                    Icon(FontAwesomeIcons.save)
                  ],
                ),
                SizedBox(height: 5.0,),
                Text(numberLikes),
                SizedBox(height: 2.0,),
                Text(textupanddounLike),
                SizedBox(height: 2.0,),
                Text('View all $numberComments Comment',style: TextStyle(fontSize: 12.0,color: Colors.black38),),
                SizedBox(height: 8.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        GestureDetector(
                          onTap: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>
                                OnClick(imageView: imageYourComment,text: textupanddounLike,)
                            ));
                            },
                          child: CircleAvatar(
                            radius: 15,
                            backgroundImage: AssetImage(imageYourComment),
                          ),
                        ),
                        SizedBox(width: 15.0,),
                        Text('Add a comment...',style: TextStyle(fontSize: 12.0,color: Colors.black38),)
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.favorite,size: 12,color: Colors.red[800],),
                        Icon(FontAwesomeIcons.solidHandSpock,size: 12,color: Colors.yellow,),
                        Icon(Icons.add_circle_outline,size: 12,),
                      ],
                    )
                  ],
                ),
                SizedBox(height: 8.0,),
                Text(hourAgo),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

