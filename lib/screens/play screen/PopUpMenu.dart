import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class popUpMenu extends StatelessWidget {
  const popUpMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        PopupMenuButton(
          icon: Icon(
            FontAwesomeIcons.ellipsisVertical,
            color: Colors.white,
          ),
          color: Colors.transparent,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(21)),
          itemBuilder: (context) => [
            PopupMenuItem(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  FontAwesomeIcons.minusCircle,
                  size: 20,
                ),
                Text('hide song'),
              ],
            )),
            PopupMenuItem(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  FontAwesomeIcons.share,
                  size: 20,
                ),
                Text('share'),
              ],
            )),
            PopupMenuItem(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  FontAwesomeIcons.music,
                  size: 20,
                ),
                Text('playlist'),
              ],
            ))
          ],
        ),
        PopupMenuItem(
            child: Row(
          children: [],
        ))
      ],
    );
  }
}
