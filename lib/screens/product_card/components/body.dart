import 'package:flutter/material.dart';
import 'package:medxcart/constants.dart';
import 'package:medxcart/models/Product.dart';
import 'product_card.dart';
import 'package:medxcart/screens/details/details_screen.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
            child: GridView.builder(
                itemCount: products.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: kDefaultPaddin,
                  crossAxisSpacing: kDefaultPaddin,
                  childAspectRatio: 0.75,
                ),
                itemBuilder: (context, index) => ItemCard(
                      product: products[index],
                      press: () =>
                          Navigator.pushNamed(context, DetailsScreen.routeName),
                    )),
          ),
        ),
      ],
    );
  }
}
