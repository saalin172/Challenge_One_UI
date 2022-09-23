import 'package:challenge_one/modal.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:iconly/iconly.dart';

import 'cutomCard.dart';

class Home extends StatelessWidget {
  const Home({Key? key, this.gItem}) : super(key: key);
  final Items? gItem;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffECF0F1),
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Container(
            margin: EdgeInsets.all(5),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey.shade200,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey[400]!,
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
            ),
            child: Icon(
              Icons.arrow_back_ios_new,
              color: Colors.black,
            ),
          ),
          title: Text(
            "Wishlist(3)",
            style: TextStyle(
              fontSize: 22,
              color: Colors.black,
            ),
          ),
          actions: [
            Container(
              margin: EdgeInsets.only(right: 10),
              child: Text(
                "Delete",
                style: TextStyle(
                  color: Color(0xffFE704B),
                  fontSize: 20,
                  height: 2.2,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 20),
          child: Container(
            child: AnimationLimiter(
              child: ListView.builder(
                itemCount: getItemList.length,
                //shrinkWrap: true,
                itemBuilder: (_, index) {
                  return AnimationConfiguration.staggeredList(
                    position: index,
                    child: SlideAnimation(
                      verticalOffset: 50.0,
                      child: FadeInAnimation(
                        child: CustomCard(
                          getItems: getItemList[index],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ),
        bottomNavigationBar: Row(
          children: [
            Container(
              padding: EdgeInsets.only(left: 10, right: 10, bottom: 5),
              height: 55,
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(12),
                  backgroundColor: Color(0xffFE704B),
                ),
                label: Text(
                  "Add to Cart",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                icon: Icon(IconlyLight.bag_2, size: 30),
                onPressed: () {},
              ),
            ),
          ],
        ));
  }
}
