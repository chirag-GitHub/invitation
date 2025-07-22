import 'package:flutter/material.dart';


/// A widget for displaying error messages related to movies.
class HomeErrorWidget extends StatelessWidget {
  const HomeErrorWidget({super.key});

  @override
  Widget build(BuildContext context) {

    return Container();
    // return BlocBuilder<HomeBloc, HomeStates>(
    //   builder: (context, state) {
    //     // Checking if the error message indicates no internet connection
    //     if (state.widgetList.message.toString() ==
    //         S.current.noInternetConnection) {
    //       // Displaying InternetExceptionWidget if there's no internet connection
    //       return InterNetExceptionWidget(onPress: () {
    //         context.read<HomeBloc>().add(WidgetFetch());
    //       });
    //     } else {
    //       // Displaying error message as a clickable text if it's not related to internet connection
    //       return AppErrorWidget(
    //           onPress: () {}, message: '${state.widgetList.message} widgetList');
    //     }
    //   },
    // );
  }
}
