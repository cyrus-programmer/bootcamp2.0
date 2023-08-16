import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TestPage extends StatelessWidget {
  const TestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      color: Colors.white,
      child: Center(
        child: Text("test page", style: TextStyle(
            color: Colors.black, fontSize: 24.sp, fontWeight: FontWeight.w600
        ),),
      ),
    );
  }
}
