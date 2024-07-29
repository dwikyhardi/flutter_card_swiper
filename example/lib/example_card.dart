import 'package:example/example_candidate_model.dart';
import 'package:flutter/material.dart';

class ExampleCard extends StatelessWidget {
  final ExampleCandidateModel candidate;
  final bool isBackCard;

  const ExampleCard(
    this.candidate,
    this.isBackCard, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      width: 328,
      height: 146,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 3,
            blurRadius: 7,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      alignment: Alignment.center,
      child: Builder(
        builder: (context) {
          if (isBackCard) {
            return Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      candidate.name,
                      style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      candidate.job,
                      style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
            );
          }

          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: candidate.color,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      candidate.name,
                      style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      candidate.job,
                      style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      candidate.city,
                      style: const TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ],
          );

          // return AnimatedCrossFade(
          //   duration: Duration.zero,
          //   crossFadeState: isBackCard
          //       ? CrossFadeState.showSecond
          //       : CrossFadeState.showFirst,
          //   secondChild: Align(
          //     alignment: Alignment.bottomCenter,
          //     child: Padding(
          //       padding: const EdgeInsets.all(16.0),
          //       child: Row(
          //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //         children: [
          //           Text(
          //             candidate.name,
          //             style: const TextStyle(
          //               color: Colors.black,
          //               fontWeight: FontWeight.bold,
          //               fontSize: 14,
          //             ),
          //           ),
          //           Text(
          //             candidate.job,
          //             style: const TextStyle(
          //               color: Colors.grey,
          //               fontSize: 12,
          //             ),
          //           ),
          //         ],
          //       ),
          //     ),
          //   ),
          //   firstChild: Column(
          //     crossAxisAlignment: CrossAxisAlignment.start,
          //     children: [
          //       Flexible(
          //         child: Container(
          //           decoration: BoxDecoration(
          //             gradient: LinearGradient(
          //               begin: Alignment.topCenter,
          //               end: Alignment.bottomCenter,
          //               colors: candidate.color,
          //             ),
          //           ),
          //         ),
          //       ),
          //       Padding(
          //         padding: const EdgeInsets.all(16),
          //         child: Column(
          //           crossAxisAlignment: CrossAxisAlignment.start,
          //           children: [
          //             Text(
          //               candidate.name,
          //               style: const TextStyle(
          //                 color: Colors.black,
          //                 fontWeight: FontWeight.bold,
          //                 fontSize: 20,
          //               ),
          //             ),
          //             const SizedBox(height: 5),
          //             Text(
          //               candidate.job,
          //               style: const TextStyle(
          //                 color: Colors.grey,
          //                 fontSize: 15,
          //               ),
          //             ),
          //             const SizedBox(height: 5),
          //             Text(
          //               candidate.city,
          //               style: const TextStyle(color: Colors.grey),
          //             ),
          //           ],
          //         ),
          //       ),
          //     ],
          //   ),
          // );
        },
      ),
    );
  }
}
