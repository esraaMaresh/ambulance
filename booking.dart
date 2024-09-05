import 'package:abmbulance/components/button.dart';
import 'package:flutter/material.dart';

Widget BookingCard({
  // required String status,
  required String name,
  required String phone,
  required String address,
  required String type,
  required String date,
  required Color statusColor,
  required String btnName,
  required Color btnColor,
}) {
  return Card(
    elevation: 2,
    child: Padding(
      padding: EdgeInsets.all(16),
      child: Row(
        children: [
          Column(
            children: [
              // Text(
              //   status,
              //   style: TextStyle(
              //     fontSize: 20,
              //     fontWeight: FontWeight.bold,
              //     color: statusColor,
              //   ),
              // ),
              SizedBox(
                height: 10,
              ),
              Text('Name: $name'),
              Text('Phone: $phone'),
              Text('Address: $address'),
              Text('Type: $type'),
              Text('Date: $date'),
              // Row(
              //   children: [
              //     button(
              //         onPressed: () {},
              //         btnName: "PENDING",
              //         btnHeight: 15,
              //         fontSize: 10,
              //         textColor: Colors.white,
              //         btnColor: Colors.yellow,
              //         btnWidth: 20),
              //   ],
              // ),
            ],
          ),
          // Container(
          //   margin: EdgeInsets.only(left: 50, bottom: 66),
          //   child: button(
          //       onPressed: () {},
          //       btnName: "PENDING",
          //       btnHeight: 25,
          //       fontSize: 14,
          //       textColor: Colors.white,
          //       btnColor: Colors.yellow,
          //       btnWidth: 120),
          // ),
          Container(
            margin: EdgeInsets.only(left: 50, bottom: 66),
            child: Container(
              width: 120,
              child: MaterialButton(
                onPressed: () {},
                elevation: 0.0,
                height: 25,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                child: Text(
                  btnName,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                color: btnColor,
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
