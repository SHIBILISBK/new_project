import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: BankBody(),
  ));
}

class BankBody extends StatefulWidget {
  @override
  State<BankBody> createState() => _BankBodyState();
}

class _BankBodyState extends State<BankBody> {
  List listile = [
    "My Account",
    "Load eSawa",
    "Payment",
    "Fund Transfer",
    "Sheduled Pyment",
    "Scan to Pay"
  ];
  List iconsbank = [
    "https://cdn1.iconfinder.com/data/icons/digital-marketing-red/64/DISTRIBUTION_NETWORK-connector-mobile_phone-communications-share-512.png",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSMFm2xtkBO1z9wxS8yAGOeiGdXjtd21uNqZQ&usqp=CAU",
    "https://cdn1.iconfinder.com/data/icons/fintech-red/64/MOBILE_PAYMENT-online_payment-money-smartphone-transfer-512.png",
    "https://cdn4.iconfinder.com/data/icons/data-transfer-red/64/SMARTPHONE-transfer-data-arrows-internet-512.png",
    "https://cdn4.iconfinder.com/data/icons/data-transfer-red/64/QUEUE-duration-file_storage-transfer-time-512.png",
    "https://cdn3.iconfinder.com/data/icons/protection-and-security-red/64/QR_CODE-qr_code-electronics_-scan-digital-512.png"
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate:
      const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
      ),
      itemBuilder: (BuildContext context, int index) {
        return
          Scaffold(
            body: Card(
              child: Container(
                width: 120,
                height: 100,
                child: Column(
                  children: [
                    Image(
                        height: 50,
                        width: 50,
                        image:NetworkImage(iconsbank[index])),
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Text(listile[index],style: const TextStyle(fontSize: 14,fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
              ),
            ),
          );
      },itemCount: 6,
    );
  }
}