import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';import 'package:gap/gap.dart';
class OrderPages extends StatefulWidget {
  const OrderPages({super.key});
@override
State<OrderPages> createState() => _OrderPagesState();}
class _OrderPagesState extends State<OrderPages> {
  bool isDeliverSelected = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Container(
      padding: EdgeInsets.all(15),
      height: 790,
      width: double.infinity,
      decoration: BoxDecoration(
          gradient: LinearGradient(
          begin: Alignment.topCenter, end: Alignment.bottomCenter,
          colors: [Color(0xffffffff), Color(0xffffffff)])),
      child: SingleChildScrollView(
        child: Column(
        children: [
          SizedBox(height: 50),
          Row(
            children: [
            InkWell(
              //   onTap: (){
              // Navigator.of(context).push(MaterialPageRoute(builder: (builder)=>DetailsPages()));
              // },
                child: Icon(Icons.arrow_back_ios_new, color:Colors.black,)),                  Container(
                margin: EdgeInsets.only(left: 100),
                  child: Text("Order Page", style:TextStyle(),)
            ),                ],
          ),
          Gap(30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            GestureDetector(
              onTap: () {
              setState(() {
                isDeliverSelected = true;
              });
              },
              child: Container(
                height: 40,
                width: MediaQuery.of(context).size.width*0.45,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: isDeliverSelected ? Colors.brown : Colors.grey[300],
                ),
                child:Center(child: Text("Deliver",style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20,
                  color: isDeliverSelected ? Colors.white : Colors.black,),)                        ) ,
              ),                  ),
            GestureDetector(
              onTap: () {
              setState(() {
                isDeliverSelected = false;
              });
              },
              child: Container(
                height: 40,
                width: MediaQuery.of(context).size.width*0.45,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: !isDeliverSelected ? Colors.brown : Colors.grey[300],
                ),
                child:Center(child: Text("Pick Up",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,
                  color: !isDeliverSelected ? Colors.white : Colors.black,),)                      ) ,
              ),
            ),
          ],
          ),
          Gap(20),
          Container(
            margin: EdgeInsets.only(right: 70),
            child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
              children: [
            Text("Delivery Addresss",style: TextStyle(), textAlign: TextAlign.start,),Gap(5),                    Text("Silambi, Nagor",style: TextStyle(), textAlign: TextAlign.start,),
            Text("Kpg.Sutoyo No.620, Bilzen, Tenjungbalai ",style: TextStyle(), textAlign: TextAlign.start,)                  ],
          ),
          ),
          Gap(20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
              height: 30,
              width: MediaQuery.of(context).size.width*0.43,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Colors.black38, width: 2),
              ),
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
          Gap(20),
          Container(                   width: MediaQuery.of(context).size.width*0.9,
            height: MediaQuery.of(context).size.height*0.09,                 padding: EdgeInsets.all(5),
            decoration: BoxDecoration(                  borderRadius: BorderRadius.circular(15),
                color: Color(0xffedede9).withOpacity(0.5)                ),
            child: Row(                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [                    Row(
                children: [                        Gap(5),
                  Image(image: AssetImage("assets/images/americano.jpg"), height: 67,width: 70,fit: BoxFit.cover,), Gap(10),                        Column(
                    crossAxisAlignment: CrossAxisAlignment.start,                          children: [
                    Gap(5),                            Text("Americano Coffee", style: TextStyle(),),
                    Text("Deep Foam", style: TextStyle(),)                          ],
                  ),                      ],
              ),                      Row(
                children: [                        Icon(Icons.remove, size: 25,),Gap(10), Text("1", style: TextStyle(),),Gap(10), Icon(Icons.add, size: 20,),
                ],                    ),
              ],                ),
          ),Gap(10),              Container(
            height: 40,                width: MediaQuery.of(context).size.width*0.9,
            decoration: BoxDecoration(                  borderRadius: BorderRadius.circular(10),
                color: Color(0xffedede9).withOpacity(0.5)                ),child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,                  children: [
            Icon(Icons.watch_later_outlined),                    Container(
                margin: EdgeInsets.only(right: 60),                        child: Text("1 Discount is Avaliable",style: TextStyle())),
            Icon(Icons.arrow_forward_ios_outlined, size: 18,),                  ],
          ),              ),

          Gap(20),
          Column(                crossAxisAlignment: CrossAxisAlignment.start,
            children: [                  Text("Payment Summary",style: TextStyle(),


              textAlign: TextAlign.start,),
              Gap(5),
              Row(                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Price",style: TextStyle(), textAlign: TextAlign.start,),
                  Text("\$4.53",style: TextStyle()),
                ],
              )
              ,Gap(5),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Delivery Fee",style: TextStyle(), textAlign: TextAlign.start,),
                  Text("\$ l.O",style: TextStyle()),
                ],
              )
            ],
          ),
          Gap(20),
          Container(
            width: MediaQuery.of(context).size.width*0.9,
            height: MediaQuery.of(context).size.height*0.09,
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
                color: Color(0xffedede9).withOpacity(0.5)
          ),
          ),Gap(10),
          InkWell(
            // onTap: (){                  Navigator.of(context).push(MaterialPageRoute(builder: (builder)=>LastPage()));
            // },
        child: Card(
            elevation: 10,
          child: Container(
            height: 55,
            width: MediaQuery.of(context).size.width*0.9,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.brown
            ),
            child: Center(child: Text("Make Memories",style: TextStyle(color:Colors.white),)),                  ),
          ),
          ),
        ],
        ),
      ),
    ),
  );
  }
}