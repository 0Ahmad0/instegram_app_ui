import 'package:flutter/material.dart';
import 'package:instgram/screens/on_click.dart';

class ThierStoryCircle extends StatelessWidget {
  final String imagepath;
  final String text;

  const ThierStoryCircle({Key key, this.imagepath, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(
            padding: EdgeInsets.all(2.0),
            margin: EdgeInsets.symmetric(horizontal: 1.0),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.orange,width: 1.9),
              shape: BoxShape.circle
            ),
            child: GestureDetector(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>
                    OnClick(imageView: imagepath,text: text,)
                ));
              },
              child: CircleAvatar(
                backgroundColor: Colors.blue,
                radius: MediaQuery.of(context).size.width * 0.09,
                backgroundImage: AssetImage(imagepath),
              ),
            ),
          ),
        ),
        Text(text,style: TextStyle(fontSize: MediaQuery.of(context).size.width * 0.035),)
      ],
    );
  }
}
