import 'package:flutter/material.dart';
import 'package:whatsapp_clone/utils/app_colors.dart';

class MyFloatingActionButton extends StatelessWidget {
Icon myIcon;
   MyFloatingActionButton({
     required this.myIcon,
     Key? key}) : super(key: key,);



  @override
  Widget build(BuildContext context) {

    return FloatingActionButton(onPressed: (){
    print('Floating action button is clicked');
    },
    backgroundColor: AppColors.whatsappColor,
      child: Icon(myIcon as IconData?),
    );
  }
}
