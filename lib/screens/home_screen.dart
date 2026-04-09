
import '../constants/app_colors.dart';
import '../constants/app_strings.dart';
import '../widgets/custom_button.dart';
import '../widgets/service_card.dart';
import '../widgets/review_card.dart';
import 'services_screen.dart';
import 'service_detail_screen.dart';
import 'contact_screen.dart';
import 'about_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  int _reviewIndex = 0;

  Future<void> _callNow() async {
    final Uri url = Uri.parse('tel:${AppStrings.phone}');
    if (await canLaunchUrl(url)) await launchUrl(url);
  }

  Future<void> _openWhatsApp() async {
    final Uri url = Uri.parse(AppStrings.whatsappUrl);
    if (await canLaunchUrl(url)) {
      await launchUrl(url, mode: LaunchMode.externalApplication);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      bottomNavigationBar: _buildBottomNav(),
      body: _buildBody(),
      floatingActionButton: _buildFab(),
    );
  }

  Widget _buildBody() {
    return IndexedStack(
      index: _currentIndex,
      children: [
        _buildHomeTab(),
        const ServicesScreen(),
        const ContactScreen(),
        const AboutScreen(),
      ],
    );
  }

  Widget _buildHomeTab() {
    return CustomScrollView(
      slivers: [
        _buildSliverAppBar(),
        SliverToBoxAdapter(
          child: Column(
            children: [
              _buildStatsRow(),
              _buildSectionTitle('Our Services'),
              _buildServicesGrid(),
              _buildWhyChooseUs(),
              _buildSectionTitle('What Our Clients Say'),
              _buildReviewsSlider(),
              _buildFaqSection(),
              _buildBottomCTA(),
              const SizedBox(height: 80),
            ],
          ),
        ),
      ],
    );
  }

  SliverAppBar _buildSliverAppBar() {
    return SliverAppBar(
      expandedHeight: 310,
      pinned: true,
      backgroundColor: AppColors.primary,
      flexibleSpace: FlexibleSpaceBar(
        background: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [AppColors.primary, Color(0xFF023E8A)],
            ),
          ),
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(24, 16, 24, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 4),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Row(
                          children: [
                            Icon(Icons.star, color: AppColors.starColor, size: 14),
                            SizedBox(width: 4),
                            Text(
                              '5.0 Google Rating',
                              style: TextStyle(color: Colors.white, fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                      const Spacer(),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 4),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Text(
                          '24/7 Open',
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'NurseNow',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 6),
                  const Text(
                    'Certified Nursing Care\nIn the Comfort of Your Home',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      height: 1.4,
                    ),
                  ),
                  const SizedBox(height: 6),
                  const Text(
                    'Islamabad & Rawalpindi',
                    style: TextStyle(color: Colors.white70, fontSize: 13),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      Expanded(
                        child: CustomButton(
                          label: 'Call Now',
                          icon: Icons.phone,
                          bgColor: Colors.white,
                          textColor: AppColors.primary,
                          onTap: _callNow,
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: CustomButton(
                          label: 'WhatsApp',
                          icon: Icons.chat,
                          bgColor: AppColors.whatsapp,
                          textColor: Colors.white,
                          onTap: _openWhatsApp,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        title: const Text('NurseNow',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
      ),
    );
  }

  Widget _buildStatsRow() {
    return Container(
      margin: const EdgeInsets.fromLTRB(16, 20, 16, 8),
      padding: const EdgeInsets.symmetric(vertical: 16),
      decoration: BoxDecoration(
        color: AppColors.cardBg,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppColors.divider),
        boxShadow: [
          BoxShadow(
            color: AppColors.primary.withOpacity(0.06),
            blurRadius: 12,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _statItem('5000+', 'Patients'),
          _divider(),
          _statItem('50+', 'Nurses'),
          _divider(),
          _statItem('12+', 'Years'),
          _divider(),
          _statItem('2', 'Cities'),
        ],
      ),
    );
  }

  Widget _statItem(String value, String label) {
    return Column(
      children: [
        Text(
          value,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: AppColors.primary,
          ),
        ),
        const SizedBox(height: 2),
        Text(
          label,
          style: const TextStyle(fontSize: 11, color: AppColors.textGrey),
        ),
      ],
    );
  }

  Widget _divider() {
    return Container(width: 1, height: 36, color: AppColors.divider);
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 24, 20, 12),
      child: Row(
        children: [
          Container(
            width: 4,
            height: 22,
            decoration: BoxDecoration(
              color: AppColors.primary,
              borderRadius: BorderRadius.circular(2),
            ),
          ),
          const SizedBox(width: 10),
          Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: AppColors.textDark,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildServicesGrid() {
    final preview = services.take(8).toList();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              childAspectRatio: 0.88,
            ),
            itemCount: preview.length,
            itemBuilder: (_, i) => ServiceCard(
              service: preview[i],
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => ServiceDetailScreen(service: preview[i]),
                ),
              ),
            ),
          ),
          const SizedBox(height: 14),
          TextButton.icon(
            onPressed: () => setState(() => _currentIndex = 1),
            icon: const Icon(Icons.grid_view_rounded, size: 16),
            label: const Text('View All 15 Services'),
            style: TextButton.styleFrom(foregroundColor: AppColors.primary),
          ),
        ],
      ),
    );
  }

  Widget _buildWhyChooseUs() {
    final reasons = [
      {'icon': '✅', 'title': 'Licensed & Expert', 'desc': 'ICU-trained nurses with hospital experience'},
      {'icon': '💰', 'title': 'Affordable Rates', 'desc': 'Best prices with highest quality care'},
      {'icon': '🏠', 'title': 'All in One', 'desc': 'All healthcare services at your doorstep'},
      {'icon': '🕐', 'title': '24x7 Support', 'desc': 'Available every minute of the day'},
    ];

    return Container(
      margin: const EdgeInsets.fromLTRB(16, 8, 16, 0),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [AppColors.primaryLight, Color(0xFFE8F8FF)],
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Why Choose NurseNow?',
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.bold,
              color: AppColors.textDark,
            ),
          ),
          const SizedBox(height: 16),
          ...reasons.map(
            (r) => Padding(
              padding: const EdgeInsets.only(bottom: 12),
              child: Row(
                children: [
                  Text(r['icon']!, style: const TextStyle(fontSize: 24)),
                  const SizedBox(width: 14),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        r['title']!,
                        style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: AppColors.textDark,
                        ),
                      ),
                      Text(
                        r['desc']!,
                        style: const TextStyle(
                          fontSize: 12,
                          color: AppColors.textGrey,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildReviewsSlider() {
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            height: 230,
            enlargeCenterPage: true,
            viewportFraction: 0.88,
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 4),
            onPageChanged: (i, _) => setState(() => _reviewIndex = i),
          ),
          items: reviews.map((r) {
            return ReviewCard(
              name: r['name']!,
              location: r['location']!,
              review: r['review']!,
              initials: r['initials']!,
            );
          }).toList(),
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            reviews.length,
            (i) => AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              margin: const EdgeInsets.symmetric(horizontal: 3),
              width: _reviewIndex == i ? 20 : 6,
              height: 6,
              decoration: BoxDecoration(
                color: _reviewIndex == i ? AppColors.primary : AppColors.divider,
                borderRadius: BorderRadius.circular(3),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildFaqSection() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 24, 16, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildSectionTitle('Frequently Asked Questions'),
          ...faqs.map(
            (faq) => Container(
              margin: const EdgeInsets.only(bottom: 8),
              decoration: BoxDecoration(
                color: AppColors.cardBg,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: AppColors.divider),
              ),
              child: ExpansionTile(
                tilePadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                childrenPadding: const EdgeInsets.fromLTRB(16, 0, 16, 14),
                title: Text(
                  faq['q']!,
                  style: const TextStyle(
                    fontSize: 13.5,
                    fontWeight: FontWeight.w600,
                    color: AppColors.textDark,
                  ),
                ),
                iconColor: AppColors.primary,
                collapsedIconColor: AppColors.textGrey,
                children: [
                  Text(
                    faq['a']!,
                    style: const TextStyle(
                      fontSize: 13,
                      color: AppColors.textGrey,
                      height: 1.6,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBottomCTA() {
    return Container(
      margin: const EdgeInsets.fromLTRB(16, 28, 16, 0),
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [AppColors.primary, Color(0xFF023E8A)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          const Text(
            'Need a Nurse Now?',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 6),
          const Text(
            'Reach us instantly — available 24/7',
            style: TextStyle(color: Colors.white70, fontSize: 13),
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              Expanded(
                child: CustomButton(
                  label: 'Call Now',
                  icon: Icons.phone,
                  bgColor: Colors.white,
                  textColor: AppColors.primary,
                  onTap: _callNow,
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: CustomButton(
                  label: 'WhatsApp',
                  icon: Icons.chat,
                  bgColor: AppColors.whatsapp,
                  textColor: Colors.white,
                  onTap: _openWhatsApp,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildBottomNav() {
    return NavigationBar(
      selectedIndex: _currentIndex,
      onDestinationSelected: (i) => setState(() => _currentIndex = i),
      backgroundColor: AppColors.cardBg,
      indicatorColor: AppColors.primaryLight,
      destinations: const [
        NavigationDestination(
          icon: Icon(Icons.home_outlined),
          selectedIcon: Icon(Icons.home, color: AppColors.primary),
          label: 'Home',
        ),
        NavigationDestination(
          icon: Icon(Icons.medical_services_outlined),
          selectedIcon:
              Icon(Icons.medical_services, color: AppColors.primary),
          label: 'Services',
        ),
        NavigationDestination(
          icon: Icon(Icons.phone_outlined),
          selectedIcon: Icon(Icons.phone, color: AppColors.primary),
          label: 'Contact',
        ),
        NavigationDestination(
          icon: Icon(Icons.info_outlined),
          selectedIcon: Icon(Icons.info, color: AppColors.primary),
          label: 'About',
        ),
      ],
    );
  }

  FloatingActionButton _buildFab() {
    return FloatingActionButton(
      onPressed: _openWhatsApp,
      backgroundColor: AppColors.whatsapp,
      child: const Icon(Icons.chat, color: Colors.white),
    );
  }
}
