import "package:easy_trip/utils/styles.dart";
import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";

class CoverImgIndicator extends StatefulWidget {
  final String title;
  final List<String> covers;
  final Color textTitleColor;
  const CoverImgIndicator({
    super.key,
    required this.covers,
    required this.title,
    required this.textTitleColor,
  });

  @override
  State<CoverImgIndicator> createState() => _CoverImgIndicatorState();
}

class _CoverImgIndicatorState extends State<CoverImgIndicator> {
  int currentIndex = 0;
  

  @override
  Widget build(BuildContext context) {
    double maxHeight = MediaQuery.of(context).size.height;
    double maxWidth = MediaQuery.of(context).size.width;

    return FlexibleSpaceBar(
      centerTitle: false,
      titlePadding: const EdgeInsetsDirectional.only(
        start: 38.0,
        bottom: 16.0,
      ),
      title: Text(
        widget.title,
        style: GoogleFonts.lato(
          fontWeight: FontWeight.bold,
          fontSize: 18.0,
          color: widget.textTitleColor,
        ),
      ),
      background: Stack(
        clipBehavior: Clip.none,
        children: [
          PageView(
            onPageChanged: (int currentPage) => setState(() {
              currentIndex = currentPage;
            }),
            children: widget.covers
                .map<Widget>(
                  (img) => Container(
                    width: double.infinity,
                    height: maxHeight * .6,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(img),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                )
                .toList(),
          ),
          Positioned(
            left: (maxWidth / 2) - 20,
            bottom: 4,
            child: Row(
              children: [
                ...List.generate(
                  widget.covers.length,
                  (index) => Padding(
                    padding: EdgeInsets.only(
                      right: index != widget.covers.length - 1 ? 8.0 : 0,
                    ),
                    child: CircleAvatar(
                      radius: 5.0,
                      backgroundColor: currentIndex == index
                          ? AppColor.blueOceanColor
                          : AppColor.greyColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
