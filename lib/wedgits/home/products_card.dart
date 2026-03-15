import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:store_app/constants.dart';
import 'package:store_app/models/products.dart';

class productcard
    extends StatelessWidget {
  final int iteamIndex;
  final Product product;
  final VoidCallback press;
  const productcard({
    super.key,
    required this.iteamIndex,
    required this.product,
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(
      context,
    ).size;
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: kDefaultPadding,
        horizontal: kDefaultPadding,
      ),
      height: 190,
      child: InkWell(
        onTap: press,
        child: Stack(
          alignment: AlignmentGeometry
              .bottomCenter,
          children: [
            Container(
              height: 166,
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.circular(
                      22,
                    ),
                color:
                    const Color.fromARGB(
                      255,
                      255,
                      255,
                      255,
                    ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(
                      0,
                      15,
                    ),
                    blurRadius: 25,
                    color:
                        const Color.fromARGB(
                          255,
                          19,
                          19,
                          19,
                        ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 0,
              left: 0,
              child: Container(
                padding:
                    EdgeInsets.symmetric(
                      horizontal:
                          kDefaultPadding,
                    ),
                height: 160,
                width:
                    160, // Make it square or adjust as needed
                child: Image.asset(
                  products[iteamIndex]
                      .image,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: SizedBox(
                height: 136,
                width: size.width - 200,
                child: Column(
                  crossAxisAlignment:
                      CrossAxisAlignment
                          .start,
                  children: [
                    Spacer(),
                    Padding(
                      padding:
                          const EdgeInsets.symmetric(
                            horizontal:
                                kDefaultPadding,
                          ),
                      child: Text(
                        products[iteamIndex]
                            .title,
                        style:
                            GoogleFonts.getFont(
                              'Almarai',
                            ),
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding:
                          const EdgeInsets.symmetric(
                            horizontal:
                                8,
                          ),
                      child: Text(
                        products[iteamIndex]
                            .subTitle,
                        style: Theme.of(
                          context,
                        ).textTheme.bodySmall,
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal:
                            kDefaultPadding *
                            1.5,
                        vertical:
                            kDefaultPadding /
                            5,
                      ),
                      child: Padding(
                        padding:
                            const EdgeInsets.all(
                              kDefaultPadding,
                            ),
                        child: Container(
                          decoration: BoxDecoration(
                            color:
                                kSecondaryColor,
                            borderRadius:
                                BorderRadius.circular(
                                  22,
                                ),
                          ),
                          child: Text(
                            'السعر : ${products[iteamIndex].price}\$',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
