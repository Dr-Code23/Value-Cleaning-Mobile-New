import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

import '../../../../core/color_manager/color_manager.dart';
import '../../../../core/style_font_manager/style_manager.dart';
import '../../../core_widgets/elevated_button/elevated_button_custom.dart';

class QrWidget extends StatefulWidget {

  @override
  State<QrWidget> createState() => _QrWidgetState();
}

class _QrWidgetState extends State<QrWidget> {
  @override
  Widget build(BuildContext context) {

    return  SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:
          [
            Padding(
              padding:  EdgeInsets.only(right: 0.w,left:111.w,top: 520.h),
              child: Text("place the code inside the frame",style: getBoldStyle(color: ColorManager.colorWhite,fontSize: 12),),
            ),

            Padding(
                padding:  EdgeInsets.only(right: 32.w,left:32.w,top: 180.h,bottom: 56.h),
                child: ElevatedButtonCustom(
                  width: 326.w,
                  height: 48.h,
                  borderColor: ColorManager.buttonGrey,
                  colors: ColorManager.buttonGrey,
                  onPressed: (){

                  },
                  widget: Center(child: Text("Accepted (1/5)",style: getBoldStyle(color: ColorManager.colorLightBlack,fontSize: 18),)),
                )
            ),
          ],
        ),
      ),
    );
  }
}
