import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:smartagricultures/view/cropdetection/solution.dart';
import 'package:smartagricultures/view/widgets/alertdilog.dart';

import 'package:smartagricultures/view/widgets/button.dart';
import 'package:path/path.dart' as p;

class Dection extends StatefulWidget {
  const Dection({Key? key}) : super(key: key);

  @override
  _DectionState createState() => _DectionState();
}

class _DectionState extends State<Dection> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          SizedBox(height: 100,),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: ButtonCircular(text:"Upload Image", onTap: () async{
              FilePickerResult? result = await FilePicker.platform.pickFiles();

              if (result != null) {
                PlatformFile file = result.files.first;

                print(file.name);
                print(file.bytes);
                print(file.size);
                print(file.extension);
                print(file.path);

                if(file.name=='Mosaic.jpg'){
                  Navigator.push(context, MaterialPageRoute(builder: (_)=> Soulution(
                    dname: 'Mosaic Virus',
                    sol: 'There are no chemical controls, but resistant varieties exist. The virus can live in dry soil for some time. Remove and destroy infected plants, roots and all, and avoid planting susceptible plants in the same area for two years. Because tobacco is a carrier, smokers should wash hands thoroughly before handling plants.',


                  )));
                } else if(file.name=='Blackspot.jpg'){
                  Navigator.push(context, MaterialPageRoute(builder: (_)=> Soulution(
                    dname: 'Black Spot',
                    sol: 'The fungus overwinters in diseased canes and leaves, so remove both before winter. Keep foliage clean and dry by mulching beneath plants, positioning roses where morning sun will quickly evaporate dew, and watering at the roots rather than wetting the foliage. Consider planting varieties of roses resistant to black spot.',
                  )));

                }else if(file.name=='Downy.jpg'){
                  Navigator.push(context, MaterialPageRoute(builder: (_)=> Soulution(
                    dname: 'Downy Mildew',
                    sol: 'Plant resistant cultivars when available. No fungicides are available, but cultural practices can help. Remove and destroy infected foliage, or entire plants if downy mildew is prevalent. Avoid crowding plants or watering them in the evening, and rotate edibles year to year.'

                  )));
                }else if(file.name=='Powdery.jpg'){
                  Navigator.push(context, MaterialPageRoute(builder: (_)=> Soulution(

                    dname: 'Powdery Mildew',
                    sol: 'Rake up and destroy infected leaves to reduce the spread of spores. Also, give plants good drainage and ample air circulation. Avoid overhead watering at night; mid-morning is preferred to allow foliage to dry before evening',
                  )));
                } else {
                  AlertDialogs(context,'alert','no Data found on Database');
                }


              } else {

              }

              },),
          )
        ],
      ),
    );
  }
}
