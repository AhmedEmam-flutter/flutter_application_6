import 'package:flutter/material.dart';

class Textfildandimage extends StatefulWidget {
  const Textfildandimage({super.key});

  @override
  State<Textfildandimage> createState() => _TextfildandimageState();
}

class _TextfildandimageState extends State<Textfildandimage> {
  RangeValues current = const RangeValues(20, 60);
  RangeValues current2 = const RangeValues(20, 60);
  


  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 7,
          child: Container(
            margin: const EdgeInsets.only(left: 20, right: 5, top: 20),
            width: MediaQuery.of(context).size.width * 0.7,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color.fromARGB(255, 255, 255, 255),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: const TextField(
              decoration: InputDecoration(
                fillColor: Colors.white,
                hintText: 'Search--',
                border: InputBorder.none,
                prefixIcon: SizedBox(
                  width: 60,
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 8.0, left: 8.0, right: 8.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.search,
                          size: 30,
                          color: Colors.purple,
                        ),
                        Text(
                          '|',
                          style: TextStyle(fontSize: 30, color: Colors.purple),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        const Spacer(),
        Expanded(
          flex: 3,
          child: Padding(
            padding: const EdgeInsets.only(top: 17.0),
            child: InkWell(
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return StatefulBuilder(
                      builder: (context, setModalState) {
                        return Container(
                          height: MediaQuery.of(context).size.height * 0.8,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(30),
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.1),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: const Offset(0, 3),
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Column(
                              children: [
                                const Text('Filters', style: TextStyle(fontSize: 20)),
                                Row(
                                  children: const [
                                    Text('property type', style: TextStyle(fontSize: 20)),
                                  ],
                                ),
                                const SizedBox(height: 50),
                                Row(
                                  children: [
                                    const Text('property size', style: TextStyle(fontSize: 20)),
                                    const Spacer(),
                                    const Text('up to 500 sqft',
                                        style: TextStyle(fontSize: 10, color: Colors.blue)),
                                  ],
                                ),
                                RangeSlider(
                                  values: current,
                                  min: 0,
                                  max: 500,
                                  divisions: 10,
                                  labels: RangeLabels(
                                    current.start.round().toString(),
                                    current.end.round().toString(),
                                  ),
                                  onChanged: (RangeValues values) {
                                    setModalState(() {
                                      current = values;
                                    });
                                    setState(() {
                                      current = values;
                                    });
                                  },
                                  activeColor: Colors.blue,
                                ),
                                Row(
                                  children: const [
                                    Text('price', style: TextStyle(fontSize: 20)),
                                  ],
                                ),
                                SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                                Row(
                                  children: const [
                                    Text('low', style: TextStyle(fontSize: 10, color: Colors.black54)),
                                    Spacer(),
                                    Text('high', style: TextStyle(fontSize: 10, color: Colors.black54)),
                                  ],
                                ),
                                RangeSlider(
                                  values: current2,
                                  min: 0,
                                  max: 100,
                                  divisions: 10,
                                  labels: RangeLabels(
                                    current2.start.round().toString(),
                                    current2.end.round().toString(),
                                  ),
                                  onChanged: (RangeValues values) {
                                    setModalState(() {
                                      current2 = values;
                                    });
                                    setState(() {
                                      current2 = values;
                                    });
                                    
                                  },
                                  activeColor: Colors.blue,
                                ),
                                // Row(
                                //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                //       children: [
                                //       Container(
                                //         width: (current2.start / 100) * 40,
                                //         height: 40,
                                //         decoration: BoxDecoration(
                                //           color: Colors.blue,
                                //           shape: BoxShape.rectangle,
                                //         ),
                                //         child: Center(child: Text('${current2.start.round().toString()}', style: TextStyle(fontSize: 10, color: Colors.white)))),
                                //           Container(
                                //         width: (current2.end / 100) * 20,
                                //         height: 30,
                                //         decoration: BoxDecoration(
                                //           color: Colors.blue,
                                //           shape: BoxShape.rectangle,
                                //         ),
                                //         child: Text('${current2.end.round().toString()}', style: TextStyle(fontSize: 10, color: Colors.white))),

                                //       ],
                                //     ),
                                const Spacer(),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      width: 120,
                                      height: 50,
                                      child: ElevatedButton(
                                        onPressed: () {},
                                        child: const Text(
                                          'Reset',
                                          style: TextStyle(color: Colors.blue),
                                        ),
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.white,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 10),
                                    SizedBox(
                                      width: 190,
                                      height: 50,
                                      child: ElevatedButton(
                                        onPressed: () {},
                                        child: const Text(
                                          'Check properties',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: const Color.fromARGB(255, 11, 92, 159),
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  },
                );
              },
              child: Image.asset('assets/images/Filter.png'),
            ),
          ),
        ),
      ],
    );
  }
}
