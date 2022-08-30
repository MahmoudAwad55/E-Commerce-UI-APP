import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/svg.dart';


import '../../constants.dart';
import '../../models/Product.dart';
import 'components/color_dot.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({Key? key, required this.product}) : super(key: key);

  final Product product;

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  get index => 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: widget.product.bgColor,
      appBar: AppBar(
        leading: const BackButton(color: Colors.black),
        actions: [
          InkWell(
            onTap:(){
              setState(() {
                demo_product[index].isFavourite = !demo_product[index].isFavourite!;


              });
            } ,
            child: Icon(
              demo_product[index].isFavourite ==true
                  ? Icons.favorite
                  :Icons.favorite_border,
              color: Colors.red,
              size: 30,
            ),
          )
        ],
      ),
      body: Column(
        children: [
        Image.asset(
        widget.product.image,
        height: MediaQuery
            .of(context)
            .size
            .height * 0.4,
        fit: BoxFit.cover,
      ),

      const SizedBox(height: defaultPadding * 1.5),
      Expanded(
        child: Container(
          padding: const EdgeInsets.fromLTRB(defaultPadding,
              defaultPadding * 2, defaultPadding, defaultPadding),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(defaultBorderRadius * 3),
              topRight: Radius.circular(defaultBorderRadius * 3),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
          Row(
          children: [
          Expanded(
          child: Text(
            widget.product.title,
            style: Theme
                .of(context)
                .textTheme
                .headline6,
          ),
        ),
        const SizedBox(width: defaultPadding),
        Text(
          "\$" + widget.product.price.toString(),
          style: Theme
              .of(context)
              .textTheme
              .headline6,
        ),
        ],
      ),
      const Padding(
        padding: EdgeInsets.symmetric(vertical: defaultPadding),
        child: Text(
          "A Henley shirt is a collarless pullover shirt, by a round neckline and a placket about 3 to 5 inches (8 to 13 cm) long and usually having 2–5 buttons.",
        ),
      ),
      Text(
        "Colors",
        style: Theme
            .of(context)
            .textTheme
            .subtitle2,
      ),
      const SizedBox(height: defaultPadding / 2),
      Row(
        children: const [
          ColorDot(
            color: Color(0xFFBEE8EA),
            isActive: false,
          ),
          ColorDot(
            color: Color(0xFF141B4A),
            isActive: true,
          ),
          ColorDot(
            color: Color(0xFFF4E5C3),
            isActive: false,
          ),
        ],
      ),
      const SizedBox(height: defaultPadding * 2),
      RatingBar.builder(
        initialRating: 4,
        minRating: 1,
        direction: Axis.horizontal,
        allowHalfRating: true,
        itemCount: 5,
        itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
        itemBuilder: (context, _) =>
            Icon(
              Icons.star,
              color: Colors.amber,
            ),
        onRatingUpdate: (rating) {
          print(rating);
        },
      ),
      SizedBox(height: 30,),
      Center(
      child: SizedBox(
      width: 200,
      height: 48,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
            primary: primaryColor,
            shape: const StadiumBorder()),
        child: const Text("Add to Cart"),
      ),
    ),
    )
    ],
    ),
    ),
    )
    ],
    )
    ,
    );
  }
}
