import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:third_lesson/common/common_widgets.dart';
import 'package:third_lesson/test.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding:  EdgeInsets.symmetric(vertical: 8.0.h, horizontal: 30.w),
        child: 
        SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                Row(
                  children: [
                    Expanded(child: Container()),
                    GestureDetector(
                      onTap: (){
                        
                      },
                      child: Row(
                        children: [
                          Text("Skip", style: TextStyle(color: Colors.grey.shade700.withOpacity(1)),),
                          Icon(Icons.chevron_right, color: Colors.grey.shade700,)
                        ],
                      ),
                    )
                  ],
                ),
              SizedBox(height: 80.h),
              Text("Login", style: TextStyle(
                color: Colors.black, fontSize: 24.sp, fontWeight: FontWeight.w600
              ),),
              SizedBox(height: 20.h),
              Text("Welcome back, login to continue enjoy professional services at a lowers cost.", style: TextStyle(
                  color: Colors.grey.shade800, fontSize: 14.sp, fontWeight: FontWeight.normal
              ),),
              SizedBox(height: 40.h),
              buildTextField(emailController, "Enter your Email", "Email Address", Icons.message),
              SizedBox(height: 20.h),
              buildTextField(passController, "Enter your password", "Password", Icons.key, password: true),
              SizedBox(height: 40.h),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>TestPage()));
                },
                child: Container(
                  width: 364.w,
                  height: 60.h,
                  decoration: BoxDecoration(
                    color: Colors.green.shade800,
                    borderRadius: BorderRadius.circular(8.w)
                  ),
                  child: Center(
                    child: Text(
                      "Login",
                      style: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w700
                      ),
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
