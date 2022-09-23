import 'package:challenge_one/modal.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class CustomCard extends StatefulWidget {
  const CustomCard({
    Key? key,
    required this.getItems,
  }) : super(key: key);
  final Items getItems;

  @override
  State<CustomCard> createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  @override
  bool isCheck = false;
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      height: 160,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey[500]!,
            blurRadius: 15,
            offset: Offset(4, 4),
            spreadRadius: 1,
          ),
          BoxShadow(
            color: Colors.white,
            blurRadius: 15,
            offset: Offset(-4, -4),
            spreadRadius: 1,
          ),
        ],
        borderRadius: BorderRadius.circular(12),
        color: Color(0xffffffff),
      ),
      child: Row(
        children: [
          Container(
            height: 135,
            margin: EdgeInsets.only(left: 5),
            padding: EdgeInsets.only(top: 5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color(0xffefe9f4),
            ),
            child: Image(
              //fit: BoxFit.cover,
              image: AssetImage("${widget.getItems.gImage}"),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(width: 8),
                  Text(
                    "${widget.getItems.gName}",
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xff13245C),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(width: 15),
                  Transform.scale(
                    scale: 1.5,
                    child: Checkbox(
                      activeColor: Color(0xff13245C),
                      side: BorderSide(color: Color(0xff13245C), width: 2),
                      shape: CircleBorder(),
                      value: isCheck,
                      onChanged: (bool? value) {
                        setState(() {
                          isCheck = value!;
                        });
                      },
                    ),
                  ),
                ],
              ),
              Text(
                " ${widget.getItems.gType}",
                style: TextStyle(
                  fontSize: 18,
                  color: Color(0xff13245C),
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(width: 10),
                  Text(
                    "${widget.getItems.gValue} €",
                    style: TextStyle(
                      color: Color(0xff13245C),
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(width: 10),
                  Row(
                    children: [
                      Icon(
                        IconlyBold.star,
                        color: Colors.orange,
                      ),
                      SizedBox(width: 5),
                      Text(
                        "${widget.getItems.gRate}",
                        style: TextStyle(
                          color: Color(0xff13245C),
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 80),
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey.shade300,
                    ),
                    child: Icon(
                      IconlyLight.bag_2,
                      color: Color(0xff13245C),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
