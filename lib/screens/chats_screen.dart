import 'package:flutter/material.dart';
import 'package:whatsapp_clone/screens/chat_details.dart';
import 'package:whatsapp_clone/utils/images.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}


class _ChatScreenState extends State<ChatScreen> {
  List arrnames = ['Esha','Awais','Ayesha','Fawad', 'Saira','Muneeb','hira','mehtab', 'kiran','Imran','sahar','yasin','Iqra','Zain'];
  List arrMessages = ['hello','hi','what going on',"hi",'hi','wth','hello','hi','hi','hello','hello jee','jee','ji','hukm?'];
  List arrTime=['12:00 AM','07:00 PM','11:00 AM','06:00 PM','10:00 AM','09:00 PM','10:00 AM','04:00 PM','08:00 AM','03:00 PM','07:00 AM','02:00 PM','12:00 AM','01:00 PM'];
  List arrImages=[
    AssetImage(AvatarImages.eshaImage),
    AssetImage(AvatarImages.awaisImage),
    AssetImage(AvatarImages.ayeshaImage),
    AssetImage(AvatarImages.fawadImage),
    AssetImage(AvatarImages.sairaImage),
    AssetImage(AvatarImages.muneebImage),
    AssetImage(AvatarImages.hiraImage),
    AssetImage(AvatarImages.mehtabImage),
    AssetImage(AvatarImages.kiranImage),
    AssetImage(AvatarImages.imranImage),
    AssetImage(AvatarImages.saharImage),
    AssetImage(AvatarImages.yasinImage),
    AssetImage(AvatarImages.iqraImage),
    AssetImage(AvatarImages.zainImage),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: arrnames.length,
        itemBuilder: (context,index){
      return ListTile(
        leading: CircleAvatar(backgroundImage: arrImages[index]  ,),
        title: Text(arrnames[index]),
        subtitle: Text(arrMessages[index]),
        trailing: Text(arrTime[index]),
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=> ChatDetails()));
        },
      );
        //
        },
    );
    
  }
}
