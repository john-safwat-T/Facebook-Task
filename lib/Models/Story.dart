import 'package:facebook_task/Core/Utils/images_assets_provider.dart';

class Story {
  String userImage;
  String storyImage;

  Story(this.storyImage, this.userImage);

  static List<Story> generateStories() {
    return [
      Story(ImagesAssetsProvider.image1IconPath,
          ImagesAssetsProvider.model2IconPath),
      Story(ImagesAssetsProvider.image3IconPath,
          ImagesAssetsProvider.model3IconPath),
      Story(ImagesAssetsProvider.image2IconPath,
          ImagesAssetsProvider.model2IconPath),
      Story(ImagesAssetsProvider.image4IconPath,
          ImagesAssetsProvider.model1IconPath),
      Story(ImagesAssetsProvider.image1IconPath,
          ImagesAssetsProvider.model3IconPath),
      Story(ImagesAssetsProvider.image3IconPath,
          ImagesAssetsProvider.model4IconPath),
      Story(ImagesAssetsProvider.image4IconPath,
          ImagesAssetsProvider.model2IconPath),
    ];
  }
}
