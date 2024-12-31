import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'utils/constants.dart';

void main() {
  runApp(RecipeApp());
}

class RecipeApp extends StatelessWidget {
  const RecipeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TrendingRecipesPage(),
    );
  }
}

class TrendingRecipesPage extends StatelessWidget {
  const TrendingRecipesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TrendingRecipeItem(),
    );
  }
}


class TrendingRecipeItem extends StatelessWidget {
  const TrendingRecipeItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(14),
          child: const Image(
            image: AssetImage("assets/breakfast.png"),
            width: 150,
            height: 150,
            fit: BoxFit.cover,
          ),
        ),
        Container(
          width: 207,
          height: 122,
          padding: EdgeInsets.symmetric(horizontal: 6, vertical: 6),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.horizontal(
              right: Radius.circular(14),
            ),
            border: Border.all(
              color: AppColors.pinkSub,
              width: 1,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Chicken Curry",
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: "Poppins",
                  fontSize: 12,
                ),
              ),
              Text(
                "Savor the aromatic Chicken Curry—a rich blend of spices...",
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: "League Spartan",
                  fontSize: 13,
                  fontWeight: FontWeight.w100,
                ),
              ),
              Text(
                "By Chef SolihCoder",
                style: TextStyle(
                  color: AppColors.redPinkMain,
                  fontFamily: "Poppins",
                  fontSize: 12,
                  fontWeight: FontWeight.w100,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SvgPicture.asset("assets/clock.svg"),
                      Text(
                        "45min",
                        style: TextStyle(
                          color: AppColors.redPinkMain,
                          fontFamily: "Poppins",
                          fontSize: 12,
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "Easy",
                        style: TextStyle(
                          color: AppColors.redPinkMain,
                          fontFamily: "Poppins",
                          fontSize: 12,
                        ),
                      ),
                      SvgPicture.asset("assets/difficulty.svg"),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "5",
                        style: TextStyle(
                          color: AppColors.redPinkMain,
                          fontFamily: "Poppins",
                          fontSize: 12,
                        ),
                      ),
                      SvgPicture.asset("assets/star.svg"),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
