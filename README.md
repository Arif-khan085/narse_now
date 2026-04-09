# NurseNow Flutter App

Home Nursing Services App for Islamabad & Rawalpindi

## Setup Instructions

### 1. Install Dependencies
```bash
flutter pub get
```

### 2. Android Permissions
Add to `android/app/src/main/AndroidManifest.xml` inside `<manifest>`:
```xml
<uses-permission android:name="android.permission.INTERNET"/>
<uses-permission android:name="android.permission.CALL_PHONE"/>
```

Add inside `<manifest>` (before `<application>`):
```xml
<queries>
  <intent>
    <action android:name="android.intent.action.DIAL" />
    <data android:scheme="tel" />
  </intent>
  <intent>
    <action android:name="android.intent.action.VIEW" />
    <data android:scheme="https" />
  </intent>
</queries>
```

### 3. iOS Permissions
Add to `ios/Runner/Info.plist`:
```xml
<key>LSApplicationQueriesSchemes</key>
<array>
  <string>tel</string>
  <string>https</string>
</array>
```

### 4. Create assets folder
```bash
mkdir -p assets/images
```

### 5. Run the app
```bash
flutter run
```

## App Structure

```
lib/
├── main.dart                      # App entry point
├── constants/
│   ├── app_colors.dart            # All colors
│   └── app_strings.dart           # Text, services data, reviews, FAQs
├── screens/
│   ├── splash_screen.dart         # Splash with animation
│   ├── home_screen.dart           # Main home with all sections
│   ├── services_screen.dart       # All 15 services grid
│   ├── service_detail_screen.dart # Individual service detail
│   ├── contact_screen.dart        # Call, WhatsApp, contact form
│   └── about_screen.dart          # Company info
└── widgets/
    ├── custom_button.dart         # Reusable button
    ├── service_card.dart          # Service grid card
    └── review_card.dart           # Customer review card
```

## Features
- Splash screen with animation
- Hero section with Call & WhatsApp buttons
- Services grid (15 services)
- Service detail pages
- Customer reviews carousel
- FAQ accordion
- Contact form (sends via WhatsApp)
- About page with company stats
- Bottom navigation
- Floating WhatsApp button
# narse_now
