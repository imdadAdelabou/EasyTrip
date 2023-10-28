import "package:easy_trip/components/circle_picture_creator_card.dart";
import "package:easy_trip/models/circuit/circuit.dart";
import "package:easy_trip/utils/app_asset.dart";
import "package:easy_trip/utils/app_message.dart";
import "package:easy_trip/utils/constant.dart";
import "package:easy_trip/utils/styles.dart";
import "package:easy_trip/views/home/circuit/cover_img_indicator.dart";
import "package:easy_trip/views/home/circuit/more_circuit_by_author.dart";
import "package:easy_trip/views/home/circuit/piece_detail_circuit.dart";
import "package:flutter/material.dart";
import "package:font_awesome_flutter/font_awesome_flutter.dart";
import "package:gap/gap.dart";
import "package:google_fonts/google_fonts.dart";

class DetailCircuit extends StatefulWidget {
  final Circuit circuit;
  const DetailCircuit({
    super.key,
    required this.circuit,
  });

  @override
  State<DetailCircuit> createState() => _DetailCircuitState();
}

class _DetailCircuitState extends State<DetailCircuit> {
  Color textTitleColor = Colors.white;

  late ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController()
      ..addListener(() {
        setState(() {
          textTitleColor =
              _isSliverAppBarExpanded ? AppColor.orangeColor : Colors.white;
        });
      });
  }

  bool get _isSliverAppBarExpanded {
    return _scrollController.hasClients &&
        _scrollController.offset > (250 - kToolbarHeight);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          controller: _scrollController,
          slivers: <Widget>[
            SliverAppBar(
              expandedHeight: 250,
              flexibleSpace: CoverImgIndicator(
                covers: widget.circuit.covers,
                title: widget.circuit.title,
                textTitleColor: textTitleColor,
              ),
              pinned: true,
              snap: true,
              floating: true,
              leading: InkWell(
                onTap: () => Navigator.of(context).pop(),
                child: const Icon(
                  FontAwesomeIcons.chevronLeft,
                  color: Colors.black,
                ),
              ),
              automaticallyImplyLeading: false,
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  // Build your column items here.
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Gap(30.0),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: horizontalSpaceBtwScreenAndComponent,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            PieceDetailCircuit(
                              label: AppMessage.descriptionLabel,
                              content: widget.circuit.description,
                              icon: FontAwesomeIcons.circleInfo,
                            ),
                            const Gap(10.0),
                            ...widget.circuit.paths
                                .map<Widget>(
                                  (e) => Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text(
                                        "${AppMessage.arretLabel} #${widget.circuit.paths.indexOf(e) + 1}",
                                        style: GoogleFonts.lato(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 14.0,
                                        ),
                                      ),
                                      const Gap(10.0),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          left: 8.0,
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            PieceDetailCircuit(
                                              iconBehindContent:
                                                  FontAwesomeIcons.circleInfo,
                                              content: e.title,
                                            ),
                                            PieceDetailCircuit(
                                              iconBehindContent:
                                                  FontAwesomeIcons.mapPin,
                                              content: e.position,
                                            ),
                                            PieceDetailCircuit(
                                              iconBehindContent:
                                                  FontAwesomeIcons.commentDots,
                                              content: e.description,
                                            ),
                                          ],
                                        ),
                                      ),
                                      const Gap(10.0),
                                    ],
                                  ),
                                )
                                .toList(),
                            const Gap(20.0),
                            Row(
                              children: [
                                Text(
                                  AppMessage.byLabel,
                                  style: GoogleFonts.lato(
                                    color: AppColor.greyColor,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                Text(
                                  'Ola.angel',
                                  style: GoogleFonts.lato(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 16.0,
                                  ),
                                ),
                              ],
                            ),
                            const Gap(8.0),
                            CirclePictureCreatorCard(
                              profile: AppAsset.sampleProfilePicture,
                              backgroundColor: AppColor.blueOceanColor,
                            ),
                            const Gap(8.0),
                            Text(
                              AppMessage.seeMoreCircuit,
                              style: GoogleFonts.lato(
                                fontWeight: FontWeight.w600,
                                fontSize: 17.0,
                              ),
                            ),
                            const Gap(8.0),
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(
                          left: horizontalSpaceBtwScreenAndComponent,
                        ),
                        child: MoreCircuitByAuthor(),
                      ),
                      const Gap(20.0),
                    ],
                  );
                },
                childCount: 1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
