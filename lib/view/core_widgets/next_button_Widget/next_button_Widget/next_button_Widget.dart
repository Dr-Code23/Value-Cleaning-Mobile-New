import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:value_cleaning/view/screens/check_out/check_out_Screen/check_out_Screen.dart';
import 'package:value_cleaning/view/screens/picture/picture_screen/picture_screen.dart';
import '../../../../../core/assets_manager/assets_manager.dart';
import '../../../../../core/color_manager/color_manager.dart';
import '../../../../../core/route_manager/page_name.dart';
import '../../../../../core/style_font_manager/style_manager.dart';
import '../../../../../core/text_manager/text_manager.dart';
import '../../elevated_button/elevated_button_custom.dart';


class NextButtonWidget extends StatelessWidget {
  final Widget? pushTo;
  const NextButtonWidget({super.key, this.pushTo});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            width: 390.2,
            height: 80.h,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: ColorManager.colorBlack.withOpacity(0.20),
                  blurRadius: 8,
                  offset:  Offset(0, 8.h),
                ),
              ],
              borderRadius: BorderRadius.circular(16.r),
              color: ColorManager.colorWhite,
            ),
            child:Row(
              children: [
                Padding(
                    padding:  EdgeInsets.only(right: 100.w,bottom: 10.h,left: 20.w),
                    child: Text("(50\$)",style: getBoldStyle(color: ColorManager.colorPrimary,fontSize: 18),)

                ),
                Row(
                  children: [
                    Padding(
                      padding:  EdgeInsets.only(right: 16.w,top: 16.h,bottom: 16.h),
                      child: ElevatedButtonCustom(
                        onPressed: (){
                          Get.to(()=>pushTo!,transition: Transition.leftToRight,duration: Duration(
                            milliseconds: 650,
                          )
                          );
                        },
                        width: 172.w,
                        height: 48.h,
                        radius: 8,
                        colors: ColorManager.colorPrimary,
                        widget: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset(AssetsManager.ARROW_RIGHT,color: ColorManager.colorWhite,),
                            SizedBox(width: 8.w,),
                            Text(TextManager.NEXT,style: getBoldStyle(color: ColorManager.colorWhite,fontSize: 18),)
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            )

        )

      ],
    );
  }
}
