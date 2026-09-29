import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'appcolors.dart';
import 'souradata.dart';

class Souradetail extends StatefulWidget {
  static const String routname = 'soura';

  const Souradetail({super.key});

  @override
  State<Souradetail> createState() => _SouradetailState();
}

class _SouradetailState extends State<Souradetail> {
  List<String> verses = const [];
  String? errorMessage;
  Souradataa? args;
  bool _loaded = false;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    if (_loaded) return;
    _loaded = true;

    final routeArgs = ModalRoute.of(context)?.settings.arguments;
    if (routeArgs is! Souradataa) {
      setState(() {
        errorMessage = 'تعذر تحديد السورة المطلوبة.';
      });
      return;
    }

    args = routeArgs;
    _loadFile(routeArgs.index);
  }

  Future<void> _loadFile(int index) async {
    try {
      final content = await rootBundle.loadString('assets/files/${index + 1}.txt');
      final lines = content
          .split(RegExp(r'\r?\n'))
          .map((line) => line.trim())
          .where((line) => line.isNotEmpty)
          .toList(growable: false);

      if (!mounted) return;
      setState(() {
        verses = lines;
        errorMessage = null;
      });
    } on FlutterError {
      if (!mounted) return;
      setState(() {
        verses = const [];
        errorMessage = 'ملف سورة ${args?.name ?? ''} غير موجود في assets/files.';
      });
    } catch (_) {
      if (!mounted) return;
      setState(() {
        verses = const [];
        errorMessage = 'حدث خطأ أثناء تحميل السورة.';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final title = args?.name ?? 'السورة';

    return Stack(
      fit: StackFit.expand,
      children: [
        Image.asset(
          'assets/img/bachgound.jpg',
          fit: BoxFit.cover,
          errorBuilder: (_, __, ___) => const ColoredBox(
            color: Color(0xFFF5F5F5),
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            iconTheme: const IconThemeData(color: Appcolors.blackcolor),
            title: Text(
              title,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
          body: _buildBody(),
        ),
      ],
    );
  }

  Widget _buildBody() {
    if (errorMessage != null) {
      return Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(Icons.error_outline, size: 56, color: Appcolors.primarycolor),
              const SizedBox(height: 16),
              Text(
                errorMessage!,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const SizedBox(height: 20),
              FilledButton.icon(
                onPressed: () => Navigator.of(context).pop(),
                icon: const Icon(Icons.arrow_back),
                label: const Text('العودة إلى السور'),
              ),
            ],
          ),
        ),
      );
    }

    if (verses.isEmpty) {
      return const Center(
        child: CircularProgressIndicator(color: Appcolors.primarycolor),
      );
    }

    return ListView.separated(
      padding: const EdgeInsets.fromLTRB(12, 12, 12, 24),
      itemCount: verses.length,
      separatorBuilder: (_, __) => const SizedBox(height: 8),
      itemBuilder: (context, index) => Souradata(
        content: verses[index],
        index: index,
      ),
    );
  }
}

class Souradataa {
  final String name;
  final int index;

  const Souradataa({required this.name, required this.index});
}
