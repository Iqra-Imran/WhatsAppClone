import 'package:flutter/material.dart';
import 'package:whatsapp_clone/utils/images.dart';

class GroupScreen extends StatefulWidget {
  const GroupScreen({Key? key}) : super(key: key);

  @override
  State<GroupScreen> createState() => _GroupScreenState();
}

class _GroupScreenState extends State<GroupScreen> {
  List arrnames = [
    '3 idiots',
    'Uni group',
    'Notification group',
    'Zero to Hero',
    'FYP',
    'MAD',
    'Presentation group',
    'school group',
    'free courses'
  ];
  List arrMessages = [
    'hello',
    'hi',
    'what going on',
    'hi',
    'hello',
    'hello jee',
    'jee',
    'ji',
    'new one'
  ];

  List arrImages = [
    AssetImage(AvatarImages.idiotsImg),
    AssetImage(AvatarImages.uniImg),
    AssetImage(AvatarImages.notificationImg),
    AssetImage(AvatarImages.zeroToHeroImg),
    AssetImage(AvatarImages.FYPImg),
    AssetImage(AvatarImages.MADImg),
    AssetImage(AvatarImages.presentationImg),
    AssetImage(AvatarImages.schoolImg),
    AssetImage(AvatarImages.freeCourseImg),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: arrnames.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: arrImages[index],
            ),
            title: Text(arrnames[index]),
            subtitle: Text(arrMessages[index]),
          );
        });
  }
}
