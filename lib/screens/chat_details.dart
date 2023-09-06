import 'package:bubble/bubble.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/screens/message_page.dart';
import 'package:whatsapp_clone/utils/app_colors.dart';
import 'package:whatsapp_clone/utils/images.dart';


class ChatDetails extends StatefulWidget {
  const ChatDetails({Key? key}) : super(key: key);

  @override
  State<ChatDetails> createState() => _ChatDetailsState();
}

class _ChatDetailsState extends State<ChatDetails> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.whatsappColor,
        titleSpacing: 0.0,
        title: Row(
          children: [
            CircleAvatar(backgroundImage: AssetImage(AvatarImages.iqraImage),),
            SizedBox(width: 15,),
            Text('Iqra')
          ],
        ),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.video_call)),
          IconButton(onPressed: (){}, icon: Icon(Icons.call)),
          IconButton(onPressed: (){}, icon: Icon(Icons.more_vert)),
        ],
      ),
      body: Column(
        children: [
          Expanded(child: Chat()),
          Container(
            alignment: Alignment.bottomCenter,
            child: Flexible(child: TextFormField(
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                  borderSide: BorderSide(color: Colors.white),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                  borderSide: BorderSide(color: Colors.white),
                ),
                hintText: 'Type your message',
              ),
            )),
          )
        ],
      )
    );
  }
}
