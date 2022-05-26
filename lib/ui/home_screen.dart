import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_task/utils/style.dart';
import 'package:ui_task/widget/custom_richtext.dart';
import 'package:ui_task/widget/material_button.dart';

import '../constant/app_icon.dart';
import '../router.dart';
import '../utils/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body:
     SingleChildScrollView(
       child:  Column(
         crossAxisAlignment: CrossAxisAlignment.center,
         children: [
           Container(
             height: ScreenUtil().setHeight(380),
             width: double.infinity,
             margin: EdgeInsets.only(left: 10.w,right: 10.w,top: 55.h),
             decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(20.0),
                 color: AppColors.cardColor
             ),
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.center,
               children: [
                 SizedBox(height: 60.h,),
                 // SvgPicture.asset(AppIcons.homeIconSvg,
                 //   theme: SvgTheme(currentColor: AppColors.white,
                 //   fontSize: 14.0,
                 //     xHeight: 7.0,
                 //   ),),
                 Image.asset(AppIcons.homeIconPng, scale: 1.3.r,),
                 SizedBox(height: 20.h,),
                 Text("Continue With Your \n Mobile Number",
                   style: AppStyles.whiteSemiBoldFont,textAlign: TextAlign.center,),
                 SizedBox(height: 5.h,),
                 const CustomRichText(richtext: 'Rs 10 Bonus', spantext: ' for signing up',),
                 SizedBox(height: 20.h,),
                 Container(
                   margin: EdgeInsets.only(left: 15.w,right: 15.w),
                   height: ScreenUtil().setHeight(50),
                   width: double.infinity,
                   clipBehavior: Clip.antiAlias,
                   padding: EdgeInsets.only(left: 20.w,top: 6.h),
                   decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(25.0),
                       color: AppColors.bgColor
                   ),
                   child: TextField( textAlign: TextAlign.start,
                     decoration: InputDecoration(
                       border: InputBorder.none,
                       icon: Image.asset(AppIcons.callIcon,scale: 1.8.r,),
                       // Icon(
                       //   Icons.search,color: AppColors.white,
                       // ),
                       hintText: "Enter Mobile No",
                       hintStyle:
                       AppStyles.regularSmallFont,
                       // TextStyle(
                       //   fontFamily: "Segoe UI",
                       //   color: AppColors.white,
                       //   fontWeight: FontWeight.normal,
                       //   fontSize: 15.sp,
                       //   height: 1.5,
                       //   wordSpacing: 1.8,
                       // ),
                     ),
                   ),
                 ),
                 SizedBox(height: 15.h,),
                 Text(
                   'Have a promo code?',
                   style: TextStyle(
                       decoration: TextDecoration.underline,
                       color: AppColors.white, fontSize: 15.sp
                   ),
                 )
               ],
             ),
           ),
           SizedBox(height: 40.h,),
           Container(
               height: ScreenUtil().setHeight(70),
               width: ScreenUtil().setWidth(220),
               clipBehavior: Clip.antiAlias,
               decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(25.0),
                   color: AppColors.buttonBgColor


               ),
               child: Center(
                 child: MaterialButtonBox(title: "Next", onTap: () => Navigator.pushNamed(context,
                     Routes.verificationScreen) )
                 ,
               )
           ),
         ],
       ),
     )

    );
  }
}
