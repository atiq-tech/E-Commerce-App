import 'package:ecom/core/constants/all_item_assets.dart';
import 'package:ecom/core/constants/asset_icon_tabbar.dart';
import 'package:ecom/core/constants/my_colors.dart';
import 'package:ecom/core/widgets/my_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeFragment extends StatelessWidget {
  const HomeFragment({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: CustomScrollView(
        slivers: [
          MyAppBar(
            hedertxt: "Hello,Welcome 👋",
            HeaderName: "Atiqur Rahman Atiq",
          ),
          _SearchBar(),
          SliverToBoxAdapter(
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 24.0),
              height: 100.h,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: ((context, index) => CategoryTab(
                      icon: Image.asset(
                        AllItemAssets.ItemCategoryImg,
                        width: 20.w,
                      ),
                      title: "All Items ${index}"))),
            ),
            // child: SingleChildScrollView(
            //     scrollDirection: Axis.horizontal,
            //     child: Padding(
            //       padding: const EdgeInsets.symmetric(vertical: 24.0),
            //       child: Row(
            //         children: [
            //           CategoryTab(
            //             icon: Image.asset(
            //               AllItemAssets.ItemCategoryImg,
            //               width: 20.w,
            //             ),
            //             title: "All Items",
            //           ),
            //         ],
            //       ),
            //     )),
          ),
        ],
      ),
    ));
  }
}

class CategoryTab extends StatelessWidget {
  final Widget icon;
  final String title;
  const CategoryTab({required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120.0.w,
      margin: EdgeInsets.only(right: 12.0),
      padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 8.0),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8.r),
          border: Border.all(color: MyColors.InputtxtColor)),
      child: Row(
        children: [
          icon,
          SizedBox(
            width: 8.w,
          ),
          Text(title)
        ],
      ),
    );
  }
}

class _SearchBar extends StatelessWidget {
  const _SearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.only(top: 24.0),
        child: TextField(
          decoration: InputDecoration(
            prefixIcon: Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Image.asset(
                AssetIconTabbar.SearchimgIcon,
                width: 15,
                height: 15,
              ),
            ),
            hintText: "Search clothes...",
            hintStyle: TextStyle(fontSize: 14.h, color: MyColors.hinttxtColor),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Color(0xffEDEDED),
              ),
              borderRadius: BorderRadius.circular(12.r),
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide(
                color: MyColors.InputtxtColor,
              ),
              borderRadius: BorderRadius.circular(12.r),
            ),
          ),
        ),
      ),
    );
  }
}
