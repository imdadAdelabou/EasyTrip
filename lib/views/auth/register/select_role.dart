import "package:easy_trip/components/back_icon.dart";
import "package:easy_trip/components/custom_btn.dart";
import "package:easy_trip/routes.dart";
import "package:easy_trip/utils/app_message.dart";
import "package:easy_trip/utils/constant.dart";
import "package:easy_trip/views/auth/register/role_card.dart";
import "package:flutter/material.dart";
import "package:gap/gap.dart";
import "package:google_fonts/google_fonts.dart";

class SelectRole extends StatefulWidget {
  static String routeName = "/select-role";
  const SelectRole({super.key});

  @override
  State<SelectRole> createState() => _SelectRoleState();
}

class _SelectRoleState extends State<SelectRole> {
  TypeUser? typeUserSelected;
  String? currentPath;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(
            horizontal: horizontalSpaceBtwScreenAndComponent,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Gap(20.0),
              BackIcon(
                action: () {
                  Navigator.of(context).pop();
                },
              ),
              const Gap(8.0),
              Text(
                AppMessage.chooseYourRoleLabel,
                style: GoogleFonts.lato(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Gap(20.0),
              ...userChoices
                  .map<Widget>(
                    (e) => Padding(
                      padding: const EdgeInsets.only(bottom: 20.0),
                      child: RoleCard(
                        id: userChoices.indexOf(e),
                        title: e.title,
                        color: e.color,
                        urlIll: e.urlImage,
                        description: e.description,
                        isSelected: typeUserSelected == e.userType,
                        onTap: () {
                          setState(() {
                            typeUserSelected = e.userType;
                            currentPath = e.nextPath;
                          });
                        },
                      ),
                    ),
                  )
                  .toList(),
              const Gap(10.0),
              CustomBtn(
                content: AppMessage.nextLabel,
                action: currentPath != null && currentPath!.isNotEmpty
                    ? () => router.go(
                          currentPath!,
                        )
                    : null,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
