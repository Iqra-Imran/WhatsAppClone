import 'package:flutter/material.dart';
import 'package:whatsapp_clone/utils/app_colors.dart';
import 'package:whatsapp_clone/utils/images.dart';

class StatusScreen extends StatefulWidget {
   StatusScreen({Key? key}) : super(key: key);

  @override
  State<StatusScreen> createState() => _StatusScreenState();
}

class _StatusScreenState extends State<StatusScreen> {
  List arrnames = ['Esha','Awais','Ayesha','Fawad', 'Saira','sahar',];

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
            Text('My status',style: TextStyle(fontWeight: FontWeight.bold),)
          ],
        ),
        Divider(),
        Container(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text('Recent updated',style: TextStyle(fontWeight: FontWeight.bold),textAlign: TextAlign.left,),
            )),
        Flexible(
          child: ListView.builder(
              itemCount: arrnames.length,
              itemBuilder: (context,index) {
                return ListTile(
                  leading: CircleAvatar(backgroundImage: arrCallAvatar[index],),
                  title: Text(arrnames[index]),
                  subtitle:Text('june 11,10:30 PM'),
                trailing: null,
                );
              }
          ),
        ),
      ],
    );
  }
}
