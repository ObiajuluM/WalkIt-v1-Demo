import 'package:demo/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:glass_kit/glass_kit.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
    required String steps,
    required String status,
  })  : _steps = steps,
        _status = status;

  final String _steps;
  final String _status;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.purple, Colors.deepPurpleAccent],
          ),
        ),
        child: Scaffold(
          // drawer: Drawer(),
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
            primary: true,
            leading: GestureDetector(
              child: Icon(Icons.person_outline_rounded),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return const ProfilePage();
                }));
              },
            ),
            // actions: [
            //   Icon(
            //     Icons.person_outline,
            //   )
            // ],
          ),
          backgroundColor: Colors.transparent,
          body: Center(
            child: SingleChildScrollView(
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Steps counter
                  GlassContainer.frostedGlass(
                    shape: BoxShape.circle,
                    margin: const EdgeInsets.all(20),
                    // borderRadius: BorderRadius.only(
                    //   bottomLeft: Radius.circular(30),
                    //   bottomRight: Radius.circular(30),
                    // ),
                    width: 250,
                    height: 250,
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            widget._steps,
                            style: const TextStyle(
                              fontSize: 60,
                              fontFamily: 'InkFree',
                              fontWeight: FontWeight.bold,
                              // color: Colors.white,
                            ),
                          ),
                          const Text(
                            'Steps',
                            style: TextStyle(
                              fontSize: 30,
                              fontFamily: 'InkFree',
                              fontWeight: FontWeight.w500,
                              color: Colors.white70,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  const Text(
                    'Status:',
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'InkFree',
                      fontWeight: FontWeight.w300,
                      color: Colors.white70,
                    ),
                  ),

                  // Steps text
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      //walking image
                      Icon(
                        widget._status == 'walking'
                            ? Icons.directions_walk
                            : widget._status == 'stopped'
                                ? Icons.accessibility_new
                                : Icons.error,
                        color: Colors.grey,
                        size: 25,
                      ),
                      Center(
                        child: Text(
                          widget._status,
                          style: widget._status == 'walking' ||
                                  widget._status == 'stopped'
                              ? const TextStyle(
                                  fontSize: 20,
                                  fontFamily: 'Inkfree',
                                  fontWeight: FontWeight.w400)
                              : const TextStyle(
                                  fontSize: 20,
                                  color: Colors.red,
                                  fontFamily: 'InkFree',
                                  fontWeight: FontWeight.w400),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 50,
                  ),

                  GlassContainer.clearGlass(
                    alignment: AlignmentDirectional.bottomCenter,
                    padding: const EdgeInsets.only(
                      bottom: 20,
                    ),
                    height: 120,
                    width: 350,
                    borderRadius: BorderRadius.circular(10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Row(
                          children: const [
                            SizedBox(
                              width: 5,
                            ),
                            Text('...',
                                style: TextStyle(
                                    fontFamily: 'Inkfree',
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 30)),
                            SizedBox(width: 116),
                            Text('...',
                                style: TextStyle(
                                    fontFamily: 'Inkfree',
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 30)),
                            SizedBox(width: 116),
                            Text('...',
                                style: TextStyle(
                                    fontFamily: 'Inkfree',
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 30)),
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          children: const [
                            SizedBox(
                              width: 5,
                            ),
                            Text('Cal',
                                style: TextStyle(
                                    fontFamily: 'Inkfree',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15)),
                            SizedBox(width: 116),
                            Text('Km',
                                style: TextStyle(
                                    fontFamily: 'Inkfree',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15)),
                            SizedBox(width: 116),
                            Text('Move Min',
                                style: TextStyle(
                                    fontFamily: 'Inkfree',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15)),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Column(
                    children: [
                      GlassContainer.frostedGlass(
                        height: 70,
                        width: 350,
                        borderRadius: BorderRadius.circular(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            const Text(
                              'Invite a friend',
                              style: TextStyle(
                                fontSize: 15,
                                fontFamily: 'InkFree',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              child: Text('Share'),
                              style: ButtonStyle(
                                foregroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.white),
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.transparent),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      GlassContainer.clearGlass(
                        alignment: Alignment.topCenter,
                        height: 250,
                        width: 350,
                        borderRadius: BorderRadius.circular(10),
                        margin: const EdgeInsets.only(bottom: 20),
                        child: Text(
                          '',
                          // 'DEALS AND PROMOTIONS',
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'InkFree',
                              fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
