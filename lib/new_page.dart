import 'package:flutter/material.dart';



class ActivityPage extends StatefulWidget {
  const ActivityPage({super.key});

  @override
  State<ActivityPage> createState() => _ActivityPageState();
}

class _ActivityPageState extends State<ActivityPage> {
 

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(title:const Center(child:  Text("النشاطات"))),
            body:body(context)));
  }

  Widget body(context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
        physics: const ScrollPhysics(),
        child: Column(children: <Widget>[
          Wrap(
            children: List.generate(10, (index) {
              return  Stack(
                  children: [
                    Column(
                      children: [
                      const  SizedBox(height: 120,),
                        Center(
                          child: Container(
                            alignment: Alignment.center,
                            padding: const EdgeInsets.fromLTRB(30, 3, 20, 0),
                            margin: const EdgeInsets.only(left: 10, right: 10),
                            height: height / 3.6,
                            width: width / 1.3,
                            decoration: BoxDecoration(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(11)),
                              border: Border.all(
                                color: const Color.fromARGB(255, 233, 233, 233),
                              ),
                              boxShadow: const [
                                BoxShadow(
                                  color: Color.fromARGB(255, 211, 211, 211),
                                  blurRadius: 1.5,
                                ),
                              ],
                              color: const Color.fromARGB(255, 251, 251, 251),
                            ),
                          ),
                        ),
                      ],
                    ),
                     Padding(
                      padding: const EdgeInsets.only(top: 80),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 50, top: 40),
                                child: SizedBox(
                                    width: 50,
                                    height: 50,
                                    child: Image.network('https://cdn.icon-icons.com/icons2/1369/PNG/512/-person_90382.png')),
                              ),
                          const    Padding(
                                padding:
                                     EdgeInsets.only(left: 150, top: 40),
                                child: Text("وليد العياش",
                                    style:  TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                        fontFamily: 'Karla2')),
                              ),
                            ],
                          ),
                       const   Padding(
                            padding:  EdgeInsets.only(
                              left: 130,
                            ),
                            child: Text(
                              "طلب المزيد من المواد",
                              style:  TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                fontFamily: 'Karla',
                                color: Color.fromARGB(255, 65, 102, 52),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 150,
                            ),
                            child: SizedBox(
                                width: 100,
                                height: 100,
                                child: Image.network("https://www.build-review.com/wp-content/uploads/2022/03/Building-Materials-red-bricks.jpg")),
                          ),
                      const    Padding(
                            padding:  EdgeInsets.only(
                              left: 150,
                            ),
                            child: Text(
                              "2023/3/15",
                              style:  TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                  fontFamily: 'Karla2'),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                );
            
            }),
          )
        ]));
  }
}
