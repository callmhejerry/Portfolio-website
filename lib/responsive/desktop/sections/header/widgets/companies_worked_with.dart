import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CompainesWorkedWith extends StatelessWidget {
  const CompainesWorkedWith({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        WorkedWithButton(
          company: SvgPicture.asset(
            "icons/clickup.svg",
            fit: BoxFit.scaleDown,
          ),
        ),
        WorkedWithButton(
          company: SvgPicture.asset(
            "icons/dropbox.svg",
            fit: BoxFit.scaleDown,
          ),
        ),
        WorkedWithButton(
          company: SvgPicture.asset(
            "icons/paychex.svg",
            fit: BoxFit.scaleDown,
          ),
        ),
        WorkedWithButton(
          company: SvgPicture.asset(
            "icons/Elastic.svg",
            fit: BoxFit.scaleDown,
          ),
        ),
        WorkedWithButton(
          company: SvgPicture.asset(
            "icons/stripe.svg",
            fit: BoxFit.scaleDown,
          ),
        ),
      ],
    );
  }
}

class WorkedWithButton extends StatelessWidget {
  final Widget company;
  const WorkedWithButton({
    super.key,
    required this.company,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 160,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        border: Border.all(
          color: const Color(0xff1b1b1b),
        ),
      ),
      child: company,
    );
  }
}
