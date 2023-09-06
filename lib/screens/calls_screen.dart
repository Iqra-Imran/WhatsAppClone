import 'package:flutter/material.dart';
import 'package:whatsapp_clone/utils/app_colors.dart';
import 'package:whatsapp_clone/utils/images.dart';

class CallScreen extends StatefulWidget {
  const CallScreen({Key? key}) : super(key: key);

  @override
  State<CallScreen> createState() => _CallScreenState();
}

class _CallScreenState extends State<CallScreen> {
  List arrnames = ['Esha','Awais','Ayesha','Fawad', 'Saira','sahar','yasin','Iqra','Zain'];
  List arrCallAvatar =[
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
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: CircleAvatar(backgroundColor: AppColors.whatsappColor),
            ),
            Text('Create call link',style: TextStyle(fontWeight: FontWeight.bold),)
          ],
        ),
        Divider(),
        Container(
          alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text('Recent',style: TextStyle(fontWeight: FontWeight.bold),textAlign: TextAlign.left,),
            )),
        Flexible(
          child: ListView.builder(
            itemCount: arrnames.length,
              itemBuilder: (context,index) {
                return ListTile(
                  leading: CircleAvatar(backgroundImage: arrCallAvatar[index],),
                  title: Text(arrnames[index]),
                  subtitle: Row(children: [Icon(Icons.call_missed),Text('june 11,10:30 PM')],),
                  trailing: Icon(Icons.call,color: Colors.green,),
                );
              }
          ),
        ),

      ],
    );
  }
}
