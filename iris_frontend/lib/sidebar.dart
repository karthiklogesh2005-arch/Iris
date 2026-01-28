import 'package:flutter/material.dart';

class Sidebar extends StatelessWidget {
  final bool collapsed;
  final VoidCallback onToggle;
  final VoidCallback onNewChat;

  const Sidebar({
    super.key,
    required this.collapsed,
    required this.onToggle,
    required this.onNewChat,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 250),
      width: collapsed ? 56 : 72,
      decoration: const BoxDecoration(
        color: Color(0xFF242933),
        border: Border(
          right: BorderSide(color: Color(0xFF2F3542)),
        ),
      ),
      child: Column(
        children: [
          const SizedBox(height: 12),

          IconButton(
            icon: const Icon(Icons.menu),
            color: Colors.white,
            onPressed: onToggle,
          ),

          if (!collapsed) ...[
            const SizedBox(height: 16),
            IconButton(
              icon: const Icon(Icons.add),
              color: Colors.white,
              onPressed: onNewChat,
            ),
          ],
        ],
      ),
    );
  }
}
