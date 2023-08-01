import 'package:flutter/material.dart';
import 'package:palette_generator/palette_generator.dart';

import 'model/sign.dart';

class SignDetails extends StatefulWidget {
  final Sign clickedSign;
  const SignDetails({required this.clickedSign, super.key});

  @override
  State<SignDetails> createState() => _SignDetailsState();
}

class _SignDetailsState extends State<SignDetails> {
  Color defaultColor = Colors.brown;
  late PaletteGenerator generator;

  @override
  void initState() {
    super.initState();
    createAppBarColor();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 250,
            backgroundColor: defaultColor,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text("${widget.clickedSign.signName} and Properties"),
              background: Image.asset(
                "images/${widget.clickedSign.signBigImage}",
                fit: BoxFit.cover,
              ),
              centerTitle: true,
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: const EdgeInsets.fromLTRB(5, 5, 5, 5),
              child: SingleChildScrollView(
                child: Text(widget.clickedSign.signDetails, style: const TextStyle(fontSize: 24)),
              ),
            ),
          )
        ],
      ),
    );
  }

  void createAppBarColor() async {
    generator = await PaletteGenerator.fromImageProvider(
        AssetImage('images/${widget.clickedSign.signBigImage}'));
    defaultColor = generator.dominantColor!.color;
    setState(() {});
  }
}
