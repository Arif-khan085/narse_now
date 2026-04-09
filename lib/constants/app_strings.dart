class AppStrings {
  static const String appName = 'NurseNow';
  static const String tagline = 'Certified Nursing Care\nIn the Comfort of Your Home';
  static const String subTagline = 'ICU-trained nurses at your doorstep\nIslamabad & Rawalpindi • 24/7';
  static const String phone = '03174417916';
  static const String whatsappNumber = '923255915343';
  static const String whatsappUrl = 'https://wa.me/923255915343';
  static const String address = 'Royal Center, Fazal-e-haq Road, Block I G 7/2 Blue Area, Islamabad';
  static const String rating = '5.0/5 Rating on Google';
}

class ServiceModel {
  final String title;
  final String description;
  final String icon;

  ServiceModel({
    required this.title,
    required this.description,
    required this.icon,
  });
}

final List<ServiceModel> services = [
  ServiceModel(
    title: 'In-Home Nursing',
    description:
        'Professional in-home nursing services delivering high-quality medical care and health aid. Short-term to long-term care available.',
    icon: '🏥',
  ),
  ServiceModel(
    title: 'ICU Care at Home',
    description:
        'Compassionate ICU care at home. Expert guidance for setting up home ICU. Our team works with intensivists and treating physicians.',
    icon: '💉',
  ),
  ServiceModel(
    title: 'Patient Attendants',
    description:
        'Trained care attendants providing daily support — grooming, hygiene, medication, and mobility assistance.',
    icon: '🧑‍⚕️',
  ),
  ServiceModel(
    title: 'Elderly Care',
    description:
        'Geriatric care with compassionate daily living support, companionship, and holistic aging care for your loved ones.',
    icon: '👴',
  ),
  ServiceModel(
    title: 'Vaccination at Home',
    description:
        'In-home vaccinations including H1N1, chicken pox, typhoid, and cervical cancer by qualified professionals.',
    icon: '💊',
  ),
  ServiceModel(
    title: 'Physiotherapy',
    description:
        'Personalized physiotherapy at home. Specialists in neurological, musculoskeletal, cardiovascular conditions.',
    icon: '🦾',
  ),
  ServiceModel(
    title: 'Parental Care',
    description:
        'Comprehensive care management — healthcare assistance, daily living support, and 24/7 care manager support.',
    icon: '❤️',
  ),
  ServiceModel(
    title: 'Infant Care',
    description:
        'Expert in-home infant care by qualified NICU nurses and nannies. Compassionate support for newborns.',
    icon: '👶',
  ),
  ServiceModel(
    title: 'Medical Equipment Rent',
    description:
        'Wide range of medical equipment on rent to support holistic care at home for comfortable recovery.',
    icon: '🛏️',
  ),
  ServiceModel(
    title: 'Doctor at Home',
    description:
        'Convenient in-home doctor visits. Expert medical care without leaving the comfort of your home.',
    icon: '👨‍⚕️',
  ),
  ServiceModel(
    title: 'Diabetic Care',
    description:
        'Expert diabetic management program. Personalized plans by nurses and nutritionists to maintain healthy blood sugar.',
    icon: '🩺',
  ),
  ServiceModel(
    title: 'Lab Tests at Home',
    description:
        'In-home lab and diagnostic tests with high-quality standards. Accurate results brought to your doorstep.',
    icon: '🔬',
  ),
  ServiceModel(
    title: 'Ambulance Service',
    description:
        '24/7 ambulance service. Professional and caring patient transport during medical emergencies.',
    icon: '🚑',
  ),
  ServiceModel(
    title: 'NRI Medicine Care',
    description:
        'Access affordable medications from abroad. We conduct thorough market research for best international prices.',
    icon: '💊',
  ),
  ServiceModel(
    title: 'Staffing Solutions',
    description:
        'Skilled and trained professionals for hospitals, industries, and households. Perfect fit for your needs.',
    icon: '👥',
  ),
];

final List<Map<String, String>> reviews = [
  {
    'name': 'Bilal Hameed',
    'location': 'G-8, Islamabad',
    'review':
        'Using NurseNow for home healthcare has been a great decision. The staff and owner are humble and very professional. Highly recommended!',
    'initials': 'BH',
  },
  {
    'name': 'Noreen Ahmad',
    'location': 'Westridge, Rawalpindi',
    'review':
        'After my mother\'s knee replacement, NurseNow assigned a skilled nurse for dressing and medication. Recovery was smooth and convenient!',
    'initials': 'NA',
  },
  {
    'name': 'Farman',
    'location': 'CEO My Dentist, Rawalpindi',
    'review':
        'Exceptional service and highly trained staff. NurseNow provides top-quality home nursing care with great professionalism.',
    'initials': 'FA',
  },
];

final List<Map<String, String>> faqs = [
  {
    'q': 'Home nursing service charges in Islamabad?',
    'a':
        'Charges range from Rs. 3,500 for a single 12-hour shift up to Rs. 105,000 for the full month. Feel free to call us for a custom quote.',
  },
  {
    'q': 'Are the nurses at NurseNow well qualified?',
    'a':
        'Yes! All staff holds Nursing degrees, General Nursing Qualification, and comes with hands-on hospital experience.',
  },
  {
    'q': 'Can I get a nurse for a brief service?',
    'a':
        'Yes, we deliver both short-term and long-term healthcare services including brief medication administration visits.',
  },
  {
    'q': 'Do I need a referral from a doctor?',
    'a':
        'In-Home Nursing is not a replacement for a doctor\'s diagnosis. Services are usually delivered post-treatment after hospital discharge.',
  },
  {
    'q': 'Can I set my own schedule?',
    'a':
        'Yes! You can discuss your preferred timing when you call us and we will match the nurse to your schedule.',
  },
];
