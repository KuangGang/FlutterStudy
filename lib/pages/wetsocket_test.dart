import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:web_socket_channel/io.dart';
import 'package:web_socket_channel/web_socket_channel.dart';
//import 'package:connectivity/connectivity.dart'; //（检测网络）

class WebSocketTest extends StatelessWidget {
  const WebSocketTest({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('WebSocketDemo'),
          ),
          body: WebSocketDemo()),
    );
  }
}

class WebSocketDemo extends StatefulWidget {
  WebSocketDemo({Key key}) : super(key: key);

  _WebSocketDemoState createState() => _WebSocketDemoState();
}

class _WebSocketDemoState extends State<WebSocketDemo> {
  List _list = new List();
  String _message;
  IOWebSocketChannel _channel =
      IOWebSocketChannel.connect("ws://echo.websocket.org");

  void _onChangedHandle(value) {
    setState(() {
      _message = value.toString();
    });
  }

  _WebSocketDemoState() {
    print(_channel);
  }

  //定义变量（网络状态）
  String _connectionStatus = 'Unknown';

//  StreamSubscription<ConnectivityResult> _connectivitySubscription;
//
//  //网络初始状态
//  connectivityInitState() {
//    _connectivitySubscription = Connectivity()
//        .onConnectivityChanged
//        .listen((ConnectivityResult result) {
//      print(result.toString());
//      if (result.toString() == 'ConnectivityResult.none') {
////            Fluttertoast.showToast(
////                msg: '网络连接错误!',
////                toastLength: Toast.LENGTH_SHORT,
////                gravity: ToastGravity.BOTTOM,
////                timeInSecForIos: 2,
////                fontSize: 16.0
////            );
//      }
//    });
//  }

  //网络结束监听
//  connectivityDispose() {
//    _connectivitySubscription.cancel();
//  }
//
//  //网络进行监听
//  Future<Null> initConnectivity() async {
//    String connectionStatus;
//    //平台消息可能会失败，因此我们使用Try/Catch PlatformException。
//    try {
//      connectionStatus = (await Connectivity().checkConnectivity()).toString();
//      if (connectionStatus == "ConnectivityResult.mobile") {
//        // I am connected to a mobile network.
////        _channel = IOWebSocketChannel.connect('ws://echo.websocket.org');
//        debugPrint("== mobile");
//      } else if (connectionStatus == "ConnectivityResult.wifi") {
//        // I am connected to a wifi network.
////        _channel = IOWebSocketChannel.connect('ws://echo.websocket.org');
//        debugPrint("Socket is closed");
//      }
//    } on PlatformException catch (e) {
//      print(e.toString());
//      connectionStatus = 'Failed to get connectivity.';
//    }
//  }

  @override
  void initState() {
    super.initState();
//    initConnectivity(); //网络监听（开始）
//    connectivityInitState(); //网络监听（进行）  /**  * @Wait 版本更新写在这  */
    setState(() {
      _list.add('[Info] Connected Successed!');
    });

    // 监听消息
    _channel.stream.listen(this.onData, onError: onError, onDone: onDone);
  }

  onData(message) {
    setState(() {
      _list.add('[Received] ${message.toString()}');
    });
  }

  onError(err) {
    debugPrint(err.runtimeType.toString());
    WebSocketChannelException ex = err;
    debugPrint(ex.message);
  }

  onDone() {
//    _channel.sink.close();
    debugPrint("Socket is closed");
    _channel = IOWebSocketChannel.connect('ws://echo.websocket.org');
    _sendHandle();
  }

  void _sendHandle() {
    if (_message.isNotEmpty) {
      _list.add('[Sended] $_message');
      _channel.sink.add(_message);
    }
  }

  Widget _generatorForm() {
    return Column(
      children: <Widget>[
        TextField(onChanged: _onChangedHandle),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            RaisedButton(
              child: Text('Send'),
              onPressed: _sendHandle,
            )
          ],
        )
      ],
    );
  }

  List<Widget> _generatorList() {
    List<Widget> tmpList = _list.map((item) => ListItem(msg: item)).toList();
    List<Widget> prefix = [_generatorForm()];
    prefix.addAll(tmpList);
    return prefix;
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(10),
      children: _generatorList(),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _channel.sink.close();
//    connectivityDispose(); //网络监听（结束）
  }
}

class ListItem extends StatelessWidget {
  final String msg;

  ListItem({Key key, this.msg}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(msg);
  }
}
