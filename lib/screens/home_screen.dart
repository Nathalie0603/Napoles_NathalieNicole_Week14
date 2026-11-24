import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 12.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // 1. Top Pill Search Bar (Menu | Search | Search Icon + Profile Icon)
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 10,
                      ),
                      decoration: BoxDecoration(
                        color: colorScheme.surfaceContainerHighest,
                        borderRadius: BorderRadius.circular(28),
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.menu,
                            color: Colors.grey.shade800,
                            size: 22,
                          ),
                          Expanded(
                            child: Center(
                              child: Text(
                                'Search',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.grey.shade800,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                          Icon(
                            Icons.search,
                            color: Colors.grey.shade800,
                            size: 20,
                          ),
                          const SizedBox(width: 10),
                          Icon(
                            Icons.account_circle_outlined,
                            color: Colors.grey.shade800,
                            size: 22,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 14),

                    // 2. "Today's Mega Sale." Section with Local Image Assets
                    const Text(
                      "Today's Mega Sale.",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 8),
                    SizedBox(
                      height: 86,
                      child: Row(
                        children: [
                          _buildSaleCard(
                            'assets/images/logo.png',
                            const Color(0xFFE8EAED),
                          ),
                          const SizedBox(width: 8),
                          _buildSaleCard(
                            'assets/images/logo.png',
                            const Color(0xFFF3D5C0),
                          ),
                          const SizedBox(width: 8),
                          _buildSaleCard(
                            'assets/images/logo.png',
                            const Color(0xFFD7CCC8),
                          ),
                          const SizedBox(width: 8),
                          _buildSaleCard(
                            'assets/images/logo.png',
                            const Color(0xFFFFE0B2),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 14),

                    // 3. "Live now!" Section with Stack + Positioned Overlay Controls
                    const Text(
                      'Live now!',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 8),
                    SizedBox(
                      height: 235,
                      width: double.infinity,
                      child: Stack(
                        clipBehavior: Clip.none,
                        children: [
                          // Base Live Video Card
                          Container(
                            margin: const EdgeInsets.only(
                              right: 18,
                              bottom: 12,
                            ),
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: const Color(0xFFF6F2FA),
                              borderRadius: BorderRadius.circular(14),
                              border: Border.all(color: Colors.black12),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // Video Preview Container with Stack (LIVE NOW + Play Arrow)
                                Expanded(
                                  child: Stack(
                                    children: [
                                      Container(
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                          color: const Color(0xFFE7DDF2),
                                          borderRadius: BorderRadius.circular(
                                            10,
                                          ),
                                        ),
                                        child: Center(
                                          child: Icon(
                                            Icons.play_arrow,
                                            size: 36,
                                            color: colorScheme.secondary,
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        top: 8,
                                        left: 8,
                                        child: Container(
                                          padding: const EdgeInsets.symmetric(
                                            horizontal: 8,
                                            vertical: 3,
                                          ),
                                          decoration: BoxDecoration(
                                            color: const Color(0xFFB72B2B),
                                            borderRadius: BorderRadius.circular(
                                              10,
                                            ),
                                          ),
                                          child: const Text(
                                            'LIVE NOW',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 9,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 8),
                                const Text(
                                  'Wireless Noise-Canceling He...',
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black87,
                                  ),
                                ),
                                const SizedBox(height: 2),
                                Text(
                                  '1.2k watching • Special Launch Dea...',
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.grey.shade700,
                                  ),
                                ),
                                const SizedBox(height: 4),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      '\$129.99',
                                      style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold,
                                        color: colorScheme.primary,
                                      ),
                                    ),
                                    Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 16,
                                        vertical: 5,
                                      ),
                                      decoration: BoxDecoration(
                                        color: colorScheme.primary,
                                        borderRadius: BorderRadius.circular(14),
                                      ),
                                      child: const Text(
                                        'Watch',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 11,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),

                          // Overlaid Floating Action Pills on the Right (Play, Filters, Share, X)
                          Positioned(
                            top: 4,
                            right: 0,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                _buildFloatingChip('Play'),
                                const SizedBox(height: 6),
                                _buildFloatingChip('Filters'),
                                const SizedBox(height: 6),
                                _buildFloatingChip('Share'),
                                const SizedBox(height: 8),
                                Container(
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    color: colorScheme.secondary,
                                    shape: BoxShape.circle,
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.black26,
                                        blurRadius: 4,
                                        offset: Offset(0, 2),
                                      ),
                                    ],
                                  ),
                                  child: const Icon(
                                    Icons.close,
                                    color: Colors.white,
                                    size: 18,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),

                    // 4. "Vouchers." Section (3 Stacked Banners)
                    const Text(
                      'Vouchers.',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 8),

                    // Voucher 1: 50% OFF MEGA FLASH SALE
                    _buildVoucherBanner(
                      bgColor: const Color(0xFF6B4C9A),
                      badgeBg: const Color(0xFFFFD600),
                      badgeTextColor: Colors.black,
                      badgeText: '50% OFF',
                      title: 'MEGA FLASH SALE',
                      subtitle: 'Limited time offer on top brands!',
                      buttonBg: Colors.white,
                      buttonTextColor: const Color(0xFF6B4C9A),
                      buttonText: 'SHOP',
                    ),
                    const SizedBox(height: 8),

                    // Voucher 2: 60% OFF SEASONAL CLEARANCE
                    _buildVoucherBanner(
                      bgColor: const Color(0xFF1F1659),
                      badgeBg: const Color(0xFFFFD600),
                      badgeTextColor: Colors.black,
                      badgeText: '60% OFF',
                      title: 'SEASONAL CLEARANCE',
                      subtitle: 'Final reductions on all past lines!',
                      buttonBg: Colors.white,
                      buttonTextColor: const Color(0xFF1F1659),
                      buttonText: 'SHOP NOW',
                    ),
                    const SizedBox(height: 8),

                    // Voucher 3: EXTRA 20% OFF ALL EXCLUSIVE APP LAUNCH
                    _buildVoucherBanner(
                      bgColor: const Color(0xFF533A85),
                      badgeBg: Colors.white,
                      badgeTextColor: const Color(0xFF533A85),
                      badgeText: 'EXTRA 20%\nOFF ALL',
                      title: 'EXCLUSIVE APP LAUNCH',
                      subtitle: 'Claim your welcome voucher!',
                      buttonBg: const Color(0xFFFFF3CD),
                      buttonTextColor: const Color(0xFF533A85),
                      buttonText: 'CLAIM VOUCHER',
                      isSquareBadge: true,
                    ),
                  ],
                ),
              ),
            ),

            // 5. Bottom Purple Navigation Bar (Video | Cart | Bell)
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 12),
              color: colorScheme.primary,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(
                    Icons.videocam_outlined,
                    color: Colors.black87,
                    size: 26,
                  ),
                  Icon(
                    Icons.shopping_cart_outlined,
                    color: Colors.black87,
                    size: 26,
                  ),
                  Icon(
                    Icons.notifications_none,
                    color: Colors.black87,
                    size: 26,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  static Widget _buildSaleCard(String assetPath, Color bgColor) {
    return Expanded(
      child: Container(
        height: 86,
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(6),
        ),
        child: Image.asset(assetPath, fit: BoxFit.contain),
      ),
    );
  }

  static Widget _buildFloatingChip(String label) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
      decoration: BoxDecoration(
        color: const Color(0xFFD5C4F3),
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [
          BoxShadow(color: Colors.black12, blurRadius: 4, offset: Offset(0, 2)),
        ],
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(Icons.stars, size: 16, color: Color(0xFF4A337A)),
          const SizedBox(width: 6),
          Text(
            label,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w600,
              color: Color(0xFF3A2763),
            ),
          ),
        ],
      ),
    );
  }

  static Widget _buildVoucherBanner({
    required Color bgColor,
    required Color badgeBg,
    required Color badgeTextColor,
    required String badgeText,
    required String title,
    required String subtitle,
    required Color buttonBg,
    required Color buttonTextColor,
    required String buttonText,
    bool isSquareBadge = false,
  }) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: isSquareBadge ? 10 : 12,
              vertical: isSquareBadge ? 6 : 8,
            ),
            decoration: BoxDecoration(
              color: badgeBg,
              borderRadius: BorderRadius.circular(isSquareBadge ? 6 : 20),
            ),
            child: Text(
              badgeText,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: badgeTextColor,
                fontSize: isSquareBadge ? 9 : 11,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 11,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  subtitle,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(color: Colors.white70, fontSize: 9),
                ),
              ],
            ),
          ),
          const SizedBox(width: 6),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
            decoration: BoxDecoration(
              color: buttonBg,
              borderRadius: BorderRadius.circular(14),
            ),
            child: Text(
              buttonText,
              style: TextStyle(
                color: buttonTextColor,
                fontSize: 9,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
