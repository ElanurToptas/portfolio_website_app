import 'package:flutter/material.dart';
import 'package:portfolio_website_app/constants.dart';
import 'package:portfolio_website_app/responsive.dart';
import 'package:portfolio_website_app/screens/components/side_menu.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key, required this.children});

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Responsive.isDesktop(context)
          ? null
          : AppBar(
        backgroundColor: bgColor,
        leading: Builder(builder: (context) =>
            IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: Icon(Icons.menu),
            ),),
      ),
      drawer: SideMenu(),
      body: Center(
        child: Container(
            constraints: const BoxConstraints(maxWidth: maxWidth),
            child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
            if (Responsive.isDesktop(context))
        Expanded(
        flex: 2,
        child: SideMenu(),
      ),
      const SizedBox(
        width: defaultPadding,
      ),
      Expanded(
        flex: 7,
        child: SingleChildScrollView(
          child: Column(
            children: [
              ...children,
            ],
          ),
        ),
      ),
      ],
    ),)
    ,
    )
    ,
    );
  }
}
