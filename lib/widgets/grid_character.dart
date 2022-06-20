import 'package:fifthlesson_simplecode/constants/app_colors.dart';
import 'package:fifthlesson_simplecode/constants/app_styles.dart';
import 'package:fifthlesson_simplecode/repos/character_list.dart';
import 'package:flutter/material.dart';

import 'avatar.dart';

class GridCharacterWidget extends StatelessWidget {
  const GridCharacterWidget({
    Key? key,
    required this.index,
  }) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Avatar(height: 122, width: 120),
        Text(charactersList[index].life,
            style: AppStyles.s10w500.copyWith(
              color: AppColors.more1,
            )),
        Text(charactersList[index].name,
            style: AppStyles.s16w500.copyWith(
              color: AppColors.mainText,
            )),
        Text('Человек, ${charactersList[index].gender}',
            style: AppStyles.s12w400.copyWith(
              color: AppColors.neutral2,
            )),
      ],
    );
  }
}
