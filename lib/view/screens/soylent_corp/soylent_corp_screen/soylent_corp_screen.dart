
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:value_cleaning/core/style_font_manager/style_manager.dart';
import 'package:value_cleaning/core/text_manager/text_manager.dart';
import 'package:value_cleaning/view/core_widgets/custom_arrow_left/custom_arrow_left.dart';
import 'package:value_cleaning/view/core_widgets/elevated_button/elevated_button_custom.dart';
import '../../../../core/assets_manager/assets_manager.dart';
import '../../../../core/color_manager/color_manager.dart';
import '../soylent_corp_widget/soylent_corp_button/soylent_corp_button.dart';
import '../soylent_corp_widget/soylent_corp_widget/soylent_corp_widget.dart';
class SoylentCorpScreen extends StatelessWidget
{
  SoylentCorpScreen({super.key});
  // Initial Selected Value
  @override
  Widget build(BuildContext context)
  {
    return  Scaffold(
backgroundColor: ColorManager.colorWhite,
        body: Stack(
          children:<Widget> [
            Row(
              children: [
                CustomLeftArrowIcon(
                    right: 0,
                    left: 16,
                    color: Colors.red,
                    width: 30,
                    height: 30,
                    top: 60,
                    bottom: 181,
                    onPressed: (){
                    }),
              ],
            ),
            Image.asset(
              AssetsManager.SOYLENT_CORP,
              fit: BoxFit.cover,
            ),
            SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:
                  [
                    Padding(
                      padding: EdgeInsets.only(top: 230.h),
                      child: Column(
                        children: [
                          Container(
                            width: 390.w,
                            decoration:  BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(24.r),
                                topRight: Radius.circular(24.r),
                              ),
                              color: ColorManager.colorScaffold,
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding:  EdgeInsets.only(bottom: 20.0.h,left: 16.w,right: 16.w),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children:
                                    [
                                      SoylentCorpWidget(),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 150.h,),
                                SoylentCorpButtons()
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}