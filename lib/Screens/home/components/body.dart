import 'package:flutter/material.dart';
import 'package:chef_for_you/constants.dart';
import 'package:chef_for_you/models/Product.dart';
import 'package:chef_for_you/screens/details/details_screen.dart';
import 'package:getwidget/getwidget.dart';

import 'categorries.dart';
import 'item_card.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        GFCarousel(height: 200, items: [
          Image.asset('assets/images/logo.png', fit: BoxFit.fitHeight),
          Image.asset('assets/images/logo.png', fit: BoxFit.fitHeight),
          Image.asset('assets/images/logo.png', fit: BoxFit.fitHeight),
          Image.asset('assets/images/logo.png', fit: BoxFit.fitHeight),
          Image.asset('assets/images/logo.png', fit: BoxFit.fitHeight),
          Image.asset('assets/images/logo.png', fit: BoxFit.fitHeight),
        ]),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
          child: Text(
            "CHEF",
            style: Theme.of(context)
                .textTheme
                .headline5
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        Categories(),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
            child: GridView.builder(
                itemCount: products.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: kDefaultPaddin,
                  crossAxisSpacing: kDefaultPaddin,
                  childAspectRatio: 0.75,
                ),
                itemBuilder: (context, index) => ItemCard(
                      product: products[index],
                      press: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailsScreen(
                              product: products[index],
                            ),
                          )),
                    )),
          ),
        ),
      ],
    );
  }
}
