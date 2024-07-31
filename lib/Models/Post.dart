import 'package:facebook_task/Core/Utils/images_assets_provider.dart';

class Post {

  String userImage;
  String userName;
  String createTime;
  String image;
  int likesCount;
  int commentsCount;

  Post(this.userImage, this.userName, this.createTime, this.image,
      this.likesCount, this.commentsCount);

  static List<Post> generatePostsList(){
    return [
      Post(ImagesAssetsProvider.model1IconPath, "Ahmed", "8h", ImagesAssetsProvider.model1IconPath, 123, 20),
      Post(ImagesAssetsProvider.model3IconPath, "Ahmed", "8h", ImagesAssetsProvider.image3IconPath, 323, 20),
      Post(ImagesAssetsProvider.model4IconPath, "Ahmed", "8h", ImagesAssetsProvider.image2IconPath, 123, 20),
      Post(ImagesAssetsProvider.model2IconPath, "Ahmed", "8h", ImagesAssetsProvider.image4IconPath, 33, 20),
      Post(ImagesAssetsProvider.model2IconPath, "Ahmed", "8h", ImagesAssetsProvider.image2IconPath, 123, 20),
      Post(ImagesAssetsProvider.model2IconPath, "Ahmed", "8h", ImagesAssetsProvider.image2IconPath, 123, 20),
      Post(ImagesAssetsProvider.model2IconPath, "Ahmed", "8h", ImagesAssetsProvider.image2IconPath, 123, 20),
      Post(ImagesAssetsProvider.model3IconPath, "Ahmed", "8h", ImagesAssetsProvider.image2IconPath, 123, 20),
      Post(ImagesAssetsProvider.model2IconPath, "Ahmed", "8h", ImagesAssetsProvider.image3IconPath, 123, 20),
      Post(ImagesAssetsProvider.model2IconPath, "Ahmed", "8h", ImagesAssetsProvider.image4IconPath, 123, 20),
      Post(ImagesAssetsProvider.model1IconPath, "Ahmed", "8h", ImagesAssetsProvider.image2IconPath, 123, 20),
      Post(ImagesAssetsProvider.model2IconPath, "Ahmed", "8h", ImagesAssetsProvider.image1IconPath, 123, 20),
      Post(ImagesAssetsProvider.model4IconPath, "Ahmed", "8h", ImagesAssetsProvider.image3IconPath, 123, 20),
      Post(ImagesAssetsProvider.model3IconPath, "Ahmed", "8h", ImagesAssetsProvider.image4IconPath, 123, 20),
      Post(ImagesAssetsProvider.model4IconPath, "Ahmed", "8h", ImagesAssetsProvider.image2IconPath, 123, 20),
      Post(ImagesAssetsProvider.model1IconPath, "Ahmed", "8h", ImagesAssetsProvider.image2IconPath, 123, 20),
    ];
  }

}
