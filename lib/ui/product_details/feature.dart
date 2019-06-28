import 'package:flutter/material.dart';

class Feature extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
            ListTile(leading: Icon(Icons.arrow_right),
          title: Text("IPv6 Support "),),
                ListTile(leading: Icon(Icons.arrow_right),
          title: Text("Up to 300Mbps Wireless Speed"),),
        ListTile(leading: Icon(Icons.arrow_right),
          title: Text( "Multiple Wireless modes to select WLAN Operation Mode"),),
        ListTile(leading: Icon(Icons.arrow_right),
          title: Text( "WMM function enhances the multimedia experience on wireless"),),
        ListTile(leading: Icon(Icons.arrow_right),
          title: Text("BetterWi-Fi coverage using High gain Antenna (5dBi)"),),
        ListTile(leading: Icon(Icons.arrow_right),
          title: Text("WPS push button to setup secured Wi-Fi Network Quickly & Easily"),),
        ListTile(leading: Icon(Icons.arrow_right),
          title: Text("Protect your LAN/WLAN network using Firewall & DoS Protection"),),
        ListTile(leading: Icon(Icons.arrow_right),
          title: Text("URL blocking for Parental control"),),



      ],
    );
    }
}
