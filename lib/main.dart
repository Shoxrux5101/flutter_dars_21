import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage();

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> soz = [
    "Today, 12 Sept",
    "Mon, 13 Sept",
    "Tue, 14 Sept",
    "Wen, 15 Sept",
    "Thur, 16 Sept",
    "Fri, 17 Sept",
    "Sat, 18 Sept",
  ];
  int activeIndex = 0;

  List<String> image = [
    "assets/Group 848.png",
    "assets/Group 851.png",
    "assets/Group 747.png",
    "assets/Group 749.png",
    "assets/Group 751.png",
  ];
  int activeIndex1 = 0;

  final List<Map<String, dynamic>> matches = [
    {
      'homeTeam': 'Leeds United',
      'awayTeam': 'Liverpool',
      'homeTeamPic': 'assets/Leeds.png',
      'awayTeamPic': 'assets/liverpool.png',
      'isLive': true,
      'time': '',
    },
    {
      'homeTeam': 'Espanyol',
      'awayTeam': 'Atletico Madrid',
      'homeTeamPic': 'assets/espanyol.png',
      'awayTeamPic': 'assets/atletik.png',
      'isLive': true,
      'time': '',
    },
    {
      'homeTeam': 'Real Madrid',
      'awayTeam': 'Celta Vigo',
      'homeTeamPic': 'assets/real.png',
      'awayTeamPic': 'assets/liverpool.png',
      'isLive': false,
      'time': '09:00 PM',
    },
    {
      'homeTeam': 'Sampdoria',
      'awayTeam': 'Inter Milan',
      'homeTeamPic': 'assets/Leeds.png',
      'awayTeamPic': 'assets/liverpool.png',
      'isLive': false,
      'time': '09:00 PM',
    },
    {
      'homeTeam': 'AC Milan',
      'awayTeam': 'Fiorentina',
      'homeTeamPic': 'assets/Leeds.png',
      'awayTeamPic': 'assets/liverpool.png',
      'isLive': false,
      'time': '10:00 PM',
    },
    {
      'homeTeam': 'Montpellier',
      'awayTeam': 'Saint-Etienne',
      'homeTeamPic': 'assets/Leeds.png',
      'awayTeamPic': 'assets/liverpool.png',
      'isLive': false,
      'time': '11:00 PM',
    },
    {
      'homeTeam': 'Lyon',
      'awayTeam': 'Saint-Etienne',
      'homeTeamPic': 'assets/Leeds.png',
      'awayTeamPic': 'assets/liverpool.png',
      'isLive': false,
      'time': '09:00 PM',
    },
  ];

  int activeSvg = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1E1E1E),
      appBar: AppBar(
        backgroundColor: Color(0xFF1E1E1E),
        title: Text(
          "NowTV",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w800,
            color: Colors.white,
            fontStyle: FontStyle.italic,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
            color: Colors.white,
          ),
          SizedBox(
            width: 10,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications),
            color: Colors.white,
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 50,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Row(
                  children: [
                    ...List.generate(soz.length, (index) {
                      return Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              activeIndex = index;
                              setState(() {});
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Container(
                                height: 32,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6),
                                  color: activeIndex == index
                                      ? Color(0xFFFFFFFF)
                                      : Color(0xFF373737),
                                ),
                                child: Center(
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 10.5,
                                      vertical: 6,
                                    ),
                                    child: Text(
                                      soz[index],
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                        color: activeIndex == index
                                            ? Color(0xFF2D2D2D)
                                            : Color(0xFF8D8D8D),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      );
                    }),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 72,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Row(
                  children: [
                    ...List.generate(image.length, (index1) {
                      return Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 16),
                            child: Container(
                              height: 56,
                              width: 56,
                              decoration: BoxDecoration(shape: BoxShape.circle),
                              child: Center(
                                child: Image.asset(image[index1]),
                              ),
                            ),
                          ),
                        ],
                      );
                    }),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 21,),
          Expanded(
            child: ListView(
              scrollDirection: Axis.vertical,
              children: [
                Column(
                  children: [
                    ...List.generate(matches.length, (index2) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 2,
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xFF353535),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(16),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Image.asset(
                                          matches[index2]['homeTeamPic'],
                                        ),
                                        Text(
                                          matches[index2]['homeTeam'],
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 4,),
                                    Row(
                                      children: [
                                        Image.asset(
                                          matches[index2]['awayTeamPic'],
                                        ),
                                        Text(
                                          matches[index2]['awayTeam'],
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                 right: 31,
                                 left: 10,
                                  top: 4,
                                  bottom: 4,
                                ),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: matches[index2]['isLive']
                                        ? Colors.red
                                        : Color(0xFF3D3D3D),
                                  ),
                                  child: matches[index2]['isLive']
                                      ? Text(
                                          "Live",
                                          style: TextStyle(color: Colors.white),
                                        )
                                      : Row(
                                        children: [
                                          Text(matches[index2]['time'], style: TextStyle(color: Colors.white),),
                                          SizedBox(width: 20,),
                                          Icon(Icons.notifications_outlined,color: Colors.white,),
                                        ],
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: NavigationBar(
          overlayColor: WidgetStatePropertyAll(Colors.transparent),
          surfaceTintColor: Colors.transparent,
          backgroundColor: Color(0xFF2E2E2E),
          height: 80,
          indicatorColor: Colors.transparent,
          onDestinationSelected: (indexSvg) {
            activeSvg == indexSvg;
            setState(() {});
          },
          labelTextStyle: WidgetStatePropertyAll(TextStyle()),
          destinations: [
            NavigationDestination(icon: SvgPicture.asset("asset/home.svg",colorFilter: activeSvg == 0 ? ColorFilter.mode(Colors.white, BlendMode.screen): null), label: "Home"),
            NavigationDestination(icon: SvgPicture.asset("asset/explore.svg",colorFilter: activeSvg == 1 ? ColorFilter.mode(Colors.white, BlendMode.screen): null), label: "Explore"),
            NavigationDestination(icon: SvgPicture.asset("asset/live.svg",colorFilter: activeSvg == 2 ? ColorFilter.mode(Colors.white, BlendMode.screen): null), label: "Live"),
            NavigationDestination(icon: SvgPicture.asset("asset/reward.svg",colorFilter: activeSvg == 3 ? ColorFilter.mode(Colors.white, BlendMode.screen): null), label: "Reward"),
            NavigationDestination(icon: SvgPicture.asset("asset/person.svg",colorFilter: activeSvg == 4 ? ColorFilter.mode(Colors.white, BlendMode.screen): null), label: "Profile"),
          ],
      ),
    );
  }
}
