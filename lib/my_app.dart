import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:haiku_mobile/blocs/location/location_states.dart';
import 'package:haiku_mobile/views/delegates/haiku_app_bar_view_delegate.dart';
import 'package:haiku_mobile/views/delegates/haiku_body_view_delegate.dart';
import 'package:haiku_mobile/views/widgets/haiku_bottom_bar.dart';
import 'blocs/location/location_bloc.dart';
import 'blocs/location/location_events.dart';
import 'enums/enums.dart';
import 'theme/theme.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My App',
      theme: theme,
      home: SafeArea(
        child: MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (BuildContext locationContext) => LocationBloc(),
            ),
          ],
          child: Scaffold(
            appBar: HaikuAppBar(),
            body: HaikuBodyViewDelegate(),
            bottomNavigationBar: HaikuBottomBar(),
          ),
        ),
      ),
    );
  }
}
