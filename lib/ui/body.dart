import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'tile_view.dart';

class Body extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    return Container( decoration: BoxDecoration( gradient: LinearGradient(colors: [
      Colors.indigo[800],
      Colors.indigo[700],
      Colors.indigo[600],
      Colors.indigo[400],
    ],
    ),),
      child: ListView(
        children: <Widget>[
          tile_view('DG-HR1420 (H/W Ver. A1)','DG-HR1420 (H/W Ver. A1) , DIGISOL 150Mbps Wireless Broadband 4G/3G Home Router with USB Port','https://www.digisol.com/wp-content/uploads/2019/01/DG-HR1420-Ver1A-2.png'),
          tile_view('DG-VG2300N','DG-VG2300N , 300 Mbps Wireless VDSL Router','https://www.digisol.com/wp-content/uploads/2018/10/DG-VG2300N-Ver1A.png'),
          tile_view('DG-BR5411QAC','DG-VG2300N , 300 Mbps Wireless VDSL Router','https://www.digisol.com/wp-content/uploads/2018/10/DG-BR5411QAC-Ver1A-2.png'),
          tile_view('DG-HR3300TA (H/W Ver. A1)','DG-HR3300TA (H/W Ver. A1) , DIGISOL 300Mbps Wireless Broadband Home Router','https://www.digisol.com/wp-content/uploads/2018/09/DG-HR3300TA-Ver1A-2.png'),
          tile_view('DG-HR3400 (H/W Ver. E1)','DG-HR3400 (H/W Ver. E1) , DIGISOL 300Mbps Wireless Broadband Home Router','https://www.digisol.com/wp-content/uploads/2018/09/DG-HR3400-Ver-E1-A-3.png'),

          tile_view('DG-HR1420 (H/W Ver. A1)','DG-HR1420 (H/W Ver. A1) , DIGISOL 150Mbps Wireless Broadband 4G/3G Home Router with USB Port','https://www.digisol.com/wp-content/uploads/2019/01/DG-HR1420-Ver1A-2.png'),
          tile_view('DG-VG2300N','DG-VG2300N , 300 Mbps Wireless VDSL Router','https://www.digisol.com/wp-content/uploads/2018/10/DG-VG2300N-Ver1A.png'),
          tile_view('DG-BR5411QAC','DG-VG2300N , 300 Mbps Wireless VDSL Router','https://www.digisol.com/wp-content/uploads/2018/10/DG-BR5411QAC-Ver1A-2.png'),
          tile_view('DG-HR3300TA (H/W Ver. A1)','DG-HR3300TA (H/W Ver. A1) , DIGISOL 300Mbps Wireless Broadband Home Router','https://www.digisol.com/wp-content/uploads/2018/09/DG-HR3300TA-Ver1A-2.png'),
          tile_view('DG-HR3400 (H/W Ver. E1)','DG-HR3400 (H/W Ver. E1) , DIGISOL 300Mbps Wireless Broadband Home Router','https://www.digisol.com/wp-content/uploads/2018/09/DG-HR3400-Ver-E1-A-3.png'),

          tile_view('DG-HR1420 (H/W Ver. A1)','DG-HR1420 (H/W Ver. A1) , DIGISOL 150Mbps Wireless Broadband 4G/3G Home Router with USB Port','https://www.digisol.com/wp-content/uploads/2019/01/DG-HR1420-Ver1A-2.png'),
          tile_view('DG-VG2300N','DG-VG2300N , 300 Mbps Wireless VDSL Router','https://www.digisol.com/wp-content/uploads/2018/10/DG-VG2300N-Ver1A.png'),
          tile_view('DG-BR5411QAC','DG-VG2300N , 300 Mbps Wireless VDSL Router','https://www.digisol.com/wp-content/uploads/2018/10/DG-BR5411QAC-Ver1A-2.png'),
          tile_view('DG-HR3300TA (H/W Ver. A1)','DG-HR3300TA (H/W Ver. A1) , DIGISOL 300Mbps Wireless Broadband Home Router','https://www.digisol.com/wp-content/uploads/2018/09/DG-HR3300TA-Ver1A-2.png'),
          tile_view('DG-HR3400 (H/W Ver. E1)','DG-HR3400 (H/W Ver. E1) , DIGISOL 300Mbps Wireless Broadband Home Router','https://www.digisol.com/wp-content/uploads/2018/09/DG-HR3400-Ver-E1-A-3.png'),


        ],

      ),
    );
  }
}

