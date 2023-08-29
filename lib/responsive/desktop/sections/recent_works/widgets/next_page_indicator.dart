import 'package:flutter/material.dart';

enum PageAction { next, previous }

@immutable
class NextPageIndicator extends StatelessWidget {
  const NextPageIndicator({
    super.key,
    required this.pageAction,
    required this.ontap,
  });

  final PageAction pageAction;
  final void Function()? ontap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        height: 30,
        width: 30,
        alignment: const Alignment(0.2, 0),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: const Color(0xff9C9C9C),
          ),
        ),
        child: Icon(
          pageAction == PageAction.previous
              ? Icons.arrow_back_ios
              : Icons.arrow_forward_ios,
          size: 12,
          color: const Color(0xff9C9C9C),
        ),
      ),
    );
  }
}
