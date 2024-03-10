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
          color: Colors.black,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(21)),
          itemBuilder: (context) => [
            PopupMenuItem(
                child: ListTile(
              trailing: Icon(FontAwesomeIcons.music, color: Colors.white),
              title: Text(
                'add to playlist',
                style: TextStyle(color: Colors.white),
              ),
            )),
            PopupMenuItem(
                child: ListTile(
              trailing: Icon(FontAwesomeIcons.plusCircle, color: Colors.white),
              title: Text(
                'add to queue',
                style: TextStyle(color: Colors.white),
              ),
            )),
            PopupMenuItem(
                child: ListTile(
              trailing: Icon(Icons.hide_source, color: Colors.white),
              title: Text(
                'hide',
                style: TextStyle(color: Colors.white),
              ),
            )),
            PopupMenuItem(
                child: ListTile(
              trailing: Icon(FontAwesomeIcons.shareAlt, color: Colors.white),
              title: Text(
                'share',
                style: TextStyle(color: Colors.white),
              ),
            )),
            PopupMenuItem(
                child: ListTile(
              trailing: Icon(FontAwesomeIcons.download, color: Colors.white),
              title: Text(
                'download',
                style: TextStyle(color: Colors.white),
              ),
            )),
          ],
        ),
      ],
    );
  }
}
