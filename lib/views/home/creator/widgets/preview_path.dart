import 'dart:io';

import 'package:easy_trip/models/path/path.dart';
import 'package:easy_trip/utils/app_message.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class PreviewPath extends StatelessWidget {
  final PathCircuit path;
  const PreviewPath({
    super.key,
    required this.path,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 108.0,
      padding: const EdgeInsets.fromLTRB(
        24.0,
        16.0,
        24.0,
        16.0,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        color: Colors.white,
      ),
      child: Row(
        children: [
          Container(
            width: 70,
            height: double.infinity,
            decoration: BoxDecoration(
              color: const Color(0xffDEDEDE),
              borderRadius: BorderRadius.circular(12.0),
              image: DecorationImage(
                image: FileImage(
                  File(path.urlImage),
                ),
                fit: BoxFit.fill,
              ),
            ),
          ),
          const Gap(24.0),
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '${AppMessage.arretLabel} #${path.id}',
                style: GoogleFonts.lato(
                  fontSize: 14.0,
                  color: const Color(0xff666666),
                ),
              ),
              const Gap(2.0),
              Text(
                path.title,
                style: GoogleFonts.lato(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Gap(6.0),
              Center(
                child: Text(
                  path.description,
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.lato(
                    fontSize: 14.0,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
