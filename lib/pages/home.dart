import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:investmentmobileapp/models/popular_model.dart';
import 'package:investmentmobileapp/pages/earning.dart';

class HomePage extends StatelessWidget {
  static String id = '/';
  HomePage({super.key});
  List<PopularModel> popular = [];

  void _getPopular() {
    popular = PopularModel.getPopular();
  }

  @override
  Widget build(BuildContext context) {
    _getPopular();
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      'Shop',
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 24),
                    ),
                  ),
                  InkWell(
                    onTap: () => Navigator.pushNamed(context, EarningPage.id),
                    child: SvgPicture.asset(
                      'assets/icons/dropdown.svg',
                      width: 20,
                      height: 20,
                    ),
                  ),
                  SizedBox(
                    width: 200,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => EarningPage()));
                    },
                    child: SvgPicture.asset(
                      'assets/icons/star2.svg',
                      width: 40,
                      height: 40,
                    ),
                  )
                ],
              )
            ],
          ),
          Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
                decoration: BoxDecoration(
                  boxShadow: [
                  BoxShadow(
                      color: const Color(0xff1D1617).withOpacity(0.11),
                      blurRadius: 20,
                      spreadRadius: 0.0)
                ]),
                child: TextField(
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      contentPadding: const EdgeInsets.all(15),
                      hintText: 'Apple',
                      hintStyle: const TextStyle(
                          color: Color(0xffDDDADA), fontSize: 14),
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: SvgPicture.asset('assets/icons/search2.svg',
                            width: 20, height: 20),
                      ),
                      suffixIcon: Container(
                        width: 100,
                        child: IntrinsicHeight(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              const VerticalDivider(
                                color: Colors.black,
                                indent: 10,
                                endIndent: 10,
                                thickness: 0.1,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: SvgPicture.asset(
                                    'assets/icons/filter.svg',
                                    width: 20,
                                    height: 20),
                              ),
                            ],
                          ),
                        ),
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide.none)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SvgPicture.asset(
                      'assets/icons/apple.svg',
                      width: 20,
                      height: 20,
                    ),
                    Text(
                      'Popular',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      'Cheapest',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                    ),
                    Text(
                      'Recommended',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                    ),
                  
                  ],
                ),
              )
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 25.0, top: 10.0),
                child: Row(
                  children: [
                    Text(
                      'PACKS',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                          fontWeight: FontWeight.w200),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text(
                        '124',
                        style: TextStyle(color: Colors.deepPurpleAccent),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Container(
                width: 350,
                height: 170,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                          color: const Color(0xff1D1617).withOpacity(0.11),
                          blurRadius: 40,
                          spreadRadius: 0.0)
                    ]),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Row(children: [
                        Text(
                          'Most Popular',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w600),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 130.0),
                          child: SvgPicture.asset(
                            'assets/icons/star2.svg',
                            width: 30,
                            height: 30,
                          ),
                        ),
                      ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Row(
                        children: [
                          Container(
                              margin: const EdgeInsets.all(10),
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  image: const DecorationImage(
                                      image: AssetImage(
                                          'assets/images/portrait1.jpg'),
                                      fit: BoxFit.cover))),
                          Text(
                            'by Tommy Hayes',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
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
          SizedBox(
            height: 30,
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Row(
                  children: [
                    Text(
                      'LEADERS',
                      style: TextStyle(color: Colors.grey, fontSize: 18),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      '1',
                      style: TextStyle(color: Colors.purple, fontSize: 18),
                    ),
                    SizedBox(
                      width: 220,
                    ),
                    SvgPicture.asset(
                      'assets/icons/rightarrow.svg',
                      width: 20,
                      height: 20,
                    )
                  ],
                ),
              )
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10,
              ),
              Container(
                height: 240,
                child: ListView.separated(
                  itemBuilder: (context, index) 
                  {
                    return Container(
                      width: 210,
                      decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                           BoxShadow(
                          color: const Color(0xff1D1617).withOpacity(0.11),
                          blurRadius: 60,
                          spreadRadius: 7.0)
                            ]                 
                          ),
                      child: Column(children: [
                        SvgPicture.asset(
                          popular[index].iconPath,
                          width: 70,
                          height: 70,
                        ),
                        SizedBox(height: 70,),
                        Text(
                          popular[index].name,
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                              fontSize: 20,
                             ),
                        ),
                        Text('${popular[index].percent }  |  ${popular[index].price}',
                        style: TextStyle(
                          color: Colors.green,
                          fontSize: 16,
                          
                        ),
                        ),
                        Container(
                          height: 45,
                          width: 190,
                          child: Center(
                            child: Text(
                              'Get Pro Tips',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 14
                              ),
                            ),
                          ),
                          decoration: BoxDecoration(
                            gradient: LinearGradient(colors: [
                              Color(0xff9DCEFF),Color(0xff92A3FD)
                            ]),
                            borderRadius: BorderRadius.circular(50)
                          ),
                        )
                      ]),
                      
                    );
                  },
                  separatorBuilder: ((context, index) => SizedBox(
                        width: 25,
                      )),
                  itemCount: popular.length,
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.only(left: 20, right: 20),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
