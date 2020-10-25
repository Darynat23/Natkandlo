import 'package:flutter/material.dart';
import 'package:design_digital/forms/FormAccount.dart';

class Account extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFEB294),
      appBar: AppBar(backgroundColor: Color(0xffFEB294)),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Center(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 19.0, top: 15.0),
                      child: Text(
                        'Nombre de usuario',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 6.0),
                      child: Column(
                        children: [
                          Container(
                              width: 100.0,
                              height: 100.0,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                      fit: BoxFit.fill,
                                      image: NetworkImage(
                                          'https://image.freepik.com/fotos-gratis/jovem-mulher-com-um-grande-sorriso_1098-1592.jpg')))),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            FormAccount()
          ],
        ),
      ),
    );
  }
}
