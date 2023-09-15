import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:investmentmobileapp/models/popular_model.dart';

class EarningPage extends StatelessWidget {
  static const String id = 'earning';
  EarningPage({super.key});
  List<PopularModel> popular = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        leading: Container(
            margin: const EdgeInsets.all(10),
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: const DecorationImage(
                    image: AssetImage('assets/images/portrait1.jpg'),
                    fit: BoxFit.cover))),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 20, left: 20),
                    child: const Text(
                      'Earnings',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 28,
                          fontWeight: FontWeight.w800),
                    ),
                  ),
                  const SizedBox(
                    width: 120,
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 30, right: 20),
                    width: 100,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(
                          color: Colors.grey,
                          width: 2,
                        )),
                    child: const Center(
                      child: Text(
                        'Invoice',
                        style: TextStyle(
                          color: Colors.deepPurpleAccent,
                          fontSize: 16,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 10, left: 20.0),
                    child: Text(
                      'Last week',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                          fontWeight: FontWeight.w200),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                    height: 3,
                  ),
                  SvgPicture.asset(
                    'assets/icons/arrowdown.svg',
                    width: 15,
                    height: 15,
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          Column(
            children: [
              Container(
                width: 350,
                height: 80,
                decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 12.0),
                      child: Text(
                        'Your balance',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    const SizedBox(
                      width: 40,
                    ),
                    const Center(
                      child: Text(
                        '18.1K',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 24,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    const SizedBox(
                      width: 60,
                    ),
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.deepPurpleAccent,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: SvgPicture.asset(
                        'assets/icons/arrowup.svg',
                        width: 12,
                        height: 12,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          const SizedBox(
            height: 60,
          ),
          Column(
            children: [
              Container(
                width: 350,
                height: 50,
                child: const Row(
                  children: [
                    // Padding(
                    //   padding: const EdgeInsets.only(left: 8.0),
                    //   child: SvgPicture.asset('assets/icons/dots2.svg'),
                    // ),
                    Text(
                      'Watchlist',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w800,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Column(
            children: [
              Container(
                width: 350,
                height: 50,
                child: const Row(
                  children: [
                    Text(
                      'Dropbox Inc.',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'DBX',
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey),
                    )
                  ],
                ),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Column(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 40),
                width: 250,
                height: 80,
                decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(25)),
                child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 160),
                      width: 80,
                      height: 60,
                      decoration: BoxDecoration(
                          color: Colors.white70,
                          borderRadius: BorderRadius.circular(25)),
                      child: const Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 30.0),
                            child: Text(
                              '32.8',
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Column(
            children: [
              Container(
                height: 50,
                child: Row(
                  children: [
                    Container(
                        margin: const EdgeInsets.only(left: 100),
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                                image:
                                    AssetImage('assets/images/portrait1.jpg'),
                                fit: BoxFit.cover))),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        '+189',
                        style: TextStyle(
                            color: Colors.deepPurpleAccent,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(1.0),
                      child: Text(
                        'today',
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.w600),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          Column(
            children: [
              Container(
                margin: const EdgeInsets.all(25),
                child: Row(
                  children: [
                    Container(
                      width: 160,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(
                            color: Colors.grey,
                            width: 1,
                          )),
                      child: const Padding(
                        padding: EdgeInsets.only(
                          left: 65.0,
                          top: 10.0,
                        ),
                        child: Text(
                          'Sell',
                          style: TextStyle(
                              color: Colors.deepPurpleAccent,
                              fontSize: 16,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 20),
                      width: 160,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.deepPurpleAccent),
                      child: const Padding(
                        padding: EdgeInsets.only(
                          left: 65.0,
                          top: 10.0,
                        ),
                        child: Text(
                          'Buy',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
