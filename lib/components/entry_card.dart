// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:write_a_day/dark_theme_logic/dark_theme_styles.dart';

class EntryCard extends StatefulWidget {
  const EntryCard({
    Key? key,
    required this.darkModeActive,
    required this.onPress,
  }) : super(key: key);

  final bool darkModeActive;
  final VoidCallback onPress;

  @override
  State<EntryCard> createState() => _EntryCardState();
}

class _EntryCardState extends State<EntryCard>
    with SingleTickerProviderStateMixin {
  Animation<double>? _scale;
  AnimationController? _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 50),
    );
    _scale = Tween<double>(begin: 1, end: 0.95)
        .animate(CurvedAnimation(parent: _controller!, curve: Curves.ease));
  }

  @override
  void dispose() {
    _controller!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Listener(
      onPointerDown: (PointerDownEvent event) {
        _controller!.forward();
      },
      onPointerUp: (PointerUpEvent event) {
        _controller!.reverse();
        widget.onPress;
      },
      child: ScaleTransition(
        scale: _scale!,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 8.0),
          child: MaterialButton(
            onPressed: () {},
            minWidth: double.infinity,
            elevation: 3,
            color:
                widget.darkModeActive ? const Color(0xff2C2C2A) : Colors.white,
            padding: EdgeInsets.zero,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16.0, 8, 16.0, 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // title text
                      Container(
                        width: MediaQuery.of(context).size.width * 0.7,
                        child: Text(
                          'This is the title!',
                          maxLines: 1,
                          style:
                              Styles.themeData(widget.darkModeActive, context)
                                  .textTheme
                                  .headline1,
                        ),
                      ),
                      // end of title text

                      // options icon
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.more_vert_rounded),
                        padding: EdgeInsets.zero,
                      ),
                      // end of options icon
                    ],
                  ),

                  // body text
                  Text(
                    'This is the body text. It is a snippet of the first two lines of the diary entry. After the available space in the Entry Card has been exhausted, it should overflow into ellipsis',
                    maxLines: 2,
                    style: Styles.themeData(widget.darkModeActive, context)
                        .textTheme
                        .bodyText1,
                  ),
                  // end of body text

                  const SizedBox(
                    height: 5,
                  ),

                  // date text
                  Text(
                    '24th March 2022',
                    style: Styles.themeData(widget.darkModeActive, context)
                        .textTheme
                        .bodyText2,
                  ),
                  // end of date text
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
