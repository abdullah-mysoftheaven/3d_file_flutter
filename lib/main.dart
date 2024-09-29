import 'package:flutter/material.dart';
import 'package:flutter_3d_controller/flutter_3d_controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter 3D Controller',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter 3D controller example'),
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
  Flutter3DController controller = Flutter3DController();


  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    setState(() {
      controller.setCameraOrbit(30, 20, 5);
    });


  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
             Expanded(child:  ClipRRect(
               borderRadius: BorderRadius.only(
                 bottomLeft: Radius.circular(30),
                 bottomRight: Radius.circular(30),
               ),
               child: Container(
                 decoration: BoxDecoration(
                   color: Colors.red.withOpacity(0.05),
                   borderRadius: BorderRadius.only(
                     bottomLeft: Radius.circular(30),
                     bottomRight: Radius.circular(30),
                   ),


                 ),

                 height: 300,
                 child: Flutter3DViewer(

                   progressBarColor: Colors.blue,
                   controller: controller,
                   src: 'assets/3d/nike_air_zoom_pegasus_36.glb', //3D model with different animations
                   // src: 'assets/3d/chair.glb', //3D model with different animations
                   //src: 'assets/hardhead.glb', //3D model with different textures
                   //src: 'https://modelviewer.dev/shared-assets/models/Astronaut.glb', // 3D model from URL
                 ),
               ),
             )),
            ],
          ),
          Expanded(child: SingleChildScrollView(
            child: Padding(padding: EdgeInsets.only(left: 10,right: 10),

              child: Column(
                children: [

                  SizedBox(height: 10,),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(child:  Text("Venturini Men's Casual Shoe",
                        style: TextStyle(
                            color: Colors.deepPurple,
                            fontWeight: FontWeight.w500,
                            fontSize: 20
                        ),
                      )),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(child:  Text("SKU: 91294A71, Style: Laceup",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.normal,
                            fontSize: 15
                        ),
                      )),
                    ],
                  ),

                  SizedBox(height: 20,),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Price: ৳5,990",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18
                        ),
                      ),
                      SizedBox(width: 10,),
                      Expanded(child:  Text("৳6,990",

                        style: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.normal,
                            fontSize: 16,
                          decoration: TextDecoration.lineThrough,
                        ),
                      )),
                    ],
                  ),

                  SizedBox(height: 20,),
                  ///description
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(child:  Text("Description",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 16
                        ),
                      )),
                    ],
                  ),
                  SizedBox(height: 7,),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(child:  Text("""These men's casual shoes, crafted from premium leather with a durable rubber sole, offer both style and comfort. Perfect for everyday wear, they come with an extra set of lace for versatility and convenience. Ideal for a polished yet relaxed look in any casual setting. 
  Features: 
    •Premium leather upper.
    •Durable rubber sole. 
    •Stylish and comfortable. 
    •Comes with extra set of lace.""",
                        style: TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.normal,
                            fontSize: 14
                        ),
                      )),
                    ],
                  ),

                  SizedBox(height: 20,),
                  ///Shipping
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(child:  Text("Shipping",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 17
                        ),
                      )),
                    ],
                  ),
                  SizedBox(height: 7,),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(child:  Text("We are dedicated to ensuring swift delivery of your ordered "
                          "items through our efficient and reliable shipping process. Once your order is confirmed,"
                          " you can expect your package to arrive at your doorstep within 4 (four) working days if"
                          " you are located within Dhaka. If you reside outside Dhaka, you can anticipate your package"
                          " arriving within 7 (seven) working days.",
                        style: TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.normal,
                            fontSize: 14
                        ),
                      )),
                    ],
                  ),


                ],
              ),
            ),
          )),



        ],
      ),
    );
  }


}