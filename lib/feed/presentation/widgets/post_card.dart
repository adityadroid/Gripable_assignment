import 'package:flutter/material.dart';
import 'package:gripable_assignment/app/ui/colors.dart';
import 'package:gripable_assignment/core/utils/context_extensions.dart';
import 'package:gripable_assignment/feed/data/data.dart';

class PostCard extends StatelessWidget {
  const PostCard({required this.postData, super.key});

  final PostData postData;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
      child: Card(
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
        ),
        surfaceTintColor: Colors.white,
        color: Colors.white,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 4,
              width: double.maxFinite,
              color: ThemeColors.feedHeaderColor,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 12, 16, 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    postData.title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: context.textTheme.titleSmall!.copyWith(
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 8),
                  if (postData.selfText.isNotEmpty)
                    Text(
                      postData.selfText,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: context.textTheme.bodyMedium!.copyWith(
                        color: Colors.black.withOpacity(
                          0.87,
                        ),
                      ),
                    )
                  else
                    Container(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
