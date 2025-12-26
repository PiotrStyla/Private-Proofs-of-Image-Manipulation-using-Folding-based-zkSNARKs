import 'package:flutter/material.dart';

class PrivacyPolicyView extends StatelessWidget {
  const PrivacyPolicyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Privacy Policy'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 800),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Privacy Policy',
                style: Theme.of(context).textTheme.displaySmall?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              const SizedBox(height: 8),
              Text(
                'Last Updated: December 26, 2025',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Colors.grey,
                    ),
              ),
              const SizedBox(height: 32),
              _buildSection(
                context,
                'Introduction',
                'VIMz Private Proofs ("we", "our", or "us") is committed to protecting your privacy. This Privacy Policy explains how we handle your information when you use our web application.',
              ),
              _buildSection(
                context,
                'Data We Collect',
                'VIMz Private Proofs is a client-side application that runs entirely in your browser. We do NOT collect, store, or transmit any personal data to our servers.\n\n'
                    '• Images you upload are processed locally in your browser\n'
                    '• Generated proofs are stored locally using browser storage (IndexedDB via Hive)\n'
                    '• No user accounts or authentication required\n'
                    '• No tracking cookies or analytics',
              ),
              _buildSection(
                context,
                'Local Storage',
                'The application uses browser local storage (IndexedDB) to:\n\n'
                    '• Cache generated proofs for your convenience\n'
                    '• Store application preferences\n'
                    '• Improve performance through local caching\n\n'
                    'All data remains on your device and is never transmitted to external servers. You can clear this data at any time through your browser settings.',
              ),
              _buildSection(
                context,
                'Third-Party Services',
                'Our application is hosted on GitHub Pages. GitHub may collect technical information such as:\n\n'
                    '• IP addresses\n'
                    '• Browser type and version\n'
                    '• Referring pages\n\n'
                    'Please refer to GitHub\'s Privacy Policy for more information: https://docs.github.com/en/site-policy/privacy-policies/github-privacy-statement',
              ),
              _buildSection(
                context,
                'Image Processing',
                'All image processing and cryptographic operations occur entirely within your browser:\n\n'
                    '• Images are never uploaded to our servers\n'
                    '• Proofs are generated client-side using WebAssembly\n'
                    '• Original images remain private and under your control',
              ),
              _buildSection(
                context,
                'Cookies',
                'We use minimal essential cookies for application functionality. See our Cookie Policy for details.',
              ),
              _buildSection(
                context,
                'Your Rights',
                'Since we do not collect or store personal data on servers, traditional data rights (access, deletion, portability) are not applicable. However:\n\n'
                    '• You have full control over locally stored data\n'
                    '• You can clear browser storage at any time\n'
                    '• You can use the application anonymously',
              ),
              _buildSection(
                context,
                'Children\'s Privacy',
                'Our service is not directed to individuals under 13. We do not knowingly collect information from children.',
              ),
              _buildSection(
                context,
                'Changes to This Policy',
                'We may update this Privacy Policy occasionally. Changes will be posted on this page with an updated "Last Updated" date.',
              ),
              _buildSection(
                context,
                'Contact Us',
                'If you have questions about this Privacy Policy, contact us at:\n\n'
                    'Email: p.styla@gmail.com\n'
                    'X (Twitter): @PiotrSty',
              ),
              const SizedBox(height: 48),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSection(BuildContext context, String title, String content) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
          const SizedBox(height: 12),
          Text(
            content,
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  height: 1.6,
                ),
          ),
        ],
      ),
    );
  }
}
