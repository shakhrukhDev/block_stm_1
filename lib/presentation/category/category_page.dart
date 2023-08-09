
import 'package:block_stm_1/presentation/category/bloc/category_bloc.dart';
import 'package:block_stm_1/presentation/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoryBloc, CategoryState>(
      builder: (_, state) {
        return Scaffold(
          body: CustomScrollView(
            slivers: [
              SliverAppBar(
                backgroundColor: Colors.white,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50),
                  ),
                ),
                leading: Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: CircleAvatar(
                    child: SvgPicture.asset(AppIcons.backIcon),
                    backgroundColor: Colors.white,
                  ),
                ),
                title: Center(
                  child: Text("Menu Detail",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500
                  ),),
                ),
                actions: [
                  Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 24,
                      child: SvgPicture.asset(AppIcons.heartIcon),
                    ),
                  )
                ],
                pinned: true,
                expandedHeight: 390,
                flexibleSpace: FlexibleSpaceBar(

                    titlePadding: EdgeInsets.zero,
                    centerTitle: true,
                    background: Container(
                  width: 375,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(32),
                          bottomLeft: Radius.circular(32))),
                  child: Stack(
                    children: [
                      Image.asset(
                        AppImages.detailImage,
                        fit: BoxFit.cover,
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 36, left: 24, right: 24),
                      )
                    ],
                  ),
                )),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsets.only(left: 24, right: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Noodles",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Fried grill noodles with",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 19,
                                fontWeight: FontWeight.w600),
                          ),
                          Container(
                            width: 80,
                            height: 34,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: AppColors.C_F3F3F3),
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      context.read<CategoryBloc>().add(
                                          DecrementEvent(number: state.number));
                                    },
                                    child: CircleAvatar(
                                      backgroundColor: Colors.white,
                                      radius: 12,
                                      child:
                                          SvgPicture.asset(AppIcons.minusIcon),
                                    ),
                                  ),
                                  Text(
                                    state.number.toString(),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      context.read<CategoryBloc>().add(
                                          IncrementEvent(number: state.number));
                                    },
                                    child: CircleAvatar(
                                      backgroundColor: Colors.white,
                                      radius: 12,
                                      child: SvgPicture.asset(AppIcons.addIcon),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                      const Text(
                        "egg special",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 19,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Rating",
                                style: TextStyle(
                                    color: AppColors.C_8C8E98,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400),
                              ),
                              Row(
                                children: [
                                  SvgPicture.asset(AppIcons.starIcon),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  const Text(
                                    "4.8",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600),
                                  )
                                ],
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Calories",
                                style: TextStyle(
                                    color: AppColors.C_8C8E98,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400),
                              ),
                              Row(
                                children: [
                                  Image.asset(AppImages.firelImage),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  const Text(
                                    "4.8",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600),
                                  )
                                ],
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Time",
                                style: TextStyle(
                                    color: AppColors.C_8C8E98,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400),
                              ),
                              Row(
                                children: [
                                  Image.asset(AppImages.hourImage),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  const Text(
                                    "15 min",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      const Text(
                        "Description",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.016,
                      ),
                      const Text(
                          "Vegetables are parts of plants that are consumed by humans or other animals as food. The original meaning is still, stems, leaves, roots, and seeds."),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      const Text(
                        "Add Extra Ingredients",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.016,
                      ),
                      /*ListTile(
                        leading: Container(
                          child: Image.asset(AppImages.leafImage,),
                          width: 48,
                          height: 48,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: AppColors.C_F3F3F3
                          ),
                        ),
                        title: Text("Mustard", style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w500
                        ),),
                        subtitle: Text("1 Grm", style: TextStyle(
                            color: AppColors.C_8C8E98,
                            fontSize: 12,
                            fontWeight: FontWeight.w400
                        ),),
                        trailing: Container(
                          width: 80,
                          height: 34,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color:AppColors.C_F3F3F3
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CircleAvatar(
                                  backgroundColor: Colors.white,
                                  radius: 12,
                                  child: SvgPicture.asset(AppIcons.minusIcon),
                                ),
                                Text("3", style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600
                                ),),
                                CircleAvatar(
                                  backgroundColor: Colors.white,
                                  radius: 12,
                                  child: SvgPicture.asset(AppIcons.addIcon),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),*/
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                child: Image.asset(
                                  AppImages.leafImage,
                                ),
                                width: 48,
                                height: 48,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: AppColors.C_F3F3F3),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Mustard",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    "1 Grm",
                                    style: TextStyle(
                                        color: AppColors.C_8C8E98,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              )
                            ],
                          ),
                          Container(
                            width: 80,
                            height: 34,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: AppColors.C_F3F3F3),
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      context.read<CategoryBloc>().add(
                                          DecrementMustard(
                                              numberMustard:
                                                  state.numberMustard));
                                    },
                                    child: CircleAvatar(
                                      backgroundColor: Colors.white,
                                      radius: 12,
                                      child:
                                          SvgPicture.asset(AppIcons.minusIcon),
                                    ),
                                  ),
                                  Text(
                                    state.numberMustard.toString(),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      context.read<CategoryBloc>().add(
                                          IncrementMustard(
                                              numberMustard:
                                                  state.numberMustard));
                                    },
                                    child: CircleAvatar(
                                      backgroundColor: Colors.white,
                                      radius: 12,
                                      child: SvgPicture.asset(AppIcons.addIcon),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.016,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                child: Image.asset(
                                  AppImages.meatImage,
                                ),
                                width: 48,
                                height: 48,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: AppColors.C_F3F3F3),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Beef",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    "1 Slice",
                                    style: TextStyle(
                                        color: AppColors.C_8C8E98,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              )
                            ],
                          ),
                          Container(
                            width: 80,
                            height: 34,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: AppColors.C_F3F3F3),
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      context.read<CategoryBloc>().add(
                                          DecrementBeef(
                                              numberBeef: state.numberBeef));
                                    },
                                    child: CircleAvatar(
                                      backgroundColor: Colors.white,
                                      radius: 12,
                                      child:
                                          SvgPicture.asset(AppIcons.minusIcon),
                                    ),
                                  ),
                                  Text(
                                    state.numberBeef.toString(),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      context.read<CategoryBloc>().add(
                                          IncrementBeef(
                                              numberBeef: state.numberBeef));
                                    },
                                    child: CircleAvatar(
                                      backgroundColor: Colors.white,
                                      radius: 12,
                                      child: SvgPicture.asset(AppIcons.addIcon),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.016,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                child: Image.asset(
                                  AppImages.mushroomtImage,
                                ),
                                width: 48,
                                height: 48,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: AppColors.C_F3F3F3),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Mushroom",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    "1 Piece",
                                    style: TextStyle(
                                        color: AppColors.C_8C8E98,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              )
                            ],
                          ),
                          Container(
                            width: 80,
                            height: 34,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: AppColors.C_F3F3F3),
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      context.read<CategoryBloc>().add(
                                          DecrementMushroom(
                                              numberMushroom:
                                                  state.numberMushroom));
                                    },
                                    child: CircleAvatar(
                                      backgroundColor: Colors.white,
                                      radius: 12,
                                      child:
                                          SvgPicture.asset(AppIcons.minusIcon),
                                    ),
                                  ),
                                  Text(state.numberMushroom.toString()),
                                  GestureDetector(
                                    onTap: () {
                                      context.read<CategoryBloc>().add(
                                          IncrementMushroom(
                                              numberMushroom:
                                                  state.numberMushroom));
                                    },
                                    child: CircleAvatar(
                                      backgroundColor: Colors.white,
                                      radius: 12,
                                      child: SvgPicture.asset(AppIcons.addIcon),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.016,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                child: Image.asset(
                                  AppImages.onionImage,
                                ),
                                width: 48,
                                height: 48,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: AppColors.C_F3F3F3),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Onion",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    "1 Clove",
                                    style: TextStyle(
                                        color: AppColors.C_8C8E98,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              )
                            ],
                          ),
                          Container(
                            width: 80,
                            height: 34,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: AppColors.C_F3F3F3),
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      context.read<CategoryBloc>().add(
                                          DecrementOnion(
                                              numberOnion: state.numberOnion));
                                    },
                                    child: CircleAvatar(
                                      backgroundColor: Colors.white,
                                      radius: 12,
                                      child:
                                          SvgPicture.asset(AppIcons.minusIcon),
                                    ),
                                  ),
                                  Text(state.numberOnion.toString()),
                                  GestureDetector(
                                    onTap: () {
                                      context.read<CategoryBloc>().add(
                                          IncrementOnion(
                                              numberOnion: state.numberOnion));
                                    },
                                    child: CircleAvatar(
                                      backgroundColor: Colors.white,
                                      radius: 12,
                                      child: SvgPicture.asset(AppIcons.addIcon),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      const Text(
                        "Location",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.016,
                      ),
                      Container(
                        child: Stack(
                          children: [
                            Image.asset(AppImages.mapImage),
                            Positioned(
                                left: 124,
                                top: 57,
                                child: SvgPicture.asset(AppIcons.locationIcon)),
                            Positioned(
                                left: 145,
                                top: 128,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  child: Text(
                                    "Open Location",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black),
                                  ),
                                ))
                          ],
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "35.25",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 32,
                                fontWeight: FontWeight.w500),
                          ),
                          ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                  AppColors.C_F86A2E,
                                ),
                              ),
                              onPressed: () {},
                              child: Row(
                                children: [
                                  SvgPicture.asset(AppIcons.bagIcon),
                                  const SizedBox(
                                    width: 6,
                                  ),
                                  const Text(
                                    "Add To Card",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white),
                                  ),
                                ],
                              ))
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
