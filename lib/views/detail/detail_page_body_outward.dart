import 'package:flutter/material.dart';
import 'package:shop_app_flutter/models/Product.dart';

import '../../constants.dart';

class DetailPageBodyOutward extends StatelessWidget {
  final Product product;

  const DetailPageBodyOutward({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Color'),
            Row(
              children: const [
                ColorDot(
                  color: Color(0xff356C95),
                  isSelected: true,
                ),
                ColorDot(
                  color: Color(0xfff8c078),
                ),
                ColorDot(
                  color: Color(0xffa29b9b),
                )
              ],
            )
          ],
        )),
        Expanded(
            child: RichText(
                text: TextSpan(
                    style: const TextStyle(color: kTextColor),
                    children: [
              const TextSpan(text: 'Size\n'),
              TextSpan(
                  text: '${product.size} cm',
                  style: Theme.of(context)
                      .textTheme
                      .headline5
                      ?.copyWith(fontWeight: FontWeight.bold))
            ])))
      ],
    );
  }
}

class ColorDot extends StatelessWidget {
  final Color color;
  final bool isSelected;

  const ColorDot({Key? key, required this.color, this.isSelected = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 24,
      height: 24,
      margin: const EdgeInsets.only(
          top: kDefaultPaddin / 4, right: kDefaultPaddin / 2),
      padding: const EdgeInsets.all(2.5),
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: isSelected ? color : Colors.transparent)),
      child: DecoratedBox(
        decoration: BoxDecoration(shape: BoxShape.circle, color: color),
      ),
    );
  }
}
