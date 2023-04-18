import 'package:counter_app/countel/providel/counter_providel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Home_Screen extends StatefulWidget {
  const Home_Screen({Key? key}) : super(key: key);

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        title: Consumer<ProviderConter>(builder: (context, value, child) {
          return Text(("${value.no}"));
        },),
        centerTitle: true,
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
            TextButton(onPressed: () {



              Provider.of<ProviderConter>(context,listen: false).add();
            }, child: Text("+",style: TextStyle(fontSize: 30),)),
            TextButton(onPressed: () {


              Provider.of<ProviderConter>(context,listen: false).sub();

            }, child: Text("-",style: TextStyle(fontSize: 30),)),
            TextButton(onPressed: () {



              Provider.of<ProviderConter>(context,listen: false).mut2();
            }, child: Text("2x",style: TextStyle(fontSize: 30),)),
            TextButton(onPressed: () {



              Provider.of<ProviderConter>(context,listen: false).mut3();
            }, child: Text("3x",style: TextStyle(fontSize: 30),)),
            TextButton(onPressed: () {


              Provider.of<ProviderConter>(context,listen: false).reset();
              }, child: Text("Reset",style: TextStyle(fontSize: 30),)),

            
          ],
        ),
      ),
      
      
    ),);
  }
}
