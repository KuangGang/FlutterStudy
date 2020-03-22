import 'package:flutter/material.dart';

class EmptyPage extends StatefulWidget {
  @override
  _EmptyPageState createState() => _EmptyPageState();
}

class _EmptyPageState extends State<EmptyPage> {


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        
        child: _NoDataWidget(),
      ),
    );
  }

  Widget _NoDataWidget () {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            width: 100.0,
            height: 100.0,
            child:   Image.asset('images/noData_w.png'),
          ),
          Container(

            child: Text('在这个星球找不到你需要的信息', style: TextStyle(
              fontSize: 16,
              color: Color(0xff555666),
            ),),
          ),
        ],
      ),
    );

  }
}