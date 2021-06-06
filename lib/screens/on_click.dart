import 'package:flutter/material.dart';

class OnClick extends StatefulWidget {
  final String imageView;
  final String text;
  OnClick({this.imageView,this.text});
  @override
  _OnClickState createState() => _OnClickState();
}

class _OnClickState extends State<OnClick> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black38,
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height,
              child: Center(
                child: Image(
                  fit: BoxFit.fill,
                  image: AssetImage(
                    widget.imageView
                  ),
                ),
              ),
            ),
          ),
          Text(widget.text,style: TextStyle(fontSize: 30),)
        ],
      ),
    );
  }
}
