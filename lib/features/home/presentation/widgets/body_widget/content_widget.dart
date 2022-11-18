import 'package:flutter/material.dart';

import '../../../domain/entities/component_entity.dart';
import '../../../domain/entities/website_entity.dart';

class ContentWidget extends StatelessWidget {
  const ContentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        ListWebsiteWidget(),
        ListComponentWidget(),
        Spacer(),
      ],
    );
  }
}

class ListComponentWidget extends StatelessWidget {
  const ListComponentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final primary = Theme.of(context).primaryColor;
    const listComponents = [
      ComponentEntity(
        id: 0,
        name: 'Transistor',
        type: '2N2222',
        price: '300 Ar',
        description: 'Un transistor pnp habituel',
        link: 'http://Gotronics.com/transistor2N222',
        distributor: 'Gotronics',
      ),
      ComponentEntity(
        id: 1,
        name: 'Transitor',
        type: '2N2222',
        price: '200 Ar',
        description: 'Celui ci est de type NPN',
        link: 'http://Avtronics.com/transistor2N222',
        distributor: 'Avtronics',
      ),
      ComponentEntity(
        id: 2,
        name: 'Transitor',
        type: '2N2222',
        price: '100 Ar',
        description: 'Celle ci est incroyable car de type hybride',
        link: 'http://Komposante.com/transistor2N222',
        distributor: 'Komposante',
      ),
    ];
    return DataTable(
      columns: const <DataColumn>[
        DataColumn(
          label: Text('Name'),
        ),
        DataColumn(
          label: Text('Type'),
        ),
        DataColumn(
          label: Text('Prix'),
        ),
        DataColumn(
          label: Text('Description'),
        ),
        DataColumn(
          label: Text('Distributor'),
        ),
      ],
      rows: <DataRow>[
        for (var e in listComponents)
          DataRow(
            cells: <DataCell>[
              DataCell(Text(e.name ?? '')),
              DataCell(Text(e.type ?? '')),
              DataCell(Text(e.price ?? '')),
              DataCell(Text(e.description ?? '')),
              DataCell(Text(e.distributor ?? '')),
            ],
          ),
      ],
    );
  }
}

class ItemComponentWidget extends StatelessWidget {
  const ItemComponentWidget({
    super.key,
    required this.component,
  });

  final ComponentEntity component;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: [
          Text(component.name ?? ''),
          Separator(),
          Text(component.type ?? ''),
          Separator(),
          Text(component.description ?? ''),
          Separator(),
          Text(component.price ?? ''),
          Separator(),
          Text(component.distributor ?? ''),
        ],
      ),
    );
  }
}

class Separator extends StatelessWidget {
  const Separator({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 3.0),
      child: Container(
        width: 1,
        height: 10,
        color: Colors.black,
        child: const Text(''),
      ),
    );
  }
}

class ListWebsiteWidget extends StatelessWidget {
  const ListWebsiteWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final listWebsite = [
      WebsiteEntity(
        name: 'Gotronics',
        logo: 'assets/images/logo1',
        totalComposant: '1.904.003',
      ),
      WebsiteEntity(
        name: 'Avtronics',
        logo: 'assets/images/logo2',
        totalComposant: '2.000.999',
      ),
      WebsiteEntity(
        name: 'Komposante',
        logo: 'assets/images/logo3',
        totalComposant: '1.000.0200',
      ),
    ];
    return Row(
      children: [
        for (var e in listWebsite) ...[
          ItemWebsiteWidget(website: e),
          const SizedBox(
            width: 20,
          )
        ]
      ],
    );
  }
}

class ItemWebsiteWidget extends StatelessWidget {
  const ItemWebsiteWidget({super.key, required this.website});

  final WebsiteEntity website;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final primaryColor = theme.primaryColor;
    return Padding(
      padding: const EdgeInsets.all(0.0),
      child: Container(
        width: 300,
        height: 100,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: Colors.white),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      website.name,
                      style: TextStyle(color: primaryColor),
                    ),
                    // Image.asset(website.logo),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: primaryColor.withOpacity(0.3),
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                ),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: RichText(
                      text: TextSpan(
                          text: website.totalComposant,
                          style: TextStyle(
                            color: primaryColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                          children: [
                            TextSpan(
                                text: ' composants',
                                style: theme.textTheme.caption?.copyWith(
                                    color: primaryColor,
                                    fontStyle: FontStyle.italic,
                                    fontSize: 10))
                          ]),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
