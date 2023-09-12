import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import 'package:value_cleaning/core/style_font_manager/style_manager.dart';
import 'package:value_cleaning/core/text_manager/text_manager.dart';
import 'package:value_cleaning/view/core_widgets/custom_arrow_left/custom_arrow_left.dart';
import 'package:value_cleaning/view/core_widgets/elevated_button/elevated_button_custom.dart';
import '../../../../core/assets_manager/assets_manager.dart';
import '../../../../core/color_manager/color_manager.dart';
import '../../../core_widgets/custom_ratting_bar/custom_rating_bar.dart';
import '../../../core_widgets/next_button_Widget/next_button_Widget/next_button_Widget.dart';
import '../../check_out/check_out_Screen/check_out_Screen.dart';
import '../../order_details/order_details_screen/order_details_screen.dart';
import '../../payment/payment_screen/payment_screen.dart';
import '../../picture/picture_screen/picture_screen.dart';
import '../../services_details/services_details_widget/service_details_button/service_details_button.dart';
import '../../services_details/services_details_widget/services_details_review/services_details_review.dart';
import '../../services_details/services_details_widget/services_form/services_form.dart';
class QrCodeScreen extends StatefulWidget
{
  @override
  State<QrCodeScreen> createState() => _QrCodeScreenState();

}
class _QrCodeScreenState extends State<QrCodeScreen> {

  @override
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');

  Barcode? result;
  QRViewController? controller;
  void qr(QRViewController controller){
    this.controller=controller;
    controller.scannedDataStream.listen((event) {
      setState(() {
        result=event;
      });
    });
  }
  Widget build(BuildContext context)
  {

    return  Scaffold(
        backgroundColor: Colors.black,
        body: Stack(
          children:<Widget> [
            Row(
              children: [
                CustomLeftArrowIcon(
                    color: ColorManager.colorWhite,
                    right: 100.08,
                    left: 22.08,
                    top: 60,
                    bottom: 656.02,
                    onPressed: (){
                    }),
                Padding(
                  padding:  EdgeInsets.only(right: 133.w,bottom: 600.h),
                  child: Text(TextManager.TEAM_CHECK,style: getBoldStyle(color: ColorManager.colorWhite,fontSize: 22),),
                )
              ],
            ),
            QRView(
              key: qrKey,
              onQRViewCreated: qr,
            ),
            Center(
              child: Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  border: Border.all(color: ColorManager.colorWhite,width: 2)
                ),
              ),
            ),
            Center(
              child: (result != null)
                  ? Text(
                  'Barcode Type: ${describeEnum(result!.format)}   Data: ${result!.code}')
                  : Text(' '),
            ),
            SizedBox(height: 24.h,),
            SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:
                  [
                    Padding(
                      padding:  EdgeInsets.only(right: 110.w,left:111.w,top: 520.h),
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
            ),
          ],
        ));
  }
}