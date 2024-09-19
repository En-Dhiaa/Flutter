
import 'package:flutter/cupertino.dart';
import 'package:lottie/lottie.dart';
import 'package:market/core/class/status_request.dart';

import '../constant/images_sources.dart';

class HandlingDataView extends StatelessWidget {
  final StatusRequest statusRequest;
  final Widget widget;
  const HandlingDataView({super.key, required this.statusRequest, required this.widget});

  @override
  Widget build(BuildContext context) {
    return
        statusRequest == StatusRequest.loading ?
         Center(child: Lottie.asset(ImagesAssets.loading1, width: 200)) :
    statusRequest == StatusRequest.offlinefailure ?
    Center(child: Lottie.asset(ImagesAssets.offline, width: 250))  :
   statusRequest == StatusRequest.serverfailure ?
   Center(child: Lottie.asset(ImagesAssets.server, width: 250))  :
    statusRequest == StatusRequest.failure  ?
    Center(child: Lottie.asset(ImagesAssets.noData, width: 250))  : widget;

  }
}
