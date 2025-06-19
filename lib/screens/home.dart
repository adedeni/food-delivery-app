import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:fooddeliveryapp/utils/app_layout.dart';
import 'package:fooddeliveryapp/utils/styles.dart';
import 'package:gap/gap.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            decoration: BoxDecoration(color: Styles.backgroundColor),
            padding: EdgeInsets.only(
              top: AppLayout.getHeight(context, 15),
              left: AppLayout.getWidth(context, 14),
              right: AppLayout.getWidth(context, 14),
              bottom: AppLayout.getHeight(context, 10),
            ),

            child: Column(
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: AppLayout.getHeight(context, 12),
                      backgroundImage: const AssetImage(
                        'assets/images/profile.jpg',
                      ),
                    ),
                    SizedBox(width: AppLayout.getWidth(context, 5)),
                    Text(
                      "Adedeni",
                      style: Styles.headLineStyle4.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    Spacer(),
                    Row(
                      children: [
                   
                        Stack(
                          children: [
                            Icon(
                              FluentSystemIcons.ic_fluent_alert_regular,
                              size: 20,
                              color: Colors.grey.shade500,
                            ),
                            Positioned(
                              right: 0,
                              top: 0,
                              child: Container(
                                padding: const EdgeInsets.all(1),
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                constraints: const BoxConstraints(
                                  minWidth: 10,
                                  minHeight: 10,
                                ),
                                child: Text(
                                  '3', 
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 6,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Gap(AppLayout.getWidth(context, 20)),

                        Stack(
                          children: [
                            Icon(
                              FluentSystemIcons.ic_fluent_trophy_regular,
                              size: 20,
                              color: Colors.grey.shade500,
                            ),
                            Positioned(
                              right: 0,
                              top: 0,
                              child: Container(
                                padding: const EdgeInsets.all(1),
                                decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                constraints: const BoxConstraints(
                                  minWidth: 10,
                                  minHeight: 10,
                                ),
                                child: Text(
                                  '2', // 
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 6,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                Gap(AppLayout.getHeight(context, 30)),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      AppLayout.getWidth(context, 15),
                    ),
                    color: const Color(0xFFFFE9CC),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        right: AppLayout.getWidth(context, 230),
                        top: AppLayout.getHeight(context, 8),
                        child: Image.asset(
                          "assets/images/delivery.png",
                          scale: 13,
                          fit: BoxFit.contain,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(
                          AppLayout.getHeight(context, 10),
                        ),
                        child: Row(
                          children: [
                            Gap(AppLayout.getWidth(context, 90)),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Gap(AppLayout.getHeight(context, 10)),
                                Text(
                                  "Ileya Special",
                                  style: Styles.headLineStyle4.copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                                Gap(AppLayout.getHeight(context, 5)),
                                Text(
                                  " Get free ₦20 checkout voucher",
                                  style: Styles.headLineStyle4.copyWith(
                                    fontSize: 9,
                                  ),
                                ),
                                Gap(AppLayout.getHeight(context, 10)),
                                Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: AppLayout.getWidth(context, 12),
                                    vertical: AppLayout.getHeight(context, 8),
                                  ),
                                  decoration: BoxDecoration(
                                    color: Colors.orange,
                                    borderRadius: BorderRadius.circular(
                                      AppLayout.getHeight(context, 25),
                                    ),
                                  ),
                                  child: Text(
                                    "Learn More",
                                    style: Styles.headLineStyle4.copyWith(
                                      fontSize: 8,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),

                      Positioned(
                        top: -30,
                        right: 40,
                        child: Container(
                          padding: EdgeInsets.all(
                            AppLayout.getWidth(context, 20),
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.green,
                              width: AppLayout.getWidth(context, 13),
                            ),
                            color: Colors.transparent,
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),

                      Positioned(
                        bottom: -30,
                        right: 40,
                        child: Container(
                          padding: EdgeInsets.all(
                            AppLayout.getWidth(context, 20),
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.orange,
                              width: AppLayout.getWidth(context, 13),
                            ),
                            color: Colors.transparent,
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 40,
                        right: 1,
                        child: Container(
                          padding: EdgeInsets.all(
                            AppLayout.getWidth(context, 15),
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.lightBlueAccent,
                              width: AppLayout.getWidth(context, 7),
                            ),
                            color: Colors.transparent,
                            shape: BoxShape.rectangle,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 20,
                        right: -20,
                        child: Container(
                          padding: EdgeInsets.all(
                            AppLayout.getWidth(context, 15),
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(0xFF4B3559),
                              width: AppLayout.getWidth(context, 10),
                            ),
                            color: Colors.transparent,
                            shape: BoxShape.rectangle,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Gap(AppLayout.getHeight(context, 20)),
                Row(
                  children: [
                    Text(
                      "Resturants",
                      style: Styles.headLineStyle4.copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Spacer(),
                    InkWell(
                      onTap:
                          () => {
                            // print("tapped")
                          },
                      child: Row(
                        children: [
                          Text(
                            "View All",
                            style: Styles.headLineStyle4.copyWith(
                              color: Colors.orange,
                              fontSize: 10,
                            ),
                          ),
                          Gap(AppLayout.getWidth(context, 5)),
                          Container(
                            height: AppLayout.getHeight(context, 20),
                            width: AppLayout.getHeight(context, 20),
                            padding: EdgeInsets.all(
                              AppLayout.getWidth(context, 2),
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                AppLayout.getWidth(context, 5),
                              ),
                              color: Colors.orange,
                            ),
                            child: Icon(
                              FluentSystemIcons.ic_fluent_arrow_forward_regular,
                              color: Colors.white,
                              size: 10,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Gap(AppLayout.getHeight(context, 20)),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ...List.generate(7, (index) {
                        return Container(
                          margin: EdgeInsets.only(
                            left:
                                index == 0
                                    ? 0
                                    : AppLayout.getWidth(context, 15),
                          ),
                          height: AppLayout.getHeight(context, 120),
                          decoration: BoxDecoration(
                            color: index == 0 ? Colors.orange : Colors.white,
                            borderRadius: BorderRadius.circular(
                              AppLayout.getHeight(context, 15),
                            ),
                          ),
                          padding: EdgeInsets.symmetric(
                            vertical: AppLayout.getHeight(context, 10),
                            horizontal: AppLayout.getWidth(context, 15),
                          ),
                          child: Column(
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.white,
                                child: Image.asset(
                                  [
                                    'assets/images/item7go.png',
                                    'assets/images/chickenrepublic.png',
                                    'assets/images/kfc.png',
                                    'assets/images/dominos.png',
                                    'assets/images/aroma.png',
                                    'assets/images/amalasky.png',
                                    'assets/images/ultima.png',
                                  ][index],
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Gap(AppLayout.getHeight(context, 10)),
                              Text(
                                [
                                  'Item\n7go',
                                  'Chicken\nRepublic',
                                  'KFC',
                                  'Dominos',
                                  'Aroma',
                                  'Amala\nSky',
                                  'Ultima',
                                ][index],
                                style: Styles.headLineStyle4.copyWith(
                                  color:
                                      index == 0 ? Colors.white : Colors.black,
                                  fontSize: AppLayout.getWidth(context, 10),
                                ),
                              ),
                            ],
                          ),
                        );
                      }),
                    ],
                  ),
                ),
                Gap(AppLayout.getHeight(context, 20)),
                Row(
                  children: [
                    Text(
                      "Menu",
                      style: Styles.headLineStyle4.copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(4, (index) {
                      return Stack(
                        children: [
                          Container(
                            margin: EdgeInsets.only(
                              top: AppLayout.getHeight(context, 50),
                              right: AppLayout.getWidth(context, 15),
                            ),
                            height: AppLayout.getHeight(context, 105),
                            width: AppLayout.getWidth(context, 150),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(
                                AppLayout.getHeight(context, 10),
                              ),
                            ),
                            padding: EdgeInsets.all(
                              AppLayout.getHeight(context, 10),
                            ),
                            child: Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Gap(AppLayout.getHeight(context, 30)),
                                    Text(
                                      [
                                        'Jollof Rice',
                                        'Porridge',
                                        'Amala',
                                        'Moi moi',
                                      ][index],
                                      style: Styles.headLineStyle4.copyWith(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: AppLayout.getWidth(
                                          context,
                                          12,
                                        ),
                                      ),
                                    ),
                                    Gap(AppLayout.getHeight(context, 4)),
                                    Row(
                                      children: List.generate(5, (i) {
                                        return Icon(
                                          FluentSystemIcons
                                              .ic_fluent_star_filled,
                                          size: AppLayout.getHeight(
                                            context,
                                            12,
                                          ),
                                          color:
                                              i < 4
                                                  ? Colors.amber
                                                  : Colors.grey.shade300,
                                        );
                                      }),
                                    ),
                                    Gap(AppLayout.getHeight(context, 4)),
                                    Text(
                                      [
                                        '₦6,000',
                                        '₦5,000',
                                        '₦4,000',
                                        '₦3,000',
                                      ][index],
                                      style: Styles.textStyle.copyWith(
                                        fontSize: AppLayout.getWidth(
                                          context,
                                          11,
                                        ),
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                                const Spacer(),
                                Container(
                                  margin: EdgeInsets.only(
                                    top: AppLayout.getHeight(context, 50),
                                  ),
                                  child: CircleAvatar(
                                    radius: AppLayout.getHeight(context, 17),
                                    backgroundColor: Colors.orange,
                                    child: Text(
                                      "+",
                                      style: Styles.headLineStyle4.copyWith(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            bottom: AppLayout.getHeight(context, 60),
                            child: SizedBox(
                              width: AppLayout.getWidth(context, 150),
                              height: AppLayout.getHeight(context, 100),
                              child: Image.asset(
                                [
                                  'assets/images/jollof.png',
                                  'assets/images/porridge.png',
                                  'assets/images/amala.png',
                                  'assets/images/moimoi.png',
                                ][index],
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                        ],
                      );
                    }),
                  ),
                ),
                Gap(AppLayout.getHeight(context, 20)),
                Row(
                  children: [
                    Text(
                      "Order",
                      style: Styles.headLineStyle4.copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Spacer(),
                    InkWell(
                      onTap:
                          () => {
                            // print("tapped")
                          },
                      child: Row(
                        children: [
                          Text(
                            "View All",
                            style: Styles.headLineStyle4.copyWith(
                              color: Colors.orange,
                              fontSize: 10,
                            ),
                          ),
                          Gap(AppLayout.getWidth(context, 5)),
                          Container(
                            height: AppLayout.getHeight(context, 20),
                            width: AppLayout.getHeight(context, 20),
                            padding: EdgeInsets.all(
                              AppLayout.getWidth(context, 2),
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                AppLayout.getWidth(context, 5),
                              ),
                              color: Colors.orange,
                            ),
                            child: Icon(
                              FluentSystemIcons.ic_fluent_arrow_forward_regular,
                              color: Colors.white,
                              size: 10,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Gap(AppLayout.getHeight(context, 20)),
                Column(
                  children: [
                    ...List.generate(2, (index) {
                      return Container(
                        height: 50,
                        width: double.infinity,
                        margin: EdgeInsets.all(5),

                        child: Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color:
                                    index == 0
                                        ? const Color(0xFFA0BCED)
                                        : const Color(0xFFFFE9CC),
                                borderRadius: BorderRadius.circular(
                                  AppLayout.getHeight(context, 10),
                                ),
                              ),
                              child: Image.asset(
                                [
                                  'assets/images/porridge.png',
                                  'assets/images/amala.png',
                                ][index],
                                fit: BoxFit.contain,
                              ),
                            ),
                            Gap(AppLayout.getWidth(context, 10)),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  ['Porridge', 'Amala'][index],
                                  style: Styles.headLineStyle4.copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontSize: AppLayout.getWidth(context, 12),
                                  ),
                                ),
                                Text(
                                  ['x2', 'x1'][index],
                                  style: Styles.headLineStyle4.copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontSize: AppLayout.getWidth(context, 12),
                                  ),
                                ),
                              ],
                            ),
                            Spacer(),
                            Text(
                              ['₦10,000', '₦4,000'][index],
                              style: Styles.headLineStyle4.copyWith(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: AppLayout.getWidth(context, 12),
                              ),
                            ),
                          ],
                        ),
                      );
                    }),
                    Gap(AppLayout.getHeight(context, 10)),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(
                          AppLayout.getHeight(context, 25),
                        ),
                      ),
                      padding: EdgeInsets.symmetric(
                        vertical: AppLayout.getHeight(context, 10),
                        horizontal: AppLayout.getWidth(context, 100),
                      ),

                      child: Text(
                        "Checkout",
                        style: Styles.headLineStyle4.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 10,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
