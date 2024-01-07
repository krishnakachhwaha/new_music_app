import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lottie/lottie.dart';

class prem_NoAds extends StatefulWidget {
  const prem_NoAds({Key? key}) : super(key: key);

  @override
  State<prem_NoAds> createState() => _prem_NoAdsState();
}

class _prem_NoAdsState extends State<prem_NoAds> {
  var arrMonthly = [
    '1 Month',
    '3 Month',
    '6 Month',
    '12 Month',
  ];
  var arrPrice = [
    '₹99/- only',
    '₹199/- only',
    '₹399/- only',
    '₹599/- only',
  ];
  @override
  Widget build(BuildContext context) {
    final mqh = MediaQuery.of(context).size.height;
    final mqw = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, top: 60),
        child: Center(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            BackButton(
              color: Colors.white,
            ),
            Text(
              '👑 3 days free trial with any plan',
              style: TextStyle(
                color: Colors.white,
                fontSize: 23,
                fontWeight: FontWeight.w900,
              ),
            ),
            SizedBox(height: mqh * 0.03),
            Container(
              alignment: Alignment.topCenter,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.blueGrey.shade700,
              ),
              width: double.infinity,
              height: mqh * 0.28,
              child: Column(
                children: [
                  RichText(
                    text: TextSpan(
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontStyle: FontStyle.italic),
                        children: <TextSpan>[
                          TextSpan(text: 'Go'),
                          TextSpan(
                              text: ' Pro ',
                              style: TextStyle(
                                  color: Colors.yellow,
                                  fontSize: 33,
                                  fontWeight: FontWeight.w900,
                                  fontStyle: FontStyle.normal)),
                          TextSpan(text: '& See No Ads'),
                        ]),
                  ),
                  Lottie.network(
                    "https://lottie.host/46592b54-8fc9-45a2-88f9-602ea8f67d64/BC8qElS8P7.json",
                    height: 179,
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.separated(
                itemBuilder: (context, index) {
                  return Container(
                    width: double.infinity,
                    height: mqh * 0.09,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.blueGrey.shade700),
                    child: ListTile(
                      title: Text(
                        arrMonthly[index],
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.w700),
                      ),
                      subtitle: Text(
                        arrPrice[index],
                        style: TextStyle(color: Colors.white60),
                      ),
                      trailing: IconButton(
                          color: Colors.yellow,
                          onPressed: (() {
                            showModalBottomSheet(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(15),
                                      topRight: Radius.circular(15))),
                              barrierColor: Colors.white24,
                              enableDrag: false,
                              context: context,
                              builder: (context) {
                                return SizedBox(
                                    height: 140, child: PymentBottomSheet());
                              },
                            );
                          }),
                          icon: Icon(
                            FontAwesomeIcons.circle,
                            color: Colors.white,
                          )),
                    ),
                  );
                },
                itemCount: arrMonthly.length,
                separatorBuilder: (BuildContext context, int index) {
                  return Divider(
                    height: 15,
                    thickness: 1,
                  );
                },
              ),
            )
          ]),
        ),
      ),
    );
  }

  Widget PymentBottomSheet() => Column(
        children: [
          IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.linear_scale,
                size: 30,
                color: Colors.grey,
              )),
          Padding(
            padding: EdgeInsets.all(5),
            child: SizedBox(
              height: 70,
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                color: Colors.white60,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Selected\nDuration',
                      style: TextStyle(fontSize: 20),
                    ),
                    ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.yellow,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12))),
                        child: Text(
                          'PAY',
                          style: TextStyle(
                              color: Colors.grey.shade600,
                              fontWeight: FontWeight.bold),
                        ))
                  ],
                ),
              ),
            ),
          ),
        ],
      );
}

class prem_StudPLan extends StatefulWidget {
  const prem_StudPLan({super.key});

  @override
  State<prem_StudPLan> createState() => _prem_StudPLanState();
}

class _prem_StudPLanState extends State<prem_StudPLan> {
  @override
  var arrMonthly = [
    '1 Month',
    '3 Month',
    '6 Month',
    '12 Month',
  ];
  var arrPrice = [
    '₹99/- only',
    '₹199/- only',
    '₹399/- only',
    '₹599/- only',
  ];
  Widget build(BuildContext context) {
    final mqh = MediaQuery.of(context).size.height;
    final mqw = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, top: 60),
        child: Center(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            BackButton(
              color: Colors.white,
            ),
            Text(
              '👑 3 days free trial with any plan',
              style: TextStyle(
                color: Colors.white,
                fontSize: 23,
                fontWeight: FontWeight.w900,
              ),
            ),
            SizedBox(height: mqh * 0.03),
            Container(
              alignment: Alignment.topCenter,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.blueGrey.shade700,
              ),
              width: double.infinity,
              height: mqh * 0.28,
              child: Column(
                children: [
                  RichText(
                    text: TextSpan(
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontStyle: FontStyle.italic),
                        children: <TextSpan>[
                          TextSpan(text: 'Go'),
                          TextSpan(
                              text: ' Pro ',
                              style: TextStyle(
                                  color: Colors.yellow,
                                  fontSize: 33,
                                  fontWeight: FontWeight.w900,
                                  fontStyle: FontStyle.normal)),
                          TextSpan(text: '& See No Ads'),
                        ]),
                  ),
                  Lottie.network(
                    "https://lottie.host/291a4a51-1e61-456a-9e48-30dff26db22d/ysLifniNCZ.json",
                    height: 179,
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.separated(
                itemBuilder: (context, index) {
                  return Container(
                    width: double.infinity,
                    height: mqh * 0.09,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.blueGrey.shade700),
                    child: ListTile(
                      title: Text(
                        arrMonthly[index],
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.w700),
                      ),
                      subtitle: Text(
                        arrPrice[index],
                        style: TextStyle(color: Colors.white60),
                      ),
                      trailing: IconButton(
                          color: Colors.yellow,
                          onPressed: (() {
                            setState(() {
                              Icon:
                              FontAwesomeIcons.checkCircle;
                            });
                          }),
                          icon: Icon(
                            FontAwesomeIcons.circle,
                            color: Colors.white,
                          )),
                    ),
                  );
                },
                itemCount: arrMonthly.length,
                separatorBuilder: (BuildContext context, int index) {
                  return Divider(
                    height: 15,
                    thickness: 1,
                  );
                },
              ),
            )
          ]),
        ),
      ),
    );
  }
}

class prem_FamlyPLan extends StatefulWidget {
  const prem_FamlyPLan({super.key});

  @override
  State<prem_FamlyPLan> createState() => _prem_FamlyPLanState();
}

class _prem_FamlyPLanState extends State<prem_FamlyPLan> {
  @override
  var arrMonthly = [
    '1 Month',
    '3 Month',
    '6 Month',
    '12 Month',
  ];
  var arrPrice = [
    '₹99/- only',
    '₹199/- only',
    '₹399/- only',
    '₹599/- only',
  ];
  Widget build(BuildContext context) {
    final mqh = MediaQuery.of(context).size.height;
    final mqw = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, top: 60),
        child: Center(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            BackButton(
              color: Colors.white,
            ),
            Text(
              '👑 3 days free trial with any plan',
              style: TextStyle(
                color: Colors.white,
                fontSize: 23,
                fontWeight: FontWeight.w900,
              ),
            ),
            SizedBox(height: mqh * 0.03),
            Container(
              alignment: Alignment.topCenter,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.blueGrey.shade700,
              ),
              width: double.infinity,
              height: mqh * 0.28,
              child: Column(
                children: [
                  RichText(
                    text: TextSpan(
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontStyle: FontStyle.italic),
                        children: <TextSpan>[
                          TextSpan(text: 'Go'),
                          TextSpan(
                              text: ' Pro ',
                              style: TextStyle(
                                  color: Colors.yellow,
                                  fontSize: 33,
                                  fontWeight: FontWeight.w900,
                                  fontStyle: FontStyle.normal)),
                          TextSpan(text: '& See No Ads'),
                        ]),
                  ),
                  Lottie.network(
                    "https://lottie.host/1e123fe9-7e0f-471c-9dc7-d158da73004a/oWbtCudjep.json",
                    height: 179,
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.separated(
                itemBuilder: (context, index) {
                  return Container(
                    width: double.infinity,
                    height: mqh * 0.09,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.blueGrey.shade700),
                    child: ListTile(
                      title: Text(
                        arrMonthly[index],
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.w700),
                      ),
                      subtitle: Text(
                        arrPrice[index],
                        style: TextStyle(color: Colors.white60),
                      ),
                      trailing: IconButton(
                          color: Colors.yellow,
                          onPressed: (() {
                            setState(() {
                              Icon:
                              FontAwesomeIcons.checkCircle;
                            });
                          }),
                          icon: Icon(
                            FontAwesomeIcons.circle,
                            color: Colors.white,
                          )),
                    ),
                  );
                },
                itemCount: arrMonthly.length,
                separatorBuilder: (BuildContext context, int index) {
                  return Divider(
                    height: 15,
                    thickness: 1,
                  );
                },
              ),
            )
          ]),
        ),
      ),
    );
  }
}
