import 'package:flutter/material.dart';
import 'package:store_app/constants.dart';
import 'package:store_app/models/products.dart';
import 'package:store_app/wedgits/details/details_body.dart';

class DetailsScreen
    extends StatelessWidget {
  const DetailsScreen({
    super.key,
    required this.product,
  });
  final Product product;
  @override
  Widget build(BuildContext context) {
    var appBar = AppBar(
      backgroundColor: kBackgroundColor,
      leading: Padding(
        padding: const EdgeInsets.only(
          right: 8,
        ),
        child: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      title: Text(
        "رجوع",
        style: Theme.of(
          context,
        ).textTheme.bodyMedium,
      ),
    );
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: appBar,
      body: DetailsBody(
        product: product,
      ),
    );
  }
}
