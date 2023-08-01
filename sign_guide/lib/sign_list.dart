import 'package:flutter/material.dart';
import 'package:sign_guide/model/sign.dart';
import 'package:sign_guide/sign_item.dart';

import 'data/strings.dart';

class SignList extends StatelessWidget {
  late final List<Sign> allSigns;
  SignList({super.key}) {
    allSigns = identifySigns();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Signs"),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: allSigns.length,
          itemBuilder: (BuildContext context, int index) {
            return SignItem(currentSign: allSigns[index]);
          },
        ),
      ),
    );
  }

  List<Sign> identifySigns() {
    List<Sign> tempList = [];
    for (int i = 0; i < 12; i++) {
      var signName = Strings.BURC_ADLARI[i];
      var signDate = Strings.BURC_TARIHLERI[i];
      var signDetails = Strings.BURC_GENEL_OZELLIKLERI[i];
      var signSmallImage = "${signName.toLowerCase()}${i + 1}.png";
      var signBigImage = "${signName.toLowerCase()}_buyuk${i + 1}.png";
      Sign currentSign = Sign(signName, signDate, signDetails, signSmallImage, signBigImage);
      tempList.add(currentSign);
    }
    return tempList;
  }
}
