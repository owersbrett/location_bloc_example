import 'package:flutter/material.dart';
import 'package:haiku_mobile/enums/enums.dart';

class LocationEvent {
  const LocationEvent({@required this.destination});

  final LocationEnum destination;

  @override
  List<Object> get props => [destination];
}



