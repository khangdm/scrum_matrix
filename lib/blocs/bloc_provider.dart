import 'package:flutter/cupertino.dart';

abstract class BaseBlock {
  void dispose();
}

class BlockProvider<T extends BaseBlock> extends StatefulWidget {
  BlockProvider({
    Key key,
    this.child,
    this.bloc,
  }) : super(key: key);

  final T bloc;
  final Widget child;

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}
