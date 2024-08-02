import 'package:flutter/material.dart';
import 'package:whatsapp/whatsapp_page.dart';

void main()
{
  runApp(Whatsapp());
}
class Whatsapp extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     debugShowCheckedModeBanner: false,
     home: Clone(),
   );
  }

}