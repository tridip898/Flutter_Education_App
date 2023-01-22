import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CategoryButton extends StatelessWidget {
  final String text;
  const CategoryButton({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 4.w),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          border: Border.all(color: Colors.grey.shade300,width: 1.9)
      ),
      padding: EdgeInsets.symmetric(horizontal: 3.5.w,vertical: 0.8.h),
      child: Text(text,style: TextStyle(fontSize: 14.3.sp,color: Colors.grey.shade600),),
    );
  }
}
