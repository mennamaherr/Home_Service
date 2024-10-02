import 'package:flutter/material.dart';
import 'package:homeservice/models/cardinfo_model.dart';
import 'package:homeservice/widgets/selectD&T_widget.dart';

class BockingsScreen extends StatelessWidget {
  BockingsScreen({super.key, this.dateTime, required this.mycard});
  CardinfoModel mycard;

  DateTime? dateTime;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            VerticalDivider(
              thickness: 4,
            ),
            Text('Bookings'),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(children: [
              Container(
                height: 20,
                width: 4,
                decoration: BoxDecoration(
                    color: Color(0xffCABDFF),
                    borderRadius: BorderRadius.circular(4)),
              ),
              SizedBox(
                width: 12,
              ),
              Text(
                'Bookings',
                style: TextStyle(fontSize: 24, fontFamily: 'Inter'),
              )
            ]),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12),
              child: Text(
                'about',
                style: TextStyle(fontFamily: 'Inter', fontSize: 15),
              ),
            ),
            SizedBox(height: 15),
            Container(
              padding: EdgeInsets.symmetric(vertical: 5),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black12, blurRadius: 4, spreadRadius: 2)
                  ]),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  ListTile(
                    title: Text( 'Selected Service'
                    ,style: TextStyle(fontFamily: 'inter',fontWeight: FontWeight.bold ),),
                    subtitle: Text(
                '  ${dateTime?.day}-${dateTime?.month}-${dateTime?.year}  ${dateTime?.toLocal().hour}:${dateTime?.toLocal().minute.toString()} ${mycard.cost} ${mycard.service}',
                style: TextStyle(
                    fontSize: 14,
                    color: Color.fromARGB(231, 26, 29, 31),
                    fontWeight: FontWeight.bold),
              ),
              trailing: CircleAvatar(radius: 25,backgroundImage: AssetImage('assets/AC_Service/Ac_checkUp.jpeg'),),
                  ),
                  Padding(padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Divider(thickness: 1,height: 20,),
                  )
                ],
              ),),
            ),
          ],
        ),
      ),
    );
  }
}
//  Container(
//               height: 100,
//               width: 100,
//               child: Text(
//                 '  ${dateTime?.day}-${dateTime?.month}-${dateTime?.year}  ${dateTime?.toLocal().hour}:${dateTime?.toLocal().minute.toString()} ${mycard.cost} ${mycard.service}',
//                 style: TextStyle(
//                     fontSize: 14,
//                     color: Color.fromARGB(231, 26, 29, 31),
//                     fontWeight: FontWeight.bold),
//               ),
//             ),