import 'package:flutter/material.dart';

class Clone extends StatelessWidget
{
  List<Map<String, dynamic>> mData = [
    // Each map represents a person with their name, mobile number, and background color.
    {'name': 'Abhitabh Bacchan', 'mobNo': '9898989898', 'bgColor': Colors.orange,'Pic':'assets/images/abhitabh.jpg'},
    {'name': 'Amit Ahah', 'mobNo': '9977997799', 'bgColor': Colors.indigo,'Pic':'assets/images/amit shah.jpg'},
    {'name': 'Atal Bihari Vajpaye', 'mobNo': '8877887788', 'bgColor': Colors.blue,'Pic':'assets/images/atal ji.jpg'},
    {'name': 'Deepika Paducoan', 'mobNo': '6576567665', 'bgColor': Colors.pink,'Pic':'assets/images/deepika.jpg'},
    {'name': 'Elon Musk', 'mobNo': '9898989898', 'bgColor': Colors.orange,'Pic':'assets/images/elon musk.jpg'},
    {'name': 'Jasprit Bumarah', 'mobNo': '9977997799', 'bgColor': Colors.indigo,'Pic':'assets/images/bumrah.jpg'},
    {'name': 'Arawind Kejariwal', 'mobNo': '8877887788', 'bgColor': Colors.blue,'Pic':'assets/images/kejriwal.jpg'},
    {'name': 'Mahendra Singh Dhoni', 'mobNo': '6576567665', 'bgColor': Colors.pink,'Pic':'assets/images/ms.jpg'},
    {'name': 'Narendra Modi', 'mobNo': '9898989898', 'bgColor': Colors.orange,'Pic':'assets/images/Modi.jpg'},
    {'name': 'Ram Charan', 'mobNo': '9977997799', 'bgColor': Colors.indigo,'Pic':'assets/images/ram charan.jpg'},
    {'name': 'Rohit Sharma', 'mobNo': '8877887788', 'bgColor': Colors.blue,'Pic':'assets/images/rohit.jpg'},
    {'name': 'Sachin Tendulkar', 'mobNo': '6576567665', 'bgColor': Colors.pink,'Pic':'assets/images/sachin.jpg'},
    {'name': 'Shahrukh Khan', 'mobNo': '9898989898', 'bgColor': Colors.orange,'Pic':'assets/images/shahrukh khan.jpg'},
    {'name': 'Surya Kumar Yadav', 'mobNo': '9977997799', 'bgColor': Colors.indigo,'Pic':'assets/images/surya.jpg'},
    {'name': 'SuperStar Vijay', 'mobNo': '8877887788', 'bgColor': Colors.blue,'Pic':'assets/images/vijay.jpg'},
    {'name': 'Virat Kohli', 'mobNo': '6576567665', 'bgColor': Colors.pink,'Pic':'assets/images/virat.jpg'},
  ];
  @override
  Widget build(BuildContext context) {
   return Scaffold(backgroundColor: Color(0XFFF2F6F2),
     appBar: AppBar(title: Center(child: Text("WhatsApp",style: TextStyle(fontSize: 35,color: Colors.green,fontWeight: FontWeight.bold),
     )
     ),
       backgroundColor: Colors.blueGrey,),
     body: ListView.builder(itemCount: mData.length,itemBuilder: (_,index){
       return Container(
         width: 100,
         height: 100,
         color: mData[index]['color'],
         child: Column(
           children: [
             Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Padding(
                     padding: const EdgeInsets.all(10.0),
                     child: Container(
                       width: 50,height: 50,
                       decoration: BoxDecoration(
                         image: DecorationImage(image: AssetImage(mData[index]['Pic']??"Default Value"),fit: BoxFit.cover),
                           color: Colors.blue,
                           shape: BoxShape.circle
                       ),
                     ),
                   ),
                   SizedBox(width: 21,),
                   Expanded(
                     child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [

                         Text(mData[index]['name']??"Default value",style: TextStyle(fontWeight:FontWeight.bold ),),
                         Text(mData[index]['mobNo']??"Default value",style: TextStyle(fontWeight:FontWeight.bold ),)],
                     ),
                   ),
                   Padding(
                     padding: const EdgeInsets.only(right: 10.0),
                     child: Column(
                       children: [
                         Text("11.11 Am",style: TextStyle(color: Colors.green),),
                         Container
                           (width: 20,height: 20,
                             decoration: BoxDecoration(
                                 color: Colors.green,
                                 shape: BoxShape.circle ),
                             child: Center(child: Text("2",)))
                       ],
                     ),
                   ),
                 ]),
           ],
         ),
       );},)
   );
  }

}