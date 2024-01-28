import 'package:flutter/material.dart';

class CountriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Countries'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('United Arab Emirates'),
            onTap: () {
              Navigator.pop(context, 'ae');
            },
          ),
          ListTile(
            title: Text('Argentina'),
            onTap: () {
              Navigator.pop(context, 'ar');
            },
          ),
          ListTile(
            title: Text('Austria'),
            onTap: () {
              Navigator.pop(context, 'at');
            },
          ),
          ListTile(
            title: Text('Australia'),
            onTap: () {
              Navigator.pop(context, 'au');
            },
          ),
          ListTile(
            title: Text('Belgium'),
            onTap: () {
              Navigator.pop(context, 'be');
            },
          ),
          ListTile(
            title: Text('Bulgaria'),
            onTap: () {
              Navigator.pop(context, 'bg');
            },
          ),
          ListTile(
            title: Text('Brazil'),
            onTap: () {
              Navigator.pop(context, 'br');
            },
          ),
          ListTile(
            title: Text('Canada'),
            onTap: () {
              Navigator.pop(context, 'ca');
            },
          ),
          ListTile(
            title: Text('Switzerland'),
            onTap: () {
              Navigator.pop(context, 'ch');
            },
          ),
          ListTile(
            title: Text('China'),
            onTap: () {
              Navigator.pop(context, 'cn');
            },
          ),
          ListTile(
            title: Text('Colombia'),
            onTap: () {
              Navigator.pop(context, 'co');
            },
          ),
          ListTile(
            title: Text('Cuba'),
            onTap: () {
              Navigator.pop(context, 'cu');
            },
          ),
          ListTile(
            title: Text('Czech Republic'),
            onTap: () {
              Navigator.pop(context, 'cz');
            },
          ),
          ListTile(
            title: Text('Germany'),
            onTap: () {
              Navigator.pop(context, 'de');
            },
          ),
          ListTile(
            title: Text('Egypt'),
            onTap: () {
              Navigator.pop(context, 'eg');
            },
          ),
          ListTile(
            title: Text('France'),
            onTap: () {
              Navigator.pop(context, 'fr');
            },
          ),
          ListTile(
            title: Text('United Kingdom'),
            onTap: () {
              Navigator.pop(context, 'gb');
            },
          ),
          ListTile(
            title: Text('Greece'),
            onTap: () {
              Navigator.pop(context, 'gr');
            },
          ),
          ListTile(
            title: Text('Hong Kong'),
            onTap: () {
              Navigator.pop(context, 'hk');
            },
          ),
          ListTile(
            title: Text('Hungary'),
            onTap: () {
              Navigator.pop(context, 'hu');
            },
          ),
          ListTile(
            title: Text('Indonesia'),
            onTap: () {
              Navigator.pop(context, 'id');
            },
          ),
          ListTile(
            title: Text('Ireland'),
            onTap: () {
              Navigator.pop(context, 'ie');
            },
          ),
          ListTile(
            title: Text('Israel'),
            onTap: () {
              Navigator.pop(context, 'il');
            },
          ),
          ListTile(
            title: Text('India'),
            onTap: () {
              Navigator.pop(context, 'in');
            },
          ),
          ListTile(
            title: Text('Italy'),
            onTap: () {
              Navigator.pop(context, 'it');
            },
          ),
          ListTile(
            title: Text('Japan'),
            onTap: () {
              Navigator.pop(context, 'jp');
            },
          ),
          ListTile(
            title: Text('South Korea'),
            onTap: () {
              Navigator.pop(context, 'kr');
            },
          ),
          ListTile(
            title: Text('Lithuania'),
            onTap: () {
              Navigator.pop(context, 'lt');
            },
          ),
          ListTile(
            title: Text('Latvia'),
            onTap: () {
              Navigator.pop(context, 'lv');
            },
          ),
          ListTile(
            title: Text('Morocco'),
            onTap: () {
              Navigator.pop(context, 'ma');
            },
          ),
          ListTile(
            title: Text('Mexico'),
            onTap: () {
              Navigator.pop(context, 'mx');
            },
          ),
          ListTile(
            title: Text('Malaysia'),
            onTap: () {
              Navigator.pop(context, 'my');
            },
          ),
          ListTile(
            title: Text('Nigeria'),
            onTap: () {
              Navigator.pop(context, 'ng');
            },
          ),
          ListTile(
            title: Text('Netherlands'),
            onTap: () {
              Navigator.pop(context, 'nl');
            },
          ),
          ListTile(
            title: Text('Norway'),
            onTap: () {
              Navigator.pop(context, 'no');
            },
          ),
          ListTile(
            title: Text('New Zealand'),
            onTap: () {
              Navigator.pop(context, 'nz');
            },
          ),
          ListTile(
            title: Text('Philippines'),
            onTap: () {
              Navigator.pop(context, 'ph');
            },
          ),
          ListTile(
            title: Text('Poland'),
            onTap: () {
              Navigator.pop(context, 'pl');
            },
          ),
          ListTile(
            title: Text('Portugal'),
            onTap: () {
              Navigator.pop(context, 'pt');
            },
          ),
          ListTile(
            title: Text('Romania'),
            onTap: () {
              Navigator.pop(context, 'ro');
            },
          ),
          ListTile(
            title: Text('Serbia'),
            onTap: () {
              Navigator.pop(context, 'rs');
            },
          ),
          ListTile(
            title: Text('Russia'),
            onTap: () {
              Navigator.pop(context, 'ru');
            },
          ),
          ListTile(
            title: Text('Saudi Arabia'),
            onTap: () {
              Navigator.pop(context, 'sa');
            },
          ),
          ListTile(
            title: Text('Sweden'),
            onTap: () {
              Navigator.pop(context, 'se');
            },
          ),
          ListTile(
            title: Text('Singapore'),
            onTap: () {
              Navigator.pop(context, 'sg');
            },
          ),
          ListTile(
            title: Text('Slovenia'),
            onTap: () {
              Navigator.pop(context, 'si');
            },
          ),
          ListTile(
            title: Text('Slovakia'),
            onTap: () {
              Navigator.pop(context, 'sk');
            },
          ),
          ListTile(
            title: Text('Thailand'),
            onTap: () {
              Navigator.pop(context, 'th');
            },
          ),
          ListTile(
            title: Text('Turkey'),
            onTap: () {
              Navigator.pop(context, 'tr');
            },
          ),
          ListTile(
            title: Text('Taiwan'),
            onTap: () {
              Navigator.pop(context, 'tw');
            },
          ),
          ListTile(
            title: Text('Ukraine'),
            onTap: () {
              Navigator.pop(context, 'ua');
            },
          ),
          ListTile(
            title: Text('United States'),
            onTap: () {
              Navigator.pop(context, 'us');
            },
          ),
          ListTile(
            title: Text('Venezuela'),
            onTap: () {
              Navigator.pop(context, 've');
            },
          ),
          ListTile(
            title: Text('South Africa'),
            onTap: () {
              Navigator.pop(context, 'za');
            },
          ),
        ],
      ),
    );
  }
}
