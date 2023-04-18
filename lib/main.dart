import 'package:counter_app/countel/providel/counter_providel.dart';
import 'package:counter_app/countel/view/ui.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
void main()
{
  runApp(
    ChangeNotifierProvider(
      create: (context) => ProviderConter(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/':(context) => Home_Screen(),
        },
      ),
    )
  );
}
