import 'package:education_app/pages/course_detail.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:get/get.dart';

import '../model/grid_model.dart';
import '../model/list_model.dart';
import '../widget/category_button.dart';
import 'calender_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.white,
            selectedItemColor: Colors.black,
            unselectedItemColor: Colors.grey,
            showUnselectedLabels: false,
            showSelectedLabels: false,
            iconSize: 3.8.h,
            type: BottomNavigationBarType.fixed,
            currentIndex: _index,
            onTap: (int index) {
              setState(() {
                _index = index;
              });
            },
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home_filled),
                  label: "",
                  backgroundColor: Colors.white),
              BottomNavigationBarItem(
                  icon: Icon(Icons.topic_rounded), label: ""),
              BottomNavigationBarItem(icon: Icon(Icons.bar_chart), label: ""),
              BottomNavigationBarItem(icon: Icon(Icons.settings), label: ""),
            ]),
        floatingActionButton: Container(
            height: 15.h,
            width: 15.w,
            decoration: BoxDecoration(
                color: Colors.lime.shade500,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                      color: Colors.lime.shade400,
                      blurRadius: 15,
                      spreadRadius: 5)
                ]),
            child: IconButton(
              onPressed: () {
                Get.to(() => CalenderPage());
              },
              icon: Icon(
                Icons.calendar_month_outlined,
                size: 3.4.h,
                color: Colors.black,
              ),
            )),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          physics: NeverScrollableScrollPhysics(),
          child: Container(
            height: 100.h,
            width: 100.w,
            color: Colors.grey.shade200,
            child: Column(
              children: [
                Container(
                  height: 44.h,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin:
                            EdgeInsets.only(left: 5.w, right: 5.w, top: 3.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle, color: Colors.white),
                              padding: EdgeInsets.all(10),
                              child: Image.asset(
                                "lib/icons/more.png",
                                height: 3.5.h,
                              ),
                            ),
                            CircleAvatar(
                              backgroundImage:
                                  AssetImage("lib/images/men3.jpg"),
                              radius: 3.2.h,
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin:
                            EdgeInsets.only(left: 5.w, top: 2.h, bottom: 2.h),
                        child: RichText(
                            text: TextSpan(children: [
                          TextSpan(
                              text: "Good morning, ",
                              style: TextStyle(
                                  fontSize: 15.sp,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w500)),
                          TextSpan(
                              text: "Tridip\t\t",
                              style: TextStyle(
                                  fontSize: 16.sp,
                                  color: Colors.grey.shade800,
                                  fontWeight: FontWeight.w800)),
                          WidgetSpan(
                              child: Icon(
                            Icons.thumb_up,
                            color: Colors.orange,
                            size: 6.w,
                          ))
                        ])),
                      ),
                      Expanded(
                        child: GridView.builder(
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisSpacing: 4.w,
                                    childAspectRatio: 0.88,
                                    crossAxisCount: 2),
                            itemCount: gridModel.length,
                            padding: EdgeInsets.symmetric(horizontal: 5.w),
                            itemBuilder: (_, index) {
                              return Container(
                                decoration: BoxDecoration(
                                    color: Colors.grey.shade50,
                                    borderRadius: BorderRadius.circular(20),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.grey.shade400,
                                          blurRadius: 5)
                                    ]),
                                padding: EdgeInsets.symmetric(vertical: 20),
                                child: Column(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                          color: Colors.grey.shade200,
                                          shape: BoxShape.circle),
                                      padding: EdgeInsets.all(20),
                                      child: Image.asset(
                                        gridModel[index].image,
                                        height: 4.5.h,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 2.h,
                                    ),
                                    Text(
                                      gridModel[index].count,
                                      style: TextStyle(
                                          fontSize: 27.sp,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    SizedBox(
                                      height: 0.5.h,
                                    ),
                                    Text(
                                      gridModel[index].name,
                                      style: TextStyle(
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.w500),
                                    )
                                  ],
                                ),
                              );
                            }),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 56.h,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(30),
                          topLeft: Radius.circular(30))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Container(
                          height: 0.42.h,
                          width: 9.w,
                          margin: EdgeInsets.only(top: 1.h),
                          decoration: BoxDecoration(
                              color: Colors.grey.shade400,
                              borderRadius: BorderRadius.circular(50)),
                        ),
                      ),
                      //today class text
                      Container(
                        margin:
                            EdgeInsets.only(left: 4.w, right: 4.w, top: 2.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Todays Classes",
                              style: TextStyle(
                                  fontSize: 17.5.sp,
                                  fontWeight: FontWeight.w800),
                            ),
                            CategoryButton(
                              text: "See all",
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 1.3.h,
                      ),
                      //listtile
                      Container(
                        height: 18.h,
                        child: ListView.separated(
                          separatorBuilder: (context, index) => Divider(
                            thickness: 2,
                            indent: 25,
                            endIndent: 25,
                            height: 20,
                          ),
                          itemCount: listModel.length,
                          itemBuilder: (_, index) {
                            return ListTile(
                              leading: Icon(
                                listModel[index].leadingIcon,
                                size: 3.7.h,
                                color: Colors.blue,
                              ),
                              title: Container(
                                  margin: EdgeInsets.only(bottom: 0.3.h),
                                  child: Text(
                                    listModel[index].title,
                                    style: TextStyle(
                                        fontSize: 16.5.sp,
                                        fontWeight: FontWeight.w700),
                                  )),
                              subtitle: Row(
                                children: [
                                  Icon(
                                    Icons.access_time,
                                    size: 3.h,
                                    color: Colors.grey.shade400,
                                  ),
                                  Text(
                                    "\t" + listModel[index].time,
                                    style: TextStyle(
                                        fontSize: 13.sp,
                                        color: Colors.grey.shade400,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  SizedBox(
                                    width: 5.w,
                                  ),
                                  Icon(
                                    Icons.group_outlined,
                                    size: 3.h,
                                    color: Colors.grey.shade400,
                                  ),
                                  Text(
                                    "\t${listModel[index].people} joining",
                                    style: TextStyle(
                                        fontSize: 13.sp,
                                        color: Colors.grey.shade400,
                                        fontWeight: FontWeight.w500),
                                  )
                                ],
                              ),
                              trailing: Icon(
                                Icons.arrow_forward,
                                size: 4.h,
                                color: Colors.grey.shade400,
                              ),
                            );
                          },
                        ),
                      ),
                      SizedBox(
                        height: 1.h,
                      ),
                      //bottom container
                      Expanded(
                        child: Container(
                            decoration: BoxDecoration(
                                color: Colors.greenAccent.shade100
                                    .withOpacity(0.6),
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(30),
                                    topRight: Radius.circular(30))),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Center(
                                  child: Container(
                                    height: 0.4.h,
                                    width: 9.w,
                                    margin: EdgeInsets.only(top: 1.h),
                                    decoration: BoxDecoration(
                                        color: Colors.grey.shade400,
                                        borderRadius:
                                            BorderRadius.circular(50)),
                                  ),
                                ),
                                //popular text
                                Container(
                                  margin: EdgeInsets.only(
                                      left: 5.w, right: 5.w, top: 1.5.h),
                                  child: Row(
                                    children: [
                                      Text(
                                        "Popular Courses",
                                        style: TextStyle(
                                            fontSize: 20.sp,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      SizedBox(
                                        width: 1.5.w,
                                      ),
                                      Image.asset(
                                        "lib/icons/fire.png",
                                        height: 3.2.h,
                                      )
                                    ],
                                  ),
                                ),
                                Flexible(
                                  child: InkWell(
                                    onTap: (){
                                      Get.to(()=>CourseDetail());
                                    },
                                    child: Container(
                                      height: 13.h,
                                      margin: EdgeInsets.symmetric(horizontal: 4.w,vertical: 1.h),
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      padding: EdgeInsets.all(15),
                                      child: Column(
                                        children: [
                                          Row(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Icon(
                                                Icons.radio,
                                                size: 4.5.h,
                                                color: Colors.blueAccent,
                                              ),
                                              SizedBox(width: 3.w,),
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  SizedBox(
                                                    width: 71.w,
                                                      child: Text(
                                                    "Master Unity: Building Fully 6 Featured Games",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    maxLines: 1,
                                                    style: TextStyle(
                                                        fontSize: 17.sp,
                                                        fontWeight:
                                                            FontWeight.w700),
                                                  )),
                                                  Row(
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
                                                  )
                                                ],
                                              )
                                            ],
                                          ),
                                          SizedBox(height: 0.5.h,),
                                          SizedBox(
                                            width: 95.w,
                                            child: Text("Learn how to plan, design and publish your application",overflow: TextOverflow.ellipsis,style: TextStyle(fontSize: 13.5.sp,color: Colors.grey.shade500),),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            )),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
