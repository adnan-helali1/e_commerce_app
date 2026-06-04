import 'package:B2B/app/core/helpers/extensions.dart';
import 'package:flutter/material.dart';

class AppOverlayMessage {
  static OverlayEntry? _currentOverlay;

  static void show(
    BuildContext context, {
    required String message,
  }) {
    _currentOverlay?.remove();

    final overlay = Overlay.of(context);

    late OverlayEntry entry;

    entry = OverlayEntry(
      builder: (_) => _AnimatedOverlay(
        message: message,
        onDismissed: () {
          entry.remove();
          if (_currentOverlay == entry) {
            _currentOverlay = null;
          }
        },
      ),
    );

    _currentOverlay = entry;
    overlay.insert(entry);
  }
}

class _AnimatedOverlay extends StatefulWidget {
  const _AnimatedOverlay({
    required this.message,
    required this.onDismissed,
  });

  final String message;
  final VoidCallback onDismissed;

  @override
  State<_AnimatedOverlay> createState() => _AnimatedOverlayState();
}

class _AnimatedOverlayState extends State<_AnimatedOverlay>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<Offset> _slide;
  late final Animation<double> _fade;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 350),
    );

    _slide = Tween(
      begin: const Offset(0, 1),
      end: Offset.zero,
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeOutCubic,
      ),
    );

    _fade = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeOut,
    );

    _showAndHide();
  }

  Future<void> _showAndHide() async {
    await _controller.forward();

    await Future.delayed(
      const Duration(seconds: 2),
    );

    if (!mounted) return;

    await _controller.reverse();

    widget.onDismissed();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 20,
      right: 20,
      bottom: 40,
      child: IgnorePointer(
        child: FadeTransition(
          opacity: _fade,
          child: SlideTransition(
            position: _slide,
            child: Material(
              color: context.cs.primary,
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 18,
                  vertical: 14,
                ),
                decoration: BoxDecoration(
                  color: context.cs.primary,
                  borderRadius: BorderRadius.circular(14),
                  boxShadow: const [
                    BoxShadow(
                      blurRadius: 20,
                      offset: Offset(0, 8),
                      color: Colors.black26,
                    ),
                  ],
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.info_outline, color: context.cs.surface),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Text(
                        widget.message,
                        style: TextStyle(
                          color: context.cs.surface,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
