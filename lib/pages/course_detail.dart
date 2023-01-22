import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:get/get.dart';
import '../model/course_tile_model.dart';

class CourseDetail extends StatefulWidget {
  const CourseDetail({Key? key}) : super(key: key);

  @override
  State<CourseDetail> createState() => _CourseDetailState();
}

class _CourseDetailState extends State<CourseDetail> {
  bool _isExpanded = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomAppBar(
          child: Container(
            height: 12.h,
            color: Colors.grey.shade200,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Class starts from",style: TextStyle(fontSize: 11.5.sp,color: Colors.grey.shade600,fontWeight: FontWeight.w500),),
                    Text("May 1st, 2022",style: TextStyle(fontSize: 14.sp,color: Colors.black, fontWeight: FontWeight.w700),)
                  ],
                ),
                Container(
                  width: 60.w,
                  decoration: BoxDecoration(
                    color: Colors.lime,
                    borderRadius: BorderRadius.circular(20)
                  ),
                  padding: EdgeInsets.all(20),
                  child: IntrinsicHeight(
                    child: Row(
                      children: [
                        Text("Book a Seat",style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.w700),),
                        VerticalDivider(
                          thickness: 2,
                          color: Colors.grey,
                        ),
                        Text("\$189.00",style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.w700),)
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        body: Container(
          height: 100.h,
          width: 100.w,
          color: Colors.grey.shade50,
          child: Column(
            children: [
              //appbar
              Container(
                margin: EdgeInsets.only(
                    left: 3.w, right: 3.w, top: 2.h, bottom: 2.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: () {
                          Get.back();
                        },
                        icon: Icon(
                          Icons.arrow_back_ios,
                          size: 2.8.h,
                          color: Colors.grey.shade600,
                        )),
                    Text(
                      "Popular Course",
                      style: TextStyle(
                          fontSize: 16.sp,
                          color: Colors.grey.shade700,
                          fontWeight: FontWeight.w600),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                          border: Border.all(
                              color: Colors.grey.shade300, width: 1.8)),
                      padding: EdgeInsets.all(5),
                      child: Icon(
                        Icons.favorite,
                        color: Colors.red,
                        size: 3.h,
                      ),
                    )
                  ],
                ),
              ),
              //container
              Container(
                width: 92.w,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 8.h,
                      width: 16.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                              color: Colors.grey.shade300, width: 1.8)),
                      child: Icon(
                        Icons.radio,
                        size: 6.h,
                        color: Colors.blue,
                      ),
                    ),
                    SizedBox(
                      width: 2.5.w,
                    ),
                    SizedBox(
                      width: 73.w,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Master Unity By Building 6 Fully Featured Games",
                            style: TextStyle(
                                fontSize: 19.sp, fontWeight: FontWeight.w800),
                          ),
                          SizedBox(
                            height: 1.h,
                          ),
                          Row(
                            children: [
                              Text(
                                "by\t",
                                style: TextStyle(
                                    fontSize: 14.5.sp, color: Colors.grey),
                              ),
                              Text(
                                "Cameron Williamson",
                                style: TextStyle(
                                    fontSize: 13.sp,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.blue.shade900),
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 2.h,),
              //content listtile
              ListTile(
                title: Text("Course Content",style: TextStyle(fontSize: 16.5.sp,fontWeight: FontWeight.w600),),
                subtitle: Container(
                  margin: EdgeInsets.only(top: 0.5.h),
                  child: Row(
                    children: [
                      Icon(
                        Icons.group_outlined,
                        size: 3.2.h,
                        color: Colors.grey.shade400,
                      ),
                      SizedBox(
                        width: 1.w,
                      ),
                      Text(
                        "55",
                        style: TextStyle(
                            fontSize: 14.sp, color: Colors.grey.shade500),
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      Icon(
                        Icons.videocam_outlined,
                        size: 3.2.h,
                        color: Colors.grey.shade400,
                      ),
                      SizedBox(
                        width: 1.w,
                      ),
                      Text(
                        "26 classes",
                        style: TextStyle(
                            fontSize: 14.sp, color: Colors.grey.shade500),
                      )
                    ],
                  ),
                ),
              ),
              Divider(
                thickness: 2,
                height: 20,
                indent: 20,
                endIndent: 20,
              ),
              //expansionTile
              Expanded(
                child: ListView.separated(
                  separatorBuilder: (context, index) => Divider(
                    thickness: 1.5,
                    indent: 20,
                    endIndent: 20,
                    height: 30,
                  ),
                  itemCount: courseTile.length,
                  itemBuilder: (_, index) {
                    return Theme(
                      data: Theme.of(context).copyWith(dividerColor: Colors.transparent,backgroundColor: Colors.greenAccent.shade100.withOpacity(0.5)),
                      child: ExpansionTile(
                        title: Text(
                          courseTile[index].title,
                          style: TextStyle(
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w600,
                              color: Colors.black),
                        ),
                        subtitle: Container(
                          margin: EdgeInsets.only(top: 0.5.h),
                          child: Row(
                            children: [
                              Icon(
                                Icons.access_time,
                                size: 3.2.h,
                                color: Colors.grey.shade400,
                              ),
                              SizedBox(
                                width: 1.w,
                              ),
                              Text(
                                "${courseTile[index].time} min.",
                                style: TextStyle(
                                    fontSize: 14.sp, color: Colors.grey.shade500),
                              ),
                              SizedBox(
                                width: 5.w,
                              ),
                              Icon(
                                Icons.videocam_outlined,
                                size: 3.2.h,
                                color: Colors.grey.shade400,
                              ),
                              SizedBox(
                                width: 1.w,
                              ),
                              Text(
                                "${courseTile[index].classes} classes",
                                style: TextStyle(
                                    fontSize: 14.sp, color: Colors.grey.shade500),
                              )
                            ],
                          ),
                        ),
                        trailing: Icon(
                          _isExpanded
                              ? Icons.arrow_drop_down_sharp
                          : Icons.keyboard_arrow_down_outlined,
                          size: 4.8.h,
                          color: Colors.grey.shade600,
                        ),
                        onExpansionChanged: (bool expand) {
                          setState(() {
                            _isExpanded = expand;
                          });
                        },
                        children: [
                          Container(
                            width: 98.w,
                            padding: EdgeInsets.only(
                                left: 2.5.w,
                                right: 2.5.w,
                                top: 1.3.h,
                                bottom: 1.3.h),
                            decoration: BoxDecoration(
                              color: Colors.greenAccent.shade100.withOpacity(0.4),
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(10),
                                    bottomRight: Radius.circular(10))),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      courseTile[index].text1,
                                      style: TextStyle(
                                          fontSize: 14.5.sp,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.blue.shade900),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 1.2.h,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      courseTile[index].text2,
                                      style: TextStyle(
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black),
                                    ),
                                    Icon(
                                      Icons.lock,
                                      size: 2.8.h,
                                      color: Colors.black,
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 1.2.h,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      courseTile[index].text3,
                                      style: TextStyle(
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black),
                                    ),
                                    Icon(
                                      Icons.lock,
                                      size: 2.8.h,
                                      color: Colors.black,
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 1.2.h,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      courseTile[index].text4,
                                      style: TextStyle(
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black),
                                    ),
                                    Icon(
                                      Icons.lock,
                                      size: 2.8.h,
                                      color: Colors.black,
                                    )
                                  ],
                                )
                              ],
                            ),
                          )
                        ],

                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
