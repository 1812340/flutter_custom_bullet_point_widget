import 'package:custom_text_field/constants/widget/bullet_point.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Home extends ConsumerStatefulWidget {
  const Home({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeState();
}

class _HomeState extends ConsumerState<Home> {
  

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
        body: SizedBox(
      height: screenHeight,
      width: screenWidth,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: screenHeight * 0.5,
          ),
          Text("This is custom bullet point widget"),
          SizedBox(
            height: 20.h,
          ),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: screenWidth*0.3),
            child: UnorderedList(["this is bullet point widget"]),
          ),
        ],
      ),
    ));
  }
}
