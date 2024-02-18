import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../../Bloc/theme_bloc.dart';

class staggered extends StatefulWidget {
  const staggered({super.key});

  @override
  State<staggered> createState() => _staggeredState();
}

class _staggeredState extends State<staggered> {
  @override
  Widget build(BuildContext context) {
    return StaggeredGrid.count(
      crossAxisCount: 3,
      mainAxisSpacing: 15,
      crossAxisSpacing: 12,
      children: [
        StaggeredGridTile.count(
            crossAxisCellCount: 2,
            mainAxisCellCount: .9,
            child: Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                color: context.read<ThemeBloc>().state == ThemeMode.dark
                    ? Colors.white
                    : Colors.black,
                borderRadius: BorderRadius.circular(10),
              ),
            )),
        StaggeredGridTile.count(
            crossAxisCellCount: 1,
            mainAxisCellCount: .9,
            child: Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                color: context.read<ThemeBloc>().state == ThemeMode.dark
                    ? Colors.white
                    : Colors.black,
                borderRadius: BorderRadius.circular(10),
              ),
            )),
        StaggeredGridTile.count(
            crossAxisCellCount: 1,
            mainAxisCellCount: .9,
            child: Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                color: context.read<ThemeBloc>().state == ThemeMode.dark
                    ? Colors.white
                    : Colors.black,
                borderRadius: BorderRadius.circular(10),
              ),
            )),
        StaggeredGridTile.count(
            crossAxisCellCount: 1,
            mainAxisCellCount: .9,
            child: Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                color: context.read<ThemeBloc>().state == ThemeMode.dark
                    ? Colors.white
                    : Colors.black,
                borderRadius: BorderRadius.circular(10),
              ),
            )),
        StaggeredGridTile.count(
            crossAxisCellCount: 1,
            mainAxisCellCount: .9,
            child: Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                color: context.read<ThemeBloc>().state == ThemeMode.dark
                    ? Colors.white
                    : Colors.black,
                borderRadius: BorderRadius.circular(10),
              ),
            )),
        StaggeredGridTile.count(
            crossAxisCellCount: 3,
            mainAxisCellCount: .9,
            child: Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                color: context.read<ThemeBloc>().state == ThemeMode.dark
                    ? Colors.white
                    : Colors.black,
                borderRadius: BorderRadius.circular(10),
              ),
            )),
        StaggeredGridTile.count(
            crossAxisCellCount: 1,
            mainAxisCellCount: .9,
            child: Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                color: context.read<ThemeBloc>().state == ThemeMode.dark
                    ? Colors.white
                    : Colors.black,
                borderRadius: BorderRadius.circular(10),
              ),
            )),
        StaggeredGridTile.count(
            crossAxisCellCount: 2,
            mainAxisCellCount: .9,
            child: Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                color: context.read<ThemeBloc>().state == ThemeMode.dark
                    ? Colors.white
                    : Colors.black,
                borderRadius: BorderRadius.circular(10),
              ),
            )),
        StaggeredGridTile.count(
            crossAxisCellCount: 2,
            mainAxisCellCount: .9,
            child: Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                color: context.read<ThemeBloc>().state == ThemeMode.dark
                    ? Colors.white
                    : Colors.black,
                borderRadius: BorderRadius.circular(10),
              ),
            )),
        StaggeredGridTile.count(
            crossAxisCellCount: 1,
            mainAxisCellCount: .9,
            child: Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                color: context.read<ThemeBloc>().state == ThemeMode.dark
                    ? Colors.white
                    : Colors.black,
                borderRadius: BorderRadius.circular(10),
              ),
            )),
        StaggeredGridTile.count(
            crossAxisCellCount: 2,
            mainAxisCellCount: .9,
            child: Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                color: context.read<ThemeBloc>().state == ThemeMode.dark
                    ? Colors.white
                    : Colors.black,
                borderRadius: BorderRadius.circular(10),
              ),
            )),
        StaggeredGridTile.count(
            crossAxisCellCount: 1,
            mainAxisCellCount: .9,
            child: Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                color: context.read<ThemeBloc>().state == ThemeMode.dark
                    ? Colors.white
                    : Colors.black,
                borderRadius: BorderRadius.circular(10),
              ),
            )),
        StaggeredGridTile.count(
            crossAxisCellCount: 1,
            mainAxisCellCount: .9,
            child: Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                color: context.read<ThemeBloc>().state == ThemeMode.dark
                    ? Colors.white
                    : Colors.black,
                borderRadius: BorderRadius.circular(10),
              ),
            )),
        StaggeredGridTile.count(
            crossAxisCellCount: 1,
            mainAxisCellCount: .9,
            child: Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                color: context.read<ThemeBloc>().state == ThemeMode.dark
                    ? Colors.white
                    : Colors.black,
                borderRadius: BorderRadius.circular(10),
              ),
            )),
        StaggeredGridTile.count(
            crossAxisCellCount: 1,
            mainAxisCellCount: .9,
            child: Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                color: context.read<ThemeBloc>().state == ThemeMode.dark
                    ? Colors.white
                    : Colors.black,
                borderRadius: BorderRadius.circular(10),
              ),
            )),
        StaggeredGridTile.count(
            crossAxisCellCount: 3,
            mainAxisCellCount: .9,
            child: Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                color: context.read<ThemeBloc>().state == ThemeMode.dark
                    ? Colors.white
                    : Colors.black,
                borderRadius: BorderRadius.circular(10),
              ),
            )),
        StaggeredGridTile.count(
            crossAxisCellCount: 1,
            mainAxisCellCount: .9,
            child: Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                color: context.read<ThemeBloc>().state == ThemeMode.dark
                    ? Colors.white
                    : Colors.black,
                borderRadius: BorderRadius.circular(10),
              ),
            )),
        StaggeredGridTile.count(
            crossAxisCellCount: 2,
            mainAxisCellCount: .9,
            child: Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                color: context.read<ThemeBloc>().state == ThemeMode.dark
                    ? Colors.white
                    : Colors.black,
                borderRadius: BorderRadius.circular(10),
              ),
            )),
        StaggeredGridTile.count(
            crossAxisCellCount: 2,
            mainAxisCellCount: .9,
            child: Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                color: context.read<ThemeBloc>().state == ThemeMode.dark
                    ? Colors.white
                    : Colors.black,
                borderRadius: BorderRadius.circular(10),
              ),
            )),
        StaggeredGridTile.count(
            crossAxisCellCount: 1,
            mainAxisCellCount: .9,
            child: Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                color: context.read<ThemeBloc>().state == ThemeMode.dark
                    ? Colors.white
                    : Colors.black,
                borderRadius: BorderRadius.circular(10),
              ),
            ))
      ],
    );
  }
}

Widget staggeredAnimation() {
  return AnimationLimiter(
      child: GridView.builder(
          itemCount: 15,
          itemBuilder: (BuildContext context, int index) {
            return AnimationConfiguration.staggeredGrid(
                position: index,
                columnCount: 3,
                duration: const Duration(seconds: 1),
                child: const SlideAnimation(
                  child: ScaleAnimation(
                    delay: Duration(milliseconds: 50),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Card(
                        elevation: 5,
                        shape: CircleBorder(),
                        color: Colors.white,
                        shadowColor: Colors.white,
                      ),
                    ),
                  ),
                ));
          },
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3)));
}
