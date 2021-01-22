import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:haiku_mobile/enums/enums.dart';

import 'location_events.dart';
import 'location_states.dart';

class LocationBloc extends Bloc<LocationEvent, LocationState> {
  LocationBloc() : super(LocationState(location: LocationEnum.api));

  LocationEnum _location;
  @override
  Stream<LocationState> mapEventToState(LocationEvent event) async* {
    _location = event.destination;
    
    yield LocationState(location: _location);
  }

  @override
  void onTransition(Transition<LocationEvent, LocationState> transition) {
    print("Current location ${transition.currentState.location}");
    print("Event Destination ${transition.event.destination}");
    print("Next location ${transition.nextState.location}");
    super.onTransition(transition);
  }

}