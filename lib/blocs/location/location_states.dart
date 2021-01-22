import 'package:flutter/material.dart';
import 'package:haiku_mobile/enums/enums.dart';

class LocationState {
  final LocationEnum location;


  const LocationState({@required this.location});

  

  @override
  List<Object> get props => [location];
}

