import 'package:bubble/bubble.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class Chat extends StatefulWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  ScrollController _myScrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    SchedulerBinding.instance.addPostFrameCallback((_) {
      _myScrollController.jumpTo(_myScrollController.position.maxScrollExtent);
    });
    return ListView(
      controller: _myScrollController,
      children: [
        Bubble(
          alignment: Alignment.center,
          color: Color.fromRGBO(212, 234, 244, 1.0),
          child: Text('TODAY', textAlign: TextAlign.center, style: TextStyle(fontSize: 11.0)),
        ),
        Bubble(
          margin: BubbleEdges.only(top: 10),
          alignment: Alignment.topRight,
          nip: BubbleNip.rightTop,
          color: Color.fromRGBO(225, 255, 199, 1.0),
          child: Text('Hello, World!', textAlign: TextAlign.right),
        ),
        Bubble(
          margin: BubbleEdges.only(top: 10),
          alignment: Alignment.topLeft,
          nip: BubbleNip.leftTop,
          child: Text('Hi, developer!'),
        ),
        Bubble(
          margin: BubbleEdges.only(top: 10),
          alignment: Alignment.topRight,
          nip: BubbleNip.rightBottom,
          color: Color.fromRGBO(225, 255, 199, 1.0),
          child: Text('Hello, World!', textAlign: TextAlign.right),
        ),
        Bubble(
          margin: BubbleEdges.only(top: 10),
          alignment: Alignment.topLeft,
          nip: BubbleNip.leftBottom,
          child: Text('Hi, developer!'),
        ),
        Bubble(
          margin: BubbleEdges.only(top: 10),
          alignment: Alignment.topRight,
          nip: BubbleNip.rightTop,
          color: Color.fromRGBO(225, 255, 199, 1.0),
          child: Text('Hello, World!', textAlign: TextAlign.right),
        ),
        Bubble(
          margin: BubbleEdges.only(top: 10),
          alignment: Alignment.topLeft,
          nip: BubbleNip.leftTop,
          child: Text('Hi, developer!'),
        ),
        Bubble(
          margin: BubbleEdges.only(top: 10),
          alignment: Alignment.topRight,
          nip: BubbleNip.rightBottom,
          color: Color.fromRGBO(225, 255, 199, 1.0),
          child: Text('Hello, World!', textAlign: TextAlign.right),
        ),
        Bubble(
          margin: BubbleEdges.only(top: 10),
          alignment: Alignment.topLeft,
          nip: BubbleNip.leftBottom,
          child: Text('Hi, developer!'),
        ),
        Bubble(
          margin: BubbleEdges.only(top: 10),
          alignment: Alignment.topRight,
          nip: BubbleNip.rightTop,
          color: Color.fromRGBO(225, 255, 199, 1.0),
          child: Text('Hello, World!', textAlign: TextAlign.right),
        ),
        Bubble(
          margin: BubbleEdges.only(top: 10),
          alignment: Alignment.topLeft,
          nip: BubbleNip.leftTop,
          child: Text('Hi, developer!'),
        ),
        Bubble(
          margin: BubbleEdges.only(top: 10),
          alignment: Alignment.topRight,
          nip: BubbleNip.rightBottom,
          color: Color.fromRGBO(225, 255, 199, 1.0),
          child: Text('Hello, World!', textAlign: TextAlign.right),
        ),
        Bubble(
          margin: BubbleEdges.only(top: 10),
          alignment: Alignment.topLeft,
          nip: BubbleNip.leftBottom,
          child: Text('Hi, developer!'),
        ),
        Bubble(
          margin: BubbleEdges.only(top: 10),
          alignment: Alignment.topRight,
          nip: BubbleNip.rightTop,
          color: Color.fromRGBO(225, 255, 199, 1.0),
          child: Text('Hello, World!', textAlign: TextAlign.right),
        ),
        Bubble(
          margin: BubbleEdges.only(top: 10),
          alignment: Alignment.topLeft,
          nip: BubbleNip.leftTop,
          child: Text('Hi, developer!'),
        ),
        Bubble(
          margin: BubbleEdges.only(top: 10),
          alignment: Alignment.topRight,
          nip: BubbleNip.rightBottom,
          color: Color.fromRGBO(225, 255, 199, 1.0),
          child: Text('Hello, World!', textAlign: TextAlign.right),
        ),
        Bubble(
          margin: BubbleEdges.only(top: 10),
          alignment: Alignment.topLeft,
          nip: BubbleNip.leftBottom,
          child: Text('Hi, developer!'),
        ),
        Bubble(
          margin: BubbleEdges.only(top: 10),
          alignment: Alignment.topRight,
          nip: BubbleNip.rightTop,
          color: Color.fromRGBO(225, 255, 199, 1.0),
          child: Text('Hello, World!', textAlign: TextAlign.right),
        ),
        Bubble(
          margin: BubbleEdges.only(top: 10),
          alignment: Alignment.topLeft,
          nip: BubbleNip.leftTop,
          child: Text('Hi, developer!'),
        ),
        Bubble(
          margin: BubbleEdges.only(top: 10),
          alignment: Alignment.topRight,
          nip: BubbleNip.rightBottom,
          color: Color.fromRGBO(225, 255, 199, 1.0),
          child: Text('Hello, World!', textAlign: TextAlign.right),
        ),
        Bubble(
          margin: BubbleEdges.only(top: 10),
          alignment: Alignment.topLeft,
          nip: BubbleNip.leftBottom,
          child: Text('Hi, developer!'),
        ),


      ],
    );
  }
}
