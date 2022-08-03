import 'dart:convert';

import 'package:web_socket_channel/web_socket_channel.dart';

class SocketChannel {
  static final socket_channel = WebSocketChannel.connect(
    Uri.parse('ws://192.168.1.10:3000'),
  );
  static send(data) {
    socket_channel.sink.add(json.encode({data}));
  }

  static listen() {
    return socket_channel.stream;
  }

  close() {}
}
