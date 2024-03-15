import 'package:break_arcade/constants/app_colors.dart';
import 'package:flutter/material.dart';

class CustomSearchBar extends StatefulWidget {
  final String hintText;
  final bool showFilterIcon;
  final bool hasImage;
  final String imageUrl;

  const CustomSearchBar({
    super.key,
    required this.hintText,
    this.showFilterIcon = false,
    this.hasImage = false,
    this.imageUrl = "",
  });

  @override
  State<CustomSearchBar> createState() => _CustomSearchBarState();
}

class _CustomSearchBarState extends State<CustomSearchBar> {
  final TextEditingController _controller = TextEditingController();
  bool _showClearIcon = false;

  static const noBorder = InputBorder.none;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // child: Row(
      //   children: [
      //     if (widget.hasImage)
      //       ClipRRect(
      //         borderRadius: BorderRadius.circular(10),
      //         child: Image.asset(
      //           widget.imageUrl,
      //           width: 50,
      //           height: 50,
      //           fit: BoxFit.cover,
      //         ),
      //       ),
      //     const SizedBox(width: 10),
      child: Container(
        padding: const EdgeInsets.all(3),
        decoration: const BoxDecoration(
          color: AppColors.inputBg,
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: TextFormField(
          controller: _controller,
          onChanged: (text) {
            setState(() {
              _showClearIcon = text.isNotEmpty;
            });
          },
          style: const TextStyle(color: AppColors.white),
          decoration: InputDecoration(
            hintText: widget.hintText,
            hintStyle: const TextStyle(
              color: AppColors.grayText,
              fontSize: 18,
            ),
            border: noBorder,
            prefixIcon: const Icon(Icons.search),
            suffixIcon: _showClearIcon
                ? IconButton(
                    icon: const Icon(
                      Icons.close,
                      color: AppColors.white,
                    ),
                    onPressed: () {
                      _controller.clear();
                      setState(() {
                        _showClearIcon = false;
                      });
                    },
                  )
                : null,
          ),
        ),
      ),
      //   const SizedBox(width: 10),
      //   if (widget.showFilterIcon)
      //     IconButton(
      //       onPressed: () {
      //         print("filter tapped");
      //       },
      //       icon: const Icon(Icons.filter_list_sharp),
      //     ),
      // ],
      // ),
    );
  }
}
