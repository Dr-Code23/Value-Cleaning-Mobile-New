import 'package:confetti/confetti.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/color_manager/color_manager.dart';
import '../../../../../core/style_font_manager/style_manager.dart';
import '../../../../../core/text_manager/text_manager.dart';
import '../../../../core_widgets/custom_bottom_sheet_button/custom_bottom_sheet_button.dart';
import '../../../../core_widgets/elevated_button/elevated_button_custom.dart';
import '../show_dialog_button/show_dialog_button.dart';
class CheckOutButton extends StatefulWidget {
  @override
  State<CheckOutButton> createState() => _CheckOutButtonState();
}

class _CheckOutButtonState extends State<CheckOutButton> {
  ConfettiController _confettiController=ConfettiController();

  bool isplay=false;

  void initState(){

    super.initState();

  }
  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        Container(
            width: double.infinity,
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
            child:CustomBottomSheetButton(text: TextManager.PAYMENT_CONFIRMATIO,onPressed: (){
                _confettiController.play();

                _confettiController.addListener(() {
                  isplay=_confettiController.state==ConfettiControllerState.playing;

                });
                Future.delayed(Duration(seconds: 1),(){
                  _confettiController.stop();

                });
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    backgroundColor: ColorManager.colorWhite,
                     title:  Column(
                       children: [
                         Center(child: Text(TextManager.PAYMENT_SUCCESSFLY,style: getBoldStyle(color: ColorManager.colorDeepGreen,fontSize: 20) ,)),
                         SizedBox(height: 50.h,),
                         Align(
                           alignment: Alignment.topCenter,
                           child: ConfettiWidget(
                             confettiController: _confettiController,
                             maxBlastForce: 100,
                             minBlastForce: 10,
                             blastDirectionality: BlastDirectionality.explosive,
                             emissionFrequency: 0.50,
                             numberOfParticles: 10,
                             shouldLoop:true,
                             gravity: 1,
                           ),
                         ),
                         SizedBox(height: 100.h,),
                         Row(
                           children: [
                             Text(TextManager.ORDER_CODE,style: getBoldStyle(color: ColorManager.colorDeepGrey,fontSize: 20)),
                             SizedBox(width: 2.w,),
                             Text("10805128:",style: getBoldStyle(color: ColorManager.colorDeepGreen,fontSize: 24)),
                           ],
                         ),
                         SizedBox(height: 50.h,),
                         ShowDialogButton(),
                       ],
                     ),
                  ),
                );
              },
            )

        )

      ],
    );
  }
}
