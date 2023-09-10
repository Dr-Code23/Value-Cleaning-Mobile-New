import 'package:value_cleaning/core/assets_manager/assets_manager.dart';
import 'package:value_cleaning/core/text_manager/text_manager.dart';

class UnbordingContent {
  String ?image;
  String ?title;
  String ?discription;

  UnbordingContent({this.image, this.title, this.discription});
}

List<UnbordingContent> contents = [
  UnbordingContent(
      title: TextManager.Features,
      image:'assets/images/clean2.png',
      discription: "orem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy"
  ),
  UnbordingContent(
      title: TextManager.Features,
      image: 'assets/images/clean3.png',
      discription: "orem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy"
  ),
  UnbordingContent(
      title: TextManager.Features,
      image: 'assets/images/clean2.png',
      discription: "orem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy "
  ),
];