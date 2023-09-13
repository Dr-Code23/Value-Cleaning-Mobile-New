import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:value_cleaning/view/screens/onboarding/onboarding_Widget/onboarding_buttons/onboarding_buttons.dart';
import '../../../../core/color_manager/color_manager.dart';
import '../../../../core/style_font_manager/style_manager.dart';
import '../../../core_widgets/custom_arrow_left/custom_arrow_left.dart';
import '../onboarding_Widget/build_dot_widget/build_Dot_widget.dart';
import '../onboarding_Widget/onboarding_widget/onboarding_widget.dart';

class OnBordingScreen extends StatefulWidget {
  @override
  _OnBordingScreenState createState() => _OnBordingScreenState();
}
class _OnBordingScreenState extends State<OnBordingScreen> {
  int currentIndex = 0;
  PageController ?_controller;

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }
  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
            width: 1.sw,
            child: Column(
                children: [
                  CustomLeftArrowIcon(
                    top: 60,
                    bottom: 90.02,
                    left: 16,
                    right: 350,
                    onPressed: (){

                    },
                  ),
                  Expanded(
                    child: PageView.builder(
                      controller: _controller,
                      itemCount: contents.length,
                      onPageChanged: (int index) {
                        setState(() {
                          currentIndex = index;
                        });
                      },
                      itemBuilder: (_, i) {
                        return Column(
                          children: [
                            Image(
                              width: 197.w,
                              height: 280.h,
                              image: AssetImage(
                                contents[i].image!,
                              ),
                            ),
                            SizedBox(height: 40.h,),
                            Text(
                              contents[i].title!,
                              style: getBoldStyle(color: ColorManager.colorLightBlack,fontSize: 18)
                            ),
                            SizedBox(height: 16.h),
                            Text(
                              contents[i].discription!,
                              textAlign: TextAlign.center,
                              style: getBoldStyle(color: ColorManager.colorLightBlack,fontSize: 14)
                            ),
                            SizedBox(height: 40.h),
                          ],
                        );
                      },
                    ),
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                          contents.length,
                              (index) =>
                              buildDot(index, context, currentIndex),
                        ),
                      ),

                      SizedBox(height: 20.h,),
                      OnBoardingButtons(controller: _controller,currentIndex: currentIndex,)
                    ],
                  )
                ])
        ),
      ),
    );
  }
}