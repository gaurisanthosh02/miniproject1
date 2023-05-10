import 'package:flutter/material.dart';

import 'size_config.dart';
import 'categories.dart';
import 'discount_banner.dart';
import 'package:projects/pages/front_page.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            FrontPage(),
            SizedBox(height: 10),
            //DiscountBanner(),
            Categories(),

          ],
        ),
      ),
    );
  }
}
