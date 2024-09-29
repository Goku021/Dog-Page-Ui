import 'package:dogs/labeled_container.dart';
import 'package:flutter/material.dart';

class FlexScreen extends StatelessWidget {
  const FlexScreen({super.key});

  Iterable<Widget> _header(BuildContext context, String text) {
    return [
      const SizedBox(height: 20),
      Text(
        text,
        style: Theme.of(context).textTheme.headlineSmall,
      )
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flexible and Expanded"),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ..._header(context, "Expanded"),
            const DemoExpanded(),
            ..._header(context, "Flexible"),
            const DemoFlexible(),
            const DemoFooter(),
          ],
        ),
      ),
    );
  }
}

class DemoExpanded extends StatelessWidget {
  const DemoExpanded({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 100,
      child: Row(
        children: [
          LabeledContainer(text: "100", width: 100, color: Colors.green),
          Expanded(
            child: LabeledContainer(
              text: "The remainder",
              color: Colors.purple,
              textColor: Colors.white,
            ),
          ),
          LabeledContainer(
            text: "40",
            color: Colors.green,
            width: 40,
          )
        ],
      ),
    );
  }
}

class DemoFlexible extends StatelessWidget {
  const DemoFlexible({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 100,
      child: Row(
        children: [
          Flexible(
            flex: 1,
            child: LabeledContainer(
              text: "25%",
              color: Colors.orange,
            ),
          ),
          Flexible(
            flex: 1,
            child: LabeledContainer(
              text: "25%",
              color: Colors.deepOrange,
            ),
          ),
          Flexible(
            flex: 2,
            child: LabeledContainer(
              text: "50",
              color: Colors.blue,
            ),
          )
        ],
      ),
    );
  }
}

class DemoFooter extends StatelessWidget {
  const DemoFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.yellow,
          borderRadius: BorderRadius.circular(40),
        ),
        padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 30),
        child: Text(
          "Pinned to Bottom",
          style: Theme.of(context).textTheme.titleSmall,
        ),
      ),
    );
  }
}
