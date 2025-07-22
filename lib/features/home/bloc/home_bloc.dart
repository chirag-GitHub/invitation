import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../repository/home_api_repository.dart';

part 'home_events.dart';
part 'home_states.dart';

class HomeBloc extends Bloc<HomeEvents, HomeStates> {
  HomeApiRepository homeApiRepository;

  int page = 1;
  int pageSearch = 1;
  ScrollController scrollController = ScrollController();

  HomeBloc({required this.homeApiRepository})
      : super(
          HomeStates(),
        ) {
    // on<WidgetRefresh>(widgetRefresh);
  }





}
