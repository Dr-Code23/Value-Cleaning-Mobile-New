import 'package:flutter/material.dart';
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
import '../../../../core_widgets/text_form_field/text_form_field_custom.dart';
import '../language_widget/language_widget.dart';
class CustomTranslateForm extends StatelessWidget {
  const CustomTranslateForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
        child:  Column(
          children: [
            Container(
              width: 306.w,
              height: 48.h,
              decoration: BoxDecoration(
                color: ColorManager.colorWhite,
                borderRadius: BorderRadius.circular(8.r),
              ),
              child: Row(
                children: [
                  SizedBox(width: 16.w,),
                  SvgPicture.asset(AssetsManager.LANGUAGE),
                  SizedBox(width: 8.w,),
                  Text(TextManager.Language,style: getBoldStyle(color: ColorManager.colorGrey,fontSize: 16.sp),),
                  SizedBox(width: 70.w,),
                  DropdownButton<Language>(
                    icon:SvgPicture.asset(AssetsManager.Arrow_Down),
                    onChanged: (Language? language) async {
                      // context.setLocale(Locale(language!
                      //     .languageCode));
                      // Appcubit.get(context).changeLang();
                    },
                    items: Language.languageList()
                        .map<DropdownMenuItem<Language>>(
                          (e) => DropdownMenuItem<Language>(
                        value: e,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Text(
                              e.flag,
                              style: const TextStyle(fontSize: 30),
                            ),
                            Text(e.name)
                          ],
                        ),
                      ),
                    )
                        .toList(),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30.h,),
            ElevatedButtonCustom(
              width: 171.w,
              height: 48.h,
              radius: 8.r,
              colors: ColorManager.colorPrimary,
              widget: Text(TextManager.STARTED,style: getBoldStyle(color: ColorManager.colorWhite,fontSize: 18)),
              onPressed: (){
                Get.toNamed(PageName.ON_BOARDING);
              },

            )

          ],
        ),

    );
  }
}