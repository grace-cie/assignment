import 'package:assflut/controller/mycontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class View extends StatefulWidget {
  const View({super.key, required String title});
  @override
  State<StatefulWidget> createState() => _ViewState();
}

class _ViewState extends State<View> {
  @override
  Widget build(BuildContext context) {
    final mycont = Get.put(Increment());

    final _num1 = TextEditingController();
    final _final = TextEditingController();

    var fres;
    late int res;

    // getVal() {
    //   mycont.num = int.parse(_num1.text);
    // }

    // getRes() {
    //   result = mycont.increment;
    // }

    // getFinalResult() {
    //   fresult = result.toString();
    // }

    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.fromLTRB(0, 100, 0, 0),
              child: Text('result here'),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
              child: Text('value here'),
            ),
            // Obx(() => Text('${fres}')),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
              child: TextField(
                controller: _num1,
                decoration: const InputDecoration(
                  labelText: 'put number',
                ),
              ),
            ),
            // const Padding(padding: EdgeInsets.fromLTRB(0, 20, 0, 0), child: Text(''))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          mycont.num = int.parse(_num1.text);
          res = mycont.result;
          fres = res.toString();

          mycont.incrementValue();
          // result = mycont.num;
          // fresult = result.toString();

          // mycont.incrementValue();
          print('${fres}');
        },
        label: const Text('increment me'),
        icon: const Icon(Icons.add),
      ),
    );
  }
}
