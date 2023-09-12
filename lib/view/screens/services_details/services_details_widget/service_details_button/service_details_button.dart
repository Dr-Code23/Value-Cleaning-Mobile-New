import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../../core/assets_manager/assets_manager.dart';
import '../../../../../core/color_manager/color_manager.dart';
import '../../../../../core/route_manager/page_name.dart';
import '../../../../../core/style_font_manager/style_manager.dart';
import '../../../../../core/text_manager/text_manager.dart';
import '../../../../core_widgets/elevated_button/elevated_button_custom.dart';
import '../../../schedule_screen/schedule_screen/schedule_screen.dart';

class ServiceDetailsButtons extends StatelessWidget {
  const ServiceDetailsButtons({super.key});

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
                      padding:  EdgeInsets.all(16.sp),
                      child: ElevatedButtonCustom(
                        width: 172.w,
                        height: 48.h,
                        radius: 8,
                        colors: ColorManager.colorDeepBlue,
                        widget: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset(AssetsManager.CHAT,color: ColorManager.colorWhite,),
                            SizedBox(width: 8.w,),
                            Text(TextManager.CHAT,style: getBoldStyle(color: ColorManager.colorWhite,fontSize: 18),)
                          ],
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding:  EdgeInsets.only(right: 16.w,top: 16.h,bottom: 16.h),
                          child: ElevatedButtonCustom(
                            onPressed: (){
                              Get.to(()=>ScheduleScreen(),transition: Transition.downToUp,duration: Duration(
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
                                Text(TextManager.SCHEDULE,style: getBoldStyle(color: ColorManager.colorWhite,fontSize: 18),)
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
