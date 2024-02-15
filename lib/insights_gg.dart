//import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:flutter/material.dart';
//import 'package:syncfusion_flutter_charts/charts.dart';

class InsightsGG extends StatefulWidget {
  const InsightsGG({Key? key}) : super(key: key);

  @override
  State<InsightsGG> createState() => _InsightsGGState();
}

class _InsightsGGState extends State<InsightsGG> {
  List userdetails =[
    {
      'id':'1',
      "name":"Tony Stark",
      "age":"40",
      "gender":"M",
    },
    {
      'id':'2',
      "name":"Steve Rogers",
      "age":"36",
      "gender":"M",
    },
    {
      'id':'3',
      "name":"Natasha Romanoff",
      "age":"34",
      "gender":"F",
    },
    {
      'id':'4',
      "name":"Bruce Banner",
      "age":"22",
      "gender":"M",
    },
    {
      'id':'5',
      "name":"Sinchana",
      "age":"21",
      "gender":"F",
    },
    {
      'id':'6',
      "name":"Gaurav",
      "age":"24",
      "gender":"M",
    },
    {
      'id':'7',
      "name":"Shreya",
      "age":"37",
      "gender":"F",
    },
    {
      'id':'8',
      "name":"Nisha",
      "age":"29",
      "gender":"F",
    },
    {
      'id':'9',
      "name":"Rahul",
      "age":"12",
      "gender":"M",
    },
  ];

  List attendance = [
    {"user_id": "7", "session_id": "1"},
    {"user_id": "8", "session_id": "1"},
    {"user_id": "9", "session_id": "1"},
    {"user_id": "6", "session_id": "1"},
    {"user_id": "4", "session_id": "1"},
    {"user_id": "3", "session_id": "1"},
    {"user_id": "1", "session_id": "1"},
    {"user_id": "5", "session_id": "1"},
    {"user_id": "2", "session_id": "1"},
    {"user_id": "2", "session_id": "2"},
    {"user_id": "5", "session_id": "2"},
    {"user_id": "1", "session_id": "2"},
    {"user_id": "3", "session_id": "2"},
    {"user_id": "4", "session_id": "2"},
    {"user_id": "6", "session_id": "2"},
    {"user_id": "9", "session_id": "2"},
    {"user_id": "8", "session_id": "2"},
    {"user_id": "7", "session_id": "2"},
    {"user_id": "5", "session_id": "3"},
    {"user_id": "2", "session_id": "3"},
    {"user_id": "1", "session_id": "3"},
    {"user_id": "3", "session_id": "3"},
    {"user_id": "4", "session_id": "3"},
    {"user_id": "6", "session_id": "3"},
    {"user_id": "9", "session_id": "3"},
    {"user_id": "8", "session_id": "3"},
    {"user_id": "7", "session_id": "3"},
    {"user_id": "5", "session_id": "4"},
    {"user_id": "2", "session_id": "4"},
    {"user_id": "1", "session_id": "4"},
    {"user_id": "3", "session_id": "4"},
    {"user_id": "4", "session_id": "4"},
    {"user_id": "6", "session_id": "4"},
    {"user_id": "9", "session_id": "4"},
    {"user_id": "8", "session_id": "4"},
    {"user_id": "5", "session_id": "5"},
    {"user_id": "2", "session_id": "5"},
    {"user_id": "1", "session_id": "5"},
    {"user_id": "3", "session_id": "5"},
    {"user_id": "4", "session_id": "5"},
    {"user_id": "6", "session_id": "5"},
    {"user_id": "9", "session_id": "5"},
    {"user_id": "8", "session_id": "5"},
    {"user_id": "7", "session_id": "5"},
    {"user_id": "5", "session_id": "6"},
    {"user_id": "2", "session_id": "6"},
    {"user_id": "1", "session_id": "6"},
    {"user_id": "3", "session_id": "6"},
    {"user_id": "4", "session_id": "6"},
    {"user_id": "6", "session_id": "6"},
    {"user_id": "9", "session_id": "6"},
    {"user_id": "8", "session_id": "6"},
    {"user_id": "7", "session_id": "6"},
    {"user_id": "5", "session_id": "7"},
    {"user_id": "2", "session_id": "7"},
    {"user_id": "1", "session_id": "7"},
    {"user_id": "3", "session_id": "7"},
    {"user_id": "4", "session_id": "7"},
    {"user_id": "6", "session_id": "7"},
    {"user_id": "5", "session_id": "8"},
    {"user_id": "2", "session_id": "8"},
    {"user_id": "1", "session_id": "8"},
    {"user_id": "3", "session_id": "8"},
    {"user_id": "4", "session_id": "8"},
    {"user_id": "6", "session_id": "8"},
    {"user_id": "9", "session_id": "8"},
    {"user_id": "8", "session_id": "8"},
    {"user_id": "5", "session_id": "9"},
    {"user_id": "2", "session_id": "9"},
    {"user_id": "1", "session_id": "9"},
    {"user_id": "3", "session_id": "9"},
    {"user_id": "4", "session_id": "9"},
    {"user_id": "6", "session_id": "9"},
    {"user_id": "9", "session_id": "9"},
    {"user_id": "8", "session_id": "9"},
    {"user_id": "7", "session_id": "9"},
    {"user_id": "5", "session_id": "10"},
    {"user_id": "2", "session_id": "10"},
    {"user_id": "1", "session_id": "10"},
    {"user_id": "3", "session_id": "10"},
    {"user_id": "4", "session_id": "10"},
    {"user_id": "6", "session_id": "10"},
    {"user_id": "9", "session_id": "10"},
    {"user_id": "5", "session_id": "11"},
    {"user_id": "2", "session_id": "11"},
    {"user_id": "1", "session_id": "11"},
    {"user_id": "3", "session_id": "11"},
    {"user_id": "4", "session_id": "11"},
    {"user_id": "6", "session_id": "11"},
    {"user_id": "9", "session_id": "11"},
    {"user_id": "8", "session_id": "11"},
    {"user_id": "7", "session_id": "11"}];

  @override
  Widget build(BuildContext context) {
    print("attendance.length");
    print(attendance.map((e) => e['session_id']).toSet().toList().map((e) {
      List l = attendance.map((e) => e['session_id']).toSet().toList();
      List l2 = attendance.map((e) => e['user_id']).toSet().toList();

      return [{
        "${l.indexOf(e)+1}": l2.where((element) => (attendance.where((element3) => element3['user_id']==element).map((e) => e['session_id']).toList().length)==(l.indexOf(e)+1)).toList().length,
      }];
    }).toList());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text('YOGACLAN'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(19.0),
                  child: Text('Total Teaching Hours', style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 16.5,
                    color: Color(0xff440077)
                  ),),
                ),
              ],
            ),
            Container(
                width: MediaQuery.of(context).size.width*0.9,
                padding: EdgeInsets.symmetric(vertical: 14),
                decoration: BoxDecoration(
                  color: Color(0xffdddddd),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Center(child: Text('11 hrs', style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 26.5,
                    color: Color(0xff550055)
                ),))),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(19.0),
                  child: Text('Attendance', style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 16.5,
                      color: Color(0xff440077)
                  ),),
                ),
              ],
            ),
            /*Container(
              height: MediaQuery.of(context).size.width*0.65,
              width: MediaQuery.of(context).size.width*0.95,
              child: SfCartesianChart(
                // Initialize category axis
                  primaryXAxis: CategoryAxis(),
                  series: attendance.map((e) => e['session_id']).toSet().toList().map((e){
                    return StackedColumnSeries<Map, String>(
                      groupName: 'Session ${e}',
                      name: "Session ${e}",
                      dataSource:  [{e: attendance.where((element) => element['session_id']==e).length}],
                      xValueMapper: (Map data, _) => data.keys.toList()[0],
                      yValueMapper: (Map data, _) => data.values.toList()[0],
                      color: (Color(0xff000077)),
                    );
                  }).toList(),
              ),
            ),*/
            Text('about above graph'),
           /* Container(
              height: MediaQuery.of(context).size.width*0.65,
              width: MediaQuery.of(context).size.width*0.95,
              child: SfCartesianChart(
                // Initialize category axis
                primaryXAxis: CategoryAxis(),
                series: attendance.map((e) => e['session_id']).toSet().toList().map((e){
                  List l = attendance.map((e) => e['session_id']).toSet().toList();
                  List l2 = attendance.map((e) => e['user_id']).toSet().toList();
                  return StackedColumnSeries<Map, String>(
                    groupName: '${attendance.map((e) => e['session_id']).toSet().toList().indexOf(e)+1}',
                    name: "${attendance.map((e) => e['session_id']).toSet().toList().indexOf(e)+1}",
                    //dataSource:  [{'${attendance.map((e) => e['session_id']).toSet().toList().indexOf(e)+1}': attendance.where((element) => attendance.where((ele2) => ele2["user_id"]==element['user_id']).length==attendance.map((e) => e['session_id']).toSet().toList().indexOf(e)+1).length}],
                    dataSource: [{
                      "${l.indexOf(e)+1}": l2.where((element) => (attendance.where((element3) => element3['user_id']==element).map((e) => e['session_id']).toList().length)==(l.indexOf(e)+1)).toList().length,
                    }],
                    xValueMapper: (Map data, _) => data.keys.toList()[0],
                    yValueMapper: (Map data, _) => data.values.toList()[0],
                    color: (Color(0xff000077)),
                  );
                }).toList().reversed.toList(),
              ),
            ),*/
            Text('about above graph'),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(19.0),
                  child: Text('Age Group', style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 16.5,
                      color: Color(0xff440077)
                  ),),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Container(
                padding: EdgeInsets.all(8),
                margin: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Color(0xffdddddd),
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.black.withOpacity(0.75), style: BorderStyle.solid, width: 0.65)
                ),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(8),
                      margin: EdgeInsets.all(8),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width*0.55,
                            child: Center(
                              child: Text('Age group', style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 13.5,
                                  color: Color(0xff440077)
                              ),),
                            ),
                          ),
                          SizedBox(width: 20,),
                          Flexible(
                            child: Container(
                              child: Center(child: Text('Attendees', style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 13.5,
                                  color: Color(0xff440077)
                              ),)),
                            ),
                            flex: 2,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      margin: EdgeInsets.symmetric(horizontal: 8),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width*0.55,
                            padding: EdgeInsets.all(8),
                            decoration:BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5),
                                boxShadow: [
                                  BoxShadow(color: Colors.black.withOpacity(0.25), offset: Offset(1,1), blurRadius: 2, spreadRadius: 0.1)
                                ]
                            ),
                            child: Center(
                              child: Text('13-19', style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 13.5,
                                  color: Color(0xff440077)
                              ),),
                            ),
                          ),
                          SizedBox(width: 20,),
                          Flexible(
                            child: Container(
                              padding: EdgeInsets.all(8),
                              decoration:BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(5),
                                  boxShadow: [
                                    BoxShadow(color: Colors.black.withOpacity(0.25), offset: Offset(1,1), blurRadius: 2, spreadRadius: 0.1)
                                  ]
                              ),
                              child: Center(child: Text('${userdetails.where((element) => int.parse(element['age'])>=13 && int.parse(element['age'])<=19).length}', style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 13.5,
                                  color: Color(0xff440077)
                              ),)),
                            ),
                            flex: 2,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      margin: EdgeInsets.symmetric(horizontal: 8),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width*0.55,
                            padding: EdgeInsets.all(8),
                            decoration:BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5),
                                boxShadow: [
                                  BoxShadow(color: Colors.black.withOpacity(0.25), offset: Offset(1,1), blurRadius: 2, spreadRadius: 0.1)
                                ]
                            ),
                            child: Center(
                              child: Text('20-25', style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 13.5,
                                  color: Color(0xff440077)
                              ),),
                            ),
                          ),
                          SizedBox(width: 20,),
                          Flexible(
                            child: Container(
                              padding: EdgeInsets.all(8),
                              decoration:BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(5),
                                  boxShadow: [
                                    BoxShadow(color: Colors.black.withOpacity(0.25), offset: Offset(1,1), blurRadius: 2, spreadRadius: 0.1)
                                  ]
                              ),
                              child: Center(child: Text('${userdetails.where((element) => int.parse(element['age'])>=20 && int.parse(element['age'])<=25).length}', style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 13.5,
                                  color: Color(0xff440077)
                              ),)),
                            ),
                            flex: 2,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      margin: EdgeInsets.symmetric(horizontal: 8),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width*0.55,
                            padding: EdgeInsets.all(8),
                            decoration:BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5),
                                boxShadow: [
                                  BoxShadow(color: Colors.black.withOpacity(0.25), offset: Offset(1,1), blurRadius: 2, spreadRadius: 0.1)
                                ]
                            ),
                            child: Center(
                              child: Text('26-30', style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 13.5,
                                  color: Color(0xff440077)
                              ),),
                            ),
                          ),
                          SizedBox(width: 20,),
                          Flexible(
                            child: Container(
                              padding: EdgeInsets.all(8),
                              decoration:BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(5),
                                  boxShadow: [
                                    BoxShadow(color: Colors.black.withOpacity(0.25), offset: Offset(1,1), blurRadius: 2, spreadRadius: 0.1)
                                  ]
                              ),
                              child: Center(child: Text('${userdetails.where((element) => int.parse(element['age'])>=26 && int.parse(element['age'])<=30).length}', style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 13.5,
                                  color: Color(0xff440077)
                              ),)),
                            ),
                            flex: 2,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      margin: EdgeInsets.symmetric(horizontal: 8),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width*0.55,
                            padding: EdgeInsets.all(8),
                            decoration:BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5),
                                boxShadow: [
                                  BoxShadow(color: Colors.black.withOpacity(0.25), offset: Offset(1,1), blurRadius: 2, spreadRadius: 0.1)
                                ]
                            ),
                            child: Center(
                              child: Text('31-35', style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 13.5,
                                  color: Color(0xff440077)
                              ),),
                            ),
                          ),
                          SizedBox(width: 20,),
                          Flexible(
                            child: Container(
                              padding: EdgeInsets.all(8),
                              decoration:BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(5),
                                  boxShadow: [
                                    BoxShadow(color: Colors.black.withOpacity(0.25), offset: Offset(1,1), blurRadius: 2, spreadRadius: 0.1)
                                  ]
                              ),
                              child: Center(child: Text('${userdetails.where((element) => int.parse(element['age'])>=31 && int.parse(element['age'])<=35).length}', style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 13.5,
                                  color: Color(0xff440077)
                              ),)),
                            ),
                            flex: 2,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      margin: EdgeInsets.symmetric(horizontal: 8),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width*0.55,
                            padding: EdgeInsets.all(8),
                            decoration:BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5),
                                boxShadow: [
                                  BoxShadow(color: Colors.black.withOpacity(0.25), offset: Offset(1,1), blurRadius: 2, spreadRadius: 0.1)
                                ]
                            ),
                            child: Center(
                              child: Text('36-40', style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 13.5,
                                  color: Color(0xff440077)
                              ),),
                            ),
                          ),
                          SizedBox(width: 20,),
                          Flexible(
                            child: Container(
                              padding: EdgeInsets.all(8),
                              decoration:BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(5),
                                  boxShadow: [
                                    BoxShadow(color: Colors.black.withOpacity(0.25), offset: Offset(1,1), blurRadius: 2, spreadRadius: 0.1)
                                  ]
                              ),
                              child: Center(child: Text('${userdetails.where((element) => int.parse(element['age'])>=36 && int.parse(element['age'])<=40).length}', style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 13.5,
                                  color: Color(0xff440077)
                              ),)),
                            ),
                            flex: 2,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                  ],
                ),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(19.0),
                  child: Text('Sex', style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 16.5,
                      color: Color(0xff440077)
                  ),),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Container(
                padding: EdgeInsets.all(8),
                margin: EdgeInsets.all(4),
                decoration: BoxDecoration(
                    color: Color(0xffdddddd),
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Colors.black.withOpacity(0.75), style: BorderStyle.solid, width: 0.65)
                ),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      margin: EdgeInsets.symmetric(horizontal: 8),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width*0.55,
                            padding: EdgeInsets.all(8),
                            decoration:BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5),
                                boxShadow: [
                                  BoxShadow(color: Colors.black.withOpacity(0.25), offset: Offset(1,1), blurRadius: 2, spreadRadius: 0.1)
                                ]
                            ),
                            child: Center(
                              child: Text('MALE', style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 13.5,
                                  color: Color(0xff440077)
                              ),),
                            ),
                          ),
                          SizedBox(width: 20,),
                          Flexible(
                            child: Container(
                              padding: EdgeInsets.all(8),
                              decoration:BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(5),
                                  boxShadow: [
                                    BoxShadow(color: Colors.black.withOpacity(0.25), offset: Offset(1,1), blurRadius: 2, spreadRadius: 0.1)
                                  ]
                              ),
                              child: Center(child: Text('${userdetails.where((element) => element['gender']=='M').length}', style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 13.5,
                                  color: Color(0xff440077)
                              ),)),
                            ),
                            flex: 2,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      margin: EdgeInsets.symmetric(horizontal: 8),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width*0.55,
                            padding: EdgeInsets.all(8),
                            decoration:BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5),
                                boxShadow: [
                                  BoxShadow(color: Colors.black.withOpacity(0.25), offset: Offset(1,1), blurRadius: 2, spreadRadius: 0.1)
                                ]
                            ),
                            child: Center(
                              child: Text('FEMALE', style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 13.5,
                                  color: Color(0xff440077)
                              ),),
                            ),
                          ),
                          SizedBox(width: 20,),
                          Flexible(
                            child: Container(
                              padding: EdgeInsets.all(8),
                              decoration:BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(5),
                                  boxShadow: [
                                    BoxShadow(color: Colors.black.withOpacity(0.25), offset: Offset(1,1), blurRadius: 2, spreadRadius: 0.1)
                                  ]
                              ),
                              child: Center(child: Text('${userdetails.where((element) => element['gender']=='F').length}', style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 13.5,
                                  color: Color(0xff440077)
                              ),)),
                            ),
                            flex: 2,
                          ),
                        ],
                      ),
                    ),

                    SizedBox(
                      height: 8,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 12,
            ),
          ],
        ),
      ),
    );
  }
}
