import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop_app_flutter/constants.dart';
import 'package:shop_app_flutter/models/Product.dart';

class DetailPageBodyBtm extends StatelessWidget {
  final Product product;

  const DetailPageBodyBtm({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const   EdgeInsets.symmetric(vertical: kDefaultPaddin),
      child: Row(
      children: [
        Container(
          width: 58,
          height: 50,
          margin: const EdgeInsets.only(right: kDefaultPaddin),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: product.color)),
          child: IconButton(
            onPressed: () {},
            icon: SvgPicture.asset('assets/icons/add_to_cart.svg', color: product.color,),
          ),
        ),
        Expanded(
            child: SizedBox(
          height: 50,
          child: ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18)
              )),
              backgroundColor: MaterialStateProperty.all(product.color)
            ),
            child: const Text(
              'BUY Now',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white
              ),
            ),
          ),
        ))
      ],
    ));
  }
}
