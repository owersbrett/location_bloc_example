import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:haiku_mobile/blocs/location/location_bloc.dart';
import 'package:haiku_mobile/blocs/location/location_events.dart';
import 'package:haiku_mobile/blocs/location/location_states.dart';
import 'package:haiku_mobile/enums/enums.dart';

class HaikuBottomBar extends StatelessWidget {
  Color iconColor(
    LocationEnum iconLocation,
    LocationEnum activeLocation,
  ) =>
      iconLocation == activeLocation ? Colors.white : Colors.black;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LocationBloc, LocationState>(
      builder: (locationContext, locationState) {
        return Container(
          height: 70,
          width: MediaQuery.of(context).size.width,
          color: Colors.red,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: Icon(
                  Icons.api,
                  color: iconColor(
                    LocationEnum.api,
                    locationState.location,
                  ),
                ),
                onPressed: () {
                  BlocProvider.of<LocationBloc>(context).add(
                    LocationEvent(destination: LocationEnum.api),
                  );
                },
              ),
              IconButton(
                icon: Icon(
                  Icons.backpack,
                  color: iconColor(
                    LocationEnum.backpack,
                    locationState.location,
                  ),
                ),
                onPressed: () {
                  BlocProvider.of<LocationBloc>(context).add(
                    LocationEvent(destination: LocationEnum.backpack),
                  );
                },
              ),
              IconButton(
                icon: Icon(
                  Icons.cached,
                 color: iconColor(
                    LocationEnum.cache,
                    locationState.location,
                  ),
                ),
                onPressed: () {
                  BlocProvider.of<LocationBloc>(context).add(
                    LocationEvent(destination: LocationEnum.cache),
                  );
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
