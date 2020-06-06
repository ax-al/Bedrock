

import 'package:flutter/material.dart';
import 'package:flutter_bedrock/base_framework/ui/widget/provider_widget.dart';
import 'package:flutter_bedrock/base_framework/view_model/app_model/app_cache_model.dart';
import 'package:flutter_bedrock/base_framework/view_model/app_model/user_view_model.dart';
import 'package:flutter_bedrock/base_framework/widget_state/base_state.dart';
import 'package:provider/provider.dart';

class ThirdPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return ThirdPagePageState();
  }

}

class ThirdPagePageState extends BaseState<ThirdPage> with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {

    return switchStatusBar2Dark(child:
    Consumer2<UserViewModel,AppCacheModel>(
      builder: (ctx,userModel,cacheModel,child){
        return Container(
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("third page"),
            ],
          ),
        );
      },
    ));
  }
  @override
  bool get wantKeepAlive => true;

}