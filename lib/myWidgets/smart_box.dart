import 'package:butlometr/consts/colors.dart';
import 'package:butlometr/consts/dimensions.dart';
import 'package:flutter/material.dart';

getBoxColor(bool currentState) {
  Color color;
  color =
      currentState == true ? AppColors.activeColor : AppColors.inactiveColor;

  return color;
}

getBoxHeight(int rozmiarPanelu) {
  double boxSize = 0;

  switch (rozmiarPanelu % 3) {
    case 0:
      boxSize = BoxSizes.smallBoxHeight;
      break;
    case 1:
      boxSize = BoxSizes.mediumBoxHeight;
      break;
    case 2:
      boxSize = BoxSizes.highBoxHeight;
      break;
    default:
      boxSize = BoxSizes.smallBoxHeight;
  }
  return boxSize;
}

class SmartBox extends StatelessWidget {
  final bool isBoatActive;
  final int rozmiarPanelu;
  const SmartBox({
    super.key,
    required this.isBoatActive,
    required this.rozmiarPanelu,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration.zero,
      width: BoxSizes.boxWidth,
      height: getBoxHeight(rozmiarPanelu),
      decoration: BoxDecoration(
        color: getBoxColor(isBoatActive),
        border: const Border(
          bottom: BorderSide(
            color: AppColors.darkColor,
            width: BoxSizes.strokeSize * 2,
          ),
          right: BorderSide(
            color: AppColors.darkColor,
            width: BoxSizes.strokeSize * 2,
          ),
          top: BorderSide(
            color: AppColors.darkColor,
            width: BoxSizes.strokeSize,
          ),
          left: BorderSide(
            color: AppColors.darkColor,
            width: BoxSizes.strokeSize,
          ),
        ),
        borderRadius: BorderRadius.circular(
          BoxSizes.roundedCorners,
        ), //
      ),
    );
  }
}
