import 'package:fifthlesson_simplecode/constants/app_colors.dart';
import 'package:fifthlesson_simplecode/constants/app_styles.dart';
import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      padding: const EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
          color: AppColors.neutral1, borderRadius: BorderRadius.circular(100)),
      child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
        const Icon(
          Icons.search_outlined,
          size: 24,
          color: AppColors.neutral2,
        ),
        const SizedBox(width: 18),
        SizedBox(
          width: MediaQuery.of(context).size.width / 2,
          child: TextField(
            controller: controller,
            decoration: InputDecoration(
              hintText: 'Найти персонажа',
              hintStyle: AppStyles.s16w400.copyWith(
                color: AppColors.neutral2,
              ),
              border: InputBorder.none,
            ),
          ),
        ),
        const Spacer(),
        Row(
          children: const [
            SizedBox(
                height: 20,
                child: VerticalDivider(
                  thickness: 2,
                )),
            Icon(
              Icons.filter_list_alt,
              color: AppColors.neutral2,
            )
          ],
        ),
      ]),
    );
  }
}
