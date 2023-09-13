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
import '../qr_code_widget/qr_code_widget.dart';

class QrCodeScreen extends StatefulWidget
{
  const QrCodeScreen({super.key});

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
  @override
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
                  border: Border.all(color: ColorManager.colorWhite,width: 2),
                  borderRadius: BorderRadius.circular(10.r),
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
            QrWidget()
          ],
        ));
  }
}