import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../constants.dart';

class DetailPageBodyCounter extends StatefulWidget {
  const DetailPageBodyCounter({Key? key}) : super(key: key);

  @override
  _DetailPageBodyCounterState createState() => _DetailPageBodyCounterState();
}

class _DetailPageBodyCounterState extends State<DetailPageBodyCounter> {
  int numOfItems = 1;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            buildOutlinedButton(
                icon: Icons.remove,
                press: () {
                  if (numOfItems > 1) {
                    setState(() {
                      numOfItems -= 1;
                    });
                  }
                }),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin / 2),
                child: Text(
                  numOfItems.toString().padLeft(2, '0'),
                  style: Theme.of(context).textTheme.headline6,
                )),
            buildOutlinedButton(
                icon: Icons.add,
                press: () {
                  setState(() {
                    numOfItems += 1;
                  });
                }),
          ],
        ),
        Container(
          width: 32,
          height: 32,
          padding: const EdgeInsets.all(8),
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Color(0xffff6464)
          ),
          child: SvgPicture.asset('assets/icons/heart.svg', fit: BoxFit.fill,),
        )
      ],
    ) ;
  }
}

SizedBox buildOutlinedButton(
    {required IconData icon, required Function press}) {
  return SizedBox(
    width: 40,
    height: 32,
    child: OutlinedButton(
      style: ButtonStyle(
          padding: MaterialStateProperty.all(EdgeInsets.zero),
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(13))),
          foregroundColor: MaterialStateProperty.all(kTextColor)),
      onPressed: press as void Function()?,
      child: Icon(icon),
    ),
  );
}
