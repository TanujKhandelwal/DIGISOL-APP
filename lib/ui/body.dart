import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'tile_view.dart';

buildProductsListPage() {

  List info =[

  {'name':'DG-HR1420 (H/W Ver. A1)',
   'des':'DG-HR1420 (H/W Ver. A1) , DIGISOL 150Mbps Wireless Broadband 4G/3G Home Router with USB Port',
  'imag':'https://www.digisol.com/wp-content/uploads/2019/01/DG-HR1420-Ver1A-2.png'},

  {'name':'DG-VG2300N',
  'des':'DG-VG2300N , 300 Mbps Wireless VDSL Router',
  'imag':'https://www.digisol.com/wp-content/uploads/2018/10/DG-VG2300N-Ver1A.png'},

  {'name':'DG-BR5411QAC',
  'des':'DG-BR5411QAC , AC 1200 Gigabit Dual Band Wireless Broadband Router',
  'imag':'https://www.digisol.com/wp-content/uploads/2018/10/DG-BR5411QAC-Ver1A-2.png'},

  {'name':'DG-HR3300TA (H/W Ver. A1)',
  'des':'DG-HR3300TA (H/W Ver. A1) , DIGISOL 300Mbps Wireless Broadband Home Router',
  'imag':'https://www.digisol.com/wp-content/uploads/2018/09/DG-HR3300TA-Ver1A-2.png'},

  {'name':'DG-HR3400 (H/W Ver. E1)',
  'des':'DG-HR3400 (H/W Ver. E1) , DIGISOL 300Mbps Wireless Broadband Home Router',
  'imag':'https://www.digisol.com/wp-content/uploads/2018/09/DG-HR3400-Ver-E1-A-3.png'},

    {'name':'DG-BG4300NU',
      'des':'DG-BG4300NU (H/W Ver. B2) , DIGISOL 300Mbps Wireless ADSL 2/2+ Broadband Router with USB Port',
      'imag':'https://www.digisol.com/wp-content/uploads/2018/09/DG-BG4300NU-IS-Ver-B1-C-2.png'},

    {'name':'DG-BG4100NU',
      'des':'DG-BG4100NU (H/W Ver. A2) , DIGISOL 150Mbps Wireless ADSL 2/2+ Broadband Router with USB Port',
      'imag':'https://www.digisol.com/wp-content/uploads/2018/09/DG-BG4100NU-IS-Ver-A1-C.png'},


  ];

    return Container( decoration: BoxDecoration( gradient: LinearGradient(colors: [
      Colors.indigo[800],
      Colors.indigo[700],
      Colors.indigo[600],
      Colors.indigo[400],
    ],
    ),),
      child: ListView.builder(itemBuilder: (context, index) {
        return  tile_view( info[index]['name'], info[index]['des'],info[index]['imag']);
      },itemCount: info.length,),

    );
  }
