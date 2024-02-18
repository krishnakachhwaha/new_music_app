import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PlyPauseButton extends StatefulWidget {
  const PlyPauseButton({super.key});
  @override
  State<PlyPauseButton> createState() => _PlyPauseButtonState();
}

class _PlyPauseButtonState extends State<PlyPauseButton>
    with TickerProviderStateMixin {
  bool _isPlay = false;
  late AnimationController _controller;
  @override
  void initState() {
    _controller =
        AnimationController(duration: Duration(milliseconds: 400), vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (_isPlay == false) {
          _controller.forward();
          _isPlay = true;
        } else {
          _controller.reverse();
          _isPlay = false;
        }
      },
      child: AnimatedIcon(
        icon: AnimatedIcons.play_pause,
        progress: _controller,
        size: 25.sp,
        color: Colors.white,
      ),
    );
  }
}
