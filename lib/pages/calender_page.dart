import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:get/get.dart';

import '../widget/category_button.dart';

class CalenderPage extends StatefulWidget {
  CalenderPage({Key? key}) : super(key: key);

  @override
  State<CalenderPage> createState() => _CalenderPageState();
}

class _CalenderPageState extends State<CalenderPage> {
  List category = ["This Week", "Next Week", "Today"];
  int _index = 0;
  List time = ["7 am", "8 am", "9 am", "10 am", "11 am", "12 am"];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: 100.h,
          width: 100.w,
          color: Colors.white,
          child: Column(
            children: [
              //appbar
              Container(
                margin: EdgeInsets.only(
                    left: 5.w, right: 5.w, top: 3.h, bottom: 2.h),
                child: Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          Get.back();
                        },
                        icon: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.grey,
                          size: 3.h,
                        )),
                    Expanded(child: Container()),
                    Text(
                      "Calender",
                      style: TextStyle(
                          fontSize: 15.5.sp,
                          color: Colors.grey.shade600,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Expanded(child: Container())
                  ],
                ),
              ),
              //calender icon
              Container(
                margin: EdgeInsets.only(bottom: 1.5.h),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: Colors.grey.shade300, width: 2)),
                padding: EdgeInsets.all(6),
                child: Icon(
                  Icons.calendar_month_sharp,
                  size: 6.h,
                  color: Colors.blue,
                ),
              ),
              //text
              Text(
                "My Class Schedules",
                style: TextStyle(fontSize: 17.sp, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 2.h,
              ),
              //category
              SizedBox(
                height: 5.h,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: category.length,
                    itemBuilder: (_, index) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            _index = index;
                          });
                        },
                        child: Container(
                          margin: EdgeInsets.only(left: 4.5.w),
                          decoration: BoxDecoration(
                              color: _index == index
                                  ? Colors.lightGreen
                                  : Colors.white,
                              borderRadius: BorderRadius.circular(30),
                              border: Border.all(
                                  color: Colors.grey.shade300, width: 1.9)),
                          padding: EdgeInsets.symmetric(
                              horizontal: 3.5.w, vertical: 0.8.h),
                          child: Text(
                            category[index],
                            style: TextStyle(
                                fontSize: 14.sp,
                                color: _index == index
                                    ? Colors.black
                                    : Colors.grey.shade500,
                                fontWeight: _index == index
                                    ? FontWeight.w700
                                    : FontWeight.w500),
                          ),
                        ),
                      );
                    }),
              ),
              SizedBox(
                height: 2.h,
              ),
              Divider(
                thickness: 2,
                height: 0,
              ),
              Expanded(
                child: IntrinsicHeight(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          width: 25.w,
                          color: Colors.greenAccent.shade100.withOpacity(0.5),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(height: 0.1.h,),
                              Text(
                                "7 am",
                                style: TextStyle(
                                    fontSize: 14.sp,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w500),
                              ),
                              Text(
                                "8 am",
                                style: TextStyle(
                                    fontSize: 14.sp,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w500),
                              ),
                              Text(
                                "9 am",
                                style: TextStyle(
                                    fontSize: 14.sp,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w500),
                              ),
                              Text(
                                "10 am",
                                style: TextStyle(
                                    fontSize: 14.sp,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w500),
                              ),
                              Text(
                                "11 am",
                                style: TextStyle(
                                    fontSize: 14.sp,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w500),
                              ),
                              Text(
                                "12 am",
                                style: TextStyle(
                                    fontSize: 14.sp,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ),
                        VerticalDivider(
                          width: 0,
                          thickness: 1,
                          color: Colors.grey.shade300,
                        ),
                        Container(
                          width: 39.w,
                          child: Column(
                            children: [
                              SizedBox(height: 1.h,),
                              Text("Sun",style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.bold),),
                              Text("24",style: TextStyle(fontSize: 13.sp,color: Colors.grey),),
                              SizedBox(height: 05.h,),
                              Container(
                                height: 15.h,
                                width: 35.w,
                                decoration: BoxDecoration(
                                  color: Colors.redAccent.shade100.withOpacity(0.2),
                                  borderRadius: BorderRadius.circular(20)
                                ),
                                padding: EdgeInsets.symmetric(horizontal: 2.w),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Icon(Icons.electric_bolt,color: Colors.blueAccent,size: 4.h,),
                                    Text("Electric Machine 2",style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w600),)
                                  ],
                                ),
                              ),
                              SizedBox(height: 08.h,),
                              Container(
                                height: 15.h,
                                width: 35.w,
                                decoration: BoxDecoration(
                                    color: Colors.lightGreen.shade400.withOpacity(0.4),
                                    borderRadius: BorderRadius.circular(20)
                                ),
                                padding: EdgeInsets.symmetric(horizontal: 2.w),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(height: 1.5.h,),
                                    Icon(Icons.content_paste_go_outlined,color: Colors.green,size: 4.h,),
                                    SizedBox(height: 1.5.h,),
                                    Text("Motion Design",style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w600),),
                                    Text("(Part 1)",style: TextStyle(fontSize: 12.sp,color: Colors.green),)
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        VerticalDivider(
                          width: 0,
                          thickness: 1.7,
                          color: Colors.grey.shade300,
                        ),
                        Container(
                          width: 39.w,
                          child: Column(
                            children: [
                              SizedBox(height: 1.h,),
                              Text("Mon",style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.bold),),
                              Text("25",style: TextStyle(fontSize: 13.sp,color: Colors.grey),),
                              SizedBox(height: 14.h,),
                              Flexible(
                                child: Container(
                                  height: 15.h,
                                  width: 35.w,
                                  decoration: BoxDecoration(
                                      color: Colors.blueAccent.shade100.withOpacity(0.2),
                                      borderRadius: BorderRadius.circular(20)
                                  ),
                                  padding: EdgeInsets.symmetric(horizontal: 3.w),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Icon(Icons.radio,color: Colors.blueAccent.withOpacity(0.6),size: 4.h,),
                                      SizedBox(
                                          width:30.w,
                                        child: Text("Master Unity: Building Fully 6 Featured Games",overflow: TextOverflow.ellipsis, maxLines:2, style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w600),))
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(height: 08.h,),
                              Flexible(
                                child: Container(
                                  height: 15.h,
                                  width: 35.w,
                                  decoration: BoxDecoration(
                                      color: Colors.purpleAccent.shade100.withOpacity(0.6),
                                      borderRadius: BorderRadius.circular(20)
                                  ),
                                  padding: EdgeInsets.symmetric(horizontal: 3.w),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Icon(Icons.videocam,color: Colors.purple.withOpacity(0.6),size: 4.h,),
                                      SizedBox(
                                          width:30.w,
                                          child: Text("Basic Videography",overflow: TextOverflow.ellipsis, maxLines:2, style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w600),))
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        VerticalDivider(
                          width: 0,
                          thickness: 1.8,
                          color: Colors.grey.shade300,
                        ),
                        Container(
                          width: 39.w,
                          child: Column(
                            children: [
                              SizedBox(height: 1.h,),
                              Text("Tue",style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.bold),),
                              Text("26",style: TextStyle(fontSize: 13.sp,color: Colors.grey),),
                              SizedBox(height: 2.h,),
                              Flexible(
                                child: Container(
                                  height: 15.h,
                                  width: 35.w,
                                  decoration: BoxDecoration(
                                      color: Colors.orange.shade100.withOpacity(0.5),
                                      borderRadius: BorderRadius.circular(20)
                                  ),
                                  padding: EdgeInsets.symmetric(horizontal: 3.w),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Icon(Icons.radio,color: Colors.blueAccent.withOpacity(0.6),size: 4.h,),
                                      SizedBox(
                                          width:30.w,
                                          child: Text("Master Unity: Building Fully 6 Featured Games",overflow: TextOverflow.ellipsis, maxLines:2, style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w600),))
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(height: 15.h,),
                              Flexible(
                                child: Container(
                                  height: 15.h,
                                  width: 35.w,
                                  decoration: BoxDecoration(
                                      color: Colors.teal.shade100.withOpacity(0.3),
                                      borderRadius: BorderRadius.circular(20)
                                  ),
                                  padding: EdgeInsets.symmetric(horizontal: 3.w),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Icon(Icons.videocam,color: Colors.purple.withOpacity(0.6),size: 4.h,),
                                      SizedBox(
                                          width:30.w,
                                          child: Text("Basic Videography",overflow: TextOverflow.ellipsis, maxLines:2, style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w600),))
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
