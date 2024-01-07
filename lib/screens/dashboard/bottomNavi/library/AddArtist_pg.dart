import 'package:flutter/material.dart';

class AddArtist extends StatelessWidget {
  const AddArtist({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 7,
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text('Best For You'),
          backgroundColor: Colors.grey.shade700,
          bottom: TabBar(
              isScrollable: true,
              unselectedLabelColor: Colors.grey.shade400,
              tabs: [
                Tab(text: 'hindi'),
                Tab(text: 'english'),
                Tab(text: 'marathi'),
                Tab(text: 'bhojpuri'),
                Tab(text: 'tamil'),
                Tab(text: 'punjabi'),
                Tab(text: 'telugu'),
              ]),
        ),
        body: Padding(
          padding: const EdgeInsets.only(right: 10, left: 10),
          child: Column(
            children: [
              Expanded(
                child: TabBarView(children: [
                  hindi(),
                  english(),
                  marathi(),
                  bhojpuri(),
                  tamil(),
                  punjabi(),
                  telugu(),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class hindi extends StatelessWidget {
  const hindi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) => CircleAvatar(
          backgroundColor: Colors.white,
          radius: 40,
        ),
      ),
    );
  }
}

class english extends StatelessWidget {
  const english({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class marathi extends StatelessWidget {
  const marathi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class bhojpuri extends StatelessWidget {
  const bhojpuri({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class tamil extends StatelessWidget {
  const tamil({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class punjabi extends StatelessWidget {
  const punjabi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class telugu extends StatelessWidget {
  const telugu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
