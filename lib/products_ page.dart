import 'package:flutter/material.dart';

class Products_page extends StatefulWidget {
  const Products_page({Key? key}) : super(key: key);

  @override
  State<Products_page> createState() => _Products_pageState();
}

class _Products_pageState extends State<Products_page> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(),
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: 10,
                    itemBuilder:(context, index) {
                      return Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                  color: Color.fromRGBO(242, 120, 130, 1), width: 2.5),
                            ),
                            child: Row(mainAxisSize: MainAxisSize.max, children: [
                              Expanded(
                                flex: 2,
                                child: Container(
                                  // decoration: BoxDecoration(
                                  //   color: Colors.red,
                                  //   borderRadius: BorderRadius.circular(10),
                                  //   border:
                                  //       Border.all(color: Color.fromRGBO(242, 120, 130, 1)),
                                  // ),
                                  width: 150,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image(
                                        image: AssetImage(
                                            "assets/images/splashscreen_animation.gif"),
                                        fit: BoxFit.contain),
                                  ),
                                ),
                              ),
                              SizedBox(width: 20),
                              Expanded(
                                flex: 5,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "Product Name",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                        color: Colors.deepOrangeAccent,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "Product Detail, Product Detail, Product Detail, Product Detail.....",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 15,
                                        color: Color.fromRGBO(242, 120, 130, 1),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: Text(
                                            "Prize : ****",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18,
                                              color: Colors.green.shade700,
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: InkWell(
                                            onTap: () {},
                                            child: Container(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 10, vertical: 10),
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(30),
                                                border:
                                                Border.all(color: Colors.grey.shade700),
                                                color: Colors.white,
                                              ),
                                              child: Text(
                                                'Add to Cart  🛒',
                                                style: TextStyle(
                                                    color: Color.fromRGBO(250, 148, 77, 1),
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 13),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 5,),
                                  ],
                                ),
                              )
                            ]),
                          ),
                          SizedBox(height: 15,),
                        ],
                      );
                    },
                  ),
                ),


              ],
            ),
          )),
    );
  }
}
