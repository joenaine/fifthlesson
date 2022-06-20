import 'package:fifthlesson_simplecode/constants/app_colors.dart';
import 'package:fifthlesson_simplecode/constants/app_styles.dart';
import 'package:fifthlesson_simplecode/repos/character_list.dart';
import 'package:fifthlesson_simplecode/widgets/character.dart';
import 'package:fifthlesson_simplecode/widgets/grid_character.dart';
import 'package:fifthlesson_simplecode/widgets/searchfield.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool isGrid = true;

  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 24),
            SearchField(controller: controller),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'ВСЕГО ПЕРСОНАЖЕЙ: 200',
                        style: AppStyles.s10w500
                            .copyWith(color: AppColors.neutral2),
                      ),
                      IconButton(
                          onPressed: () {
                            setState(() {
                              isGrid = !isGrid;
                            });
                          },
                          icon: (isGrid)
                              ? const Icon(Icons.filter_list_outlined)
                              : const Icon(Icons.grid_view)),
                    ],
                  ),
                  (isGrid)
                      ? Center(
                          child: ListView.separated(
                            shrinkWrap: true,
                            itemCount: charactersList.length,
                            itemBuilder: (BuildContext context, int index) {
                              return CharacterWidget(
                                index: index,
                              );
                            },
                            separatorBuilder: (context, index) =>
                                const SizedBox(height: 24),
                          ),
                        )
                      : GridView.count(
                          shrinkWrap: true,
                          primary: false,
                          crossAxisSpacing: 5,
                          mainAxisSpacing: 5,
                          crossAxisCount: 2,
                          children: [
                            for (int index = 0;
                                index < charactersList.length;
                                index++)
                              GridCharacterWidget(index: index),
                          ],
                        ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
