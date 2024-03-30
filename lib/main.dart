import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lotura_desktop/di/locator.dart';
import 'package:lotura_desktop/presentation/laundry_room/bloc/laundry_room_bloc.dart';
import 'package:lotura_desktop/presentation/laundry_room/bloc/laundry_room_event.dart';
import 'package:lotura_desktop/presentation/laundry_room/laundry_room_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<LaundryRoomBloc>(
      create: (context) => locator<LaundryRoomBloc>()
        ..add(GetAllLaundryRoomStateEvent())
        ..add(GetLaundryRoomStateEvent()),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: LaundryRoomPage(),
      ),
    );
  }
}
