import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget buildTextField(TextEditingController controller, String hintText, String label, IconData leftIcon, {bool password = false}){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(label, style: TextStyle(
          color: Colors.grey.shade800, fontSize: 16.sp, fontWeight: FontWeight.w500
      )),
      Container(
        width: 364.w,
        height: 50.h,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.w),
            border: Border.all(color: Colors.black)
        ),
        padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 8.w),
        margin: EdgeInsets.symmetric(vertical: 8.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(leftIcon, color: Colors.grey.shade600,size: 18,),
            Container(
              padding: EdgeInsets.only(left: 6.w),
              width: 300.w,
              child: TextField(
                style: TextStyle(
                  color:Colors.black,
                  fontSize: 16.sp
                ),
                controller: controller,
                decoration: InputDecoration(
                  hintText: hintText,
                  hintStyle: TextStyle(
                      color: Colors.grey.shade500
                  ),
                  border: InputBorder.none,

                ),
                obscureText: password,
              ),
            ),
            password? Icon(Icons.visibility_off):Container()
          ],
        ),
      )
    ],
  );
}