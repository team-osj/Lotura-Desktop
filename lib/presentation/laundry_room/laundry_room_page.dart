import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lotura_desktop/domain/laundry/entity/machine_entity.dart';
import 'package:lotura_desktop/presentation/laundry_room/bloc/laundry_room_bloc.dart';
import 'package:lotura_desktop/presentation/laundry_room/bloc/laundry_room_state.dart';
import 'package:lotura_desktop/presentation/widgets/machine_button.dart';

class LaundryRoomPage extends StatelessWidget {
  const LaundryRoomPage({super.key});

  final List<Widget> tabs = const [
    Tab(
      text: '학교측 세탁실',
      height: 50,
    ),
    Tab(
      text: '기숙사측 세탁실',
      height: 50,
    ),
    // Tab(
    //   text: '여자 세탁실',
    //   height: 50,
    // )
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: BlocBuilder<LaundryRoomBloc,
                LaundryRoomState<List<MachineEntity>>>(
            builder: (context, state) => switch (state) {
                  Empty() => const Text("초기상태"),
                  Loading() => const Text("로딩중"),
                  Error(errorObj: final error) =>
                    Text("에러 : ${error.toString()}"),
                  Loaded() => TabBarView(
                      children: [
                        ScrollConfiguration(
                          behavior: const ScrollBehavior()
                              .copyWith(overscroll: false),
                          child: ListView.builder(
                            itemCount: 8,
                            itemBuilder: (context, index) {
                              return Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  MachineButton(
                                      state: state.data[index].machineState,
                                      index: index + 1,
                                      deviceType: state.data[index].deviceType),
                                  MachineButton(
                                      state: state.data[index + 8].machineState,
                                      index: index + 9,
                                      deviceType:
                                          state.data[index + 8].deviceType),
                                ],
                              );
                            },
                          ),
                        ),
                        ScrollConfiguration(
                          behavior: const ScrollBehavior()
                              .copyWith(overscroll: false),
                          child: ListView.builder(
                            itemCount: 8,
                            itemBuilder: (context, index) {
                              return Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  MachineButton(
                                      state:
                                          state.data[index + 16].machineState,
                                      index: index + 17,
                                      deviceType:
                                          state.data[index + 16].deviceType),
                                  MachineButton(
                                      state:
                                          state.data[index + 24].machineState,
                                      index: index + 25,
                                      deviceType:
                                          state.data[index + 24].deviceType),
                                ],
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                }),
        bottomNavigationBar: TabBar(
          indicatorColor: Colors.white,
          labelStyle: const TextStyle(
              color: Colors.blue, fontWeight: FontWeight.bold, fontSize: 20),
          indicatorWeight: 3,
          tabs: tabs,
        ),
      ),
    );
  }
}
