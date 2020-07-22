import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:rxdart/rxdart.dart';

class BaseComponent extends ChangeNotifier {
  //
  final _stateController = BehaviorSubject<bool>();
  final _messageController = BehaviorSubject<String>();

  //======================== Streams ==========================//
  Stream get state$ => _stateController.stream;
  Stream get message$ => _messageController.stream;

  //======================== Sinks  ==========================//

  StreamSink<bool> get state => _stateController.sink;
  StreamSink<String> get message => _messageController.sink;

  void dispose() {
    _stateController?.close();
    _messageController?.close();
  }
}
