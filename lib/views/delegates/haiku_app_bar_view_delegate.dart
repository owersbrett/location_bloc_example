import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:haiku_mobile/blocs/location/location_bloc.dart';
import 'package:haiku_mobile/blocs/location/location_events.dart';
import 'package:haiku_mobile/blocs/location/location_states.dart';
import 'package:haiku_mobile/enums/enums.dart';

class HaikuAppBar extends StatelessWidget with PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LocationBloc, LocationState>(
      builder: (locationContext, locationState) => AppBar(
        title: Text(
          EnumHelper.locationEnumToString(locationState.location),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.data_usage),
            onPressed: () {
              BlocProvider.of<LocationBloc>(context).add(
                LocationEvent(destination: LocationEnum.data),
              );
            },
          ),
        ],
      ),
    );
  }
}
