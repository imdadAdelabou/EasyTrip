import "package:easy_trip/utils/styles.dart";
import "package:flutter/material.dart";
import "package:flutter_svg/svg.dart";
import "package:gap/gap.dart";
import "package:google_fonts/google_fonts.dart";

class RoleCard extends StatelessWidget {
  final int id;
  final String title;
  final String description;
  final Color color;
  final String urlIll;
  final bool isSelected;
  final Function() onTap;

  const RoleCard({
    super.key,
    required this.color,
    required this.title,
    required this.urlIll,
    required this.description,
    required this.id,
    this.isSelected = false,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    double maxWidth = MediaQuery.of(context).size.width;

    return GestureDetector(
      onTap: onTap,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          AnimatedContainer(
            duration: const Duration(milliseconds: 600),
            width: double.infinity,
            height: MediaQuery.of(context).size.height * .3,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              border: Border(
                top: BorderSide(
                  color: isSelected ? AppColor.greeNature : color,
                  width: 3.0,
                ),
                right: BorderSide(
                  color: isSelected ? AppColor.greeNature : color,
                  width: 3.0,
                ),
                left: BorderSide(
                  color: isSelected ? AppColor.greeNature : color,
                  width: 3.0,
                ),
                bottom: BorderSide(
                  color: isSelected ? AppColor.greeNature : color,
                  width: 7.0,
                ),
              ),
            ),
            child: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * .3,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: color.withOpacity(0.2),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        title,
                        style: GoogleFonts.lato(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                          color: color,
                        ),
                      ),
                      const Gap(4.0),
                      SizedBox(
                        width: maxWidth * .5,
                        child: Text(
                          description,
                          style: GoogleFonts.lato(
                            fontSize: 10.0,
                            color: color,
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          Positioned(
            left: -20,
            child: SvgPicture.asset(
              urlIll,
              width: (maxWidth / 3) * 2,
              height: (maxWidth / 3) * 2,
              fit: BoxFit.fill,
            ),
          ),
        ],
      ),
    );
  }
}
