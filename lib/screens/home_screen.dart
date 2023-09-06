
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/screens/calls_screen.dart';
import 'package:whatsapp_clone/screens/chats_screen.dart';
import 'package:whatsapp_clone/screens/group_screen.dart';
import 'package:whatsapp_clone/screens/status_page.dart';
import 'package:whatsapp_clone/utils/app_colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin{
  late TabController _tabController;
  final List<Tab> myTabs=<Tab>[
    const Tab(icon: Icon(Icons.person_outlined),),
    const Tab(text: 'CHATS'),
    const Tab(text: 'GROUPS'),
    const Tab(text: 'STATUS'),
    const Tab(text: 'CALLS'),
  ];
  @override
  void initState() {
    _tabController = TabController(length: 5,initialIndex: 1,vsync: this,);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.whatsappColor,
        title: const Text('WhatsApp'),
       actions: const [
      Icon(Icons.wifi),
      SizedBox(width: 20,),
      Icon(Icons.sunny),
      SizedBox(width: 20,),
      Icon(Icons.search),
      SizedBox(width: 20,),
      Icon(Icons.camera_alt),
      SizedBox(width: 20,),
      Icon(Icons.more_vert),],
      bottom: TabBar(tabs: myTabs,indicatorColor: Colors.white,controller: _tabController,indicatorSize: TabBarIndicatorSize.label,isScrollable: true,),),
      body: TabBarView(
        controller: _tabController,
        children: [
            Text('camera'),
           ChatScreen(),
            GroupScreen(),
            StatusScreen(),
            CallScreen(),
          ],
      ),
      floatingActionButton: _floatinActionButton(),
    );
      
  }

  _floatinActionButton() {
   if(_tabController.index ==1 ){
     return FloatingActionButton(
         backgroundColor: AppColors.whatsappColor,
         child: Icon(Icons.message_outlined,color: Colors.white,),
         onPressed: () => print('object'));
   }
   if(_tabController.index ==2 ){
     return FloatingActionButton(
         backgroundColor: AppColors.whatsappColor,
         child: Icon(Icons.add,color: Colors.white,),
         onPressed: () => print('object'));
   }
   if(_tabController.index ==3 ){
     return FloatingActionButton(
         backgroundColor: AppColors.whatsappColor,
         child: Icon(Icons.camera_alt,color: Colors.white,),
         onPressed: () => print('object'));
   }if(_tabController.index ==4 ){
     return FloatingActionButton(
         backgroundColor: AppColors.whatsappColor,
         child: Icon(Icons.add_ic_call_outlined,color: Colors.white,),
         onPressed: () => print('object'));
   }
    else{
      return null;
    }
  }
}