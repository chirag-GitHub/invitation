// import 'package:flutter/material.dart';
// import 'package:quotanic/configs/config.dart';
// import 'package:quotanic/services/session_manager/session_controller.dart';
//
// class SelectedPropertyArea extends StatelessWidget {
//   const SelectedPropertyArea({super.key, required this.color, required this.wantToShowTitle});
//
//   final Color color;
//   final bool wantToShowTitle;
//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       elevation: 3,
//       margin: EdgeInsets.zero,
//       shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(8)),
//       color: color,
//       child: SizedBox(
//         width: 100.w,
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.start,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Visibility(
//               visible: wantToShowTitle,
//               child: Padding(
//                 padding: const EdgeInsets.all(10),
//                 child: Text(
//                   S.current.AddingDataForBelowPropertyAndArea,
//                   // "Adding data for below property and area",
//                   textAlign: TextAlign.start,
//                   maxLines: 2,
//                   style: Theme.of(context)
//                       .textTheme
//                       .labelMedium
//                       ?.copyWith(color: Colors.white),
//                 ),
//               ),
//             ),
//             Visibility(
//                 visible: wantToShowTitle,
//                 child: Divider(height: 0,thickness: 0.5,)),
//             Padding(
//               padding: const EdgeInsets.all(10),
//               child: Column(
//                 spacing: 8,
//                 children: [
//                   Row(
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: [
//                       AssetsHelper.getImage(AssetUrl.icProperties,
//                           height: 25),
//                       const SizedBox(width: 5),
//                       Flexible(
//                         child: Text(
//                           "${SC.selectedProperty?.nameOfProperty}",
//                           textAlign: TextAlign.start,
//                           maxLines: 2,
//                           style: Theme.of(context)
//                               .textTheme
//                               .bodySmall
//                               ?.copyWith(
//                               color: Colors.white),
//                         ),
//                       ),
//                     ],
//                   ),
//                   Row(
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: [
//                       AssetsHelper.getImage(AssetUrl.icTenant,
//                           height: 25),
//                       const SizedBox(width: 7),
//                       Flexible(
//                         child: Text(
//                           "${SC.selectedArea?.name}",
//                           textAlign: TextAlign.start,
//                           maxLines: 2,
//                           style: Theme.of(context)
//                               .textTheme
//                               .bodySmall
//                               ?.copyWith(color: Colors.white),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
