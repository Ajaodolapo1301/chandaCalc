import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _radioValue = 0;
  void _handleRadioValueChange(value) {
    setState(() {
      _radioValue = value;
    });
  }


  double wassiyyat =  0;
    double arm = 0;
   double  majlis;
//   jalsa





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "MKan Calculator",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text("Are you a moosi",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                Radio(
                  value: 0,
                  groupValue: _radioValue,
                  onChanged: _handleRadioValueChange,
                ),
                Text("Yes",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                Radio(
                  value: 1,
                  groupValue: _radioValue,
                  onChanged: _handleRadioValueChange,
                ),
                Text("No",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
              child: TextFormField(
                  onChanged: (value){
                    var va = value;

                    setState(() {
                    arm = double.parse(va) / 16;
                    wassiyyat = double.parse(va) / 10;
                  });
                  },
                keyboardType: TextInputType.number,
                inputFormatters: [
                  WhitelistingTextInputFormatter.digitsOnly,
                ],
                validator: (value) {
                  if (value.length < 11) {
                    return "Enter a valid Bvn number";
                  }
                  return null;
                },
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "your monthly earning",
                    contentPadding: const EdgeInsets.all(20.0)),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
                child: Column(children: <Widget>[
              Container(
                child: Table(
                  border: TableBorder.all(
                      color: Colors.black, style: BorderStyle.solid, width: 1),
                  children: [
                    TableRow(children: [
                      TableCell(
                        child: Container(
                          margin: EdgeInsets.only(left: 20),
                          height: 60,
                          child: Column(

                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                "Monthly Chanda Result ",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                            ],
                          ),
                        ),
                      ),
                      TableCell(
                        child: Container(
                          height: 60,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text("Amount N",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold, fontSize: 20)),
                            ],
                          ),
                        ),
                      ),
                    ]),


                    TableRow(children: [
                      Container(
                        height: 40,
                        color: Colors.blueGrey.withOpacity(0.3),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                            children: [
              _radioValue == 0  ?   Text('Chanda Wassiyat', style: TextStyle(fontSize: 20)): Text('Chanda Arm', style: TextStyle(fontSize: 20))
                        ]),
                      ),
                      Container(
                          height: 40,
                          color: Colors.blueGrey.withOpacity(0.3),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [Text(_radioValue == 0  ?  wassiyyat.toString() : arm.toString(),   style: TextStyle(
                             fontSize: 20))])),
                    ]),




                    TableRow(children: [
                      Container(
                        height: 40,
                        color: Colors.red.withOpacity(0.1),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
        Text('Chanda Majlis', style: TextStyle(fontSize: 20))
                            ]),
                      ),
                      Container(
                          height: 40,
                          color: Colors.red.withOpacity(0.1),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [Text('Flutter',   style: TextStyle(
                                  fontSize: 20))])),
                    ]),



                    TableRow(children: [
                      Container(
                        height: 40,
                        color: Colors.blueGrey.withOpacity(0.3),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Khuddam ijtema', style: TextStyle(fontSize: 20))
                            ]),
                      ),
                      Container(
                          height: 40,
                          color: Colors.blueGrey.withOpacity(0.3),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [Text('Flutter',   style: TextStyle(
                                  fontSize: 20))])),
                    ]),





                    TableRow(children: [
                      Container(
                        height: 40,
                        color: Colors.red.withOpacity(0.1),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Jalsa Salana', style: TextStyle(fontSize: 20))
                            ]),
                      ),
                      Container(
                          height: 40,
                          color: Colors.red.withOpacity(0.1),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [Text('Flutter',   style: TextStyle(
                                  fontSize: 20))])),
                    ]),

                    TableRow(children: [
                      Container(
                        height: 40,
                        color: Colors.blueGrey.withOpacity(0.3),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Khuddam house', style: TextStyle(fontSize: 20))
                            ]),
                      ),
                      Container(
                          height: 40,
                          color: Colors.blueGrey.withOpacity(0.3),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [Text('Flutter',   style: TextStyle(
                                  fontSize: 20))])),
                    ]),



                    TableRow(children: [
                      Container(
                        height: 40,
                        color: Colors.red.withOpacity(0.1),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Welfare', style: TextStyle(fontSize: 20))
                            ]),
                      ),
                      Container(
                          height: 40,
                          color: Colors.red.withOpacity(0.1),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [Text('N20',   style: TextStyle(
                                  fontSize: 20))])),
                    ]),


                    TableRow(children: [
                      Container(
                        height: 40,
                        color: Colors.blueGrey.withOpacity(0.3),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Scholarship', style: TextStyle(fontSize: 20))
                            ]),
                      ),
                      Container(
                          height: 40,
                          color: Colors.blueGrey.withOpacity(0.3),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [Text('N20',   style: TextStyle(
                                  fontSize: 20))])),
                    ]),

                    TableRow(children: [
                      Container(
                        height: 40,
                        color: Colors.red.withOpacity(0.1),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Mosque', style: TextStyle(fontSize: 20))
                            ]),
                      ),
                      Container(
                          height: 40,
                          color: Colors.red.withOpacity(0.1),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [Text('N20',   style: TextStyle(
                                  fontSize: 20))])),
                    ]),




                    TableRow(children: [
                      Container(
                        height: 40,
                        color: Colors.blueGrey.withOpacity(0.3),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Vehicle', style: TextStyle(fontSize: 20))
                            ]),
                      ),
                      Container(
                          height: 40,
                          color: Colors.blueGrey.withOpacity(0.3),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [Text('N20',   style: TextStyle(
                                  fontSize: 20))])),
                    ]),



                    TableRow(children: [
                      Container(
                        height: 40,
                        color: Colors.red.withOpacity(0.1),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Tariq_jadid', style: TextStyle(fontSize: 20))
                            ]),
                      ),
                      Container(
                          height: 40,
                          color: Colors.red.withOpacity(0.1),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [Text('N20',   style: TextStyle(
                                  fontSize: 20))])),
                    ]),


                    TableRow(children: [
                      Container(
                        height: 40,
                        color: Colors.blueGrey.withOpacity(0.3),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Waqf_jadid', style: TextStyle(fontSize: 20))
                            ]),
                      ),
                      Container(
                          height: 40,
                          color: Colors.blueGrey.withOpacity(0.3),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [Text('N20',   style: TextStyle(
                                  fontSize: 20))])),
                    ]),


                  ],
                ),
              ),
            ]))
          ],
        ),
      ),
    );
  }
}
