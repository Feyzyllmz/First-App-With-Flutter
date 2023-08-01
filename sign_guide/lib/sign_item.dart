import 'package:flutter/material.dart';
import 'package:sign_guide/model/sign.dart';
import 'package:sign_guide/sign_details.dart';

class SignItem extends StatelessWidget {
  final Sign currentSign;
  const SignItem({required this.currentSign, super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.fromLTRB(5, 5, 5, 5),
      color: Colors.brown.shade100,
      child: ListTile(
        onTap: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => SignDetails(clickedSign: currentSign)));
        },
        leading: Image.asset('images/${currentSign.signSmallImage}'),
        title: Text(currentSign.signName),
        subtitle: Text(currentSign.signDate),
        trailing: const Icon(Icons.arrow_forward),
      ),
    );
  }
}
