import 'package:flutter/material.dart';
import 'package:flutter_application_6/core/conatainercommen.dart';
import 'package:flutter_application_6/views/savedproperty/containervommensaved/containercommensaved_scren.dart';

class SavedpropertyScreen extends StatefulWidget {
  SavedpropertyScreen({super.key, required this.savedImages});
  final List<String> savedImages;
  @override
  State<SavedpropertyScreen> createState() => _SavedpropertyScreenState();
}

class _SavedpropertyScreenState extends State<SavedpropertyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back_ios_new_outlined)),
        title: Text(
          'Saved Property',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              widget.savedImages.isNotEmpty
                  ? Column(
                      children: widget.savedImages.map((image) {
                        return ContainercommensavedScreen(
                          image: image,
                          text1: 'feeder house',
                          text2: '\$40000000',
                          text3: 'mohmaed ali stree in roxy',
                          text4: '(cool)',
                          text5: '22',
                          text6: '45',
                          text7: '12',
                          width: MediaQuery.of(context).size.width * 0.90,
                          height: MediaQuery.of(context).size.height * 0.41,
                        );
                      }).toList(),
                    )
                  : Text('No saved properties'),
            ],
          ),
        ),
      ),
    );
  }
}
