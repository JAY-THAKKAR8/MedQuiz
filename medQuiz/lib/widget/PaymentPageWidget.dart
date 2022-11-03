import 'package:flutter/material.dart';
import 'package:medquiz/utility/app_assets.dart';

class PaymentPageWidget extends StatelessWidget {
  const PaymentPageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.symmetric(vertical: 10),
      decoration: const BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
          color: Colors.black26,
          offset: Offset(
            5.0,
            5.0,
          ),
          blurRadius: 10.0,
          spreadRadius: 2.0,
        ), //B
      ]),
      child: Row(
        children: [
          Container(
            height: 70,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
            ),
            child: Image(image: ExactAssetImage(AppAssets.medquizicon)),
          ),
          // CircleAvatar(
          //   radius: 25.0,
          //   backgroundImage: ExactAssetImage(AppAssets.medquizicon),
          // ),
          const SizedBox(
            width: 10,
          ),
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: const [
                    Expanded(
                      child: Text(
                        '39,89€ ',
                        maxLines: 1,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Text(
                      '13/10/22',
                      maxLines: 1,
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                          fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  'quiz test is just start Kumar' * 12,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
