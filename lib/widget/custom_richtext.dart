import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_task/utils/style.dart';

class CustomRichText extends StatelessWidget {
  const CustomRichText({Key? key,
    required this.richtext,
    required this.spantext,}) : super(key: key);
  final String richtext;
  final String spantext;
  //final Color spancolor;
  @override
  Widget build(BuildContext context) {
    return RichText(text: TextSpan(
      text: richtext,
      style:
     AppStyles.richText,
        children: [
          TextSpan(text: spantext,
              style:
              AppStyles.spanText,

          )
        ]

    ));
  }
}
