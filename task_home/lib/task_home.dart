import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:task_home/component.dart';
import 'package:task_home/cubit/task_cubit.dart';
import 'package:task_home/cubit/task_state.dart';

class TaskHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => TaskCubit(),
      child: BlocConsumer<TaskCubit, TaskStates>(
        listener: (BuildContext context, TaskStates state) {},
        builder: ((BuildContext context, TaskStates state) {
          var cubit = TaskCubit.get(context);
          return Scaffold(
            appBar: AppBar(
              toolbarHeight: 68.0,
              title: CircleImage(),
              actions: [
                ButtonA(image: 'bell.svg', clor: '292639'),
                Space(0, 15),
                ButtonA(image: 'Category.svg', clor: '292639'),
                Space(0, 16)
                // ButtonA(
                //   image: image,
                // )
              ],
            ),
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Space(46, 0),
                    TextA(),
                    Space(16, 0),
                    TextB(),
                    Space(24, 0),
                    SearchPart(),
                    Space(24, 0),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          ButtonB(
                            text: 'Beach',
                            function: () {
                              cubit.buttonA();
                            },
                            clor: cubit.isA
                                ? HexColor('0995EE')
                                : HexColor('292639'),
                          ),
                          Space(0, 16),
                          ButtonB(
                            text: 'Camp',
                            function: () {
                              cubit.buttonB();
                            },
                            clor: cubit.isB
                                ? HexColor('0995EE')
                                : HexColor('292639'),
                          ),
                          Space(0, 16),
                          ButtonC(
                              text: 'Mountain',
                              function: () {
                                cubit.buttonC();
                              },
                              clor: cubit.isC
                                  ? HexColor('0995EE')
                                  : HexColor('292639')),
                          Space(0, 16),
                          ButtonB(
                              text: 'Forest',
                              function: () {
                                cubit.buttonD();
                              },
                              clor: cubit.isD
                                  ? HexColor('0995EE')
                                  : HexColor('292639')),
                        ],
                      ),
                    ),
                    Space(24, 0),
                    PictureSec(),
                    Space(13.5, 0),
                  ],
                ),
              ),
            ),
            bottomNavigationBar: barButton(),
          );
        }),
      ),
    );
  }
}
