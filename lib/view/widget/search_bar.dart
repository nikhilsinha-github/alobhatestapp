import 'package:flutter/material.dart';

class SearchBar extends StatefulWidget {
  final TextEditingController textEditingController;
  final VoidCallback callback;
  const SearchBar({
    Key? key,
    required this.textEditingController,
    required this.callback,
  }) : super(key: key);

  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: Colors.grey,
          ),
          borderRadius: BorderRadius.circular(50),
        ),
        child: Row(
          children: [
            const SizedBox(
              width: 20.0,
            ),
            Expanded(
              child: TextFormField(
                controller: widget.textEditingController,
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Search by id',
                ),
              ),
            ),
            IconButton(
              onPressed: widget.callback,
              icon: const Icon(
                Icons.search,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
