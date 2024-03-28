import 'package:flutter/material.dart';

class OrderConfirmation extends StatefulWidget {
  const OrderConfirmation({super.key});

  @override
  State<OrderConfirmation> createState() => _OrderConfirmationState();
}

class _OrderConfirmationState extends State<OrderConfirmation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Order Confirmation'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 215,
              width: double.infinity,
              color: const Color.fromARGB(255, 143, 198, 244),
              child: Column(
                children: [
                  const Align(
                      alignment: Alignment.center,
                      child: Text('Secure Payment | Genuine Products | Easy Returns'),
                  ),
                    const SizedBox(height: 10,),
                  Center(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                      height: 152,
                      width: 350,
                        color: Colors.white,
                        child: Padding(padding: const EdgeInsets.only(left: 15, top: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              
                              children: [
                                const Text('Home Delivery'),
                                const SizedBox(width: 80,),
                                GestureDetector(
                                  onTap: (){

                                  },
                                  child: const Text('Change Address',
                                  style: TextStyle(
                                    color: Colors.blue
                                  ),),
                                )
                              ],
                            ),
                            const SizedBox(height: 10,),
                            const Text('Abdul',
                            style: TextStyle(
                              fontWeight: FontWeight.bold
                            ),),
                            const SizedBox(height: 5,),
                            const Text('No.07, Mahalakshmi Nagar, 2nd Street, CHENGALPATTU, TAMIL NADU-603210'),
                           const  SizedBox(height: 5,),
                            const Text('Phone : 9876543211')
                          ],
                        ),
                        )
                        
                  ) ,
                    ) 
                    
                  )
                  
                ],
              ),
            ),
            const ExpansionTile(
            title: Text('Expected Delivery',
            style: TextStyle(
              fontWeight: FontWeight.bold
            ),
            ) ),
            const ExpansionTile(
            title: Text('Amount Payable',
            style: TextStyle(
              fontWeight: FontWeight.bold
            ),
            ) ),
              ExpansionTile(
            title: const Text('Payment',
            style: TextStyle(
              fontWeight: FontWeight.bold
            ),
            ),
            children: [
              Padding(padding: const EdgeInsets.all(20),
              child:  Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Text('Offers & Promotions'),
                      const SizedBox(width: 100,),
                      GestureDetector(
                          onTap: (){

                          },
                          child: const Text('+ 8 more offers',
                          style: TextStyle(
                            color: Colors.blue
                          ),),
                      )
                    ],
                  ),
                  const SizedBox(height: 20,),
                        Container(
                      width: 350,
                      height: 100,
                      decoration: BoxDecoration(
                        boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1), // Shadow color
                  spreadRadius: 3, // Spread radius
                  blurRadius: 7, // Blur radius
                  // Offset from top left
                ),
              ],
                      ),
                        child:  Stack(
                          children: [
                                const Text('Get 10% Instant Discount of up to\nRs. 1000 on a minimum transaction\nvalue of Rs 3500 using State Bank\nof India Debit Cards T&C'),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Image.asset('assets/png-transparent-state-bank-of-india-thane-branch-banking-in-india-bank-blue-text-branch-thumbnail 1.png'),
                                )
                          ],
                        )  
                    ),
                    const SizedBox(height: 15,),
                    const Text('Redemption Options',
                    style: TextStyle(
                      fontWeight: FontWeight.bold
                    ),),
                    const SizedBox(height: 15,),
                    Row(
                      children: [
                       const  Icon(Icons.circle_outlined),
                       const SizedBox(width: 5,),
                        const Text('Loyalty Points\nYou have no Loyalty Points at the moment'),
                       const SizedBox(width: 5,),
                        GestureDetector(
                          onTap: (){

                          },
                          child: const Text('Details',
                          style: TextStyle(
                            color: Colors.blue
                          ),),
                        )
                      ],
                    ),
                    const SizedBox(height: 15,),
                    Row(
                      children: [
                       const  Icon(Icons.card_giftcard),
                       const SizedBox(width: 5,),
                        const Text('Have a Gift Card?\nAdd it to wallet to pay for your orders'),
                       const SizedBox(width: 35,),
                        GestureDetector(
                          onTap: (){

                          },
                          child: const Text('Add',
                          style: TextStyle(
                            color: Colors.blue
                          ),),
                        )
                      ],
                    ),
                    
                    const Divider(),
                    const ExpansionTile(
                      title: Text('UPI',
                      style: TextStyle(
                        fontWeight: FontWeight.bold
                      ),),
                      trailing: Icon(Icons.add),
                      ),
                      
                    const Divider(),
                    ExpansionTile(
                    title: const Text('Credit / Debit Card',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),),
                    trailing: TextButton(onPressed: (){

                    },  child: const Text('+Add card')),
                     ),
                     const Divider(),
                     const ExpansionTile(
                      title: Text('Net Banking',
                      style: TextStyle(
                        fontWeight: FontWeight.bold
                      ),),
                      trailing: Icon(Icons.add),
                      ),
                      const Divider(),
                      const ExpansionTile(
                      title: Text('Wallet',
                      style: TextStyle(
                        fontWeight: FontWeight.bold
                      ),),
                      trailing: Icon(Icons.add),
                      ),
                      const Divider(),
                      const Text('Cash on Delivery',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16
                      ),),

                ],
              )
              ),
              Container(
                        decoration: const BoxDecoration(
                          color:  Color.fromARGB(255, 144, 192, 231)
                        ),
                        width: double.infinity,
                        height: 50,
                        child: const Center(
                            child : Text('We have served 18 million+ happy customers across india'),

                        )
                      )
            ],
            )
          ],
        ),
      ),
    );
  }
}