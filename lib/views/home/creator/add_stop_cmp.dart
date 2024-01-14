import 'package:easy_trip/components/back_icon.dart';
import 'package:easy_trip/components/custom_btn.dart';
import 'package:easy_trip/components/img_picker.dart';
import 'package:easy_trip/components/input_with_label.dart';
import 'package:easy_trip/models/path/path.dart';
import 'package:easy_trip/providers/app_state.dart';
import 'package:easy_trip/utils/app_message.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';

class AddStopDialog extends StatefulWidget {
  const AddStopDialog({Key? key}) : super(key: key);

  @override
  State<AddStopDialog> createState() => _AddStopDialogState();
}

class _AddStopDialogState extends State<AddStopDialog> {
  XFile? _selectdFile;
  final TextEditingController _nameStop = TextEditingController();
  final TextEditingController _positionStop = TextEditingController();
  final TextEditingController _descriptionStop = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: 1.0,
      heightFactor: 1.0,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              const Gap(30.0),
              BackIcon(
                action: () => Navigator.of(context).pop(),
              ),
              const Gap(30.0),
              InputWithLabel(
                label: AppMessage.lastNameLabel,
                hintText: "",
                keyBoardType: TextInputType.text,
                controller: _nameStop,
                isRequired: true,
              ),
              const Gap(20.0),
              InputWithLabel(
                label: AppMessage.localizationLabel,
                hintText: "",
                keyBoardType: TextInputType.text,
                prefixIcon: const Icon(FontAwesomeIcons.mapPin),
                controller: _positionStop,
                isRequired: true,
              ),
              const Gap(20.0),
              InputWithLabel(
                label: AppMessage.descriptionCircuit,
                hintText: "",
                keyBoardType: TextInputType.text,
                minLines: 2,
                maxLines: null,
                controller: _descriptionStop,
                isRequired: true,
              ),
              const Gap(20.0),
              Text(
                AppMessage.attractiveImgLabel,
                style: GoogleFonts.lato(
                  fontWeight: FontWeight.w600,
                ),
              ),
              const Gap(4.0),
              ImgPicker(
                getFile: (XFile? file) {
                  _selectdFile = file;
                },
              ),
              const Gap(60.0),
              CustomBtn(
                content: AppMessage.addLabel,
                action: () {
                  if (_formKey.currentState!.validate()) {
                    PathCircuit pathCircuit = PathCircuit(
                      id: "1",
                      title: _nameStop.text,
                      description: _descriptionStop.text,
                      position: _positionStop.text,
                      urlImage: _selectdFile != null ? _selectdFile!.path : '',
                    );
                    Provider.of<AppState>(context, listen: false)
                        .addToPaths(pathCircuit);
                    Navigator.of(context).pop();
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
