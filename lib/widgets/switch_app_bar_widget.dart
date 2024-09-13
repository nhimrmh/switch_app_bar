import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:switch_app_bar/widgets/measure_size_widget.dart';

class SwitchAppBarWidget extends HookWidget {
  const SwitchAppBarWidget({
    super.key,
    required this.placeholderAppBar,
    required this.overlayAppBar,
    required this.children,
    this.transformSpeedScale = 1,
  });

  final Widget placeholderAppBar;
  final Widget overlayAppBar;
  final List<Widget> children;
  final int transformSpeedScale;

  @override
  Widget build(BuildContext context) {
    final appBarOverlaySize = useState<Size?>(null);
    final appBarOverlayHeight = useMemoized(
      () => appBarOverlaySize.value?.height ?? 0,
      [appBarOverlaySize.value],
    );

    final appBarPlaceholderSize = useState<Size?>(null);
    final appBarPlaceholderHeight = useMemoized(
      () => appBarPlaceholderSize.value?.height ?? 0,
      [appBarPlaceholderSize.value],
    );

    final shrinkOffset = useState<double>(0);

    final percent = useMemoized(
      () {
        if (appBarPlaceholderHeight <= 0) {
          return 0;
        }

        var percent = (shrinkOffset.value * transformSpeedScale) /
            appBarPlaceholderHeight;

        if (percent > 1) {
          percent = 1;
        }

        return percent;
      },
      [shrinkOffset.value],
    );

    return Stack(
      children: [
        NotificationListener<ScrollNotification>(
          onNotification: (scrollNotification) {
            final offset = scrollNotification.metrics.pixels;
            var calculatedOffset = 0.0;

            if (offset > appBarPlaceholderHeight) {
              calculatedOffset = offset - appBarPlaceholderHeight;
            } else {
              calculatedOffset = 0;
            }

            if (calculatedOffset > appBarPlaceholderHeight) {
              calculatedOffset = appBarPlaceholderHeight;
            }

            shrinkOffset.value = calculatedOffset;

            return false;
          },
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              MeasureSizeWidget(
                onChange: (size) {
                  appBarPlaceholderSize.value = size;
                },
                child: placeholderAppBar,
              ),
              ...children,
            ],
          ),
        ),
        Container(
          transform: Matrix4.translationValues(
            0,
            -(appBarOverlayHeight - (appBarOverlayHeight * percent)),
            0,
          ),
          child: MeasureSizeWidget(
            onChange: (size) {
              appBarOverlaySize.value = size;
            },
            child: overlayAppBar,
          ),
        ),
      ],
    );
  }
}
