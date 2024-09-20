import 'package:flutter/material.dart';
import 'package:foodhub/data/coffe_list.dart';
import 'package:foodhub/modelClass/coffe_class.dart';
import 'package:foodhub/page/managestatepage.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';

class DeliveryInfo extends StatelessWidget {
  PaymentModel _selectedMethod = allMethods[0];

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Order",),
        centerTitle: true,

      ),
      body:
      Consumer<ManageState>(
        builder: (context, ms, _) {
          return SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(15),
              child:Center(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.symmetric(horizontal: 60, vertical: 15),
                            textStyle: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,color: Colors.white
                            ),
                            backgroundColor: Color(0XFFC67C4E),
                          ),
                          child: Text('Deliver',style: TextStyle(color: Colors.white),),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.symmetric(horizontal: 60, vertical: 15),
                            textStyle: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white
                            ),
                          ),
                          child: Text('Pick Up',style: TextStyle(color: Colors.black),),
                        ),


                      ],
                    ),
                    Gap(20),
                    Container(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text("Delivery Address",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(right: 70),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Silambi, Nagor",style: TextStyle(), textAlign: TextAlign.start,),
                                    Text("Kpg.Sutoyo No.620, Bilzen, Tenjungbalai ",style: TextStyle(), textAlign: TextAlign.start,)                  ],
                                ),
                              ),
                            ],
                          ),
                          Gap(10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 30,
                                width: MediaQuery.of(context).size.width*0.4,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    border: Border.all(color: Colors.black38, width: 2)                    ),
                                child:Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.edit_calendar,size: 20),Gap(10),
                                    Text("Edit Address",style: TextStyle(),),                      ],
                                ) ,
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 30),
                                height: 30,
                                width: MediaQuery.of(context).size.width*0.35,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    border: Border.all(color: Colors.black38, width: 2)                    ),
                                child:Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.book_outlined, size: 20,),Gap(7),
                                    Text("Add Note",style: TextStyle()),                      ],
                                ) ,
                              ),
                            ],
                          ),
                          Gap(10),
                           Container(
                             height: MediaQuery.of(context).size.height * 0.14,
                             width: MediaQuery.of(context).size.width * 2,

                             child: ListView.builder(
                               itemCount: ms.cartProducts.length,
                               shrinkWrap: true,
                               itemBuilder: (context, index) {
                                 return Container(
                                   height: MediaQuery.of(context).size.height * 0.2,
                                   width: double.infinity,

                                   decoration: BoxDecoration(
                                     borderRadius: BorderRadius.circular(10),

                                   ),
                                   child: Column(
                                     children: [
                                       Row(
                                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                         children: [
                                           Container(
                                             height: MediaQuery.of(context).size.height * 0.1,
                                             width: MediaQuery.of(context).size.width * 0.20,

                                             decoration: BoxDecoration(
                                                 image: DecorationImage(
                                                     image: AssetImage(
                                                         "${ms.cartProducts[index].imageUrl}"),
                                                     fit: BoxFit.cover)),
                                           ),

                                             Container(
                                               height: MediaQuery.of(context).size.height * 0.2,
                                               width: MediaQuery.of(context).size.width * 0.3,
                                               padding: EdgeInsets.only(
                                                 top: 50,
                                                 right: 33,
                                               ),
                                               child: Column(
                                                 children: [
                                                   Text(
                                                     "${ms.cartProducts[index].name}",
                                                     style: TextStyle(
                                                         fontSize: 13, fontWeight: FontWeight.bold),
                                                   ),
                                                   Text(
                                                     "\$${ms.cartProducts[index].price}",
                                                     style: TextStyle(
                                                         fontSize: 12, fontWeight: FontWeight.bold),
                                                   ),


                                                 ],
                                               ),
                                             ),
                                           Row(
                                             mainAxisAlignment: MainAxisAlignment.center,
                                             children: [
                                               IconButton(
                                                 onPressed: () {
                                                   ms.decreaseQuantity(ms.cartProducts[index]);
                                                 },
                                                 icon: Icon(
                                                   Icons.remove,
                                                   size: 10,
                                                   color: Colors.red,
                                                 ),
                                               ),
                                               Gap(10),
                                               Text(
                                                 "${ms.cartProducts[index].quantity}",
                                                 style: TextStyle(
                                                     fontSize: 12,
                                                     fontWeight: FontWeight.bold),
                                               ),
                                               Gap(10),
                                               IconButton(
                                                 onPressed: () {
                                                   ms.increaseQuantity(ms.cartProducts[index]);
                                                 },
                                                 icon: Icon(
                                                   Icons.add,
                                                   size: 10,
                                                   color: Colors.green,
                                                 ),
                                               )
                                             ],
                                           ),


                                         ],
                                       ),


                                     ],
                                   ),
                                 );
                               },
                             ),
                           ),
                          Gap(10),
                          Container(
                            height: 50,
                            width: MediaQuery.of(context).size.width*0.9,
                            decoration: BoxDecoration(                  borderRadius: BorderRadius.circular(10),
                                color: Color(0xffedede9).withOpacity(0.5)                ),
                            child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                            Icon(Icons.watch_later_outlined),
                                Container(
                                margin: EdgeInsets.only(right: 60),
                                    child: Text("1 Discount is Avaliable",style: TextStyle())),
                            Icon(Icons.arrow_forward_ios_outlined, size: 18,),
                              ],
                          ),
                          ),
                          Gap(30),

                          Row(
                            children: [
                              Text("Payment Summary",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)
                            ],
                          ),

                          Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Price",style: TextStyle(color: Colors.grey),),
                                  Text("\S${ms.getTotalPrice()}",style: TextStyle(fontWeight: FontWeight.bold),)
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                Text("Delivery Fee",style: TextStyle(color: Colors.grey),),

                                Text("\$1.0",style: TextStyle(fontWeight: FontWeight.bold),)



                              ],)
                            ],
                          ),
                          Gap(20),
                          Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(Icons.wallet),
                                  Container(
                                    width: 80,

                                    child: Column(

                                      children: [
                                        Text("Cash/Wallet"),
                                        Text("\S${ms.getTotalOder()}",style: TextStyle(fontWeight: FontWeight.bold),)
                                      ],
                                    ),
                                  )
                                  ,
                                  DropdownButton<PaymentModel>(
                                    value: _selectedMethod,
                                    onChanged: (PaymentModel? newValue) {
                                      (() {
                                        _selectedMethod = newValue!;
                                      });
                                    },
                                    items: allMethods.map<DropdownMenuItem<PaymentModel>>((PaymentModel method) {
                                      return DropdownMenuItem<PaymentModel>(
                                        value: method,
                                        child: Row(
                                          children: [
                                            Gap(10),
                                            Text("${method.paymentMethod}"),
                                          ],
                                        ),
                                      );
                                    }).toList(),
                                  ),
                                ],
                              ),

                            ],

                          ),

                          Gap(20),

                          MaterialButton(
                            height: 90,
                            color: Color(0xffC67C4E),
                            minWidth: double.infinity,

                            onPressed: () {
                              // Navigator.of(context).push(MaterialPageRoute(builder: (builder)=> PaymentInfo()));
                            },
                            child: Text(
                              "Order",
                              style: TextStyle(color: Colors.white, fontSize: 18),
                            ),
                          )




                        ],
                      ),
                    ),
                  ],
                ),
              ),

            ),
          );
        },
      ),
    );
  }
}