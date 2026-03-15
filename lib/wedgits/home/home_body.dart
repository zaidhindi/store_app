import 'package:flutter/material.dart';
import 'package:store_app/constants.dart';
import 'package:store_app/models/products.dart';
import 'package:store_app/screens/details_screen.dart';
import 'package:store_app/wedgits/home/products_card.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          SizedBox(
            height: kDefaultPadding / 2,
          ),
          Expanded(
            child: Stack(
              children: [
                Container(
                  margin:
                      EdgeInsets.only(
                        top: 70,
                      ),
                  decoration: BoxDecoration(
                    color:
                        kBackgroundColor,
                    borderRadius:
                        BorderRadius.only(
                          topLeft:
                              Radius.circular(
                                45,
                              ),
                          topRight:
                              Radius.circular(
                                45,
                              ),
                        ),
                  ),
                ),
                ListView.builder(
                  itemCount:
                      products.length,
                  itemBuilder: (context, index) => productcard(
                    iteamIndex: index,
                    product:
                        products[index],
                    press: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder:
                              (
                                context,
                              ) => DetailsScreen(
                                product:
                                    products[index],
                              ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
