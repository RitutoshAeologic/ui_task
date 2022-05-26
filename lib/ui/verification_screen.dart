import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_task/utils/colors.dart';

import '../router.dart';
import '../utils/style.dart';
import '../widget/material_button.dart';

class VerificationScreen extends StatelessWidget {
  const VerificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bg2Color,
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: 30.h,left: 25.w,right: 25.w
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        Container(
        margin: const EdgeInsets.only(right: 20,top: 10),
    height: ScreenUtil().setHeight(50),
    width: ScreenUtil().setWidth(60),
    decoration: BoxDecoration(
    color: AppColors.buttonBgColor,
    borderRadius: const BorderRadius.all(Radius.circular(10) ),
    ),
    child:
    IconButton(
    onPressed: () =>
    Navigator.pushNamed(
    context,
    Routes.homeScreen),

    padding: const EdgeInsets.only(bottom: 5.0,top: 5),
    icon: const Icon(
    Icons.arrow_back_ios_outlined,color: Colors.white,size: 25,
    ),
    )
    ),
          ],
        ),
            SizedBox(height: 100.h,),
            Text("Verification Code",
              style: AppStyles.whiteBoldFont,textAlign: TextAlign.center,),
            SizedBox(height: 15.h,),
            Text("Please enter 4 digit OTP sent to your \n"
                "mobile no. 91XXXXXXX23.", style:AppStyles.regularBigFont,),
            SizedBox(height: 20.h,),
            Container(
              height: ScreenUtil().setHeight(50),
              width: double.infinity,
              clipBehavior: Clip.antiAlias,
              padding: EdgeInsets.only(left: 20.w,top: 6.h),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.0),
                  color: AppColors.buttonBgColor              ),
              child: TextField( textAlign: TextAlign.start,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Enter OTP",
                  hintStyle:
                  AppStyles.regularSmallFont,
                ),
              ),
            ),
            SizedBox(height: 20.h,),
            Align(
              alignment: Alignment.center,
              child: Container(
                height: ScreenUtil().setHeight(70),
                width: ScreenUtil().setWidth(220),
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25.0),
                    color: AppColors.buttonBgColor


                ),
                child: Center(
                  child:
                  MaterialButton(
                    color: AppColors.white,
                    onPressed:  () => Navigator.pushNamed(context,
                    Routes.noInternetScreen),
                    padding: EdgeInsets.only(left: 60.w,right: 10.w),
                    height: ScreenUtil().setHeight(50),
                    minWidth: ScreenUtil().setWidth(200),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40)),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children:  <Widget>[
                        Text("Submit",
                          style: const  TextStyle(
                            fontFamily: "Segoe UI",
                            color: AppColors.bg2Color,
                            fontWeight: FontWeight.normal,
                            fontSize: 20,
                            //height: 1.5,
                            wordSpacing: 1.5,
                          ),),
                        SizedBox(width: ScreenUtil().setWidth(40.w),),
                        const Icon(Icons.arrow_forward_ios, color: AppColors.bg2Color,)
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20.h,),
            Align(
              alignment: Alignment.center,
              child:  Text("Resend OTP 00:15", style:AppStyles.regularBigFont,),
            ),


    ]
      ),
      ),
    );
  }
}
