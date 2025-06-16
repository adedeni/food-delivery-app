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
                      "Hi, adedeni",
                      style: Styles.headLineStyle4.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    Spacer(),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(
                          AppLayout.getHeight(context, 15),
                        ),
                      ),

                      padding: EdgeInsets.symmetric(
                        horizontal: AppLayout.getWidth(context, 12),
                        vertical: AppLayout.getHeight(context, 7),
                      ),
                      child: Row(
                        children: [
                          Text(
                            "Search for food",
                            style: Styles.headLineStyle4.copyWith(
                              fontSize: 8,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Gap(AppLayout.getWidth(context, 20)),
                          Container(
                            child: Icon(
                              size: 14,
                              color: Colors.grey.shade500,
                              FluentSystemIcons.ic_fluent_search_regular,
                            ),
                          ),
                        ],
                      ),
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
                      Padding(
                        padding: EdgeInsets.all(
                          AppLayout.getHeight(context, 10),
                        ),
                        child: Row(
                          children: [
                            Image.asset(
                              "assets/images/delivery.png",
                              width: AppLayout.getWidth(context, 120),
                              height: AppLayout.getHeight(context, 120),
                              fit: BoxFit.contain,
                            ),
                            Gap(AppLayout.getWidth(context, 10)),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Ileya Special",
                                  style: Styles.headLineStyle4.copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                                Gap(AppLayout.getHeight(context, 5)),
                                Text(
                                  "Free ₦20 checkout voucher",
                                  style: Styles.headLineStyle4.copyWith(
                                    fontSize: 9,
                                  ),
                                ),
                                Gap(AppLayout.getHeight(context, 10)),
                                Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: AppLayout.getWidth(context, 15),
                                    vertical: AppLayout.getHeight(context, 9),
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
                                      fontSize: 9,
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
                Row(
                  children: [
                    Container(
                      height: AppLayout.getHeight(context, 100),
                      
                      decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(
                          AppLayout.getHeight(context, 15),
                        ),
                      ),
                      padding: EdgeInsets.symmetric(
                        vertical: AppLayout.getHeight(context, 10),
                        horizontal: AppLayout.getWidth(context, 30),
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
