import "package:flutter/material.dart";

class RoleCard extends StatelessWidget {
  final Color color;

  const RoleCard({
    super.key,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * .3,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        border: Border(
          top: BorderSide(
            color: color,
            width: 3.0,
          ),
          right: BorderSide(
            color: color,
            width: 3.0,
          ),
          left: BorderSide(
            color: color,
            width: 3.0,
          ),
          bottom: BorderSide(
            color: color,
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
      ),
    );
  }
}
