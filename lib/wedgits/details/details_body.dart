import 'package:flutter/material.dart';
import 'package:store_app/constants.dart';
import 'package:store_app/models/products.dart';
import 'package:store_app/wedgits/details/product_image.dart';

class DetailsBody
    extends StatelessWidget {
  const DetailsBody({
    super.key,
    required this.product,
  });
  final Product product;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(
      context,
    ).size;
    return Column(
      crossAxisAlignment:
          CrossAxisAlignment.start,
      children: [
        Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(
            horizontal: kDefaultPadding,
          ),
          decoration: BoxDecoration(
            color: kBackgroundColor,
            borderRadius:
                BorderRadius.only(
                  bottomLeft:
                      Radius.circular(
                        50,
                      ),
                  bottomRight:
                      Radius.circular(
                        50,
                      ),
                ),
          ),
          child: Column(
            crossAxisAlignment:
                CrossAxisAlignment
                    .start,
            children: [
              Center(
                child: ProductImage(
                  size: size,
                  image: product.image,
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(
                      vertical:
                          kDefaultPadding,
                    ),
                child: Center(
                  child: Row(
                    mainAxisAlignment:
                        MainAxisAlignment
                            .center,
                    children: [
                      Colordot(
                        fillcolor:
                            kTextColor,
                        isSelected:
                            true,
                      ),
                      Colordot(
                        fillcolor:
                            Colors.blue,
                        isSelected:
                            true,
                      ),
                      Colordot(
                        fillcolor:
                            Colors
                                .orange,
                        isSelected:
                            true,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(
                      vertical:
                          kDefaultPadding /
                          2,
                    ),
                child: Text(
                  product.title,
                  style:
                      Theme.of(context)
                          .textTheme
                          .bodyMedium,
                ),
              ),
              Text(
                'السعر : ${product.price}\$',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight:
                      FontWeight.w300,
                  color:
                      kSecondaryColor,
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(
            vertical:
                kDefaultPadding / 2,
          ),
          padding: EdgeInsets.symmetric(
            horizontal:
                kDefaultPadding * 1.5,
            vertical:
                kDefaultPadding / 2,
          ),
          child: Text(
            product.description,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
        ),
      ],
    );
  }
}

class Colordot extends StatelessWidget {
  const Colordot({
    super.key,
    required this.fillcolor,
    required this.isSelected,
  });
  final Color fillcolor;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal:
            kDefaultPadding / 2.5,
      ),
      padding: EdgeInsets.all(3),
      height: 24,
      width: 24,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.amber,
        border: Border.all(
          color: isSelected
              ? kTextLightColor
              : Colors.transparent,
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: fillcolor,
        ),
      ),
    );
  }
}
