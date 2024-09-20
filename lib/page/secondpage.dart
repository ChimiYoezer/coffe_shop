import 'package:flutter/material.dart';
import 'package:foodhub/data/coffe_list.dart';
import 'package:foodhub/modelClass/coffe_class.dart';
import 'package:foodhub/page/managestatepage.dart';
import 'package:foodhub/page/thirdpage.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';

class DetialsPage extends StatelessWidget {
  ProductModel productModel;
  DetialsPage({super.key, required this.productModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Details"),
        centerTitle: true,
      ),

        body: Consumer<ManageState>(
          builder: (context, ms, _) {

            return SafeArea(
              child: SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.all(10),

                  child: Column(
                    children: [
                      Container(
                        height: 240,
                        width: MediaQuery.of(context).size.width * 0.91,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: AssetImage("${productModel.imageUrl}"),
                            fit: BoxFit.cover,),
                        ),
                      ),
                      Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(20),
                            width: double.infinity,
                            decoration: BoxDecoration(


                            ),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("${productModel.name}", style: TextStyle(fontSize: 24,color:  Colors.black,fontWeight:  FontWeight.bold),),],),


                                  ],
                                ),
                                Column(children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("${productModel.type}", style: TextStyle(fontSize: 12,color:  Colors.grey,)),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Icon(Icons.delivery_dining),
                                          Icon(Icons.coffee),
                                          Icon(Icons.cabin),

                                        ],
                                      )
                                    ],
                                  ),
                                  Gap(10),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("⭐${productModel.rating}",style: TextStyle(color: Colors.black),),
                                      Text("(203)",style: TextStyle(color: Colors.grey),)
                                    ],
                                  )
                                ],),
                                Gap(10),
                                Divider(),
                                Gap(10),
                                Row(
                                  children: [
                                    Text("Description",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
                                  ],
                                ),
                                Gap(10),
                                Column(
                                  children: [
                                    Text("${productModel.detils}"),
                                    Text("Read More" ,style: TextStyle(fontWeight: FontWeight.bold,color: Color(0XFFC67C4E)),)

                                  ],
                                ),

                                Gap(15),
                                Row(children: [
                                  Text("Size",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                                ],
                                ),
                                Gap(10),
                                Container(
                                  height: 50,
                                  width: MediaQuery.of(context).size.width*10,
                                  child: ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    // physics: NeverScrollableScrollPhysics(),
                                    itemCount: allSize.length,
                                    shrinkWrap: true,
                                    itemBuilder: (context, index) {
                                      return InkWell(

                                        child: Center(
                                          child: Container(
                                            height: 40,
                                            width: 100,
                                            padding: EdgeInsets.all(3.5),
                                            margin: EdgeInsets.all(3),
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(10),
                                              color: Colors.grey,
                                            ),
                                            child:Column(
                                              children: [
                                                Text("${allSize[index].size}", style: TextStyle(fontSize: 19,),),
                                              ],
                                            ),

                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                                Gap(10),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      height: 70,
                                      width: 90,

                                      child: Container(
                                        padding: EdgeInsets.all(10),
                                          child:
                                          Column(
                                            children: [
                                              Row(
                                                children: [
                                                  Text("Price", style: TextStyle(fontSize: 15,),),
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  Text("\S${ms.getTotalPrice()}",style: TextStyle(color: Color(0XFFC67C4E)),)
                                                ],
                                              ),
                                            ],
                                          ),

                                      ),
                                    ),
                                    InkWell(
                                    onTap: () {
                                        Navigator.of(context).push(MaterialPageRoute(builder: (builder)=>DeliveryInfo()));
                                              },
                                      child: Container(
                                        height: 60,
                                        width: 240,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(15),
                                          color:Color(0XFFd4a276),
                                        ),
                                        child: Center(child: Text("Buy Now",style: TextStyle(fontSize: 20,color: Colors.white),)),
                                      ),
                                    )
                                  ],
                                )















                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )

            ;
          },
        )
    );
  }
}
