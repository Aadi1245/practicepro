// lib/data/dummy_data.dart
import '../models/project_model.dart';
import '../models/experience_model.dart';
import '../models/education_model.dart';

class DummyData {
  static List<Project> projects = [
    Project(
      title: 'E-Commerce Mobile App',
      description:
          'A comprehensive e-commerce application with user authentication, product catalog, shopping cart, and payment integration. Features include real-time notifications, order tracking, and user reviews.',
      imageUrl:
          'https://via.placeholder.com/400x300/2196F3/FFFFFF?text=E-Commerce+App',
      technologies: ['Flutter', 'Dart', 'Firebase', 'Stripe API', 'Provider'],
      githubUrl: 'https://github.com/username/ecommerce-app',
      playStoreUrl:
          'https://play.google.com/store/apps/details?id=com.example.ecommerce',
      category: 'Mobile App',
      isFeatured: true,
    ),
    Project(
      title: 'Task Management Dashboard',
      description:
          'A productivity app that helps users manage their daily tasks, set reminders, and track progress. Includes team collaboration features and analytics dashboard.',
      imageUrl:
          'https://via.placeholder.com/400x300/4CAF50/FFFFFF?text=Task+Manager',
      technologies: ['Flutter', 'Dart', 'SQLite', 'Bloc', 'Charts'],
      githubUrl: 'https://github.com/username/task-manager',
      category: 'Productivity',
      isFeatured: true,
    ),
    Project(
      title: 'Weather Forecast App',
      description:
          'Real-time weather application with location-based forecasts, weather maps, and severe weather alerts. Features beautiful animations and intuitive UI.',
      imageUrl:
          'https://via.placeholder.com/400x300/FF9800/FFFFFF?text=Weather+App',
      technologies: [
        'Flutter',
        'Dart',
        'OpenWeather API',
        'Geolocator',
        'Animations'
      ],
      githubUrl: 'https://github.com/username/weather-app',
      playStoreUrl:
          'https://play.google.com/store/apps/details?id=com.example.weather',
      category: 'Utility',
      isFeatured: false,
    ),
    Project(
      title: 'Social Media Clone',
      description:
          'Instagram-like social media application with photo sharing, stories, messaging, and social features. Implements real-time chat and push notifications.',
      imageUrl:
          'https://via.placeholder.com/400x300/E91E63/FFFFFF?text=Social+Media',
      technologies: ['Flutter', 'Dart', 'Firebase', 'Cloud Firestore', 'FCM'],
      githubUrl: 'https://github.com/username/social-media-clone',
      category: 'Social',
      isFeatured: true,
    ),
    Project(
      title: 'Fitness Tracker',
      description:
          'Comprehensive fitness tracking app with workout plans, nutrition tracking, and progress analytics. Integrates with wearable devices and health APIs.',
      imageUrl:
          'https://via.placeholder.com/400x300/9C27B0/FFFFFF?text=Fitness+Tracker',
      technologies: ['Flutter', 'Dart', 'Health Kit', 'Charts', 'Riverpod'],
      githubUrl: 'https://github.com/username/fitness-tracker',
      category: 'Health',
      isFeatured: false,
    ),
    Project(
      title: 'Food Delivery App',
      description:
          'Full-featured food delivery application with restaurant listings, menu management, real-time order tracking, and delivery integration.',
      imageUrl:
          'https://via.placeholder.com/400x300/FF5722/FFFFFF?text=Food+Delivery',
      technologies: [
        'Flutter',
        'Dart',
        'Google Maps',
        'Payment Gateway',
        'Push Notifications'
      ],
      githubUrl: 'https://github.com/username/food-delivery',
      category: 'Food & Drink',
      isFeatured: false,
    ),
  ];

  static List<Experience> experiences = [
    Experience(
      company: 'TechCorp Solutions',
      position: 'Senior Flutter Developer',
      duration: 'Jan 2023 - Present',
      description:
          'Leading mobile app development team and architecting scalable Flutter applications for enterprise clients.',
      achievements: [
        'Led development of 3 major mobile applications serving 100K+ users',
        'Implemented CI/CD pipelines reducing deployment time by 60%',
        'Mentored junior developers and conducted code reviews',
        'Optimized app performance resulting in 40% faster load times',
      ],
    ),
    Experience(
      company: 'StartupXYZ',
      position: 'Flutter Developer',
      duration: 'Mar 2022 - Dec 2022',
      description:
          'Developed cross-platform mobile applications and contributed to the complete product development lifecycle.',
      achievements: [
        'Built and shipped 2 mobile apps from conception to production',
        'Integrated multiple third-party APIs and services',
        'Collaborated with UI/UX designers to implement pixel-perfect designs',
        'Achieved 4.5+ star rating on both App Store and Play Store',
      ],
    ),
    Experience(
      company: 'Digital Agency Pro',
      position: 'Junior Flutter Developer',
      duration: 'Jun 2021 - Feb 2022',
      description:
          'Worked on client projects and gained hands-on experience in mobile app development using Flutter.',
      achievements: [
        'Developed 5+ client applications with diverse requirements',
        'Learned state management patterns and best practices',
        'Participated in agile development processes',
        'Contributed to code optimization and bug fixes',
      ],
    ),
  ];

  static List<Education> education = [
    Education(
      institution: 'ABC Institute of Technology',
      degree: 'Bachelor of Technology (B.Tech) in Computer Science',
      duration: '2018 - 2022',
      grade: 'CGPA: 8.0/10.0',
      description:
          'Focused on software engineering, data structures, algorithms, and mobile app development. Completed major projects in Flutter and Android development.',
    ),
    Education(
      institution: 'XYZ Higher Secondary School',
      degree: 'Higher Secondary Certificate (HSC)',
      duration: '2016 - 2018',
      grade: '88.5%',
      description:
          'Science stream with Mathematics, Physics, Chemistry, and Computer Science. Participated in various coding competitions and technical events.',
    ),
  ];
}
