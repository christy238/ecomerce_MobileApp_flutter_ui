import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: ' Find Your\n Dream Product'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<String> prod = [
    'assets/images/pc3.webp',

    'assets/images/mix.jpg',
    'assets/images/pc2.jpg',
    'assets/images/phone1.webp',
    'assets/images/CL.avif',
    'assets/images/tB.avif',

    'assets/images/TB1.avif',
    'assets/images/col3.avif',
    'assets/images/CL.avif',
    'assets/images/tB.avif',

    'assets/images/tB.avif',
    'assets/images/TB1.avif',

    // 'assets/images/'
    // 'assets/images/'
    // 'assets/images/'
  ];

  final List<String> prod1 = [
    'assets/images/phone3.jpg',
    'assets/images/pc1.jpg',

    'assets/images/pc4.jpg',

    'assets/images/mix.jpg',
    'assets/images/pc1.jpg',
    'assets/images/WATCH.avif',
    'assets/images/TB1.avif',
    'assets/images/col3.avif',
    'assets/images/CL.avif',
    'assets/images/tB.avif',

    'assets/images/TB1.avif',

    // 'assets/images/'
    // 'assets/images/'
    // 'assets/images/'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 237, 239, 251),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 237, 239, 251),
        title: Padding(
          padding: const EdgeInsets.only(left: 15.0, top: 15),
          child: Text(
            widget.title,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(30.0),
          child: Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Row(
                  children: [
                    Container(
                      width: 270,
                      height: 47,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15)),
                      child: const Padding(
                        padding: EdgeInsets.only(left: 30),
                        child: Row(
                          children: [
                            Icon(
                              Icons.search,
                              color: Color.fromARGB(113, 0, 0, 0),
                            ),
                            Text(
                              'Search product',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(113, 0, 0, 0)),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Container(
                      width: 47,
                      height: 47,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(226, 0, 0, 0),
                          borderRadius: BorderRadius.circular(15)),
                      child: const Icon(
                        Icons.edit_note,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
                Expanded(
                  child: CustomScrollView(
                    slivers: [
                      SliverToBoxAdapter(
                        child: SizedBox(
                          height: 180,
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: prod.length,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      ClipRRect(
                                        borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(20),
                                            bottomLeft: Radius.circular(20)),
                                        child: Image.asset(
                                          prod[index],
                                          width: 180,
                                          height: 135,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Container(
                                        width: 100,
                                        height: 135,
                                        decoration: const BoxDecoration(
                                          color: Color.fromARGB(
                                              255, 255, 255, 255),
                                          borderRadius: BorderRadius.only(
                                              topRight: Radius.circular(20),
                                              bottomRight: Radius.circular(20)),
                                        ),
                                        child: const Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                'Discount',
                                                style: TextStyle(
                                                  color: Color.fromARGB(
                                                      130, 23, 22, 22),
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 16,
                                                ),
                                              ),
                                              Text(
                                                '70%',
                                                style: TextStyle(
                                                  color: Color.fromARGB(
                                                      255, 15, 15, 15),
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 28,
                                                ),
                                              ),
                                              Text(
                                                'All prod',
                                                style: TextStyle(
                                                  color: Color.fromARGB(
                                                      164, 23, 22, 22),
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 16,
                                                ),
                                              ),
                                            ]),
                                      )
                                    ],
                                  ),
                                );
                              }),
                        ),
                      ),
                      const SliverToBoxAdapter(
                        child: Icon(Icons.navigate_next),
                      ),
                      const SliverToBoxAdapter(
                        child: Row(
                          children: [
                            Text(
                              'New arrival',
                              style: TextStyle(
                                color: Color.fromARGB(255, 23, 23, 24),
                                fontWeight: FontWeight.w700,
                                fontSize: 18,
                              ),
                            ),
                            SizedBox(
                              width: 165,
                            ),
                            Text(
                              'See more',
                              style: TextStyle(
                                color: Color.fromARGB(130, 23, 22, 22),
                                fontWeight: FontWeight.w700,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SliverToBoxAdapter(
                        child: SizedBox(
                          height: 350,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: prod1.length,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding:
                                    const EdgeInsets.only(top: 15, right: 15),
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: const Color.fromARGB(255, 249, 248, 248),
                                      borderRadius: BorderRadius.circular(25)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        ClipRRect(
                                          borderRadius: const BorderRadius.only(
                                              topLeft: Radius.circular(20),
                                              topRight: Radius.circular(20)),
                                          child: Image.asset(
                                            prod1[index],
                                            height: 220,
                                            width: 180,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 5, bottom: 10),
                                                  child: Container(
                                                    height: 30,
                                                    width: 60,
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              29),
                                                      color: Color.fromARGB(
                                                          237, 23, 18, 47),
                                                    ),
                                                    child:
                                                        const FloatingActionButton(
                                                      onPressed: null,
                                                      backgroundColor:
                                                          Color.fromARGB(
                                                              237, 23, 18, 47),

                                                      // shape:
                                                      //     MaterialStatePropertyAll(
                                                      //         LinearBorder.top(
                                                      //   alignment: 0.0,
                                                      //   size: 0.0,
                                                      // )),

                                                      child: Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                top: 1,
                                                                bottom: 1),
                                                        child: Text(
                                                          'NEW',
                                                          style: TextStyle(
                                                              fontSize: 12,
                                                              color: Colors
                                                                  .white70,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                // ElevatedButton(
                                                //   onPressed: null,
                                                //   style: ButtonStyle(
                                                //     elevation:
                                                //         MaterialStateProperty.all(
                                                //             4),
                                                //     padding:
                                                //         MaterialStatePropertyAll(
                                                //             EdgeInsets.only(
                                                //       top: 2,
                                                //       bottom: 2,
                                                //       left: 20,
                                                //       right: 20,
                                                //     )),
                                                //     // shape:
                                                //     //     MaterialStatePropertyAll(
                                                //     //         LinearBorder.top(
                                                //     //   alignment: 0.0,
                                                //     //   size: 0.0,
                                                //     // )),
                                                //     backgroundColor:
                                                //         const MaterialStatePropertyAll(
                                                //             Color.fromARGB(
                                                //                 237, 23, 18, 47)),
                                                //   ),
                                                //   child: const Text(
                                                //     'NEW',
                                                //     style: TextStyle(
                                                //         fontSize: 12,
                                                //         color: Colors.white70,
                                                //         fontWeight:
                                                //             FontWeight.bold),
                                                //   ),
                                                // ),
                                                const Text(
                                                  ' prod nmdnn ',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                                const Row(
                                                  children: [
                                                    Icon(
                                                      Icons.star,
                                                      color: Color.fromARGB(
                                                          255, 244, 201, 72),
                                                      size: 20,
                                                    ),
                                                    Text(
                                                      '5.0  ',
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    ),
                                                    Text(
                                                      ' 2500 DA',
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    ),
                                                  ],
                                                )
                                              ],
                                            ),
                                            SizedBox(
                                              width: 20,
                                            ),
                                            Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                              children: [
                                                SizedBox(
                                                  height: 45,
                                                ),
                                                Container(
                                                  height: 30,
                                                  width: 30,
                                                  decoration: BoxDecoration(
                                                    color: const Color.fromARGB(
                                                        237, 23, 18, 47),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            35),
                                                  ),
                                                  child: const Icon(
                                                    Icons.navigate_next_rounded,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },
                            // height: 380,
                            // width: 20,
                            // color: Colors.red,
                            // child: Column(
                            //   crossAxisAlignment: CrossAxisAlignment.start,
                            //   children: [
                            //     Container(
                            //       height: 350,
                            //       width: 200,
                            //       color: Color.fromARGB(255, 224, 194, 74),
                            //       child: ,
                            //     ),
                            //   ],
                            // ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(
            backgroundColor: Color.fromARGB(255, 237, 239, 251),
            icon: Icon(
              Icons.home,
              color: Color.fromARGB(255, 26, 24, 42),
            ),
            label: ''),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite,
              color: Color.fromARGB(255, 70, 70, 88),
            ),
            label: 'fav'),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_bag,
              color: Color.fromARGB(255, 70, 70, 88),
            ),
            label: 'shoping'),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.manage_accounts,
              color: Color.fromARGB(255, 70, 70, 88),
            ),
            label: 'profil'),
      ]),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.navigate_next),
      // ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
