import 'package:finding_movie/core/config/constants.dart';
import 'package:finding_movie/core/theme/my_text_theme.dart';
import 'package:flutter/material.dart';

class ImageCardWidget extends StatelessWidget {
  const ImageCardWidget(
      {Key? key,
      required this.onTap,
      required this.imgUrl,
      required this.title})
      : super(key: key);

  final VoidCallback onTap;
  final String imgUrl;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 18),
      child: GestureDetector(
        onTap: onTap,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 154,
              height: 114,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(defaultRadius),
                child: Image.network(
                  imgUrl,
                  fit: BoxFit.cover,
                  loadingBuilder: (BuildContext context, Widget child,
                      ImageChunkEvent? loadingProgress) {
                    if (loadingProgress == null) {
                      return child;
                    }
                    return Center(
                      child: CircularProgressIndicator(
                        value: loadingProgress.expectedTotalBytes != null
                            ? loadingProgress.cumulativeBytesLoaded /
                            loadingProgress.expectedTotalBytes!
                            : null,
                      ),
                    );
                  },
                  errorBuilder: (BuildContext context, Object exception,
                      StackTrace? stackTrace) {
                    return const Icon(Icons.error);
                  },
                ),
              ),
            ),
            const SizedBox(
              height: 14,
            ),
            SizedBox(
              width: 154,
              child: Text(
                title,
                style: myTextTheme().labelMedium,
                maxLines: 2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
