import 'package:flutter/material.dart';

class ImageAnimation extends StatefulWidget {
  final Map<int, Image> imageCaches;
  final double width;
  final double height;
  final Color backColor;

  ImageAnimation(this.imageCaches, this.width, this.height, this.backColor, {Key key})
      : assert(imageCaches != null),
        super(key: key);

 
  @override
  _ImageAnimationState createState() => _ImageAnimationState();
}

class _ImageAnimationState extends State<ImageAnimation> {
  bool _disposed;
  Duration _duration;
  int _imageIndex;
  Container _container;
  @override
  void initState() {
    super.initState();
    _disposed = false;
    _duration = Duration(milliseconds: 300);
    _imageIndex = 1;
    _container = Container(height: widget.height, width: widget.width);
    _updateImage();
  }

  void _updateImage() {
    if (_disposed || widget.imageCaches.isEmpty) {
      return;
    }

    setState(() {
      if (_imageIndex > widget.imageCaches.length) {
        _imageIndex = 1;
      }
      _container = Container(
          color: widget.backColor,
          child: widget.imageCaches[_imageIndex],
          height: widget.height,
          width: widget.width);
      _imageIndex++;
    });
    Future.delayed(_duration, () {
      _updateImage();
    });
  }
  @override
  Widget build(BuildContext context) {
    return _container;
  }

  @override
  void dispose() {
    super.dispose();
    _disposed = true;
    widget.imageCaches.clear();
  }
}