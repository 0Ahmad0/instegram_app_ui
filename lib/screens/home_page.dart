import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instgram/screens/on_click.dart';
import 'package:instgram/widget/bodyInsta.dart';
import 'package:instgram/widget/thierstory.dart';
import 'package:instgram/widget/yourstorycircle.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1.5,
        backgroundColor: Colors.white,
        leadingWidth: MediaQuery.of(context).size.width/2,
        leading: Expanded(
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Icon(Icons.camera_alt_outlined,color: Colors.black,),
              ),
              Expanded(child: Image(image: AssetImage('assets/images/insta_logo.png'))),
            ],
          ),
        ),
        actions: [
          Icon(Icons.tv,color: Colors.black),
          SizedBox(width: MediaQuery.of(context).size.width * 0.05,),
          Icon(Icons.send_rounded,color: Colors.black,),
          SizedBox(width: MediaQuery.of(context).size.width * 0.05,),
        ],
      ),
      bottomSheet: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height * 0.07,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(color: Colors.black38),
            BoxShadow(color: Colors.black38),
          ]
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(icon: Icon( Icons.home_filled), onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>
                  OnClick(imageView: 'assets/images/15.jpg',text: 'Ahmad Alhariri')
              ));
            }),
            IconButton(icon: Icon( Icons.search), onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>
                  OnClick(imageView: 'assets/images/05.jpg',text: 'Ahmad Alhariri')
              ));
            }),
            IconButton(icon: Icon(Icons.add_box_outlined), onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>
                  OnClick(imageView: 'assets/images/03.jpg',text: 'Ahmad Alhariri')
              ));
            }),
            IconButton(icon: Icon(Icons.favorite_border), onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>
                  OnClick(imageView: 'assets/images/08.jpg',text: 'Ahmad Alhariri')
              ));
            }),
            IconButton(icon: Icon(Icons.person_outline_rounded), onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>
                  OnClick(imageView: 'assets/images/01.jpg',text: 'Ahmad Alhariri')
              ));
            }),

          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: [
                Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.width * 0.25,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(color: Colors.black38),
                      BoxShadow(color: Colors.black38),
                    ]
                  ),child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 8.0,left: 10.0,bottom: 5.0),
                    child: Row(
                      children: [
                        YourStoryCircular(
                          imagePath: 'assets/images/15.jpg',
                          text: 'Ahmad Alhariri',
                        ),
                        ThierStoryCircle(
                          imagepath: 'assets/images/01.jpg',
                          text: 'Medoria',
                        ),
                        ThierStoryCircle(
                          imagepath: 'assets/images/02.jpg',
                          text: 'Sacaci',
                        ),
                        ThierStoryCircle(
                          imagepath: 'assets/images/03.jpg',
                          text: 'Sackii',
                        ),
                        ThierStoryCircle(
                          imagepath: 'assets/images/04.jpg',
                          text: 'Sacora',
                        ),
                        ThierStoryCircle(
                          imagepath: 'assets/images/05.jpg',
                          text: 'tSACKiNaroro',
                        ),
                        ThierStoryCircle(
                          imagepath: 'assets/images/06.jpg',
                          text: 'Khaled',
                        ),
                        ThierStoryCircle(
                          imagepath: 'assets/images/08.jpg',
                          text: 'Naroro003',
                        ),
                        ThierStoryCircle(
                          imagepath: 'assets/images/08.jpg',
                          text: 'Naroro0',
                        ),
                        ThierStoryCircle(
                          imagepath: 'assets/images/09.jpg',
                          text: 'LOFFI',
                        ),
                        ThierStoryCircle(
                          imagepath: 'assets/images/01.jpg',
                          text: 'Medoria',
                        ),
                        ThierStoryCircle(
                          imagepath: 'assets/images/05.jpg',
                          text: 'Naroto',
                        ),
                        ThierStoryCircle(
                          imagepath: 'assets/images/02.jpg',
                          text: 'Sacki00',
                        ),
                        ThierStoryCircle(
                          imagepath: 'assets/images/06.jpg',
                          text: 'Mohamed',
                        ),
                        ThierStoryCircle(
                          imagepath: 'assets/images/04.jpg',
                          text: 'Sasaki2',
                        ),
                        ThierStoryCircle(
                          imagepath: 'assets/images/06.jpg',
                          text: 'Fares',
                        ),
                      ],
                    ),
                  ),
                ),
                ),
                BodyInsta(
                imageup: 'assets/images/01.jpg',
                textupanddounLike: 'Medoria',
                imagebody: 'assets/images/01.jpg',
                numberLikes: '10k',
                numberComments: '11k',
                imageYourComment:'assets/images/15.jpg' ,
                hourAgo: '1 year'
                ),
                BodyInsta(
                imageup: 'assets/images/02.jpg',
                textupanddounLike: 'Sacaci',
                imagebody: 'assets/images/02.jpg',
                numberLikes: '388',
                numberComments: '200',
                imageYourComment:'assets/images/15.jpg' ,
                hourAgo: '1 year'
                ),
                BodyInsta(
                imageup: 'assets/images/03.jpg',
                textupanddounLike: 'Sackii',
                imagebody: 'assets/images/03.jpg',
                numberLikes: '1,388',
                numberComments: '200',
                imageYourComment:'assets/images/15.jpg' ,
                hourAgo: '6 months'
                ),
                BodyInsta(
                imageup: 'assets/images/04.jpg',
                textupanddounLike: 'Sacora',
                imagebody: 'assets/images/04.jpg',
                numberLikes: '1,038',
                numberComments: '200',
                imageYourComment:'assets/images/15.jpg' ,
                hourAgo: '4 months'
                ),
                BodyInsta(
                imageup: 'assets/images/05.jpg',
                textupanddounLike: 'SACkiNaroro',
                imagebody: 'assets/images/05.jpg',
                numberLikes: '188',
                numberComments: '100',
                imageYourComment:'assets/images/15.jpg' ,
                hourAgo: '2 months'
                ),
                BodyInsta(
                imageup: 'assets/images/06.jpg',
                textupanddounLike: 'Khaled',
                imagebody: 'assets/images/06.jpg',
                numberLikes: '388',
                numberComments: '200',
                imageYourComment:'assets/images/15.jpg' ,
                hourAgo: '1 month'
                ),
                BodyInsta(
                imageup: 'assets/images/08.jpg',
                textupanddounLike: 'Naroro003',
                imagebody: 'assets/images/08.jpg',
                numberLikes: '3,388',
                numberComments: '3k',
                imageYourComment:'assets/images/15.jpg' ,
                hourAgo: '3 day'
                ),
                BodyInsta(
                imageup: 'assets/images/08.jpg',
                textupanddounLike: 'Naroro0',
                imagebody: 'assets/images/08.jpg',
                numberLikes: '2,388',
                numberComments: '2k',
                imageYourComment:'assets/images/15.jpg' ,
                hourAgo: '2 day'
                ),
                BodyInsta(
                imageup: 'assets/images/09.jpg',
                textupanddounLike: 'LOFFI',
                imagebody: 'assets/images/09.jpg',
                numberLikes: '4,488',
                numberComments: '4,400',
                imageYourComment:'assets/images/15.jpg' ,
                hourAgo: '1 day'
                ),
                BodyInsta(
                imageup: 'assets/images/01.jpg',
                textupanddounLike: 'Medoria',
                imagebody: 'assets/images/01.jpg',
                numberLikes: '1,388',
                numberComments: '1,500',
                imageYourComment:'assets/images/15.jpg' ,
                hourAgo: '4 hour'
                ),
                BodyInsta(
                imageup: 'assets/images/05.jpg',
                textupanddounLike: 'Naroto',
                imagebody: 'assets/images/05.jpg',
                numberLikes: '1k',
                numberComments: '980',
                imageYourComment:'assets/images/15.jpg' ,
                hourAgo: '3 hour'
                ),
                BodyInsta(
                imageup: 'assets/images/02.jpg',
                textupanddounLike: 'Sacki00',
                imagebody: 'assets/images/02.jpg',
                numberLikes: '988',
                numberComments: '900',
                imageYourComment:'assets/images/15.jpg' ,
                hourAgo: '2 hour'
                ),
                BodyInsta(
                imageup: 'assets/images/06.jpg',
                textupanddounLike: 'Mohamed',
                imagebody: 'assets/images/06.jpg',
                numberLikes: '688',
                numberComments: '500',
                imageYourComment:'assets/images/15.jpg' ,
                hourAgo: '1 hour'
                ),
                BodyInsta(
                imageup: 'assets/images/04.jpg',
                textupanddounLike: 'Sasaki2',
                imagebody: 'assets/images/04.jpg',
                numberLikes: '188',
                numberComments: '400',
                imageYourComment:'assets/images/15.jpg' ,
                hourAgo: '56 min'
                ),
                BodyInsta(
                imageup: 'assets/images/06.jpg',
                textupanddounLike: 'Fares',
                imagebody: 'assets/images/06.jpg',
                numberLikes: '38',
                numberComments: '10',
                imageYourComment:'assets/images/15.jpg' ,
                hourAgo: '4 min'
                ),

              ],
            ),
          ],
        ),
      )
    );
  }
}
