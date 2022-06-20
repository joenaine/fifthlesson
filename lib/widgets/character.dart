import 'package:fifthlesson_simplecode/constants/app_colors.dart';
import 'package:fifthlesson_simplecode/repos/character_list.dart';
import 'package:flutter/material.dart';

import '../constants/app_styles.dart';
import 'avatar.dart';

class CharacterWidget extends StatelessWidget {
  const CharacterWidget({
    Key? key,
    required this.index,
  }) : super(key: key);
  final int index;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Avatar(height: 74, width: 74),
        const SizedBox(width: 18),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
        ),
      ],
    );
  }
}
