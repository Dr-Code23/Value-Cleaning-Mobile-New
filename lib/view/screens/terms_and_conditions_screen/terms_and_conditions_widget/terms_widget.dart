import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/color_manager/color_manager.dart';
import '../../../../core/style_font_manager/style_manager.dart';

class TermsWidget extends StatelessWidget {
  const TermsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Sit quia ullamet unde itaque.",
          style: getBoldStyle(
              color: ColorManager.colorBlack, fontSize: 20),
        ),
        SizedBox(
          height: 10.h,
        ),
        Text(
          "consequatur nostrum aliquam suscipit commodi. Quia voluptatem sed harum fugiat veniam quam qui ab blanditiis. Praesentium et eos rem consequuntur et qui et et delectus. Quam voluptas ducimus est mollitia sed quas deserunt dolorem ut.\n"
              " Voluptatibus in assumenda rerum voluptas. Atque provident ut voluptatem incidunt illum.Sit quia ullamEt excepturi est et aliquam quia dolor dignissimos. Quae et vitae voluptatem aut officiis nisi mollitia.\n"
              " Vero repellat repudiandae temporibus quo ipsa mollitia qui. Illo perspiciatis rem. Officia dolore facilis sed adipisci maxime perferendis aperiam. Veritatis ut et pariatur nemo error doloribus voluptatem est eos.\n"
              "Inventore est nesciunt molestiae reiciendis consequatur maxime ullam. Necessitatibus Voluptas consequatur reiciendis corrupti voluptates similique et. Sit eaque aut quo quae impedit aliquam odit. \n"
              "Hic aperiam impedit cum modi dolorum nobis aliquid dolorem.Sit quia ullamVoluptatem ab corrupti. Consequatur optio est quasi animi. Qui adipisci voluptates. Qui vitae in. Ut vero blanditiis tempore dolores. Illo explicabo qui.Qui cum cupiditate perspiciatis ea nemo eos sint et. Et error consequuntur. Quibusdam earum reprehenderit eos fugit. Aut expedita hic asperiores. Labore provident non debitis tempora aperiam ut et.Provident occaecati laborum quo rem sit labore. Dolore ullam maxime dolor porro. Suscipit in corrupti beatae culpa impedit id fugit nam. Occaecati nostrum vel dignissimos.",
          maxLines: 6,
          style: getLight2Style(
              color: ColorManager.colorBlack, fontSize: 18),
        ),
      ],
    );
  }
}
