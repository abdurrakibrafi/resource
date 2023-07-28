import 'package:flutter/material.dart';

class AlertDiologe extends StatelessWidget {
  const AlertDiologe({super.key});
  //snackbar
  MySnackBar(message, context) {
    return ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  //alert function
  myAlertFun(context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return Expanded(
              child: AlertDialog(
            title: Text("Alert !"),
            content: Text("Do you want to Close"),
            actions: [
              TextButton(
                  onPressed: () {
                    MySnackBar("Succesfully Close", context);
                    Navigator.of(context).pop();
                  },
                  child: Text('Yes')),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('No'))
            ],
          ));
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('Alert-Diologe Box'),
      ),
      body: Center(
        child: TextButton(
            style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all<Color>(Colors.amber), //
            ),
            onPressed: () {
              myAlertFun(context);
            },
            child: Text('Click Me')),
      ),
    );
  }
}
