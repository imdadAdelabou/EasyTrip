import "dart:io";

import "package:easy_trip/services/image_picker_service.dart";
import "package:easy_trip/utils/app_asset.dart";
import "package:easy_trip/utils/app_message.dart";
import "package:flutter/material.dart";
import "package:flutter_svg/svg.dart";
import "package:font_awesome_flutter/font_awesome_flutter.dart";
import "package:google_fonts/google_fonts.dart";
import "package:image_picker/image_picker.dart";

class ImgPicker extends StatefulWidget {
  const ImgPicker({
    super.key,
  });

  @override
  State<ImgPicker> createState() => _ImgPickerState();
}

class _ImgPickerState extends State<ImgPicker> {
  XFile? img;

  void _showAlertDialogue(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        content: ImgPickerCmp(
          getFile: (XFile? file) {
            Navigator.of(context).pop();
            setState(() {
              img = file;
            });
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _showAlertDialogue(context),
      child: Container(
        width: 107,
        height: 116,
        decoration: BoxDecoration(
          color: const Color(0xffF6F6F6),
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: img != null
            ? Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Image.file(
                      File(img!.path),
                      width: double.infinity,
                      height: double.infinity,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Positioned(
                    top: 10,
                    right: 10,
                    child: SvgPicture.asset(
                      AppAsset.editIcon,
                    ),
                  ),
                ],
              )
            : const Icon(
                FontAwesomeIcons.plus,
                color: Color(0xffABABAB),
              ),
      ),
    );
  }
}

class ImgPickerCmp extends StatefulWidget {
  final Function(XFile?) getFile;
  const ImgPickerCmp({
    super.key,
    required this.getFile,
  });

  @override
  State<ImgPickerCmp> createState() => _ImgPickerCmpState();
}

class _ImgPickerCmpState extends State<ImgPickerCmp> {
  XFile? file;
  ImagePickerService imagePicker = ImagePickerService();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ListTile(
          onTap: () async {
            file = await imagePicker.getImageFromCamera();
            widget.getFile(file);
          },
          leading: const Icon(
            FontAwesomeIcons.camera,
          ),
          title: Text(
            AppMessage.sinceCamera,
            style: GoogleFonts.lato(
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        ListTile(
          onTap: () async {
            file = await imagePicker.getImageFromGallery();
            widget.getFile(file);
          },
          leading: const Icon(
            FontAwesomeIcons.photoFilm,
          ),
          title: Text(
            AppMessage.sinceGalleryLabel,
            style: GoogleFonts.lato(
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }
}
