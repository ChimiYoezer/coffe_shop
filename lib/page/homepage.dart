import 'package:flutter/material.dart';
import 'package:foodhub/data/coffe_list.dart';
import 'package:foodhub/page/secondpage.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';

import 'managestatepage.dart';
class coffeShop extends StatefulWidget {
  const coffeShop({super.key});

  @override
  State<coffeShop> createState() => _coffeShopState();
}

class _coffeShopState extends State<coffeShop> {
  @override
  Widget build(BuildContext context) {
    return Consumer<ManageState>(
      builder: (context, ms, _) {
        return Scaffold(
          backgroundColor: Colors.white,
          body: SafeArea(
            child: Column(
              children: [
                Container(
                  height:260,
                  width: double.infinity,
                  color: Colors.black87,
                  padding: EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Location',
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,color: Colors.white),
                      ),
                      SizedBox(height: 8),
                      DropdownButton<String>(dropdownColor: Colors.black,
                        value: 'Thimphu, Bhutan',
                        items: ['Bilzen, Tanjungbalai','Thimphu, Bhutan'].map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value,style: TextStyle(color: Colors.white),),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {
                          setState(() {});
                        },

                      ),
                      SizedBox(height: 16),
                      Row(
                        children: [
                          Container(
                            height: 60,
                            width: MediaQuery.of(context).size.width * 0.7,
                            decoration: BoxDecoration(
                                color: Color(0XFF313131),
                                border: Border.all(),
                                borderRadius: BorderRadius.circular(10)

                            ),
                            child:  Center(
                              child: TextField(
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Search coffee',
                                  hintStyle: TextStyle(color: Colors.grey),
                                  prefixIcon: Icon(Icons.search,color: Colors.grey,),

                                ),
                              ),
                            ),
                          ),

                          Row(
                            children: [Text("Hello")],
                          ),
                        ],
                      ),

                    ],
                  ),
                ),

                Stack(clipBehavior: Clip.none,
                  children: [Container(
                    padding: EdgeInsets.all(15),
                    child: Column(
                      children: [
                        Column(),
                        SizedBox(height: 70,),

                        Container(
                          height: 40,
                          width: double.infinity,
                          child:
                          InkWell(

                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
// physics: NeverScrollableScrollPhysics(),
                              itemCount: allBrand.length,
                              shrinkWrap: true,
                              itemBuilder: (context, index) {
                                return Container(
                                  height: 40,
                                  width: 100,
                                  padding: EdgeInsets.all(3.4),
                                  margin: EdgeInsets.all(3),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Color(0XFFE3E3E3),
                                  ),
                                  child:SafeArea(
                                    child: Column(
                                      children: [
                                        Text("${allBrand[index].Brand}", style: TextStyle(fontSize: 19,),),
                                      ],
                                    ),
                                  ),

                                );
                              },
                            ),
                          ),
                        ),
                        Gap(18),
                        Column(
                          children: [
                            Container(
                              height: 340.228,
                              width: double.infinity,
                              child: GridView.builder(
                                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                    childAspectRatio: 0.77,
                                    crossAxisCount: 2,
                                    crossAxisSpacing: 2,
                                    mainAxisSpacing: 2,
                                  ),
                                  itemCount: allPro.length,
                                  shrinkWrap: true,
                                  itemBuilder: (context, index) {
                                    return InkWell(
                                      onTap: () {
                                        Navigator.of(context).push(MaterialPageRoute(builder: (builder)=>DetialsPage(productModel: allPro[index])));
                                      },
                                      child: Card(
                                        color:Colors.white ,
                                        child: Column(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.all(7),
                                              child: Center(
                                                child: Container(
                                                  height: 100,
                                                  width: MediaQuery.of(context).size.width * 0.366,
                                                  padding: EdgeInsets.all(5),
                                                  decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.circular(10),
                                                    image: DecorationImage(image: AssetImage("${allPro[index].imageUrl}"),fit: BoxFit.cover),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Column(children: [

                                              Container(
                                                height: 112,
                                                width: double.infinity,
                                                padding: EdgeInsets.all(4),
                                                decoration: BoxDecoration(

                                                ),
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Text("${allPro[index].name}", style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold),),

                                                    Text("${allPro[index].type}",style: TextStyle(fontSize: 18,color: Colors.grey),),


                                                    Row(
                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                      children: [
                                                        Text("\$${allPro[index].price}", style: TextStyle(fontSize: 18),),
                                                        Column(children: [
                                                          Column(
                                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                            children: [
                                                              IconButton(
                                                                  onPressed: () {

                                                                    bool added = ms.addToCart(allPro[index]);
                                                                    if(added){
                                                                      ScaffoldMessenger.of(context).showSnackBar(
                                                                          SnackBar(content: Text("Product Has been added"))
                                                                      );
                                                                    } else {
                                                                      ScaffoldMessenger.of(context).showSnackBar(
                                                                          SnackBar(content: Text("Product is already added"))
                                                                      );
                                                                    }
                                                                  },
                                                                  icon: Icon(
                                                                    Icons.add,
                                                                    size: 20,
                                                                  )),

                                                            ],
                                                          )
                                                        ],)
                                                      ],
                                                    ),
                                      //


                                                  ],),
                                              ),
                                            ],)


                                          ],
                                        ),

                                      ),
                                    );
                                  }),
                            ),
                          ],
                        )



                      ],
                    ),
                  ),
                    Positioned(
                      right: 20,
                      top: -70,
                      child: Container(
                        height: 130,
                        width: 355,
                        decoration: BoxDecoration(
                            borderRadius:BorderRadius.circular(20),
                            image: DecorationImage(
                                image:AssetImage("assets/image/seeds.jpg"),
                                fit: BoxFit.cover)
                        ),




                      ),
                    ),
                  ],
                ),





              ],
            ),
          ),


        );
      },
    );
  }
}
