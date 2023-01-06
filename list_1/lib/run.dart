import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:list_1/main.dart';
import 'package:list_1/page2.dart';

class r extends StatelessWidget {
  @override
  r({super.key});

  List<Map<String, dynamic>> per = [
    {
      'id': '1001',
      'name': 'Cris RONALDO',
      'age': 'age:  37',
      'sex': Icons.male,
      'img': const AssetImage('assets/1a.jpeg'),
      'his':
          'Cristiano Ronaldo dos Santos Aveiro (born 5 February 1985), better known as Cristiano Ronaldo, is a Portuguese professional footballer who plays as a forward.'
    },
    {
      'id': '1002',
      'name': 'Leo Messi',
      'age': 'age:  35',
      'sex': Icons.female,
      'img': const AssetImage('assets/2a.webp'),
      'his':
          'Lionel Andrés Messi[note 1] (Spanish pronunciation: [ljoˈnel anˈdɾes ˈmesi] (listen); born 24 June 1987), is an Argentine professional footballer who plays as a forward for Ligue 1 club Paris Saint-Germain and captains the Argentina national team. '
    },
    {
      'id': '1003',
      'name': 'SON Honming',
      'age': 'age:  30',
      'sex': Icons.female,
      'img': const AssetImage('assets/son.jpeg'),
      'his':
          'Son Heung-min (Korean: 손흥민; born 8 July 1992) is a South Korean professional footballer who plays as a forward for Premier League club Tottenham Hotspur and captains the South Korea national team.'
    },
    {
      'id': '1004',
      'name': 'Vinicius Junior',
      'age': 'age:  23',
      'sex': Icons.female,
      'img': const AssetImage('assets/vin.jpeg'),
      'his':
          'Vinícius José Paixão de Oliveira Júnior (born 12 July 2000), commonly known as Vinícius Júnior or Vini Jr. '
    },
    {
      'id': '1005',
      'name': 'Neymar JR',
      'age': 'age:  32',
      'sex': Icons.male,
      'img': const AssetImage('assets/ne.jpeg'),
      'his':
          'Neymar da Silva Santos Júnior (born 5 February 1992), known as Neymar, is a Brazilian professional footballer who plays as a forward for Ligue 1 club Paris Saint-Germain and the Brazil national team.'
    },
    {
      'id': '1006',
      'name': 'Sergio Ramos',
      'age': 'age:  34',
      'sex': Icons.male,
      'img': const AssetImage('assets/ser.jpeg'),
      'his':
          'Sergio Ramos García (Spanish pronunciation: [ˈseɾxjo ˈramoz ɣaɾˈθi.a];[A] born 30 March 1986) is a Spanish professional footballer who plays as a centre-back for Ligue 1 club Paris Saint-Germain and the Spain national team.'
    },
    {
      'id': '1007',
      'name': 'VARANE',
      'age': 'age:   31',
      'sex': Icons.male,
      'img': const AssetImage('assets/va.jpeg'),
      'his':
          'Raphaël Xavier Varane (French: [ʁafaɛl vaʁan]; born 25 April 1993) is a French professional footballer who plays as a centre-back for Premier League club Manchester United and the France national team.'
    },
    {
      'id': '1008',
      'name': 'PEPE',
      'age': 'age:      37',
      'sex': Icons.male,
      'img': const AssetImage('assets/pe.jpeg'),
      'his':
          'Pepe (Brazilian Portuguese: [ˈpɛpi]; European Portuguese: [-pɨ]), is a professional footballer who plays as a centre back for Porto and the Portugal national team. He is regarded as one of the best defenders of his generation.'
    },
    {
      'id': '1009',
      'name': 'Nani verkast',
      'age': 'age:   37',
      'sex': Icons.male,
      'img': const AssetImage('assets/nani.jpeg'),
      'his':
          'Nani (Portuguese pronunciation: [naˈni]), is a Portuguese professional footballer who plays as a winger for A-League Men club Melbourne Victory. He represented Portugal in international football, playing 112 times for the senior national team.'
    },
    {
      'id': '1010',
      'name': 'TONI KROOS',
      'age': 'age:   33',
      'sex': Icons.male,
      'img': const AssetImage('assets/kroos.jpeg'),
      'his':
          'Toni Kroos (born 4 January 1990) is a German professional footballer who plays as a midfielder for La Liga club Real Madrid. Kroos plays mainly as a central midfielder,'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        backgroundColor: const Color.fromARGB(216, 212, 219, 11),
        title: const Text('HELLO'),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.person))],
      ),
      drawer: const Drawer(
        backgroundColor: Color.fromARGB(152, 212, 219, 11),
      ),
      body: SingleChildScrollView(
        child: Column(
            children: List.generate(
                per.length,
                (index) => Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      borderOnForeground: true,
                      elevation: 10,
                      margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                      child: ListTile(
                        // enabled: false,
                        // dense: true,
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => page2(
                                  id: per[index]['id'],
                                  sex: per[index]['sex'],
                                  img1: per[index]['img'],
                                  name1: per[index]['name'],
                                  age1: per[index]['age'],
                                  his1: per[index]['his'],
                                ),
                              ));
                        },

                        contentPadding: const EdgeInsets.all(10),
                        leading: CircleAvatar(
                          backgroundColor: Colors.black,
                          radius: 30,
                          backgroundImage: per[index]['img'],
                        ),
                        title: Text(
                          per[index]['name'],
                          style: const TextStyle(
                              fontSize: 23, fontWeight: FontWeight.bold),
                        ),
                        tileColor: const Color.fromARGB(216, 212, 219, 11),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        subtitle: Text(per[index]['age']),
                        trailing: Icon(
                          per[index]['sex'],
                          color: per[index]['sex'] == Icons.male
                              ? Colors.blue
                              : Colors.red,
                        ),
                      ),
                    ))),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {},
      // ),
    );
  }

  // Widget usercard() {
  //   return s,
  // }
}
