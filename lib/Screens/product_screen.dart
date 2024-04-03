import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/order_confiration.dart';
import 'package:flutter_application_1/Screens/user.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  String _selectedSize = '';

  final List<String> _sizes = ['S', 'M', 'L', 'XL'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
      ),
        body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Image.asset('assets/productScreen.png'),
            const SizedBox(height: 10,),
             const Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text('RUDRAPAYAG GEORGETTE',
            style: TextStyle(
              fontFamily: 'poppins',
              fontSize: 16,
              fontWeight: FontWeight.bold,
              
            ),
            ),
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Text('Semi Stitched Anarkali Gown For Women',)     ,
                  )
                ],
              ),
            
           const SizedBox(height: 10,),
           const Row(
            children: [
              Icon(Icons.currency_rupee,
              size: 15,),
              Text('4000',
              style: TextStyle(
                fontWeight: FontWeight.bold
              ),),
              SizedBox(width: 10,),
              Text('MRP'),
              Icon(Icons.currency_rupee,
              size: 15,),
              Text('2000',
              style: TextStyle(
                decoration: TextDecoration.lineThrough
              ),),
              SizedBox(width: 10,),
              Text('42% Off',
              style: TextStyle(
                  color: Color.fromARGB(255, 3, 205, 10)
              ),)
            ],
           ),
           const Align(
            alignment: Alignment.centerLeft,
            child: Text('Price inclusive of all taxes.')
           ),
           const SizedBox(height: 10,),
           Row(
            children: [
              IconButton(onPressed: (){

              },
               icon: const Icon(Icons.share,),
               ),
               const SizedBox(width: 10,),
               IconButton(onPressed: (){

               }, icon: const Icon(Icons.favorite_border)),
               const SizedBox(width: 10,),
               TextButton.icon(onPressed: (){
                    Navigator.push(context, 
                    MaterialPageRoute(builder: (context) => const User()));
               }, icon: const Icon(Icons.shopping_bag), label: const Text('Add to Bag'),
               style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.black)
               ),)
            ],
           ),
           const SizedBox(height: 10,),
           
           Container(
            height: 170,
            width: 350,
            decoration: BoxDecoration(
              border: Border.all(
                width: 2,
                color: Colors.grey
              )
            ),
            child:  Padding(padding: EdgeInsets.all(10),
            child: Stack(
              children: [
                Column(
                  children: [
                    const Align(
                      alignment: Alignment.topLeft,
                      child: Text('Get Flat Rs.500 off on 2490 and Above'),
                    ),
                const SizedBox(height: 10,),
                Align(
                  alignment: Alignment.centerLeft,
                  child: GestureDetector(
                  onTap: (){

                  },
                  child: const Text('View All Products>',
                  style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: Colors.blue
                          ),),
                ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    width: 100,
                    height: 88,
                    decoration: const BoxDecoration(
                      color: Colors.grey,
                    ),
                    child: Column(
                      children: [
                        const Text('NEW500'),
                        GestureDetector(
                          onTap: (){

                          },
                          child: const Text('T&C',
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: Colors.blue
                          ),),
                        )
                      ],
                    ),
                  ),
                  )
                  ],
                )
                
              ],
            ),
            
            )
           ),
           const SizedBox(height: 20,),
          const Divider(height: 5,
           
          thickness: 10,),
          const SizedBox(height: 15,),
          const Align(
            alignment: Alignment.topLeft,
            child: Text('Select Size ',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),),
          ),
           
          const SizedBox(height: 10,),
          SizedBox(
            height: 100,
          
              child: GridView.builder(
        itemCount: _sizes.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: _sizes.length,
        ),
        itemBuilder: (BuildContext context, int index) {
          final size = _sizes[index];
          return GestureDetector(
            onTap: () {
              setState(() {
                _selectedSize = size;
              });
            },
            child: Container(
              alignment: Alignment.center,
              margin: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: _selectedSize == size ? Colors.purple : Colors.grey[300],
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                size,
                style: TextStyle(
                  color: _selectedSize == size ? Colors.white : Colors.black,
                  fontSize: 20,
                ),
              ),
            ),
          );
        },
      ),
          ),
         const SizedBox(height: 20,),
          const Divider(height: 5,
           
          thickness: 10,),
          const SizedBox(height: 20,),
           Row(
            children: [
              const Text('Delivery Details',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 16,
                fontWeight: FontWeight.bold
              ),),
              const SizedBox(width: 50,),
              GestureDetector(
                onTap: (){

                },
                child: const Text('Check delivery date',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 15,
                  color: Colors.blue,
                ),),
              )
            ],
          ),
           const SizedBox(height: 20,),
          const Divider(height: 5,
           
          thickness: 10,),
          const SizedBox(height: 20,),
          Row(
            children: [
              const Text('Product Details',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 16,
                fontWeight: FontWeight.bold
              ),),
              const SizedBox(width: 150,),
              GestureDetector(
                onTap: (){

                },
                child: const Text('+More',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 15,
                  color: Colors.blue
                ),),
              )
            ],
          ),
          const SizedBox(height: 10,),
          const ListTile(
                leading: Icon(Icons.circle_sharp), // Use any bullet icon you prefer
                title: Text('Top: Heavy Faux Georgette With Embroidery Sequence Work With CholiBack Side Work.'),
              ),
              const ListTile(
                leading: Icon(Icons.circle_sharp), // Use any bullet icon you prefer
                title: Text('Bottom Type: Heavy Santoon, Flair: 2.80 MTR.'),
              ),
              const ListTile(
                leading: Icon(Icons.circle_sharp), // Use any bullet icon you prefer
                title: Text('Sleeves: Heavy Faux Georgette With Embroidery Sequence Work, Sleeve Type '),
              ),
               const SizedBox(height: 20,),
          const Divider(height: 5,
           
          thickness: 10,),
          const SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
             Column(
              children: [
                Image.asset('assets/icon3.png'),
                const Text('Happy\nCustomers')
              ],
             ),
            //  SizedBox(width: 10,),
             Column(
              children: [
                Image.asset('assets/icon2.png'),
                const Text('Genuine\nProduct')
              ],
             ),
            //  SizedBox(width: 10,),
             Column(
              children: [
                Image.asset('assets/icon1.png'),
                const Text('Quality\nChecked')
              ],
             )
              
            ],
          ),
          const SizedBox(height: 20,),
          const Divider(height: 5,
           
          thickness: 10,),
          const SizedBox(height: 20,),

          const Text('Recently Viewed',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                 mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset('assets/Wedding dress 1.png'),
                  const Text('Gucci'),
                  const Text('Black Sun Glass'),
                  Container(
                    color: const Color.fromARGB(255, 5, 238, 13),
                    child: const Row(
                      children: [
                        Text('3.5'),
                        Icon(Icons.star),
                        Text('|27')
                      ],
                    ),
                  ),
                  const Row(
                    children: [
                      Icon(Icons.currency_rupee,
                      size: 15,),
                      Text('700')
                    ],
                  )
                ],
              ),
              const SizedBox(width: 5,),
               Column(
                 mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset('assets/Buy Green Organza Embroidered Resham Work Leaf Neck Mirror Lehenga Set For Women by Suhino Online at Aza Fashions_ 1.png'),
                  const Text('Slip dress'),
                  const Text('Patterned Dress'),
                  Container(
                    color: const Color.fromARGB(255, 5, 238, 13),
                    child: const Row(
                      children: [
                        Text('2.5'),
                        Icon(Icons.star),
                        Text('|53')
                      ],
                    ),
                  ),
                  const Row(
                    children: [
                      Icon(Icons.currency_rupee,
                      size: 15,),
                      Text('1500')
                    ],
                  )
                ],
              ),
              const SizedBox(width: 5,),
               Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset('assets/Ethereal green embellished lehenga set - XS 1.png'),
                  const Text('Normcore'),
                  const Text('Rose Gold Earing Set'),
                  Container(
                    color: const Color.fromARGB(255, 5, 238, 13),
                    child: const Row(
                      children: [
                        Text('1.7'),
                        Icon(Icons.star),
                        Text('|47')
                      ],
                    ),
                  ),
                  const Row(
                    children: [
                      Icon(Icons.currency_rupee,
                      size: 15,),
                      Text('400')
                    ],
                  )
                ],
              )
            ],
          )
              
          ], 
        ),
      ),
    ));
  }
}