import 'package:flutter/material.dart';
import 'package:tr_store/core/size_config.dart';
import 'package:tr_store/core/styles.dart';

class CustomMyCartFooter extends StatelessWidget {
  const CustomMyCartFooter({super.key, required this.checkOut, required this.price});
  final Function() checkOut;
  final int price;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 30),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10,),
              Text(
                  'Total price',
                  style: ibmPlexSansBSStyle(Colors.grey),),
              Text(
                  '\u0024$price',
                  style: ibmPlexSansBSStyle(Colors.black),),
            ],
          ),
          MaterialButton(
              minWidth: SizeConfig.width! * 0.6,
              height: 44,
              color: Theme.of(context).primaryColorLight,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
              onPressed: (){},
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Check out',style: ibmPlexSansBSStyle(Colors.white),),
                  SizedBox(width: SizeConfig.width! * 0.15,),
                  const Icon(Icons.arrow_forward,color: Colors.white,),
                ],
              )),
        ],
      ),
    );
  }
}
