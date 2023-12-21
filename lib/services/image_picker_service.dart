import 'package:image_picker/image_picker.dart';

class ImagePickerService {
  final imagePicker = ImagePicker();

  Future<XFile?> getImageFromCamera() {
    return imagePicker.pickImage(source: ImageSource.camera);
  }

  Future<XFile?> getImageFromGallery() {
    return imagePicker.pickImage(source: ImageSource.gallery);
  }
}
