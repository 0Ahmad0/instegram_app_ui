
import 'package:flutter/material.dart';
import 'package:instgram/screens/on_click.dart';

class YourStoryCircular extends StatelessWidget {
  final String imagePath;
  final String text;

  const YourStoryCircular({Key key, this.imagePath, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: GestureDetector(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>
                  OnClick(imageView: imagePath,text: text,)
              ));
            },
            child: CircleAvatar(
              backgroundColor: Colors.blue,
              radius: MediaQuery.of(context).size.width * 0.09,
              backgroundImage: AssetImage(imagePath),
            ),
          ),
        ),
        Text(text,style: TextStyle(fontSize: MediaQuery.of(context).size.width * 0.035),)
      ],
    );
  }
}

