import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:haiku_mobile/blocs/location/location_bloc.dart';
import 'package:haiku_mobile/blocs/location/location_events.dart';
import 'package:haiku_mobile/blocs/location/location_states.dart';
import 'package:haiku_mobile/enums/enums.dart';
import 'package:haiku_mobile/views/widgets/loading_scaffold.dart';

class HaikuBodyViewDelegate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LocationBloc, LocationState>(
      builder: (locationContext, locationState) {
        if (locationState.location == LocationEnum.api) return ApiView();
        if (locationState.location == LocationEnum.backpack)
          return BackpackView();
        if (locationState.location == LocationEnum.cache) return CacheView();
        if (locationState.location == LocationEnum.data) return DataView();
        return LoadingScaffold(resource: "General Navigation");
      },
    );
  }
}

class DataView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
          icon: Icon(Icons.east),
          onPressed: () {
            BlocProvider.of<LocationBloc>(context)
                .add(LocationEvent(destination: LocationEnum.api));
          },
        ),
        IconButton(icon: Icon(Icons.west), onPressed: null),
        IconButton(icon: Icon(Icons.north), onPressed: null),
        IconButton(icon: Icon(Icons.south), onPressed: null),
      ],
    );
  }
}

class ApiView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Center(
        child: Container(
          child: Text('Api view'),
        ),
      ),
    );
  }
}

class CacheView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Text('Cache view'),
        ),
      ),
    );
  }
}

class BackpackView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text('Backpack view'),
      ),
    );
  }
}
