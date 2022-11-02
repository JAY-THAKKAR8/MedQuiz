import 'package:flutter/material.dart';
import 'package:medquiz/utility/app_assets.dart';

class PaymentPageWidget extends StatelessWidget {
  const PaymentPageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      child: Card(
        elevation: 10,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 25.0,
              backgroundImage: ExactAssetImage(AppAssets.medquizicon),
            ),
            Flexible(
              child: Column(
                children: [
                  Row(
                    children: const [
                      Expanded(
                        child: Text(
                          'Avik Kumar',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      Text(
                        '13/10/22',
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                  const Text(
                    'Avik Kumar',
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
