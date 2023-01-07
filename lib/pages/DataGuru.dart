import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/DataGuru_model.dart';
import 'package:flutter_application_1/provider/dataGuru_provider.dart';
import 'package:provider/provider.dart';

class DataGuru extends StatelessWidget {
  final List dataGuru = [
    DataGuruModel(
      id: '1',
      nama: 'Aufa Nanda Bima Ahada',
      nip: '1022',
      mapel: 'IPA',
      alamat: 'Banyuwangi',
    ),
    DataGuruModel(
      id: '2',
      nama: 'Mita Amelia',
      nip: '1006',
      mapel: 'IPS',
      alamat: 'Songgon',
    )
  ];

  @override
  Widget build(BuildContext context) {
    Provider.of<DataGuruProvider>(context, listen: false).getDataGuruModel();
    return Scaffold(
      appBar: AppBar(
        title: Text("Data Guru"),
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Consumer<DataGuruProvider>(
          builder: (context, data, _) {
            return ListView.builder(
              itemCount: dataGuru.length,
              itemBuilder: (context, i) {
                return Card(
                  elevation: 8,
                  child: ListTile(
                    title: Text(
                      dataGuru[i].nama,
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    subtitle: Row(
                      children: <Widget>[
                        Text('Mapel: '),
                        Text(dataGuru[i].mapel),
                      ],
                    ),
                    trailing: Text(dataGuru[i].nip),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
