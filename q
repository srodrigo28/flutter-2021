[33mcommit 89fe60f9b6c6da9dc30f84ac3b1f2dd134976741[m[33m ([m[1;36mHEAD -> [m[1;32mmain[m[33m, [m[1;31morigin/main[m[33m)[m
Author: Sebastião Rodrigo <rodrigoexer1@gmail.com>
Date:   Tue Aug 10 14:21:08 2021 -0300

    cadastro app

[1mdiff --git a/imc2/.gitignore b/imc2/.gitignore[m
[1mnew file mode 100644[m
[1mindex 0000000..0fa6b67[m
[1m--- /dev/null[m
[1m+++ b/imc2/.gitignore[m
[36m@@ -0,0 +1,46 @@[m
[32m+[m[32m# Miscellaneous[m
[32m+[m[32m*.class[m
[32m+[m[32m*.log[m
[32m+[m[32m*.pyc[m
[32m+[m[32m*.swp[m
[32m+[m[32m.DS_Store[m
[32m+[m[32m.atom/[m
[32m+[m[32m.buildlog/[m
[32m+[m[32m.history[m
[32m+[m[32m.svn/[m
[32m+[m
[32m+[m[32m# IntelliJ related[m
[32m+[m[32m*.iml[m
[32m+[m[32m*.ipr[m
[32m+[m[32m*.iws[m
[32m+[m[32m.idea/[m
[32m+[m
[32m+[m[32m# The .vscode folder contains launch configuration and tasks you configure in[m
[32m+[m[32m# VS Code which you may wish to be included in version control, so this line[m
[32m+[m[32m# is commented out by default.[m
[32m+[m[32m#.vscode/[m
[32m+[m
[32m+[m[32m# Flutter/Dart/Pub related[m
[32m+[m[32m**/doc/api/[m
[32m+[m[32m**/ios/Flutter/.last_build_id[m
[32m+[m[32m.dart_tool/[m
[32m+[m[32m.flutter-plugins[m
[32m+[m[32m.flutter-plugins-dependencies[m
[32m+[m[32m.packages[m
[32m+[m[32m.pub-cache/[m
[32m+[m[32m.pub/[m
[32m+[m[32m/build/[m
[32m+[m
[32m+[m[32m# Web related[m
[32m+[m[32mlib/generated_plugin_registrant.dart[m
[32m+[m
[32m+[m[32m# Symbolication related[m
[32m+[m[32mapp.*.symbols[m
[32m+[m
[32m+[m[32m# Obfuscation related[m
[32m+[m[32mapp.*.map.json[m
[32m+[m
[32m+[m[32m# Android Studio will place build artifacts here[m
[32m+[m[32m/android/app/debug[m
[32m+[m[32m/android/app/profile[m
[32m+[m[32m/android/app/release[m
[1mdiff --git a/imc2/.metadata b/imc2/.metadata[m
[1mnew file mode 100644[m
[1mindex 0000000..56bfc2c[m
[1m--- /dev/null[m
[1m+++ b/imc2/.metadata[m
[36m@@ -0,0 +1,10 @@[m
[32m+[m[32m# This file tracks properties of this Flutter project.[m
[32m+[m[32m# Used by Flutter tool to assess capabilities and perform upgrades etc.[m
[32m+[m[32m#[m
[32m+[m[32m# This file should be version controlled and should not be manually edited.[m
[32m+[m
[32m+[m[32mversion:[m
[32m+[m[32m  revision: f4abaa0735eba4dfd8f33f73363911d63931fe03[m
[32m+[m[32m  channel: stable[m
[32m+[m
[32m+[m[32mproject_type: app[m
[1mdiff --git a/imc2/README.md b/imc2/README.md[m
[1mnew file mode 100644[m
[1mindex 0000000..c671715[m
[1m--- /dev/null[m
[1m+++ b/imc2/README.md[m
[36m@@ -0,0 +1,16 @@[m
[32m+[m[32m# imc2[m
[32m+[m
[32m+[m[32mA new Flutter project.[m
[32m+[m
[32m+[m[32m## Getting Started[m
[32m+[m
[32m+[m[32mThis project is a starting point for a Flutter application.[m
[32m+[m
[32m+[m[32mA few resources to get you started if this is your first Flutter project:[m
[32m+[m
[32m+[m[32m- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)[m
[32m+[m[32m- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)[m
[32m+[m
[32m+[m[32mFor help getting started with Flutter, view our[m
[32m+[m[32m[online documentation](https://flutter.dev/docs), which offers tutorials,[m
[32m+[m[32msamples, guidance on mobile development, and a full API reference.[m
[1mdiff --git a/imc2/android/.gitignore b/imc2/android/.gitignore[m
[1mnew file mode 100644[m
[1mindex 0000000..0a741cb[m
[1m--- /dev/null[m
[1m+++ b/imc2/android/.gitignore[m
[36m@@ -0,0 +1,11 @@[m
[32m+[m[32mgradle-wrapper.jar[m
[32m+[m[32m/.gradle[m
[32m+[m[32m/captures/[m
[32m+[m[32m/gradlew[m
[32m+[m[32m/gradlew.bat[m
[32m+[m[32m/local.properties[m
[32m+[m[32mGeneratedPluginRegistrant.java[m
[32m+[m
[32m+[m[32m# Remember to never publicly share your keystore.[m
[32m+[m[32m# See https://flutter.dev/docs/deployment/android#reference-the-keystore-from-the-app[m
[32m+[m[32mkey.properties[m
[1mdiff --git a/imc2/android/app/build.gradle b/imc2/android/app/build.gradle[m
[1mnew file mode 100644[m
[1mindex 0000000..fed8a50[m
[1m--- /dev/null[m
[1m+++ b/imc2/android/app/build.gradle[m
[36m@@ -0,0 +1,59 @@[m
[32m+[m[32mdef localProperties = new Properties()[m
[32m+[m[32mdef localPropertiesFile = rootProject.file('local.properties')[m
[32m+[m[32mif (localPropertiesFile.exists()) {[m
[32m+[m[32m    localPropertiesFile.withReader('UTF-8') { reader ->[m
[32m+[m[32m        localProperties.load(reader)[m
[32m+[m[32m    }[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32mdef flutterRoot = localProperties.getProperty('flutter.sdk')[m
[32m+[m[32mif (flutterRoot == null) {[m
[32m+[m[32m    throw new GradleException("Flutter SDK not found. Define location with flutter.sdk in the local.properties file.")[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32mdef flutterVersionCode = localProperties.getProperty('flutter.versionCode')[m
[32m+[m[32mif (flutterVersionCode == null) {[m
[32m+[m[32m    flutterVersionCode = '1'[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32mdef flutterVersionName = localProperties.getProperty('flutter.versionName')[m
[32m+[m[32mif (flutterVersionName == null) {[m
[32m+[m[32m    flutterVersionName = '1.0'[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32mapply plugin: 'com.android.application'[m
[32m+[m[32mapply plugin: 'kotlin-android'[m
[32m+[m[32mapply from: "$flutterRoot/packages/flutter_tools/gradle/flutter.gradle"[m
[32m+[m
[32m+[m[32mandroid {[m
[32m+[m[32m    compileSdkVersion 30[m
[32m+[m
[32m+[m[32m    sourceSets {[m
[32m+[m[32m        main.java.srcDirs += 'src/main/kotlin'[m
[32m+[m[32m    }[m
[32m+[m
[32m+[m[32m    defaultConfig {[m
[32m+[m[32m        // TODO: Specify your own unique Application ID (https://developer.android.com/studio/build/application-id.html).[m
[32m+[m[32m        applicationId "com.example.imc2"[m
[32m+[m[32m        minSdkVersion 16[m
[32m+[m[32m        targetSdkVersion 30[m
[32m+[m[32m        versionCode flutterVersionCode.toInteger()[m
[32m+[m[32m        versionName flutterVersionName[m
[32m+[m[32m    }[m
[32m+[m
[32m+[m[32m    buildTypes {[m
[32m+[m[32m        release {[m
[32m+[m[32m            // TODO: Add your own signing config for the release build.[m
[32m+[m[32m            // Signing with the debug keys for now, so `flutter run --release` works.[m
[32m+[m[32m            signingConfig signingConfigs.debug[m
[32m+[m[32m        }[m
[32m+[m[32m    }[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32mflutter {[m
[32m+[m[32m    source '../..'[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32mdependencies {[m
[32m+[m[32m    implementation "org.jetbrains.kotlin:kotlin-stdlib-jdk7:$kotlin_version"[m
[32m+[m[32m}[m
[1mdiff --git a/imc2/android/app/src/debug/AndroidManifest.xml b/imc2/android/app/src/debug/AndroidManifest.xml[m
[1mnew file mode 100644[m
[1mindex 0000000..548a065[m
[1m--- /dev/null[m
[1m+++ b/imc2/android/app/src/debug/AndroidManifest.xml[m
[36m@@ -0,0 +1,7 @@[m
[32m+[m[32m<manifest xmlns:android="http://schemas.android.com/apk/res/android"[m
[32m+[m[32m    package="com.example.imc2">[m
[32m+[m[32m    <!-- Flutter needs it to communicate with the running application[m
[32m+[m[32m         to allow setting breakpoints, to provide hot reload, etc.[m
[32m+[m[32m    -->[m
[32m+[m[32m    <uses-permission android:name="android.permission.INTERNET"/>[m
[32m+[m[32m</manifest>[m
[1mdiff --git a/imc2/android/app/src/main/AndroidManifest.xml b/imc2/android/app/src/main/AndroidManifest.xml[m
[1mnew file mode 100644[m
[1mindex 0000000..1682213[m
[1m--- /dev/null[m
[1m+++ b/imc2/android/app/src/main/AndroidManifest.xml[m
[36m@@ -0,0 +1,41 @@[m
[32m+[m[32m<manifest xmlns:android="http://schemas.android.com/apk/res/android"[m
[32m+[m[32m    package="com.example.imc2">[m
[32m+[m[32m   <application[m
[32m+[m[32m        android:label="imc2"[m
[32m+[m[32m        android:icon="@mipmap/ic_launcher">[m
[32m+[m[32m        <activity[m
[32m+[m[32m            android:name=".MainActivity"[m
[32m+[m[32m            android:launchMode="singleTop"[m
[32m+[m[32m            android:theme="@style/LaunchTheme"[m
[32m+[m[32m            android:configChanges="orientation|keyboardHidden|keyboard|screenSize|smallestScreenSize|locale|layoutDirection|fontScale|screenLayout|density|uiMode"[m
[32m+[m[32m            android:hardwareAccelerated="true"[m
[32m+[m[32m            android:windowSoftInputMode="adjustResize">[m
[32m+[m[32m            <!-- Specifies an Android theme to apply to this Activity as soon as[m
[32m+[m[32m                 the Android process has started. This theme is visible to the user[m
[32m+[m[32m                 while the Flutter UI initializes. After that, this theme continues[m
[32m+[m[32m                 to determine the Window background behind the Flutter UI. -->[m
[32m+[m[32m            <meta-data[m
[32m+[m[32m              android:name="io.flutter.embedding.android.NormalTheme"[m
[32m+[m[32m              android:resource="@style/NormalTheme"[m
[32m+[m[32m              />[m
[32m+[m[32m            <!-- Displays an Android View that continues showing the launch screen[m
[32m+[m[32m                 Drawable until Flutter paints its first frame, then this splash[m
[32m+[m[32m                 screen fades out. A splash screen is useful to avoid any visual[m
[32m+[m[32m                 gap between the end of Android's launch screen and the painting of[m
[32m+[m[32m                 Flutter's first frame. -->[m
[32m+[m[32m            <meta-data[m
[32m+[m[32m              android:name="io.flutter.embedding.android.SplashScreenDrawable"[m
[32m+[m[32m              android:resource="@drawable/launch_background"[m
[32m+[m[32m              />[m
[32m+[m[32m            <intent-filter>[m
[32m+[m[32m                <action android:name="android.intent.action.MAIN"/>[m
[32m+[m[32m                <category android:name="android.intent.category.LAUNCHER"/>[m
[32m+[m[32m            </intent-filter>[m
[32m+[m[32m        </activity>[m
[32m+[m[32m        <!-- Don't delete the meta-data below.[m
[32m+[m[32m             This is used by the Flutter tool to generate GeneratedPluginRegistrant.java -->[m
[32m+[m[32m        <meta-data[m
[32m+[m[32m            android:name="flutterEmbedding"[m
[32m+[m[32m            android:value="2" />[m
[32m+[m[32m    </application>[m
[32m+[m[32m</manifest>[m
[1mdiff --git a/imc2/android/app/src/main/kotlin/com/example/imc2/MainActivity.kt b/imc2/android/app/src/main/kotlin/com/example/imc2/MainActivity.kt[m
[1mnew file mode 100644[m
[1mindex 0000000..5e49b4e[m
[1m--- /dev/null[m
[1m+++ b/imc2/android/app/src/main/kotlin/com/example/imc2/MainActivity.kt[m
[36m@@ -0,0 +1,6 @@[m
[32m+[m[32mpackage com.example.imc2[m
[32m+[m
[32m+[m[32mimport io.flutter.embedding.android.FlutterActivity[m
[32m+[m
[32m+[m[32mclass MainActivity: FlutterActivity() {[m
[32m+[m[32m}[m
[1mdiff --git a/imc2/android/app/src/main/res/drawable-v21/launch_background.xml b/imc2/android/app/src/main/res/drawable-v21/launch_background.xml[m
[1mnew file mode 100644[m
[1mindex 0000000..f74085f[m
[1m--- /dev/null[m
[1m+++ b/imc2/android/app/src/main/res/drawable-v21/launch_background.xml[m
[36m@@ -0,0 +1,12 @@[m
[32m+[m[32m<?xml version="1.0" encoding="utf-8"?>[m
[32m+[m[32m<!-- Modify this file to customize your launch splash screen -->[m
[32m+[m[32m<layer-list xmlns:android="http://schemas.android.com/apk/res/android">[m
[32m+[m[32m    <item android:drawable="?android:colorBackground" />[m
[32m+[m
[32m+[m[32m    <!-- You can insert your own image assets here -->[m
[32m+[m[32m    <!-- <item>[m
[32m+[m[32m        <bitmap[m
[32m+[m[32m            android:gravity="center"[m
[32m+[m[32m            android:src="@mipmap/launch_image" />[m
[32m+[m[32m    </item> -->[m
[32m+[m[32m</layer-list>[m
[1mdiff --git a/imc2/android/app/src/main/res/drawable/launch_background.xml b/imc2/android/app/src/main/res/drawable/launch_background.xml[m
[1mnew file mode 100644[m
[1mindex 0000000..304732f[m
[1m--- /dev/null[m
[1m+++ b/imc2/android/app/src/main/res/drawable/launch_background.xml[m
[36m@@ -0,0 +1,12 @@[m
[32m+[m[32m<?xml version="1.0" encoding="utf-8"?>[m
[32m+[m[32m<!-- Modify this file to customize your launch splash screen -->[m
[32m+[m[32m<layer-list xmlns:android="http://schemas.android.com/apk/res/android">[m
[32m+[m[32m    <item android:drawable="@android:color/white" />[m
[32m+[m
[32m+[m[32m    <!-- You can insert your own image assets here -->[m
[32m+[m[32m    <!-- <item>[m
[32m+[m[32m        <bitmap[m
[32m+[m[32m            android:gravity="center"[m
[32m+[m[32m            android:src="@mipmap/launch_image" />[m
[32m+[m[32m    </item> -->[m
[32m+[m[32m</layer-list>[m
[1mdiff --git a/imc2/android/app/src/main/res/mipmap-hdpi/ic_launcher.png b/imc2/android/app/src/main/res/mipmap-hdpi/ic_launcher.png[m
[1mnew file mode 100644[m
[1mindex 0000000..db77bb4[m
Binary files /dev/null and b/imc2/android/app/src/main/res/mipmap-hdpi/ic_launcher.png differ
[1mdiff --git a/imc2/android/app/src/main/res/mipmap-mdpi/ic_launcher.png b/imc2/android/app/src/main/res/mipmap-mdpi/ic_launcher.png[m
[1mnew file mode 100644[m
[1mindex 0000000..17987b7[m
Binary files /dev/null and b/imc2/android/app/src/main/res/mipmap-mdpi/ic_launcher.png differ
[1mdiff --git a/imc2/android/app/src/main/res/mipmap-xhdpi/ic_launcher.png b/imc2/android/app/src/main/res/mipmap-xhdpi/ic_launcher.png[m
[1mnew file mode 100644[m
[1mindex 0000000..09d4391[m
Binary files /dev/null and b/imc2/android/app/src/main/res/mipmap-xhdpi/ic_launcher.png differ
[1mdiff --git a/imc2/android/app/src/main/res/mipmap-xxhdpi/ic_launcher.png b/imc2/android/app/src/main/res/mipmap-xxhdpi/ic_launcher.png[m
[1mnew file mode 100644[m
[1mindex 0000000..d5f1c8d[m
Binary files /dev/null and b/imc2/android/app/src/main/res/mipmap-xxhdpi/ic_launcher.png differ
[1mdiff --git a/imc2/android/app/src/main/res/mipmap-xxxhdpi/ic_launcher.png b/imc2/android/app/src/main/res/mipmap-xxxhdpi/ic_launcher.png[m
[1mnew file mode 100644[m
[1mindex 0000000..4d6372e[m
Binary files /dev/null and b/imc2/android/app/src/main/res/mipmap-xxxhdpi/ic_launcher.png differ
[1mdiff --git a/imc2/android/app/src/main/res/values-night/styles.xml b/imc2/android/app/src/main/res/values-night/styles.xml[m
[1mnew file mode 100644[m
[1mindex 0000000..449a9f9[m
[1m--- /dev/null[m
[1m+++ b/imc2/android/app/src/main/res/values-night/styles.xml[m
[36m@@ -0,0 +1,18 @@[m
[32m+[m[32m<?xml version="1.0" encoding="utf-8"?>[m
[32m+[m[32m<resources>[m
[32m+[m[32m    <!-- Theme applied to the Android Window while the process is starting when the OS's Dark Mode setting is on -->[m
[32m+[m[32m    <style name="LaunchTheme" parent="@android:style/Theme.Black.NoTitleBar">[m
[32m+[m[32m        <!-- Show a splash screen on the activity. Automatically removed when[m
[32m+[m[32m             Flutter draws its first frame -->[m
[32m+[m[32m        <item name="android:windowBackground">@drawable/launch_background</item>[m
[32m+[m[32m    </style>[m
[32m+[m[32m    <!-- Theme applied to the Android Window as soon as the process has started.[m
[32m+[m[32m         This theme determines the color of the Android Window while your[m
[32m+[m[32m         Flutter UI initializes, as well as behind your Flutter UI while its[m
[32m+[m[32m         running.[m
[32m+[m[41m         [m
[32m+[m[32m         This Theme is only used starting with V2 of Flutter's Android embedding. -->[m
[32m+[m[32m    <style name="NormalTheme" parent="@android:style/Theme.Black.NoTitleBar">[m
[32m+[m[32m        <item name="android:windowBackground">?android:colorBackground</item>[m
[32m+[m[32m    </style>[m
[32m+[m[32m</resources>[m
[1mdiff --git a/imc2/android/app/src/main/res/values/styles.xml b/imc2/android/app/src/main/res/values/styles.xml[m
[1mnew file mode 100644[m
[1mindex 0000000..d74aa35[m
[1m--- /dev/null[m
[1m+++ b/imc2/android/app/src/main/res/values/styles.xml[m
[36m@@ -0,0 +1,18 @@[m
[32m+[m[32m<?xml version="1.0" encoding="utf-8"?>[m
[32m+[m[32m<resources>[m
[32m+[m[32m    <!-- Theme applied to the Android Window while the process is starting when the OS's Dark Mode setting is off -->[m
[32m+[m[32m    <style name="LaunchTheme" parent="@android:style/Theme.Light.NoTitleBar">[m
[32m+[m[32m        <!-- Show a splash screen on the activity. Automatically removed when[m
[32m+[m[32m             Flutter draws its first frame -->[m
[32m+[m[32m        <item name="android:windowBackground">@drawable/launch_background</item>[m
[32m+[m[32m    </style>[m
[32m+[m[32m    <!-- Theme applied to the Android Window as soon as the process has started.[m
[32m+[m[32m         This theme determines the color of the Android Window while your[m
[32m+[m[32m         Flutter UI initializes, as well as behind your Flutter UI while its[m
[32m+[m[32m         running.[m
[32m+[m[41m         [m
[32m+[m[32m         This Theme is only used starting with V2 of Flutter's Android embedding. -->[m
[32m+[m[32m    <style name="NormalTheme" parent="@android:style/Theme.Light.NoTitleBar">[m
[32m+[m[32m        <item name="android:windowBackground">?android:colorBackground</item>[m
[32m+[m[32m    </style>[m
[32m+[m[32m</resources>[m
[1mdiff --git a/imc2/android/app/src/profile/AndroidManifest.xml b/imc2/android/app/src/profile/AndroidManifest.xml[m
[1mnew file mode 100644[m
[1mindex 0000000..548a065[m
[1m--- /dev/null[m
[1m+++ b/imc2/android/app/src/profile/AndroidManifest.xml[m
[36m@@ -0,0 +1,7 @@[m
[32m+[m[32m<manifest xmlns:android="http://schemas.android.com/apk/res/android"[m
[32m+[m[32m    package="com.example.imc2">[m
[32m+[m[32m    <!-- Flutter needs it to communicate with the running application[m
[32m+[m[32m         to allow setting breakpoints, to provide hot reload, etc.[m
[32m+[m[32m    -->[m
[32m+[m[32m    <uses-permission android:name="android.permission.INTERNET"/>[m
[32m+[m[32m</manifest>[m
[1mdiff --git a/imc2/android/build.gradle b/imc2/android/build.gradle[m
[1mnew file mode 100644[m
[1mindex 0000000..9b6ed06[m
[1m--- /dev/null[m
[1m+++ b/imc2/android/build.gradle[m
[36m@@ -0,0 +1,29 @@[m
[32m+[m[32mbuildscript {[m
[32m+[m[32m    ext.kotlin_version = '1.3.50'[m
[32m+[m[32m    repositories {[m
[32m+[m[32m        google()[m
[32m+[m[32m        jcenter()[m
[32m+[m[32m    }[m
[32m+[m
[32m+[m[32m    dependencies {[m
[32m+[m[32m        classpath 'com.android.tools.build:gradle:4.1.0'[m
[32m+[m[32m        classpath "org.jetbrains.kotlin:kotlin-gradle-plugin:$kotlin_version"[m
[32m+[m[32m    }[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32mallprojects {[m
[32m+[m[32m    repositories {[m
[32m+[m[32m        google()[m
[32m+[m[32m        jcenter()[m
[32m+[m[32m    }[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32mrootProject.buildDir = '../build'[m
[32m+[m[32msubprojects {[m
[32m+[m[32m    project.buildDir = "${rootProject.buildDir}/${project.name}"[m
[32m+[m[32m    project.evaluationDependsOn(':app')[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32mtask clean(type: Delete) {[m
[32m+[m[32m    delete rootProject.buildDir[m
[32m+[m[32m}[m
[1mdiff --git a/imc2/android/gradle.properties b/imc2/android/gradle.properties[m
[1mnew file mode 100644[m
[1mindex 0000000..94adc3a[m
[1m--- /dev/null[m
[1m+++ b/imc2/android/gradle.properties[m
[36m@@ -0,0 +1,3 @@[m
[32m+[m[32morg.gradle.jvmargs=-Xmx1536M[m
[32m+[m[32mandroid.useAndroidX=true[m
[32m+[m[32mandroid.enableJetifier=true[m
[1mdiff --git a/imc2/android/gradle/wrapper/gradle-wrapper.properties b/imc2/android/gradle/wrapper/gradle-wrapper.properties[m
[1mnew file mode 100644[m
[1mindex 0000000..bc6a58a[m
[1m--- /dev/null[m
[1m+++ b/imc2/android/gradle/wrapper/gradle-wrapper.properties[m
[36m@@ -0,0 +1,6 @@[m
[32m+[m[32m#Fri Jun 23 08:50:38 CEST 2017[m
[32m+[m[32mdistributionBase=GRADLE_USER_HOME[m
[32m+[m[32mdistributionPath=wrapper/dists[m
[32m+[m[32mzipStoreBase=GRADLE_USER_HOME[m
[32m+[m[32mzipStorePath=wrapper/dists[m
[32m+[m[32mdistributionUrl=https\://services.gradle.org/distributions/gradle-6.7-all.zip[m
[1mdiff --git a/imc2/android/settings.gradle b/imc2/android/settings.gradle[m
[1mnew file mode 100644[m
[1mindex 0000000..44e62bc[m
[1m--- /dev/null[m
[1m+++ b/imc2/android/settings.gradle[m
[36m@@ -0,0 +1,11 @@[m
[32m+[m[32minclude ':app'[m
[32m+[m
[32m+[m[32mdef localPropertiesFile = new File(rootProject.projectDir, "local.properties")[m
[32m+[m[32mdef properties = new Properties()[m
[32m+[m
[32m+[m[32massert localPropertiesFile.exists()[m
[32m+[m[32mlocalPropertiesFile.withReader("UTF-8") { reader -> properties.load(reader) }[m
[32m+[m
[32m+[m[32mdef flutterSdkPath = properties.getProperty("flutter.sdk")[m
[32m+[m[32massert flutterSdkPath != null, "flutter.sdk not set in local.properties"[m
[32m+[m[32mapply from: "$flutterSdkPath/packages/flutter_tools/gradle/app_plugin_loader.gradle"[m
[1mdiff --git a/imc2/ios/.gitignore b/imc2/ios/.gitignore[m
[1mnew file mode 100644[m
[1mindex 0000000..151026b[m
[1m--- /dev/null[m
[1m+++ b/imc2/ios/.gitignore[m
[36m@@ -0,0 +1,33 @@[m
[32m+[m[32m*.mode1v3[m
[32m+[m[32m*.mode2v3[m
[32m+[m[32m*.moved-aside[m
[32m+[m[32m*.pbxuser[m
[32m+[m[32m*.perspectivev3[m
[32m+[m[32m**/*sync/[m
[32m+[m[32m.sconsign.dblite[m
[32m+[m[32m.tags*[m
[32m+[m[32m**/.vagrant/[m
[32m+[m[32m**/DerivedData/[m
[32m+[m[32mIcon?[m
[32m+[m[32m**/Pods/[m
[32m+[m[32m**/.symlinks/[m
[32m+[m[32mprofile[m
[32m+[m[32mxcuserdata[m
[32m+[m[32m**/.generated/[m
[32m+[m[32mFlutter/App.framework[m
[32m+[m[32mFlutter/Flutter.framework[m
[32m+[m[32mFlutter/Flutter.podspec[m
[32m+[m[32mFlutter/Generated.xcconfig[m
[32m+[m[32mFlutter/ephemeral/[m
[32m+[m[32mFlutter/app.flx[m
[32m+[m[32mFlutter/app.zip[m
[32m+[m[32mFlutter/flutter_assets/[m
[32m+[m[32mFlutter/flutter_export_environment.sh[m
[32m+[m[32mServiceDefinitions.json[m
[32m+[m[32mRunner/GeneratedPluginRegistrant.*[m
[32m+[m
[32m+[m[32m# Exceptions to above rules.[m
[32m+[m[32m!default.mode1v3[m
[32m+[m[32m!default.mode2v3[m
[32m+[m[32m!default.pbxuser[m
[32m+[m[32m!default.perspectivev3[m
[1mdiff --git a/imc2/ios/Flutter/AppFrameworkInfo.plist b/imc2/ios/Flutter/AppFrameworkInfo.plist[m
[1mnew file mode 100644[m
[1mindex 0000000..9367d48[m
[1m--- /dev/null[m
[1m+++ b/imc2/ios/Flutter/AppFrameworkInfo.plist[m
[36m@@ -0,0 +1,26 @@[m
[32m+[m[32m<?xml version="1.0" encoding="UTF-8"?>[m
[32m+[m[32m<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">[m
[32m+[m[32m<plist version="1.0">[m
[32m+[m[32m<dict>[m
[32m+[m[32m  <key>CFBundleDevelopmentRegion</key>[m
[32m+[m[32m  <string>en</string>[m
[32m+[m[32m  <key>CFBundleExecutable</key>[m
[32m+[m[32m  <string>App</string>[m
[32m+[m[32m  <key>CFBundleIdentifier</key>[m
[32m+[m[32m  <string>io.flutter.flutter.app</string>[m
[32m+[m[32m  <key>CFBundleInfoDictionaryVersion</key>[m
[32m+[m[32m  <string>6.0</string>[m
[32m+[m[32m  <key>CFBundleName</key>[m
[32m+[m[32m  <string>App</string>[m
[32m+[m[32m  <key>CFBundlePackageType</key>[m
[32m+[m[32m  <string>FMWK</string>[m
[32m+[m[32m  <key>CFBundleShortVersionString</key>[m
[32m+[m[32m  <string>1.0</string>[m
[32m+[m[32m  <key>CFBundleSignature</key>[m
[32m+[m[32m  <string>????</string>[m
[32m+[m[32m  <key>CFBundleVersion</key>[m
[32m+[m[32m  <string>1.0</string>[m
[32m+[m[32m  <key>MinimumOSVersion</key>[m
[32m+[m[32m  <string>8.0</string>[m
[32m+[m[32m</dict>[m
[32m+[m[32m</plist>[m
[1mdiff --git a/imc2/ios/Flutter/Debug.xcconfig b/imc2/ios/Flutter/Debug.xcconfig[m
[1mnew file mode 100644[m
[1mindex 0000000..592ceee[m
[1m--- /dev/null[m
[1m+++ b/imc2/ios/Flutter/Debug.xcconfig[m
[36m@@ -0,0 +1 @@[m
[32m+[m[32m#include "Generated.xcconfig"[m
[1mdiff --git a/imc2/ios/Flutter/Release.xcconfig b/imc2/ios/Flutter/Release.xcconfig[m
[1mnew file mode 100644[m
[1mindex 0000000..592ceee[m
[1m--- /dev/null[m
[1m+++ b/imc2/ios/Flutter/Release.xcconfig[m
[36m@@ -0,0 +1 @@[m
[32m+[m[32m#include "Generated.xcconfig"[m
[1mdiff --git a/imc2/ios/Runner.xcodeproj/project.pbxproj b/imc2/ios/Runner.xcodeproj/project.pbxproj[m
[1mnew file mode 100644[m
[1mindex 0000000..9d13edb[m
[1m--- /dev/null[m
[1m+++ b/imc2/ios/Runner.xcodeproj/project.pbxproj[m
[36m@@ -0,0 +1,471 @@[m
[32m+[m[32m// !$*UTF8*$![m
[32m+[m[32m{[m
[32m+[m	[32marchiveVersion = 1;[m
[32m+[m	[32mclasses = {[m
[32m+[m	[32m};[m
[32m+[m	[32mobjectVersion = 46;[m
[32m+[m	[32mobjects = {[m
[32m+[m
[32m+[m[32m/* Begin PBXBuildFile section */[m
[32m+[m		[32m1498D2341E8E89220040F4C2 /* GeneratedPluginRegistrant.m in Sources */ = {isa = PBXBuildFile; fileRef = 1498D2331E8E89220040F4C2 /* GeneratedPluginRegistrant.m */; };[m
[32m+[m		[32m3B3967161E833CAA004F5970 /* AppFrameworkInfo.plist in Resources */ = {isa = PBXBuildFile; fileRef = 3B3967151E833CAA004F5970 /* AppFrameworkInfo.plist */; };[m
[32m+[m		[32m74858FAF1ED2DC5600515810 /* AppDelegate.swift in Sources */ = {isa = PBXBuildFile; fileRef = 74858FAE1ED2DC5600515810 /* AppDelegate.swift */; };[m
[32m+[m		[32m97C146FC1CF9000F007C117D /* Main.storyboard in Resources */ = {isa = PBXBuildFile; fileRef = 97C146FA1CF9000F007C117D /* Main.storyboard */; };[m
[32m+[m		[32m97C146FE1CF9000F007C117D /* Assets.xcassets in Resources */ = {isa = PBXBuildFile; fileRef = 97C146FD1CF9000F007C117D /* Assets.xcassets */; };[m
[32m+[m		[32m97C147011CF9000F007C117D /* LaunchScreen.storyboard in Resources */ = {isa = PBXBuildFile; fileRef = 97C146FF1CF9000F007C117D /* LaunchScreen.storyboard */; };[m
[32m+[m[32m/* End PBXBuildFile section */[m
[32m+[m
[32m+[m[32m/* Begin PBXCopyFilesBuildPhase section */[m
[32m+[m		[32m9705A1C41CF9048500538489 /* Embed Frameworks */ = {[m
[32m+[m			[32misa = PBXCopyFilesBuildPhase;[m
[32m+[m			[32mbuildActionMask = 2147483647;[m
[32m+[m			[32mdstPath = "";[m
[32m+[m			[32mdstSubfolderSpec = 10;[m
[32m+[m			[32mfiles = ([m
[32m+[m			[32m);[m
[32m+[m			[32mname = "Embed Frameworks";[m
[32m+[m			[32mrunOnlyForDeploymentPostprocessing = 0;[m
[32m+[m		[32m};[m
[32m+[m[32m/* End PBXCopyFilesBuildPhase section */[m
[32m+[m
[32m+[m[32m/* Begin PBXFileReference section */[m
[32m+[m		[32m1498D2321E8E86230040F4C2 /* GeneratedPluginRegistrant.h */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.c.h; path = GeneratedPluginRegistrant.h; sourceTree = "<group>"; };[m
[32m+[m		[32m1498D2331E8E89220040F4C2 /* GeneratedPluginRegistrant.m */ = {isa = PBXFileReference; fileEncoding = 4; lastKnownFileType = sourcecode.c.objc; path = GeneratedPluginRegistrant.m; sourceTree = "<group>"; };[m
[32m+[m		[32m3B3967151E833CAA004F5970 /* AppFrameworkInfo.plist */ = {isa = PBXFileReference; fileEncoding = 4; lastKnownFileType = text.plist.xml; name = AppFrameworkInfo.plist; path = Flutter/AppFrameworkInfo.plist; sourceTree = "<group>"; };[m
[32m+[m		[32m74858FAD1ED2DC5600515810 /* Runner-Bridging-Header.h */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.c.h; path = "Runner-Bridging-Header.h"; sourceTree = "<group>"; };[m
[32m+[m		[32m74858FAE1ED2DC5600515810 /* AppDelegate.swift */ = {isa = PBXFileReference; fileEncoding = 4; lastKnownFileType = sourcecode.swift; path = AppDelegate.swift; sourceTree = "<group>"; };[m
[32m+[m		[32m7AFA3C8E1D35360C0083082E /* Release.xcconfig */ = {isa = PBXFileReference; lastKnownFileType = text.xcconfig; name = Release.xcconfig; path = Flutter/Release.xcconfig; sourceTree = "<group>"; };[m
[32m+[m		[32m9740EEB21CF90195004384FC /* Debug.xcconfig */ = {isa = PBXFileReference; fileEncoding = 4; lastKnownFileType = text.xcconfig; name = Debug.xcconfig; path = Flutter/Debug.xcconfig; sourceTree = "<group>"; };[m
[32m+[m		[32m9740EEB31CF90195004384FC /* Generated.xcconfig */ = {isa = PBXFileReference; fileEncoding = 4; lastKnownFileType = text.xcconfig; name = Generated.xcconfig; path = Flutter/Generated.xcconfig; sourceTree = "<group>"; };[m
[32m+[m		[32m97C146EE1CF9000F007C117D /* Runner.app */ = {isa = PBXFileReference; explicitFileType = wrapper.application; includeInIndex = 0; path = Runner.app; sourceTree = BUILT_PRODUCTS_DIR; };[m
[32m+[m		[32m97C146FB1CF9000F007C117D /* Base */ = {isa = PBXFileReference; lastKnownFileType = file.storyboard; name = Base; path = Base.lproj/Main.storyboard; sourceTree = "<group>"; };[m
[32m+[m		[32m97C146FD1CF9000F007C117D /* Assets.xcassets */ = {isa = PBXFileReference; lastKnownFileType = folder.assetcatalog; path = Assets.xcassets; sourceTree = "<group>"; };[m
[32m+[m		[32m97C147001CF9000F007C117D /* Base */ = {isa = PBXFileReference; lastKnownFileType = file.storyboard; name = Base; path = Base.lproj/LaunchScreen.storyboard; sourceTree = "<group>"; };[m
[32m+[m		[32m97C147021CF9000F007C117D /* Info.plist */ = {isa = PBXFileReference; lastKnownFileType = text.plist.xml; path = Info.plist; sourceTree = "<group>"; };[m
[32m+[m[32m/* End PBXFileReference section */[m
[32m+[m
[32m+[m[32m/* Begin PBXFrameworksBuildPhase section */[m
[32m+[m		[32m97C146EB1CF9000F007C117D /* Frameworks */ = {[m
[32m+[m			[32misa = PBXFrameworksBuildPhase;[m
[32m+[m			[32mbuildActionMask = 2147483647;[m
[32m+[m			[32mfiles = ([m
[32m+[m			[32m);[m
[32m+[m			[32mrunOnlyForDeploymentPostprocessing = 0;[m
[32m+[m		[32m};[m
[32m+[m[32m/* End PBXFrameworksBuildPhase section */[m
[32m+[m
[32m+[m[32m/* Begin PBXGroup section */[m
[32m+[m		[32m9740EEB11CF90186004384FC /* Flutter */ = {[m
[32m+[m			[32misa = PBXGroup;[m
[32m+[m			[32mchildren = ([m
[32m+[m				[32m3B3967151E833CAA004F5970 /* AppFrameworkInfo.plist */,[m
[32m+[m				[32m9740EEB21CF90195004384FC /* Debug.xcconfig */,[m
[32m+[m				[32m7AFA3C8E1D35360C0083082E /* Release.xcconfig */,[m
[32m+[m				[32m9740EEB31CF90195004384FC /* Generated.xcconfig */,[m
[32m+[m			[32m);[m
[32m+[m			[32mname = Flutter;[m
[32m+[m			[32msourceTree = "<group>";[m
[32m+[m		[32m};[m
[32m+[m		[32m97C146E51CF9000F007C117D = {[m
[32m+[m			[32misa = PBXGroup;[m
[32m+[m			[32mchildren = ([m
[32m+[m				[32m9740EEB11CF90186004384FC /* Flutter */,[m
[32m+[m				[32m97C146F01CF9000F007C117D /* Runner */,[m
[32m+[m				[32m97C146EF1CF9000F007C117D /* Products */,[m
[32m+[m			[32m);[m
[32m+[m			[32msourceTree = "<group>";[m
[32m+[m		[32m};[m
[32m+[m		[32m97C146EF1CF9000F007C117D /* Products */ = {[m
[32m+[m			[32misa = PBXGroup;[m
[32m+[m			[32mchildren = ([m
[32m+[m				[32m97C146EE1CF9000F007C117D /* Runner.app */,[m
[32m+[m			[32m);[m
[32m+[m			[32mname = Products;[m
[32m+[m			[32msourceTree = "<group>";[m
[32m+[m		[32m};[m
[32m+[m		[32m97C146F01CF9000F007C117D /* Runner */ = {[m
[32m+[m			[32misa = PBXGroup;[m
[32m+[m			[32mchildren = ([m
[32m+[m				[32m97C146FA1CF9000F007C117D /* Main.storyboard */,[m
[32m+[m				[32m97C146FD1CF9000F007C117D /* Assets.xcassets */,[m
[32m+[m				[32m97C146FF1CF9000F007C117D /* LaunchScreen.storyboard */,[m
[32m+[m				[32m97C147021CF9000F007C117D /* Info.plist */,[m
[32m+[m				[32m1498D2321E8E86230040F4C2 /* GeneratedPluginRegistrant.h */,[m
[32m+[m				[32m1498D2331E8E89220040F4C2 /* GeneratedPluginRegistrant.m */,[m
[32m+[m				[32m74858FAE1ED2DC5600515810 /* AppDelegate.swift */,[m
[32m+[m				[32m74858FAD1ED2DC5600515810 /* Runner-Bridging-Header.h */,[m
[32m+[m			[32m);[m
[32m+[m			[32mpath = Runner;[m
[32m+[m			[32msourceTree = "<group>";[m
[32m+[m		[32m};[m
[32m+[m[32m/* End PBXGroup section */[m
[32m+[m
[32m+[m[32m/* Begin PBXNativeTarget section */[m
[32m+[m		[32m97C146ED1CF9000F007C117D /* Runner */ = {[m
[32m+[m			[32misa = PBXNativeTarget;[m
[32m+[m			[32mbuildConfigurationList = 97C147051CF9000F007C117D /* Build configuration list for PBXNativeTarget "Runner" */;[m
[32m+[m			[32mbuildPhases = ([m
[32m+[m				[32m9740EEB61CF901F6004384FC /* Run Script */,[m
[32m+[m				[32m97C146EA1CF9000F007C117D /* Sources */,[m
[32m+[m				[32m97C146EB1CF9000F007C117D /* Frameworks */,[m
[32m+[m				[32m97C146EC1CF9000F007C117D /* Resources */,[m
[32m+[m				[32m9705A1C41CF9048500538489 /* Embed Frameworks */,[m
[32m+[m				[32m3B06AD1E1E4923F5004D2608 /* Thin Binary */,[m
[32m+[m			[32m);[m
[32m+[m			[32mbuildRules = ([m
[32m+[m			[32m);[m
[32m+[m			[32mdependencies = ([m
[32m+[m			[32m);[m
[32m+[m			[32mname = Runner;[m
[32m+[m			[32mproductName = Runner;[m
[32m+[m			[32mproductReference = 97C146EE1CF9000F007C117D /* Runner.app */;[m
[32m+[m			[32mproductType = "com.apple.product-type.application";[m
[32m+[m		[32m};[m
[32m+[m[32m/* End PBXNativeTarget section */[m
[32m+[m
[32m+[m[32m/* Begin PBXProject section */[m
[32m+[m		[32m97C146E61CF9000F007C117D /* Project object */ = {[m
[32m+[m			[32misa = PBXProject;[m
[32m+[m			[32mattributes = {[m
[32m+[m				[32mLastUpgradeCheck = 1020;[m
[32m+[m				[32mORGANIZATIONNAME = "";[m
[32m+[m				[32mTargetAttributes = {[m
[32m+[m					[32m97C146ED1CF9000F007C117D = {[m
[32m+[m						[32mCreatedOnToolsVersion = 7.3.1;[m
[32m+[m						[32mLastSwiftMigration = 1100;[m
[32m+[m					[32m};[m
[32m+[m				[32m};[m
[32m+[m			[32m};[m
[32m+[m			[32mbuildConfigurationList = 97C146E91CF9000F007C117D /* Build configuration list for PBXProject "Runner" */;[m
[32m+[m			[32mcompatibilityVersion = "Xcode 9.3";[m
[32m+[m			[32mdevelopmentRegion = en;[m
[32m+[m			[32mhasScannedForEncodings = 0;[m
[32m+[m			[32mknownRegions = ([m
[32m+[m				[32men,[m
[32m+[m				[32mBase,[m
[32m+[m			[32m);[m
[32m+[m			[32mmainGroup = 97C146E51CF9000F007C117D;[m
[32m+[m			[32mproductRefGroup = 97C146EF1CF9000F007C117D /* Products */;[m
[32m+[m			[32mprojectDirPath = "";[m
[32m+[m			[32mprojectRoot = "";[m
[32m+[m			[32mtargets = ([m
[32m+[m				[32m97C146ED1CF9000F007C117D /* Runner */,[m
[32m+[m			[32m);[m
[32m+[m		[32m};[m
[32m+[m[32m/* End PBXProject section */[m
[32m+[m
[32m+[m[32m/* Begin PBXResourcesBuildPhase section */[m
[32m+[m		[32m97C146EC1CF9000F007C117D /* Resources */ = {[m
[32m+[m			[32misa = PBXResourcesBuildPhase;[m
[32m+[m			[32mbuildActionMask = 2147483647;[m
[32m+[m			[32mfiles = ([m
[32m+[m				[32m97C147011CF9000F007C117D /* LaunchScreen.storyboard in Resources */,[m
[32m+[m				[32m3B3967161E833CAA004F5970 /* AppFrameworkInfo.plist in Resources */,[m
[32m+[m				[32m97C146FE1CF9000F007C117D /* Assets.xcassets in Resources */,[m
[32m+[m				[32m97C146FC1CF9000F007C117D /* Main.storyboard in Resources */,[m
[32m+[m			[32m);[m
[32m+[m			[32mrunOnlyForDeploymentPostprocessing = 0;[m
[32m+[m		[32m};[m
[32m+[m[32m/* End PBXResourcesBuildPhase section */[m
[32m+[m
[32m+[m[32m/* Begin PBXShellScriptBuildPhase section */[m
[32m+[m		[32m3B06AD1E1E4923F5004D2608 /* Thin Binary */ = {[m
[32m+[m			[32misa = PBXShellScriptBuildPhase;[m
[32m+[m			[32mbuildActionMask = 2147483647;[m
[32m+[m			[32mfiles = ([m
[32m+[m			[32m);[m
[32m+[m			[32minputPaths = ([m
[32m+[m			[32m);[m
[32m+[m			[32mname = "Thin Binary";[m
[32m+[m			[32moutputPaths = ([m
[32m+[m			[32m);[m
[32m+[m			[32mrunOnlyForDeploymentPostprocessing = 0;[m
[32m+[m			[32mshellPath = /bin/sh;[m
[32m+[m			[32mshellScript = "/bin/sh \"$FLUTTER_ROOT/packages/flutter_tools/bin/xcode_backend.sh\" embed_and_thin";[m
[32m+[m		[32m};[m
[32m+[m		[32m9740EEB61CF901F6004384FC /* Run Script */ = {[m
[32m+[m			[32misa = PBXShellScriptBuildPhase;[m
[32m+[m			[32mbuildActionMask = 2147483647;[m
[32m+[m			[32mfiles = ([m
[32m+[m			[32m);[m
[32m+[m			[32minputPaths = ([m
[32m+[m			[32m);[m
[32m+[m			[32mname = "Run Script";[m
[32m+[m			[32moutputPaths = ([m
[32m+[m			[32m);[m
[32m+[m			[32mrunOnlyForDeploymentPostprocessing = 0;[m
[32m+[m			[32mshellPath = /bin/sh;[m
[32m+[m			[32mshellScript = "/bin/sh \"$FLUTTER_ROOT/packages/flutter_tools/bin/xcode_backend.sh\" build";[m
[32m+[m		[32m};[m
[32m+[m[32m/* End PBXShellScriptBuildPhase section */[m
[32m+[m
[32m+[m[32m/* Begin PBXSourcesBuildPhase section */[m
[32m+[m		[32m97C146EA1CF9000F007C117D /* Sources */ = {[m
[32m+[m			[32misa = PBXSourcesBuildPhase;[m
[32m+[m			[32mbuildActionMask = 2147483647;[m
[32m+[m			[32mfiles = ([m
[32m+[m				[32m74858FAF1ED2DC5600515810 /* AppDelegate.swift in Sources */,[m
[32m+[m				[32m1498D2341E8E89220040F4C2 /* GeneratedPluginRegistrant.m in Sources */,[m
[32m+[m			[32m);[m
[32m+[m			[32mrunOnlyForDeploymentPostprocessing = 0;[m
[32m+[m		[32m};[m
[32m+[m[32m/* End PBXSourcesBuildPhase section */[m
[32m+[m
[32m+[m[32m/* Begin PBXVariantGroup section */[m
[32m+[m		[32m97C146FA1CF9000F007C117D /* Main.storyboard */ = {[m
[32m+[m			[32misa = PBXVariantGroup;[m
[32m+[m			[32mchildren = ([m
[32m+[m				[32m97C146FB1CF9000F007C117D /* Base */,[m
[32m+[m			[32m);[m
[32m+[m			[32mname = Main.storyboard;[m
[32m+[m			[32msourceTree = "<group>";[m
[32m+[m		[32m};[m
[32m+[m		[32m97C146FF1CF9000F007C117D /* LaunchScreen.storyboard */ = {[m
[32m+[m			[32misa = PBXVariantGroup;[m
[32m+[m			[32mchildren = ([m
[32m+[m				[32m97C147001CF9000F007C117D /* Base */,[m
[32m+[m			[32m);[m
[32m+[m			[32mname = LaunchScreen.storyboard;[m
[32m+[m			[32msourceTree = "<group>";[m
[32m+[m		[32m};[m
[32m+[m[32m/* End PBXVariantGroup section */[m
[32m+[m
[32m+[m[32m/* Begin XCBuildConfiguration section */[m
[32m+[m		[32m249021D3217E4FDB00AE95B9 /* Profile */ = {[m
[32m+[m			[32misa = XCBuildConfiguration;[m
[32m+[m			[32mbuildSettings = {[m
[32m+[m				[32mALWAYS_SEARCH_USER_PATHS = NO;[m
[32m+[m				[32mCLANG_ANALYZER_NONNULL = YES;[m
[32m+[m				[32mCLANG_CXX_LANGUAGE_STANDARD = "gnu++0x";[m
[32m+[m				[32mCLANG_CXX_LIBRARY = "libc++";[m
[32m+[m				[32mCLANG_ENABLE_MODULES = YES;[m
[32m+[m				[32mCLANG_ENABLE_OBJC_ARC = YES;[m
[32m+[m				[32mCLANG_WARN_BLOCK_CAPTURE_AUTORELEASING = YES;[m
[32m+[m				[32mCLANG_WARN_BOOL_CONVERSION = YES;[m
[32m+[m				[32mCLANG_WARN_COMMA = YES;[m
[32m+[m				[32mCLANG_WARN_CONSTANT_CONVERSION = YES;[m
[32m+[m				[32mCLANG_WARN_DEPRECATED_OBJC_IMPLEMENTATIONS = YES;[m
[32m+[m				[32mCLANG_WARN_DIRECT_OBJC_ISA_USAGE = YES_ERROR;[m
[32m+[m				[32mCLANG_WARN_EMPTY_BODY = YES;[m
[32m+[m				[32mCLANG_WARN_ENUM_CONVERSION = YES;[m
[32m+[m				[32mCLANG_WARN_INFINITE_RECURSION = YES;[m
[32m+[m				[32mCLANG_WARN_INT_CONVERSION = YES;[m
[32m+[m				[32mCLANG_WARN_NON_LITERAL_NULL_CONVERSION = YES;[m
[32m+[m				[32mCLANG_WARN_OBJC_IMPLICIT_RETAIN_SELF = YES;[m
[32m+[m				[32mCLANG_WARN_OBJC_LITERAL_CONVERSION = YES;[m
[32m+[m				[32mCLANG_WARN_OBJC_ROOT_CLASS = YES_ERROR;[m
[32m+[m				[32mCLANG_WARN_RANGE_LOOP_ANALYSIS = YES;[m
[32m+[m				[32mCLANG_WARN_STRICT_PROTOTYPES = YES;[m
[32m+[m				[32mCLANG_WARN_SUSPICIOUS_MOVE = YES;[m
[32m+[m				[32mCLANG_WARN_UNREACHABLE_CODE = YES;[m
[32m+[m				[32mCLANG_WARN__DUPLICATE_METHOD_MATCH = YES;[m
[32m+[m				[32m"CODE_SIGN_IDENTITY[sdk=iphoneos*]" = "iPhone Developer";[m
[32m+[m				[32mCOPY_PHASE_STRIP = NO;[m
[32m+[m				[32mDEBUG_INFORMATION_FORMAT = "dwarf-with-dsym";[m
[32m+[m				[32mENABLE_NS_ASSERTIONS = NO;[m
[32m+[m				[32mENABLE_STRICT_OBJC_MSGSEND = YES;[m
[32m+[m				[32mGCC_C_LANGUAGE_STANDARD = gnu99;[m
[32m+[m				[32mGCC_NO_COMMON_BLOCKS = YES;[m
[32m+[m				[32mGCC_WARN_64_TO_32_BIT_CONVERSION = YES;[m
[32m+[m				[32mGCC_WARN_ABOUT_RETURN_TYPE = YES_ERROR;[m
[32m+[m				[32mGCC_WARN_UNDECLARED_SELECTOR = YES;[m
[32m+[m				[32mGCC_WARN_UNINITIALIZED_AUTOS = YES_AGGRESSIVE;[m
[32m+[m				[32mGCC_WARN_UNUSED_FUNCTION = YES;[m
[32m+[m				[32mGCC_WARN_UNUSED_VARIABLE = YES;[m
[32m+[m				[32mIPHONEOS_DEPLOYMENT_TARGET = 9.0;[m
[32m+[m				[32mMTL_ENABLE_DEBUG_INFO = NO;[m
[32m+[m				[32mSDKROOT = iphoneos;[m
[32m+[m				[32mSUPPORTED_PLATFORMS = iphoneos;[m
[32m+[m				[32mTARGETED_DEVICE_FAMILY = "1,2";[m
[32m+[m				[32mVALIDATE_PRODUCT = YES;[m
[32m+[m			[32m};[m
[32m+[m			[32mname = Profile;[m
[32m+[m		[32m};[m
[32m+[m		[32m249021D4217E4FDB00AE95B9 /* Profile */ = {[m
[32m+[m			[32misa = XCBuildConfiguration;[m
[32m+[m			[32mbaseConfigurationReference = 7AFA3C8E1D35360C0083082E /* Release.xcconfig */;[m
[32m+[m			[32mbuildSettings = {[m
[32m+[m				[32mASSETCATALOG_COMPILER_APPICON_NAME = AppIcon;[m
[32m+[m				[32mCLANG_ENABLE_MODULES = YES;[m
[32m+[m				[32mCURRENT_PROJECT_VERSION = "$(FLUTTER_BUILD_NUMBER)";[m
[32m+[m				[32mENABLE_BITCODE = NO;[m
[32m+[m				[32mINFOPLIST_FILE = Runner/Info.plist;[m
[32m+[m				[32mLD_RUNPATH_SEARCH_PATHS = "$(inherited) @executable_path/Frameworks";[m
[32m+[m				[32mPRODUCT_BUNDLE_IDENTIFIER = com.example.imc2;[m
[32m+[m				[32mPRODUCT_NAME = "$(TARGET_NAME)";[m
[32m+[m				[32mSWIFT_OBJC_BRIDGING_HEADER = "Runner/Runner-Bridging-Header.h";[m
[32m+[m				[32mSWIFT_VERSION = 5.0;[m
[32m+[m				[32mVERSIONING_SYSTEM = "apple-generic";[m
[32m+[m			[32m};[m
[32m+[m			[32mname = Profile;[m
[32m+[m		[32m};[m
[32m+[m		[32m97C147031CF9000F007C117D /* Debug */ = {[m
[32m+[m			[32misa = XCBuildConfiguration;[m
[32m+[m			[32mbuildSettings = {[m
[32m+[m				[32mALWAYS_SEARCH_USER_PATHS = NO;[m
[32m+[m				[32mCLANG_ANALYZER_NONNULL = YES;[m
[32m+[m				[32mCLANG_CXX_LANGUAGE_STANDARD = "gnu++0x";[m
[32m+[m				[32mCLANG_CXX_LIBRARY = "libc++";[m
[32m+[m				[32mCLANG_ENABLE_MODULES = YES;[m
[32m+[m				[32mCLANG_ENABLE_OBJC_ARC = YES;[m
[32m+[m				[32mCLANG_WARN_BLOCK_CAPTURE_AUTORELEASING = YES;[m
[32m+[m				[32mCLANG_WARN_BOOL_CONVERSION = YES;[m
[32m+[m				[32mCLANG_WARN_COMMA = YES;[m
[32m+[m				[32mCLANG_WARN_CONSTANT_CONVERSION = YES;[m
[32m+[m				[32mCLANG_WARN_DEPRECATED_OBJC_IMPLEMENTATIONS = YES;[m
[32m+[m				[32mCLANG_WARN_DIRECT_OBJC_ISA_USAGE = YES_ERROR;[m
[32m+[m				[32mCLANG_WARN_EMPTY_BODY = YES;[m
[32m+[m				[32mCLANG_WARN_ENUM_CONVERSION = YES;[m
[32m+[m				[32mCLANG_WARN_INFINITE_RECURSION = YES;[m
[32m+[m				[32mCLANG_WARN_INT_CONVERSION = YES;[m
[32m+[m				[32mCLANG_WARN_NON_LITERAL_NULL_CONVERSION = YES;[m
[32m+[m				[32mCLANG_WARN_OBJC_IMPLICIT_RETAIN_SELF = YES;[m
[32m+[m				[32mCLANG_WARN_OBJC_LITERAL_CONVERSION = YES;[m
[32m+[m				[32mCLANG_WARN_OBJC_ROOT_CLASS = YES_ERROR;[m
[32m+[m				[32mCLANG_WARN_RANGE_LOOP_ANALYSIS = YES;[m
[32m+[m				[32mCLANG_WARN_STRICT_PROTOTYPES = YES;[m
[32m+[m				[32mCLANG_WARN_SUSPICIOUS_MOVE = YES;[m
[32m+[m				[32mCLANG_WARN_UNREACHABLE_CODE = YES;[m
[32m+[m				[32mCLANG_WARN__DUPLICATE_METHOD_MATCH = YES;[m
[32m+[m				[32m"CODE_SIGN_IDENTITY[sdk=iphoneos*]" = "iPhone Developer";[m
[32m+[m				[32mCOPY_PHASE_STRIP = NO;[m
[32m+[m				[32mDEBUG_INFORMATION_FORMAT = dwarf;[m
[32m+[m				[32mENABLE_STRICT_OBJC_MSGSEND = YES;[m
[32m+[m				[32mENABLE_TESTABILITY = YES;[m
[32m+[m				[32mGCC_C_LANGUAGE_STANDARD = gnu99;[m
[32m+[m				[32mGCC_DYNAMIC_NO_PIC = NO;[m
[32m+[m				[32mGCC_NO_COMMON_BLOCKS = YES;[m
[32m+[m				[32mGCC_OPTIMIZATION_LEVEL = 0;[m
[32m+[m				[32mGCC_PREPROCESSOR_DEFINITIONS = ([m
[32m+[m					[32m"DEBUG=1",[m
[32m+[m					[32m"$(inherited)",[m
[32m+[m				[32m);[m
[32m+[m				[32mGCC_WARN_64_TO_32_BIT_CONVERSION = YES;[m
[32m+[m				[32mGCC_WARN_ABOUT_RETURN_TYPE = YES_ERROR;[m
[32m+[m				[32mGCC_WARN_UNDECLARED_SELECTOR = YES;[m
[32m+[m				[32mGCC_WARN_UNINITIALIZED_AUTOS = YES_AGGRESSIVE;[m
[32m+[m				[32mGCC_WARN_UNUSED_FUNCTION = YES;[m
[32m+[m				[32mGCC_WARN_UNUSED_VARIABLE = YES;[m
[32m+[m				[32mIPHONEOS_DEPLOYMENT_TARGET = 9.0;[m
[32m+[m				[32mMTL_ENABLE_DEBUG_INFO = YES;[m
[32m+[m				[32mONLY_ACTIVE_ARCH = YES;[m
[32m+[m				[32mSDKROOT = iphoneos;[m
[32m+[m				[32mTARGETED_DEVICE_FAMILY = "1,2";[m
[32m+[m			[32m};[m
[32m+[m			[32mname = Debug;[m
[32m+[m		[32m};[m
[32m+[m		[32m97C147041CF9000F007C117D /* Release */ = {[m
[32m+[m			[32misa = XCBuildConfiguration;[m
[32m+[m			[32mbuildSettings = {[m
[32m+[m				[32mALWAYS_SEARCH_USER_PATHS = NO;[m
[32m+[m				[32mCLANG_ANALYZER_NONNULL = YES;[m
[32m+[m				[32mCLANG_CXX_LANGUAGE_STANDARD = "gnu++0x";[m
[32m+[m				[32mCLANG_CXX_LIBRARY = "libc++";[m
[32m+[m				[32mCLANG_ENABLE_MODULES = YES;[m
[32m+[m				[32mCLANG_ENABLE_OBJC_ARC = YES;[m
[32m+[m				[32mCLANG_WARN_BLOCK_CAPTURE_AUTORELEASING = YES;[m
[32m+[m				[32mCLANG_WARN_BOOL_CONVERSION = YES;[m
[32m+[m				[32mCLANG_WARN_COMMA = YES;[m
[32m+[m				[32mCLANG_WARN_CONSTANT_CONVERSION = YES;[m
[32m+[m				[32mCLANG_WARN_DEPRECATED_OBJC_IMPLEMENTATIONS = YES;[m
[32m+[m				[32mCLANG_WARN_DIRECT_OBJC_ISA_USAGE = YES_ERROR;[m
[32m+[m				[32mCLANG_WARN_EMPTY_BODY = YES;[m
[32m+[m				[32mCLANG_WARN_ENUM_CONVERSION = YES;[m
[32m+[m				[32mCLANG_WARN_INFINITE_RECURSION = YES;[m
[32m+[m				[32mCLANG_WARN_INT_CONVERSION = YES;[m
[32m+[m				[32mCLANG_WARN_NON_LITERAL_NULL_CONVERSION = YES;[m
[32m+[m				[32mCLANG_WARN_OBJC_IMPLICIT_RETAIN_SELF = YES;[m
[32m+[m				[32mCLANG_WARN_OBJC_LITERAL_CONVERSION = YES;[m
[32m+[m				[32mCLANG_WARN_OBJC_ROOT_CLASS = YES_ERROR;[m
[32m+[m				[32mCLANG_WARN_RANGE_LOOP_ANALYSIS = YES;[m
[32m+[m				[32mCLANG_WARN_STRICT_PROTOTYPES = YES;[m
[32m+[m				[32mCLANG_WARN_SUSPICIOUS_MOVE = YES;[m
[32m+[m				[32mCLANG_WARN_UNREACHABLE_CODE = YES;[m
[32m+[m				[32mCLANG_WARN__DUPLICATE_METHOD_MATCH = YES;[m
[32m+[m				[32m"CODE_SIGN_IDENTITY[sdk=iphoneos*]" = "iPhone Developer";[m
[32m+[m				[32mCOPY_PHASE_STRIP = NO;[m
[32m+[m				[32mDEBUG_INFORMATION_FORMAT = "dwarf-with-dsym";[m
[32m+[m				[32mENABLE_NS_ASSERTIONS = NO;[m
[32m+[m				[32mENABLE_STRICT_OBJC_MSGSEND = YES;[m
[32m+[m				[32mGCC_C_LANGUAGE_STANDARD = gnu99;[m
[32m+[m				[32mGCC_NO_COMMON_BLOCKS = YES;[m
[32m+[m				[32mGCC_WARN_64_TO_32_BIT_CONVERSION = YES;[m
[32m+[m				[32mGCC_WARN_ABOUT_RETURN_TYPE = YES_ERROR;[m
[32m+[m				[32mGCC_WARN_UNDECLARED_SELECTOR = YES;[m
[32m+[m				[32mGCC_WARN_UNINITIALIZED_AUTOS = YES_AGGRESSIVE;[m
[32m+[m				[32mGCC_WARN_UNUSED_FUNCTION = YES;[m
[32m+[m				[32mGCC_WARN_UNUSED_VARIABLE = YES;[m
[32m+[m				[32mIPHONEOS_DEPLOYMENT_TARGET = 9.0;[m
[32m+[m				[32mMTL_ENABLE_DEBUG_INFO = NO;[m
[32m+[m				[32mSDKROOT = iphoneos;[m
[32m+[m				[32mSUPPORTED_PLATFORMS = iphoneos;[m
[32m+[m				[32mSWIFT_OPTIMIZATION_LEVEL = "-Owholemodule";[m
[32m+[m				[32mTARGETED_DEVICE_FAMILY = "1,2";[m
[32m+[m				[32mVALIDATE_PRODUCT = YES;[m
[32m+[m			[32m};[m
[32m+[m			[32mname = Release;[m
[32m+[m		[32m};[m
[32m+[m		[32m97C147061CF9000F007C117D /* Debug */ = {[m
[32m+[m			[32misa = XCBuildConfiguration;[m
[32m+[m			[32mbaseConfigurationReference = 9740EEB21CF90195004384FC /* Debug.xcconfig */;[m
[32m+[m			[32mbuildSettings = {[m
[32m+[m				[32mASSETCATALOG_COMPILER_APPICON_NAME = AppIcon;[m
[32m+[m				[32mCLANG_ENABLE_MODULES = YES;[m
[32m+[m				[32mCURRENT_PROJECT_VERSION = "$(FLUTTER_BUILD_NUMBER)";[m
[32m+[m				[32mENABLE_BITCODE = NO;[m
[32m+[m				[32mINFOPLIST_FILE = Runner/Info.plist;[m
[32m+[m				[32mLD_RUNPATH_SEARCH_PATHS = "$(inherited) @executable_path/Frameworks";[m
[32m+[m				[32mPRODUCT_BUNDLE_IDENTIFIER = com.example.imc2;[m
[32m+[m				[32mPRODUCT_NAME = "$(TARGET_NAME)";[m
[32m+[m				[32mSWIFT_OBJC_BRIDGING_HEADER = "Runner/Runner-Bridging-Header.h";[m
[32m+[m				[32mSWIFT_OPTIMIZATION_LEVEL = "-Onone";[m
[32m+[m				[32mSWIFT_VERSION = 5.0;[m
[32m+[m				[32mVERSIONING_SYSTEM = "apple-generic";[m
[32m+[m			[32m};[m
[32m+[m			[32mname = Debug;[m
[32m+[m		[32m};[m
[32m+[m		[32m97C147071CF9000F007C117D /* Release */ = {[m
[32m+[m			[32misa = XCBuildConfiguration;[m
[32m+[m			[32mbaseConfigurationReference = 7AFA3C8E1D35360C0083082E /* Release.xcconfig */;[m
[32m+[m			[32mbuildSettings = {[m
[32m+[m				[32mASSETCATALOG_COMPILER_APPICON_NAME = AppIcon;[m
[32m+[m				[32mCLANG_ENABLE_MODULES = YES;[m
[32m+[m				[32mCURRENT_PROJECT_VERSION = "$(FLUTTER_BUILD_NUMBER)";[m
[32m+[m				[32mENABLE_BITCODE = NO;[m
[32m+[m				[32mINFOPLIST_FILE = Runner/Info.plist;[m
[32m+[m				[32mLD_RUNPATH_SEARCH_PATHS = "$(inherited) @executable_path/Frameworks";[m
[32m+[m				[32mPRODUCT_BUNDLE_IDENTIFIER = com.example.imc2;[m
[32m+[m				[32mPRODUCT_NAME = "$(TARGET_NAME)";[m
[32m+[m				[32mSWIFT_OBJC_BRIDGING_HEADER = "Runner/Runner-Bridging-Header.h";[m
[32m+[m				[32mSWIFT_VERSION = 5.0;[m
[32m+[m				[32mVERSIONING_SYSTEM = "apple-generic";[m
[32m+[m			[32m};[m
[32m+[m			[32mname = Release;[m
[32m+[m		[32m};[m
[32m+[m[32m/* End XCBuildConfiguration section */[m
[32m+[m
[32m+[m[32m/* Begin XCConfigurationList section */[m
[32m+[m		[32m97C146E91CF9000F007C117D /* Build configuration list for PBXProject "Runner" */ = {[m
[32m+[m			[32misa = XCConfigurationList;[m
[32m+[m			[32mbuildConfigurations = ([m
[32m+[m				[32m97C147031CF9000F007C117D /* Debug */,[m
[32m+[m				[32m97C147041CF9000F007C117D /* Release */,[m
[32m+[m				[32m249021D3217E4FDB00AE95B9 /* Profile */,[m
[32m+[m			[32m);[m
[32m+[m			[32mdefaultConfigurationIsVisible = 0;[m
[32m+[m			[32mdefaultConfigurationName = Release;[m
[32m+[m		[32m};[m
[32m+[m		[32m97C147051CF9000F007C117D /* Build configuration list for PBXNativeTarget "Runner" */ = {[m
[32m+[m			[32misa = XCConfigurationList;[m
[32m+[m			[32mbuildConfigurations = ([m
[32m+[m				[32m97C147061CF9000F007C117D /* Debug */,[m
[32m+[m				[32m97C147071CF9000F007C117D /* Release */,[m
[32m+[m				[32m249021D4217E4FDB00AE95B9 /* Profile */,[m
[32m+[m			[32m);[m
[32m+[m			[32mdefaultConfigurationIsVisible = 0;[m
[32m+[m			[32mdefaultConfigurationName = Release;[m
[32m+[m		[32m};[m
[32m+[m[32m/* End XCConfigurationList section */[m
[32m+[m	[32m};[m
[32m+[m	[32mrootObject = 97C146E61CF9000F007C117D /* Project object */;[m
[32m+[m[32m}[m
[1mdiff --git a/imc2/ios/Runner.xcodeproj/project.xcworkspace/contents.xcworkspacedata b/imc2/ios/Runner.xcodeproj/project.xcworkspace/contents.xcworkspacedata[m
[1mnew file mode 100644[m
[1mindex 0000000..919434a[m
[1m--- /dev/null[m
[1m+++ b/imc2/ios/Runner.xcodeproj/project.xcworkspace/contents.xcworkspacedata[m
[36m@@ -0,0 +1,7 @@[m
[32m+[m[32m<?xml version="1.0" encoding="UTF-8"?>[m
[32m+[m[32m<Workspace[m
[32m+[m[32m   version = "1.0">[m
[32m+[m[32m   <FileRef[m
[32m+[m[32m      location = "self:">[m
[32m+[m[32m   </FileRef>[m
[32m+[m[32m</Workspace>[m
[1mdiff --git a/imc2/ios/Runner.xcodeproj/project.xcworkspace/xcshareddata/IDEWorkspaceChecks.plist b/imc2/ios/Runner.xcodeproj/project.xcworkspace/xcshareddata/IDEWorkspaceChecks.plist[m
[1mnew file mode 100644[m
[1mindex 0000000..18d9810[m
[1m--- /dev/null[m
[1m+++ b/imc2/ios/Runner.xcodeproj/project.xcworkspace/xcshareddata/IDEWorkspaceChecks.plist[m
[36m@@ -0,0 +1,8 @@[m
[32m+[m[32m<?xml version="1.0" encoding="UTF-8"?>[m
[32m+[m[32m<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">[m
[32m+[m[32m<plist version="1.0">[m
[32m+[m[32m<dict>[m
[32m+[m	[32m<key>IDEDidComputeMac32BitWarning</key>[m
[32m+[m	[32m<true/>[m
[32m+[m[32m</dict>[m
[32m+[m[32m</plist>[m
[1mdiff --git a/imc2/ios/Runner.xcodeproj/project.xcworkspace/xcshareddata/WorkspaceSettings.xcsettings b/imc2/ios/Runner.xcodeproj/project.xcworkspace/xcshareddata/WorkspaceSettings.xcsettings[m
[1mnew file mode 100644[m
[1mindex 0000000..f9b0d7c[m
[1m--- /dev/null[m
[1m+++ b/imc2/ios/Runner.xcodeproj/project.xcworkspace/xcshareddata/WorkspaceSettings.xcsettings[m
[36m@@ -0,0 +1,8 @@[m
[32m+[m[32m<?xml version="1.0" encoding="UTF-8"?>[m
[32m+[m[32m<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">[m
[32m+[m[32m<plist version="1.0">[m
[32m+[m[32m<dict>[m
[32m+[m	[32m<key>PreviewsEnabled</key>[m
[32m+[m	[32m<false/>[m
[32m+[m[32m</dict>[m
[32m+[m[32m</plist>[m
[1mdiff --git a/imc2/ios/Runner.xcodeproj/xcshareddata/xcschemes/Runner.xcscheme b/imc2/ios/Runner.xcodeproj/xcshareddata/xcschemes/Runner.xcscheme[m
[1mnew file mode 100644[m
[1mindex 0000000..a28140c[m
[1m--- /dev/null[m
[1m+++ b/imc2/ios/Runner.xcodeproj/xcshareddata/xcschemes/Runner.xcscheme[m
[36m@@ -0,0 +1,91 @@[m
[32m+[m[32m<?xml version="1.0" encoding="UTF-8"?>[m
[32m+[m[32m<Scheme[m
[32m+[m[32m   LastUpgradeVersion = "1020"[m
[32m+[m[32m   version = "1.3">[m
[32m+[m[32m   <BuildAction[m
[32m+[m[32m      parallelizeBuildables = "YES"[m
[32m+[m[32m      buildImplicitDependencies = "YES">[m
[32m+[m[32m      <BuildActionEntries>[m
[32m+[m[32m         <BuildActionEntry[m
[32m+[m[32m            buildForTesting = "YES"[m
[32m+[m[32m            buildForRunning = "YES"[m
[32m+[m[32m            buildForProfiling = "YES"[m
[32m+[m[32m            buildForArchiving = "YES"[m
[32m+[m[32m            buildForAnalyzing = "YES">[m
[32m+[m[32m            <BuildableReference[m
[32m+[m[32m               BuildableIdentifier = "primary"[m
[32m+[m[32m               BlueprintIdentifier = "97C146ED1CF9000F007C117D"[m
[32m+[m[32m               BuildableName = "Runner.app"[m
[32m+[m[32m               BlueprintName = "Runner"[m
[32m+[m[32m               ReferencedContainer = "container:Runner.xcodeproj">[m
[32m+[m[32m            </BuildableReference>[m
[32m+[m[32m         </BuildActionEntry>[m
[32m+[m[32m      </BuildActionEntries>[m
[32m+[m[32m   </BuildAction>[m
[32m+[m[32m   <TestAction[m
[32m+[m[32m      buildConfiguration = "Debug"[m
[32m+[m[32m      selectedDebuggerIdentifier = "Xcode.DebuggerFoundation.Debugger.LLDB"[m
[32m+[m[32m      selectedLauncherIdentifier = "Xcode.DebuggerFoundation.Launcher.LLDB"[m
[32m+[m[32m      shouldUseLaunchSchemeArgsEnv = "YES">[m
[32m+[m[32m      <Testables>[m
[32m+[m[32m      </Testables>[m
[32m+[m[32m      <MacroExpansion>[m
[32m+[m[32m         <BuildableReference[m
[32m+[m[32m            BuildableIdentifier = "primary"[m
[32m+[m[32m            BlueprintIdentifier = "97C146ED1CF9000F007C117D"[m
[32m+[m[32m            BuildableName = "Runner.app"[m
[32m+[m[32m            BlueprintName = "Runner"[m
[32m+[m[32m            ReferencedContainer = "container:Runner.xcodeproj">[m
[32m+[m[32m         </BuildableReference>[m
[32m+[m[32m      </MacroExpansion>[m
[32m+[m[32m      <AdditionalOptions>[m
[32m+[m[32m      </AdditionalOptions>[m
[32m+[m[32m   </TestAction>[m
[32m+[m[32m   <LaunchAction[m
[32m+[m[32m      buildConfiguration = "Debug"[m
[32m+[m[32m      selectedDebuggerIdentifier = "Xcode.DebuggerFoundation.Debugger.LLDB"[m
[32m+[m[32m      selectedLauncherIdentifier = "Xcode.DebuggerFoundation.Launcher.LLDB"[m
[32m+[m[32m      launchStyle = "0"[m
[32m+[m[32m      useCustomWorkingDirectory = "NO"[m
[32m+[m[32m      ignoresPersistentStateOnLaunch = "NO"[m
[32m+[m[32m      debugDocumentVersioning = "YES"[m
[32m+[m[32m      debugServiceExtension = "internal"[m
[32m+[m[32m      allowLocationSimulation = "YES">[m
[32m+[m[32m      <BuildableProductRunnable[m
[32m+[m[32m         runnableDebuggingMode = "0">[m
[32m+[m[32m         <BuildableReference[m
[32m+[m[32m            BuildableIdentifier = "primary"[m
[32m+[m[32m            BlueprintIdentifier = "97C146ED1CF9000F007C117D"[m
[32m+[m[32m            BuildableName = "Runner.app"[m
[32m+[m[32m            BlueprintName = "Runner"[m
[32m+[m[32m            ReferencedContainer = "container:Runner.xcodeproj">[m
[32m+[m[32m         </BuildableReference>[m
[32m+[m[32m      </BuildableProductRunnable>[m
[32m+[m[32m      <AdditionalOptions>[m
[32m+[m[32m      </AdditionalOptions>[m
[32m+[m[32m   </LaunchAction>[m
[32m+[m[32m   <ProfileAction[m
[32m+[m[32m      buildConfiguration = "Profile"[m
[32m+[m[32m      shouldUseLaunchSchemeArgsEnv = "YES"[m
[32m+[m[32m      savedToolIdentifier = ""[m
[32m+[m[32m      useCustomWorkingDirectory = "NO"[m
[32m+[m[32m      debugDocumentVersioning = "YES">[m
[32m+[m[32m      <BuildableProductRunnable[m
[32m+[m[32m         runnableDebuggingMode = "0">[m
[32m+[m[32m         <BuildableReference[m
[32m+[m[32m            BuildableIdentifier = "primary"[m
[32m+[m[32m            BlueprintIdentifier = "97C146ED1CF9000F007C117D"[m
[32m+[m[32m            BuildableName = "Runner.app"[m
[32m+[m[32m            BlueprintName = "Runner"[m
[32m+[m[32m            ReferencedContainer = "container:Runner.xcodeproj">[m
[32m+[m[32m         </BuildableReference>[m
[32m+[m[32m      </BuildableProductRunnable>[m
[32m+[m[32m   </ProfileAction>[m
[32m+[m[32m   <AnalyzeAction[m
[32m+[m[32m      buildConfiguration = "Debug">[m
[32m+[m[32m   </AnalyzeAction>[m
[32m+[m[32m   <ArchiveAction[m
[32m+[m[32m      buildConfiguration = "Release"[m
[32m+[m[32m      revealArchiveInOrganizer = "YES">[m
[32m+[m[32m   </ArchiveAction>[m
[32m+[m[32m</Scheme>[m
[1mdiff --git a/imc2/ios/Runner.xcworkspace/contents.xcworkspacedata b/imc2/ios/Runner.xcworkspace/contents.xcworkspacedata[m
[1mnew file mode 100644[m
[1mindex 0000000..1d526a1[m
[1m--- /dev/null[m
[1m+++ b/imc2/ios/Runner.xcworkspace/contents.xcworkspacedata[m
[36m@@ -0,0 +1,7 @@[m
[32m+[m[32m<?xml version="1.0" encoding="UTF-8"?>[m
[32m+[m[32m<Workspace[m
[32m+[m[32m   version = "1.0">[m
[32m+[m[32m   <FileRef[m
[32m+[m[32m      location = "group:Runner.xcodeproj">[m
[32m+[m[32m   </FileRef>[m
[32m+[m[32m</Workspace>[m
[1mdiff --git a/imc2/ios/Runner.xcworkspace/xcshareddata/IDEWorkspaceChecks.plist b/imc2/ios/Runner.xcworkspace/xcshareddata/IDEWorkspaceChecks.plist[m
[1mnew file mode 100644[m
[1mindex 0000000..18d9810[m
[1m--- /dev/null[m
[1m+++ b/imc2/ios/Runner.xcworkspace/xcshareddata/IDEWorkspaceChecks.plist[m
[36m@@ -0,0 +1,8 @@[m
[32m+[m[32m<?xml version="1.0" encoding="UTF-8"?>[m
[32m+[m[32m<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">[m
[32m+[m[32m<plist version="1.0">[m
[32m+[m[32m<dict>[m
[32m+[m	[32m<key>IDEDidComputeMac32BitWarning</key>[m
[32m+[m	[32m<true/>[m
[32m+[m[32m</dict>[m
[32m+[m[32m</plist>[m
[1mdiff --git a/imc2/ios/Runner.xcworkspace/xcshareddata/WorkspaceSettings.xcsettings b/imc2/ios/Runner.xcworkspace/xcshareddata/WorkspaceSettings.xcsettings[m
[1mnew file mode 100644[m
[1mindex 0000000..f9b0d7c[m
[1m--- /dev/null[m
[1m+++ b/imc2/ios/Runner.xcworkspace/xcshareddata/WorkspaceSettings.xcsettings[m
[36m@@ -0,0 +1,8 @@[m
[32m+[m[32m<?xml version="1.0" encoding="UTF-8"?>[m
[32m+[m[32m<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">[m
[32m+[m[32m<plist version="1.0">[m
[32m+[m[32m<dict>[m
[32m+[m	[32m<key>PreviewsEnabled</key>[m
[32m+[m	[32m<false/>[m
[32m+[m[32m</dict>[m
[32m+[m[32m</plist>[m
[1mdiff --git a/imc2/ios/Runner/AppDelegate.swift b/imc2/ios/Runner/AppDelegate.swift[m
[1mnew file mode 100644[m
[1mindex 0000000..70693e4[m
[1m--- /dev/null[m
[1m+++ b/imc2/ios/Runner/AppDelegate.swift[m
[36m@@ -0,0 +1,13 @@[m
[32m+[m[32mimport UIKit[m
[32m+[m[32mimport Flutter[m
[32m+[m
[32m+[m[32m@UIApplicationMain[m
[32m+[m[32m@objc class AppDelegate: FlutterAppDelegate {[m
[32m+[m[32m  override func application([m
[32m+[m[32m    _ application: UIApplication,[m
[32m+[m[32m    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?[m
[32m+[m[32m  ) -> Bool {[m
[32m+[m[32m    GeneratedPluginRegistrant.register(with: self)[m
[32m+[m[32m    return super.application(application, didFinishLaunchingWithOptions: launchOptions)[m
[32m+[m[32m  }[m
[32m+[m[32m}[m
[1mdiff --git a/imc2/ios/Runner/Assets.xcassets/AppIcon.appiconset/Contents.json b/imc2/ios/Runner/Assets.xcassets/AppIcon.appiconset/Contents.json[m
[1mnew file mode 100644[m
[1mindex 0000000..d36b1fa[m
[1m--- /dev/null[m
[1m+++ b/imc2/ios/Runner/Assets.xcassets/AppIcon.appiconset/Contents.json[m
[36m@@ -0,0 +1,122 @@[m
[32m+[m[32m{[m
[32m+[m[32m  "images" : [[m
[32m+[m[32m    {[m
[32m+[m[32m      "size" : "20x20",[m
[32m+[m[32m      "idiom" : "iphone",[m
[32m+[m[32m      "filename" : "Icon-App-20x20@2x.png",[m
[32m+[m[32m      "scale" : "2x"[m
[32m+[m[32m    },[m
[32m+[m[32m    {[m
[32m+[m[32m      "size" : "20x20",[m
[32m+[m[32m      "idiom" : "iphone",[m
[32m+[m[32m      "filename" : "Icon-App-20x20@3x.png",[m
[32m+[m[32m      "scale" : "3x"[m
[32m+[m[32m    },[m
[32m+[m[32m    {[m
[32m+[m[32m      "size" : "29x29",[m
[32m+[m[32m      "idiom" : "iphone",[m
[32m+[m[32m      "filename" : "Icon-App-29x29@1x.png",[m
[32m+[m[32m      "scale" : "1x"[m
[32m+[m[32m    },[m
[32m+[m[32m    {[m
[32m+[m[32m      "size" : "29x29",[m
[32m+[m[32m      "idiom" : "iphone",[m
[32m+[m[32m      "filename" : "Icon-App-29x29@2x.png",[m
[32m+[m[32m      "scale" : "2x"[m
[32m+[m[32m    },[m
[32m+[m[32m    {[m
[32m+[m[32m      "size" : "29x29",[m
[32m+[m[32m      "idiom" : "iphone",[m
[32m+[m[32m      "filename" : "Icon-App-29x29@3x.png",[m
[32m+[m[32m      "scale" : "3x"[m
[32m+[m[32m    },[m
[32m+[m[32m    {[m
[32m+[m[32m      "size" : "40x40",[m
[32m+[m[32m      "idiom" : "iphone",[m
[32m+[m[32m      "filename" : "Icon-App-40x40@2x.png",[m
[32m+[m[32m      "scale" : "2x"[m
[32m+[m[32m    },[m
[32m+[m[32m    {[m
[32m+[m[32m      "size" : "40x40",[m
[32m+[m[32m      "idiom" : "iphone",[m
[32m+[m[32m      "filename" : "Icon-App-40x40@3x.png",[m
[32m+[m[32m      "scale" : "3x"[m
[32m+[m[32m    },[m
[32m+[m[32m    {[m
[32m+[m[32m      "size" : "60x60",[m
[32m+[m[32m      "idiom" : "iphone",[m
[32m+[m[32m      "filename" : "Icon-App-60x60@2x.png",[m
[32m+[m[32m      "scale" : "2x"[m
[32m+[m[32m    },[m
[32m+[m[32m    {[m
[32m+[m[32m      "size" : "60x60",[m
[32m+[m[32m      "idiom" : "iphone",[m
[32m+[m[32m      "filename" : "Icon-App-60x60@3x.png",[m
[32m+[m[32m      "scale" : "3x"[m
[32m+[m[32m    },[m
[32m+[m[32m    {[m
[32m+[m[32m      "size" : "20x20",[m
[32m+[m[32m      "idiom" : "ipad",[m
[32m+[m[32m      "filename" : "Icon-App-20x20@1x.png",[m
[32m+[m[32m      "scale" : "1x"[m
[32m+[m[32m    },[m
[32m+[m[32m    {[m
[32m+[m[32m      "size" : "20x20",[m
[32m+[m[32m      "idiom" : "ipad",[m
[32m+[m[32m      "filename" : "Icon-App-20x20@2x.png",[m
[32m+[m[32m      "scale" : "2x"[m
[32m+[m[32m    },[m
[32m+[m[32m    {[m
[32m+[m[32m      "size" : "29x29",[m
[32m+[m[32m      "idiom" : "ipad",[m
[32m+[m[32m      "filename" : "Icon-App-29x29@1x.png",[m
[32m+[m[32m      "scale" : "1x"[m
[32m+[m[32m    },[m
[32m+[m[32m    {[m
[32m+[m[32m      "size" : "29x29",[m
[32m+[m[32m      "idiom" : "ipad",[m
[32m+[m[32m      "filename" : "Icon-App-29x29@2x.png",[m
[32m+[m[32m      "scale" : "2x"[m
[32m+[m[32m    },[m
[32m+[m[32m    {[m
[32m+[m[32m      "size" : "40x40",[m
[32m+[m[32m      "idiom" : "ipad",[m
[32m+[m[32m      "filename" : "Icon-App-40x40@1x.png",[m
[32m+[m[32m      "scale" : "1x"[m
[32m+[m[32m    },[m
[32m+[m[32m    {[m
[32m+[m[32m      "size" : "40x40",[m
[32m+[m[32m      "idiom" : "ipad",[m
[32m+[m[32m      "filename" : "Icon-App-40x40@2x.png",[m
[32m+[m[32m      "scale" : "2x"[m
[32m+[m[32m    },[m
[32m+[m[32m    {[m
[32m+[m[32m      "size" : "76x76",[m
[32m+[m[32m      "idiom" : "ipad",[m
[32m+[m[32m      "filename" : "Icon-App-76x76@1x.png",[m
[32m+[m[32m      "scale" : "1x"[m
[32m+[m[32m    },[m
[32m+[m[32m    {[m
[32m+[m[32m      "size" : "76x76",[m
[32m+[m[32m      "idiom" : "ipad",[m
[32m+[m[32m      "filename" : "Icon-App-76x76@2x.png",[m
[32m+[m[32m      "scale" : "2x"[m
[32m+[m[32m    },[m
[32m+[m[32m    {[m
[32m+[m[32m      "size" : "83.5x83.5",[m
[32m+[m[32m      "idiom" : "ipad",[m
[32m+[m[32m      "filename" : "Icon-App-83.5x83.5@2x.png",[m
[32m+[m[32m      "scale" : "2x"[m
[32m+[m[32m    },[m
[32m+[m[32m    {[m
[32m+[m[32m      "size" : "1024x1024",[m
[32m+[m[32m      "idiom" : "ios-marketing",[m
[32m+[m[32m      "filename" : "Icon-App-1024x1024@1x.png",[m
[32m+[m[32m      "scale" : "1x"[m
[32m+[m[32m    }[m
[32m+[m[32m  ],[m
[32m+[m[32m  "info" : {[m
[32m+[m[32m    "version" : 1,[m
[32m+[m[32m    "author" : "xcode"[m
[32m+[m[32m  }[m
[32m+[m[32m}[m
[1mdiff --git a/imc2/ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-1024x1024@1x.png b/imc2/ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-1024x1024@1x.png[m
[1mnew file mode 100644[m
[1mindex 0000000..dc9ada4[m
Binary files /dev/null and b/imc2/ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-1024x1024@1x.png differ
[1mdiff --git a/imc2/ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-20x20@1x.png b/imc2/ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-20x20@1x.png[m
[1mnew file mode 100644[m
[1mindex 0000000..28c6bf0[m
Binary files /dev/null and b/imc2/ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-20x20@1x.png differ
[1mdiff --git a/imc2/ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-20x20@2x.png b/imc2/ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-20x20@2x.png[m
[1mnew file mode 100644[m
[1mindex 0000000..2ccbfd9[m
Binary files /dev/null and b/imc2/ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-20x20@2x.png differ
[1mdiff --git a/imc2/ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-20x20@3x.png b/imc2/ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-20x20@3x.png[m
[1mnew file mode 100644[m
[1mindex 0000000..f091b6b[m
Binary files /dev/null and b/imc2/ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-20x20@3x.png differ
[1mdiff --git a/imc2/ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-29x29@1x.png b/imc2/ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-29x29@1x.png[m
[1mnew file mode 100644[m
[1mindex 0000000..4cde121[m
Binary files /dev/null and b/imc2/ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-29x29@1x.png differ
[1mdiff --git a/imc2/ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-29x29@2x.png b/imc2/ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-29x29@2x.png[m
[1mnew file mode 100644[m
[1mindex 0000000..d0ef06e[m
Binary files /dev/null and b/imc2/ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-29x29@2x.png differ
[1mdiff --git a/imc2/ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-29x29@3x.png b/imc2/ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-29x29@3x.png[m
[1mnew file mode 100644[m
[1mindex 0000000..dcdc230[m
Binary files /dev/null and b/imc2/ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-29x29@3x.png differ
[1mdiff --git a/imc2/ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-40x40@1x.png b/imc2/ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-40x40@1x.png[m
[1mnew file mode 100644[m
[1mindex 0000000..2ccbfd9[m
Binary files /dev/null and b/imc2/ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-40x40@1x.png differ
[1mdiff --git a/imc2/ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-40x40@2x.png b/imc2/ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-40x40@2x.png[m
[1mnew file mode 100644[m
[1mindex 0000000..c8f9ed8[m
Binary files /dev/null and b/imc2/ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-40x40@2x.png differ
[1mdiff --git a/imc2/ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-40x40@3x.png b/imc2/ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-40x40@3x.png[m
[1mnew file mode 100644[m
[1mindex 0000000..a6d6b86[m
Binary files /dev/null and b/imc2/ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-40x40@3x.png differ
[1mdiff --git a/imc2/ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-60x60@2x.png b/imc2/ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-60x60@2x.png[m
[1mnew file mode 100644[m
[1mindex 0000000..a6d6b86[m
Binary files /dev/null and b/imc2/ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-60x60@2x.png differ
[1mdiff --git a/imc2/ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-60x60@3x.png b/imc2/ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-60x60@3x.png[m
[1mnew file mode 100644[m
[1mindex 0000000..75b2d16[m
Binary files /dev/null and b/imc2/ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-60x60@3x.png differ
[1mdiff --git a/imc2/ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-76x76@1x.png b/imc2/ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-76x76@1x.png[m
[1mnew file mode 100644[m
[1mindex 0000000..c4df70d[m
Binary files /dev/null and b/imc2/ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-76x76@1x.png differ
[1mdiff --git a/imc2/ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-76x76@2x.png b/imc2/ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-76x76@2x.png[m
[1mnew file mode 100644[m
[1mindex 0000000..6a84f41[m
Binary files /dev/null and b/imc2/ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-76x76@2x.png differ
[1mdiff --git a/imc2/ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-83.5x83.5@2x.png b/imc2/ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-83.5x83.5@2x.png[m
[1mnew file mode 100644[m
[1mindex 0000000..d0e1f58[m
Binary files /dev/null and b/imc2/ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-83.5x83.5@2x.png differ
[1mdiff --git a/imc2/ios/Runner/Assets.xcassets/LaunchImage.imageset/Contents.json b/imc2/ios/Runner/Assets.xcassets/LaunchImage.imageset/Contents.json[m
[1mnew file mode 100644[m
[1mindex 0000000..0bedcf2[m
[1m--- /dev/null[m
[1m+++ b/imc2/ios/Runner/Assets.xcassets/LaunchImage.imageset/Contents.json[m
[36m@@ -0,0 +1,23 @@[m
[32m+[m[32m{[m
[32m+[m[32m  "images" : [[m
[32m+[m[32m    {[m
[32m+[m[32m      "idiom" : "universal",[m
[32m+[m[32m      "filename" : "LaunchImage.png",[m
[32m+[m[32m      "scale" : "1x"[m
[32m+[m[32m    },[m
[32m+[m[32m    {[m
[32m+[m[32m      "idiom" : "universal",[m
[32m+[m[32m      "filename" : "LaunchImage@2x.png",[m
[32m+[m[32m      "scale" : "2x"[m
[32m+[m[32m    },[m
[32m+[m[32m    {[m
[32m+[m[32m      "idiom" : "universal",[m
[32m+[m[32m      "filename" : "LaunchImage@3x.png",[m
[32m+[m[32m      "scale" : "3x"[m
[32m+[m[32m    }[m
[32m+[m[32m  ],[m
[32m+[m[32m  "info" : {[m
[32m+[m[32m    "version" : 1,[m
[32m+[m[32m    "author" : "xcode"[m
[32m+[m[32m  }[m
[32m+[m[32m}[m
[1mdiff --git a/imc2/ios/Runner/Assets.xcassets/LaunchImage.imageset/LaunchImage.png b/imc2/ios/Runner/Assets.xcassets/LaunchImage.imageset/LaunchImage.png[m
[1mnew file mode 100644[m
[1mindex 0000000..9da19ea[m
Binary files /dev/null and b/imc2/ios/Runner/Assets.xcassets/LaunchImage.imageset/LaunchImage.png differ
[1mdiff --git a/imc2/ios/Runner/Assets.xcassets/LaunchImage.imageset/LaunchImage@2x.png b/imc2/ios/Runner/Assets.xcassets/LaunchImage.imageset/LaunchImage@2x.png[m
[1mnew file mode 100644[m
[1mindex 0000000..9da19ea[m
Binary files /dev/null and b/imc2/ios/Runner/Assets.xcassets/LaunchImage.imageset/LaunchImage@2x.png differ
[1mdiff --git a/imc2/ios/Runner/Assets.xcassets/LaunchImage.imageset/LaunchImage@3x.png b/imc2/ios/Runner/Assets.xcassets/LaunchImage.imageset/LaunchImage@3x.png[m
[1mnew file mode 100644[m
[1mindex 0000000..9da19ea[m
Binary files /dev/null and b/imc2/ios/Runner/Assets.xcassets/LaunchImage.imageset/LaunchImage@3x.png differ
[1mdiff --git a/imc2/ios/Runner/Assets.xcassets/LaunchImage.imageset/README.md b/imc2/ios/Runner/Assets.xcassets/LaunchImage.imageset/README.md[m
[1mnew file mode 100644[m
[1mindex 0000000..89c2725[m
[1m--- /dev/null[m
[1m+++ b/imc2/ios/Runner/Assets.xcassets/LaunchImage.imageset/README.md[m
[36m@@ -0,0 +1,5 @@[m
[32m+[m[32m# Launch Screen Assets[m
[32m+[m
[32m+[m[32mYou can customize the launch screen with your own desired assets by replacing the image files in this directory.[m
[32m+[m
[32m+[m[32mYou can also do it by opening your Flutter project's Xcode project with `open ios/Runner.xcworkspace`, selecting `Runner/Assets.xcassets` in the Project Navigator and dropping in the desired images.[m
\ No newline at end of file[m
[1mdiff --git a/imc2/ios/Runner/Base.lproj/LaunchScreen.storyboard b/imc2/ios/Runner/Base.lproj/LaunchScreen.storyboard[m
[1mnew file mode 100644[m
[1mindex 0000000..f2e259c[m
[1m--- /dev/null[m
[1m+++ b/imc2/ios/Runner/Base.lproj/LaunchScreen.storyboard[m
[36m@@ -0,0 +1,37 @@[m
[32m+[m[32m<?xml version="1.0" encoding="UTF-8" standalone="no"?>[m
[32m+[m[32m<document type="com.apple.InterfaceBuilder3.CocoaTouch.Storyboard.XIB" version="3.0" toolsVersion="12121" systemVersion="16G29" targetRuntime="iOS.CocoaTouch" propertyAccessControl="none" useAutolayout="YES" launchScreen="YES" colorMatched="YES" initialViewController="01J-lp-oVM">[m
[32m+[m[32m    <dependencies>[m
[32m+[m[32m        <deployment identifier="iOS"/>[m
[32m+[m[32m        <plugIn identifier="com.apple.InterfaceBuilder.IBCocoaTouchPlugin" version="12089"/>[m
[32m+[m[32m    </dependencies>[m
[32m+[m[32m    <scenes>[m
[32m+[m[32m        <!--View Controller-->[m
[32m+[m[32m        <scene sceneID="EHf-IW-A2E">[m
[32m+[m[32m            <objects>[m
[32m+[m[32m                <viewController id="01J-lp-oVM" sceneMemberID="viewController">[m
[32m+[m[32m                    <layoutGuides>[m
[32m+[m[32m                        <viewControllerLayoutGuide type="top" id="Ydg-fD-yQy"/>[m
[32m+[m[32m                        <viewControllerLayoutGuide type="bottom" id="xbc-2k-c8Z"/>[m
[32m+[m[32m                    </layoutGuides>[m
[32m+[m[32m                    <view key="view" contentMode="scaleToFill" id="Ze5-6b-2t3">[m
[32m+[m[32m                        <autoresizingMask key="autoresizingMask" widthSizable="YES" heightSizable="YES"/>[m
[32m+[m[32m                        <subviews>[m
[32m+[m[32m                            <imageView opaque="NO" clipsSubviews="YES" multipleTouchEnabled="YES" contentMode="center" image="LaunchImage" translatesAutoresizingMaskIntoConstraints="NO" id="YRO-k0-Ey4">[m
[32m+[m[32m                            </imageView>[m
[32m+[m[32m                        </subviews>[m
[32m+[m[32m                        <color key="backgroundColor" red="1" green="1" blue="1" alpha="1" colorSpace="custom" customColorSpace="sRGB"/>[m
[32m+[m[32m                        <constraints>[m
[32m+[m[32m                            <constraint firstItem="YRO-k0-Ey4" firstAttribute="centerX" secondItem="Ze5-6b-2t3" secondAttribute="centerX" id="1a2-6s-vTC"/>[m
[32m+[m[32m                            <constraint firstItem="YRO-k0-Ey4" firstAttribute="centerY" secondItem="Ze5-6b-2t3" secondAttribute="centerY" id="4X2-HB-R7a"/>[m
[32m+[m[32m                        </constraints>[m
[32m+[m[32m                    </view>[m
[32m+[m[32m                </viewController>[m
[32m+[m[32m                <placeholder placeholderIdentifier="IBFirstResponder" id="iYj-Kq-Ea1" userLabel="First Responder" sceneMemberID="firstResponder"/>[m
[32m+[m[32m            </objects>[m
[32m+[m[32m            <point key="canvasLocation" x="53" y="375"/>[m
[32m+[m[32m        </scene>[m
[32m+[m[32m    </scenes>[m
[32m+[m[32m    <resources>[m
[32m+[m[32m        <image name="LaunchImage" width="168" height="185"/>[m
[32m+[m[32m    </resources>[m
[32m+[m[32m</document>[m
[1mdiff --git a/imc2/ios/Runner/Base.lproj/Main.storyboard b/imc2/ios/Runner/Base.lproj/Main.storyboard[m
[1mnew file mode 100644[m
[1mindex 0000000..f3c2851[m
[1m--- /dev/null[m
[1m+++ b/imc2/ios/Runner/Base.lproj/Main.storyboard[m
[36m@@ -0,0 +1,26 @@[m
[32m+[m[32m<?xml version="1.0" encoding="UTF-8" standalone="no"?>[m
[32m+[m[32m<document type="com.apple.InterfaceBuilder3.CocoaTouch.Storyboard.XIB" version="3.0" toolsVersion="10117" systemVersion="15F34" targetRuntime="iOS.CocoaTouch" propertyAccessControl="none" useAutolayout="YES" useTraitCollections="YES" initialViewController="BYZ-38-t0r">[m
[32m+[m[32m    <dependencies>[m
[32m+[m[32m        <deployment identifier="iOS"/>[m
[32m+[m[32m        <plugIn identifier="com.apple.InterfaceBuilder.IBCocoaTouchPlugin" version="10085"/>[m
[32m+[m[32m    </dependencies>[m
[32m+[m[32m    <scenes>[m
[32m+[m[32m        <!--Flutter View Controller-->[m
[32m+[m[32m        <scene sceneID="tne-QT-ifu">[m
[32m+[m[32m            <objects>[m
[32m+[m[32m                <viewController id="BYZ-38-t0r" customClass="FlutterViewController" sceneMemberID="viewController">[m
[32m+[m[32m                    <layoutGuides>[m
[32m+[m[32m                        <viewControllerLayoutGuide type="top" id="y3c-jy-aDJ"/>[m
[32m+[m[32m                        <viewControllerLayoutGuide type="bottom" id="wfy-db-euE"/>[m
[32m+[m[32m                    </layoutGuides>[m
[32m+[m[32m                    <view key="view" contentMode="scaleToFill" id="8bC-Xf-vdC">[m
[32m+[m[32m                        <rect key="frame" x="0.0" y="0.0" width="600" height="600"/>[m
[32m+[m[32m                        <autoresizingMask key="autoresizingMask" widthSizable="YES" heightSizable="YES"/>[m
[32m+[m[32m                        <color key="backgroundColor" white="1" alpha="1" colorSpace="custom" customColorSpace="calibratedWhite"/>[m
[32m+[m[32m                    </view>[m
[32m+[m[32m                </viewController>[m
[32m+[m[32m                <placeholder placeholderIdentifier="IBFirstResponder" id="dkx-z0-nzr" sceneMemberID="firstResponder"/>[m
[32m+[m[32m            </objects>[m
[32m+[m[32m        </scene>[m
[32m+[m[32m    </scenes>[m
[32m+[m[32m</document>[m
[1mdiff --git a/imc2/ios/Runner/Info.plist b/imc2/ios/Runner/Info.plist[m
[1mnew file mode 100644[m
[1mindex 0000000..a6f18bd[m
[1m--- /dev/null[m
[1m+++ b/imc2/ios/Runner/Info.plist[m
[36m@@ -0,0 +1,45 @@[m
[32m+[m[32m<?xml version="1.0" encoding="UTF-8"?>[m
[32m+[m[32m<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">[m
[32m+[m[32m<plist version="1.0">[m
[32m+[m[32m<dict>[m
[32m+[m	[32m<key>CFBundleDevelopmentRegion</key>[m
[32m+[m	[32m<string>$(DEVELOPMENT_LANGUAGE)</string>[m
[32m+[m	[32m<key>CFBundleExecutable</key>[m
[32m+[m	[32m<string>$(EXECUTABLE_NAME)</string>[m
[32m+[m	[32m<key>CFBundleIdentifier</key>[m
[32m+[m	[32m<string>$(PRODUCT_BUNDLE_IDENTIFIER)</string>[m
[32m+[m	[32m<key>CFBundleInfoDictionaryVersion</key>[m
[32m+[m	[32m<string>6.0</string>[m
[32m+[m	[32m<key>CFBundleName</key>[m
[32m+[m	[32m<string>imc2</string>[m
[32m+[m	[32m<key>CFBundlePackageType</key>[m
[32m+[m	[32m<string>APPL</string>[m
[32m+[m	[32m<key>CFBundleShortVersionString</key>[m
[32m+[m	[32m<string>$(FLUTTER_BUILD_NAME)</string>[m
[32m+[m	[32m<key>CFBundleSignature</key>[m
[32m+[m	[32m<string>????</string>[m
[32m+[m	[32m<key>CFBundleVersion</key>[m
[32m+[m	[32m<string>$(FLUTTER_BUILD_NUMBER)</string>[m
[32m+[m	[32m<key>LSRequiresIPhoneOS</key>[m
[32m+[m	[32m<true/>[m
[32m+[m	[32m<key>UILaunchStoryboardName</key>[m
[32m+[m	[32m<string>LaunchScreen</string>[m
[32m+[m	[32m<key>UIMainStoryboardFile</key>[m
[32m+[m	[32m<string>Main</string>[m
[32m+[m	[32m<key>UISupportedInterfaceOrientations</key>[m
[32m+[m	[32m<array>[m
[32m+[m		[32m<string>UIInterfaceOrientationPortrait</string>[m
[32m+[m		[32m<string>UIInterfaceOrientationLandscapeLeft</string>[m
[32m+[m		[32m<string>UIInterfaceOrientationLandscapeRight</string>[m
[32m+[m	[32m</array>[m
[32m+[m	[32m<key>UISupportedInterfaceOrientations~ipad</key>[m
[32m+[m	[32m<array>[m
[32m+[m		[32m<string>UIInterfaceOrientationPortrait</string>[m
[32m+[m		[32m<string>UIInterfaceOrientationPortraitUpsideDown</string>[m
[32m+[m		[32m<string>UIInterfaceOrientationLandscapeLeft</string>[m
[32m+[m		[32m<string>UIInterfaceOrientationLandscapeRight</string>[m
[32m+[m	[32m</array>[m
[32m+[m	[32m<key>UIViewControllerBasedStatusBarAppearance</key>[m
[32m+[m	[32m<false/>[m
[32m+[m[32m</dict>[m
[32m+[m[32m</plist>[m
[1mdiff --git a/imc2/ios/Runner/Runner-Bridging-Header.h b/imc2/ios/Runner/Runner-Bridging-Header.h[m
[1mnew file mode 100644[m
[1mindex 0000000..308a2a5[m
[1m--- /dev/null[m
[1m+++ b/imc2/ios/Runner/Runner-Bridging-Header.h[m
[36m@@ -0,0 +1 @@[m
[32m+[m[32m#import "GeneratedPluginRegistrant.h"[m
[1mdiff --git a/imc2/lib/main.dart b/imc2/lib/main.dart[m
[1mnew file mode 100644[m
[1mindex 0000000..b9bfc38[m
[1m--- /dev/null[m
[1m+++ b/imc2/lib/main.dart[m
[36m@@ -0,0 +1,113 @@[m
[32m+[m[32mimport 'package:flutter/material.dart';[m
[32m+[m
[32m+[m[32mvoid main() {[m
[32m+[m[32m  runApp(MyApp());[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32mclass MyApp extends StatelessWidget {[m
[32m+[m[32m  // This widget is the root of your application.[m
[32m+[m[32m  @override[m
[32m+[m[32m  Widget build(BuildContext context) {[m
[32m+[m[32m    return MaterialApp([m
[32m+[m[32m      title: 'Flutter Demo',[m
[32m+[m[32m      theme: ThemeData([m
[32m+[m[32m        // This is the theme of your application.[m
[32m+[m[32m        //[m
[32m+[m[32m        // Try running your application with "flutter run". You'll see the[m
[32m+[m[32m        // application has a blue toolbar. Then, without quitting the app, try[m
[32m+[m[32m        // changing the primarySwatch below to Colors.green and then invoke[m
[32m+[m[32m        // "hot reload" (press "r" in the console where you ran "flutter run",[m
[32m+[m[32m        // or simply save your changes to "hot reload" in a Flutter IDE).[m
[32m+[m[32m        // Notice that the counter didn't reset back to zero; the application[m
[32m+[m[32m        // is not restarted.[m
[32m+[m[32m        primarySwatch: Colors.blue,[m
[32m+[m[32m      ),[m
[32m+[m[32m      home: MyHomePage(title: 'Flutter Demo Home Page'),[m
[32m+[m[32m    );[m
[32m+[m[32m  }[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32mclass MyHomePage extends StatefulWidget {[m
[32m+[m[32m  MyHomePage({Key? key, required this.title}) : super(key: key);[m
[32m+[m
[32m+[m[32m  // This widget is the home page of your application. It is stateful, meaning[m
[32m+[m[32m  // that it has a State object (defined below) that contains fields that affect[m
[32m+[m[32m  // how it looks.[m
[32m+[m
[32m+[m[32m  // This class is the configuration for the state. It holds the values (in this[m
[32m+[m[32m  // case the title) provided by the parent (in this case the App widget) and[m
[32m+[m[32m  // used by the build method of the State. Fields in a Widget subclass are[m
[32m+[m[32m  // always marked "final".[m
[32m+[m
[32m+[m[32m  final String title;[m
[32m+[m
[32m+[m[32m  @override[m
[32m+[m[32m  _MyHomePageState createState() => _MyHomePageState();[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32mclass _MyHomePageState extends State<MyHomePage> {[m
[32m+[m[32m  int _counter = 0;[m
[32m+[m
[32m+[m[32m  void _incrementCounter() {[m
[32m+[m[32m    setState(() {[m
[32m+[m[32m      // This call to setState tells the Flutter framework that something has[m
[32m+[m[32m      // changed in this State, which causes it to rerun the build method below[m
[32m+[m[32m      // so that the display can reflect the updated values. If we changed[m
[32m+[m[32m      // _counter without calling setState(), then the build method would not be[m
[32m+[m[32m      // called again, and so nothing would appear to happen.[m
[32m+[m[32m      _counter++;[m
[32m+[m[32m    });[m
[32m+[m[32m  }[m
[32m+[m
[32m+[m[32m  @override[m
[32m+[m[32m  Widget build(BuildContext context) {[m
[32m+[m[32m    // This method is rerun every time setState is called, for instance as done[m
[32m+[m[32m    // by the _incrementCounter method above.[m
[32m+[m[32m    //[m
[32m+[m[32m    // The Flutter framework has been optimized to make rerunning build methods[m
[32m+[m[32m    // fast, so that you can just rebuild anything that needs updating rather[m
[32m+[m[32m    // than having to individually change instances of widgets.[m
[32m+[m[32m    return Scaffold([m
[32m+[m[32m      appBar: AppBar([m
[32m+[m[32m        // Here we take the value from the MyHomePage object that was created by[m
[32m+[m[32m        // the App.build method, and use it to set our appbar title.[m
[32m+[m[32m        title: Text(widget.title),[m
[32m+[m[32m      ),[m
[32m+[m[32m      body: Center([m
[32m+[m[32m        // Center is a layout widget. It takes a single child and positions it[m
[32m+[m[32m        // in the middle of the parent.[m
[32m+[m[32m        child: Column([m
[32m+[m[32m          // Column is also a layout widget. It takes a list of children and[m
[32m+[m[32m          // arranges them vertically. By default, it sizes itself to fit its[m
[32m+[m[32m          // children horizontally, and tries to be as tall as its parent.[m
[32m+[m[32m          //[m
[32m+[m[32m          // Invoke "debug painting" (press "p" in the console, choose the[m
[32m+[m[32m          // "Toggle Debug Paint" action from the Flutter Inspector in Android[m
[32m+[m[32m          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)[m
[32m+[m[32m          // to see the wireframe for each widget.[m
[32m+[m[32m          //[m
[32m+[m[32m          // Column has various properties to control how it sizes itself and[m
[32m+[m[32m          // how it positions its children. Here we use mainAxisAlignment to[m
[32m+[m[32m          // center the children vertically; the main axis here is the vertical[m
[32m+[m[32m          // axis because Columns are vertical (the cross axis would be[m
[32m+[m[32m          // horizontal).[m
[32m+[m[32m          mainAxisAlignment: MainAxisAlignment.center,[m
[32m+[m[32m          children: <Widget>[[m
[32m+[m[32m            Text([m
[32m+[m[32m              'You have pushed the button this many times:',[m
[32m+[m[32m            ),[m
[32m+[m[32m            Text([m
[32m+[m[32m              '$_counter',[m
[32m+[m[32m              style: Theme.of(context).textTheme.headline4,[m
[32m+[m[32m            ),[m
[32m+[m[32m          ],[m
[32m+[m[32m        ),[m
[32m+[m[32m      ),[m
[32m+[m[32m      floatingActionButton: FloatingActionButton([m
[32m+[m[32m        onPressed: _incrementCounter,[m
[32m+[m[32m        tooltip: 'Increment',[m
[32m+[m[32m        child: Icon(Icons.add),[m
[32m+[m[32m      ), // This trailing comma makes auto-formatting nicer for build methods.[m
[32m+[m[32m    );[m
[32m+[m[32m  }[m
[32m+[m[32m}[m
[1mdiff --git a/imc2/pubspec.lock b/imc2/pubspec.lock[m
[1mnew file mode 100644[m
[1mindex 0000000..7ffced4[m
[1m--- /dev/null[m
[1m+++ b/imc2/pubspec.lock[m
[36m@@ -0,0 +1,153 @@[m
[32m+[m[32m# Generated by pub[m
[32m+[m[32m# See https://dart.dev/tools/pub/glossary#lockfile[m
[32m+[m[32mpackages:[m
[32m+[m[32m  async:[m
[32m+[m[32m    dependency: transitive[m
[32m+[m[32m    description:[m
[32m+[m[32m      name: async[m
[32m+[m[32m      url: "https://pub.dartlang.org"[m
[32m+[m[32m    source: hosted[m
[32m+[m[32m    version: "2.6.1"[m
[32m+[m[32m  boolean_selector:[m
[32m+[m[32m    dependency: transitive[m
[32m+[m[32m    description:[m
[32m+[m[32m      name: boolean_selector[m
[32m+[m[32m      url: "https://pub.dartlang.org"[m
[32m+[m[32m    source: hosted[m
[32m+[m[32m    version: "2.1.0"[m
[32m+[m[32m  characters:[m
[32m+[m[32m    dependency: transitive[m
[32m+[m[32m    description:[m
[32m+[m[32m      name: characters[m
[32m+[m[32m      url: "https://pub.dartlang.org"[m
[32m+[m[32m    source: hosted[m
[32m+[m[32m    version: "1.1.0"[m
[32m+[m[32m  charcode:[m
[32m+[m[32m    dependency: transitive[m
[32m+[m[32m    description:[m
[32m+[m[32m      name: charcode[m
[32m+[m[32m      url: "https://pub.dartlang.org"[m
[32m+[m[32m    source: hosted[m
[32m+[m[32m    version: "1.2.0"[m
[32m+[m[32m  clock:[m
[32m+[m[32m    dependency: transitive[m
[32m+[m[32m    description:[m
[32m+[m[32m      name: clock[m
[32m+[m[32m      url: "https://pub.dartlang.org"[m
[32m+[m[32m    source: hosted[m
[32m+[m[32m    version: "1.1.0"[m
[32m+[m[32m  collection:[m
[32m+[m[32m    dependency: transitive[m
[32m+[m[32m    description:[m
[32m+[m[32m      name: collection[m
[32m+[m[32m      url: "https://pub.dartlang.org"[m
[32m+[m[32m    source: hosted[m
[32m+[m[32m    version: "1.15.0"[m
[32m+[m[32m  cupertino_icons:[m
[32m+[m[32m    dependency: "direct main"[m
[32m+[m[32m    description:[m
[32m+[m[32m      name: cupertino_icons[m
[32m+[m[32m      url: "https://pub.dartlang.org"[m
[32m+[m[32m    source: hosted[m
[32m+[m[32m    version: "1.0.3"[m
[32m+[m[32m  fake_async:[m
[32m+[m[32m    dependency: transitive[m
[32m+[m[32m    description:[m
[32m+[m[32m      name: fake_async[m
[32m+[m[32m      url: "https://pub.dartlang.org"[m
[32m+[m[32m    source: hosted[m
[32m+[m[32m    version: "1.2.0"[m
[32m+[m[32m  flutter:[m
[32m+[m[32m    dependency: "direct main"[m
[32m+[m[32m    description: flutter[m
[32m+[m[32m    source: sdk[m
[32m+[m[32m    version: "0.0.0"[m
[32m+[m[32m  flutter_test:[m
[32m+[m[32m    dependency: "direct dev"[m
[32m+[m[32m    description: flutter[m
[32m+[m[32m    source: sdk[m
[32m+[m[32m    version: "0.0.0"[m
[32m+[m[32m  matcher:[m
[32m+[m[32m    dependency: transitive[m
[32m+[m[32m    description:[m
[32m+[m[32m      name: matcher[m
[32m+[m[32m      url: "https://pub.dartlang.org"[m
[32m+[m[32m    source: hosted[m
[32m+[m[32m    version: "0.12.10"[m
[32m+[m[32m  meta:[m
[32m+[m[32m    dependency: transitive[m
[32m+[m[32m    description:[m
[32m+[m[32m      name: meta[m
[32m+[m[32m      url: "https://pub.dartlang.org"[m
[32m+[m[32m    source: hosted[m
[32m+[m[32m    version: "1.3.0"[m
[32m+[m[32m  path:[m
[32m+[m[32m    dependency: transitive[m
[32m+[m[32m    description:[m
[32m+[m[32m      name: path[m
[32m+[m[32m      url: "https://pub.dartlang.org"[m
[32m+[m[32m    source: hosted[m
[32m+[m[32m    version: "1.8.0"[m
[32m+[m[32m  sky_engine:[m
[32m+[m[32m    dependency: transitive[m
[32m+[m[32m    description: flutter[m
[32m+[m[32m    source: sdk[m
[32m+[m[32m    version: "0.0.99"[m
[32m+[m[32m  source_span:[m
[32m+[m[32m    dependency: transitive[m
[32m+[m[32m    description:[m
[32m+[m[32m      name: source_span[m
[32m+[m[32m      url: "https://pub.dartlang.org"[m
[32m+[m[32m    source: hosted[m
[32m+[m[32m    version: "1.8.1"[m
[32m+[m[32m  stack_trace:[m
[32m+[m[32m    dependency: transitive[m
[32m+[m[32m    description:[m
[32m+[m[32m      name: stack_trace[m
[32m+[m[32m      url: "https://pub.dartlang.org"[m
[32m+[m[32m    source: hosted[m
[32m+[m[32m    version: "1.10.0"[m
[32m+[m[32m  stream_channel:[m
[32m+[m[32m    dependency: transitive[m
[32m+[m[32m    description:[m
[32m+[m[32m      name: stream_channel[m
[32m+[m[32m      url: "https://pub.dartlang.org"[m
[32m+[m[32m    source: hosted[m
[32m+[m[32m    version: "2.1.0"[m
[32m+[m[32m  string_scanner:[m
[32m+[m[32m    dependency: transitive[m
[32m+[m[32m    description:[m
[32m+[m[32m      name: string_scanner[m
[32m+[m[32m      url: "https://pub.dartlang.org"[m
[32m+[m[32m    source: hosted[m
[32m+[m[32m    version: "1.1.0"[m
[32m+[m[32m  term_glyph:[m
[32m+[m[32m    dependency: transitive[m
[32m+[m[32m    description:[m
[32m+[m[32m      name: term_glyph[m
[32m+[m[32m      url: "https://pub.dartlang.org"[m
[32m+[m[32m    source: hosted[m
[32m+[m[32m    version: "1.2.0"[m
[32m+[m[32m  test_api:[m
[32m+[m[32m    dependency: transitive[m
[32m+[m[32m    description:[m
[32m+[m[32m      name: test_api[m
[32m+[m[32m      url: "https://pub.dartlang.org"[m
[32m+[m[32m    source: hosted[m
[32m+[m[32m    version: "0.3.0"[m
[32m+[m[32m  typed_data:[m
[32m+[m[32m    dependency: transitive[m
[32m+[m[32m    description:[m
[32m+[m[32m      name: typed_data[m
[32m+[m[32m      url: "https://pub.dartlang.org"[m
[32m+[m[32m    source: hosted[m
[32m+[m[32m    version: "1.3.0"[m
[32m+[m[32m  vector_math:[m
[32m+[m[32m    dependency: transitive[m
[32m+[m[32m    description:[m
[32m+[m[32m      name: vector_math[m
[32m+[m[32m      url: "https://pub.dartlang.org"[m
[32m+[m[32m    source: hosted[m
[32m+[m[32m    version: "2.1.0"[m
[32m+[m[32msdks:[m
[32m+[m[32m  dart: ">=2.12.0 <3.0.0"[m
[1mdiff --git a/imc2/pubspec.yaml b/imc2/pubspec.yaml[m
[1mnew file mode 100644[m
[1mindex 0000000..5973797[m
[1m--- /dev/null[m
[1m+++ b/imc2/pubspec.yaml[m
[36m@@ -0,0 +1,76 @@[m
[32m+[m[32mname: imc2[m
[32m+[m[32mdescription: A new Flutter project.[m
[32m+[m
[32m+[m[32m# The following line prevents the package from being accidentally published to[m
[32m+[m[32m# pub.dev using `pub publish`. This is preferred for private packages.[m
[32m+[m[32mpublish_to: 'none' # Remove this line if you wish to publish to pub.dev[m
[32m+[m
[32m+[m[32m# The following defines the version and build number for your application.[m
[32m+[m[32m# A version number is three numbers separated by dots, like 1.2.43[m
[32m+[m[32m# followed by an optional build number separated by a +.[m
[32m+[m[32m# Both the version and the builder number may be overridden in flutter[m
[32m+[m[32m# build by specifying --build-name and --build-number, respectively.[m
[32m+[m[32m# In Android, build-name is used as versionName while build-number used as versionCode.[m
[32m+[m[32m# Read more about Android versioning at https://developer.android.com/studio/publish/versioning[m
[32m+[m[32m# In iOS, build-name is used as CFBundleShortVersionString while build-number used as CFBundleVersion.[m
[32m+[m[32m# Read more about iOS versioning at[m
[32m+[m[32m# https://developer.apple.com/library/archive/documentation/General/Reference/InfoPlistKeyReference/Articles/CoreFoundationKeys.html[m
[32m+[m[32mversion: 1.0.0+1[m
[32m+[m
[32m+[m[32menvironment:[m
[32m+[m[32m  sdk: ">=2.12.0 <3.0.0"[m
[32m+[m
[32m+[m[32mdependencies:[m
[32m+[m[32m  flutter:[m
[32m+[m[32m    sdk: flutter[m
[32m+[m
[32m+[m
[32m+[m[32m  # The following adds the Cupertino Icons font to your application.[m
[32m+[m[32m  # Use with the CupertinoIcons class for iOS style icons.[m
[32m+[m[32m  cupertino_icons: ^1.0.2[m
[32m+[m
[32m+[m[32mdev_dependencies:[m
[32m+[m[32m  flutter_test:[m
[32m+[m[32m    sdk: flutter[m
[32m+[m
[32m+[m[32m# For information on the generic Dart part of this file, see the[m
[32m+[m[32m# following page: https://dart.dev/tools/pub/pubspec[m
[32m+[m
[32m+[m[32m# The following section is specific to Flutter.[m
[32m+[m[32mflutter:[m
[32m+[m
[32m+[m[32m  # The following line ensures that the Material Icons font is[m
[32m+[m[32m  # included with your application, so that you can use the icons in[m
[32m+[m[32m  # the material Icons class.[m
[32m+[m[32m  uses-material-design: true[m
[32m+[m
[32m+[m[32m  # To add assets to your application, add an assets section, like this:[m
[32m+[m[32m  # assets:[m
[32m+[m[32m  #   - images/a_dot_burr.jpeg[m
[32m+[m[32m  #   - images/a_dot_ham.jpeg[m
[32m+[m
[32m+[m[32m  # An image asset can refer to one or more resolution-specific "variants", see[m
[32m+[m[32m  # https://flutter.dev/assets-and-images/#resolution-aware.[m
[32m+[m
[32m+[m[32m  # For details regarding adding assets from package dependencies, see[m
[32m+[m[32m  # https://flutter.dev/assets-and-images/#from-packages[m
[32m+[m
[32m+[m[32m  # To add custom fonts to your application, add a fonts section here,[m
[32m+[m[32m  # in this "flutter" section. Each entry in this list should have a[m
[32m+[m[32m  # "family" key with the font family name, and a "fonts" key with a[m
[32m+[m[32m  # list giving the asset and other descriptors for the font. For[m
[32m+[m[32m  # example:[m
[32m+[m[32m  # fonts:[m
[32m+[m[32m  #   - family: Schyler[m
[32m+[m[32m  #     fonts:[m
[32m+[m[32m  #       - asset: fonts/Schyler-Regular.ttf[m
[32m+[m[32m  #       - asset: fonts/Schyler-Italic.ttf[m
[32m+[m[32m  #         style: italic[m
[32m+[m[32m  #   - family: Trajan Pro[m
[32m+[m[32m  #     fonts:[m
[32m+[m[32m  #       - asset: fonts/TrajanPro.ttf[m
[32m+[m[32m  #       - asset: fonts/TrajanPro_Bold.ttf[m
[32m+[m[32m  #         weight: 700[m
[32m+[m[32m  #[m
[32m+[m[32m  # For details regarding fonts from package dependencies,[m
[32m+[m[32m  # see https://flutter.dev/custom-fonts/#from-packages[m
[1mdiff --git a/imc2/test/widget_test.dart b/imc2/test/widget_test.dart[m
[1mnew file mode 100644[m
[1mindex 0000000..1b60a10[m
[1m--- /dev/null[m
[1m+++ b/imc2/test/widget_test.dart[m
[36m@@ -0,0 +1,30 @@[m
[32m+[m[32m// This is a basic Flutter widget test.[m
[32m+[m[32m//[m
[32m+[m[32m// To perform an interaction with a widget in your test, use the WidgetTester[m
[32m+[m[32m// utility that Flutter provides. For example, you can send tap and scroll[m
[32m+[m[32m// gestures. You can also use WidgetTester to find child widgets in the widget[m
[32m+[m[32m// tree, read text, and verify that the values of widget properties are correct.[m
[32m+[m
[32m+[m[32mimport 'package:flutter/material.dart';[m
[32m+[m[32mimport 'package:flutter_test/flutter_test.dart';[m
[32m+[m
[32m+[m[32mimport 'package:imc2/main.dart';[m
[32m+[m
[32m+[m[32mvoid main() {[m
[32m+[m[32m  testWidgets('Counter increments smoke test', (WidgetTester tester) async {[m
[32m+[m[32m    // Build our app and trigger a frame.[m
[32m+[m[32m    await tester.pumpWidget(MyApp());[m
[32m+[m
[32m+[m[32m    // Verify that our counter starts at 0.[m
[32m+[m[32m    expect(find.text('0'), findsOneWidget);[m
[32m+[m[32m    expect(find.text('1'), findsNothing);[m
[32m+[m
[32m+[m[32m    // Tap the '+' icon and trigger a frame.[m
[32m+[m[32m    await tester.tap(find.byIcon(Icons.add));[m
[32m+[m[32m    await tester.pump();[m
[32m+[m
[32m+[m[32m    // Verify that our counter has incremented.[m
[32m+[m[32m    expect(find.text('0'), findsNothing);[m
[32m+[m[32m    expect(find.text('1'), findsOneWidget);[m
[32m+[m[32m  });[m
[32m+[m[32m}[m
[1mdiff --git a/imc2/web/favicon.png b/imc2/web/favicon.png[m
[1mnew file mode 100644[m
[1mindex 0000000..8aaa46a[m
Binary files /dev/null and b/imc2/web/favicon.png differ
[1mdiff --git a/imc2/web/icons/Icon-192.png b/imc2/web/icons/Icon-192.png[m
[1mnew file mode 100644[m
[1mindex 0000000..b749bfe[m
Binary files /dev/null and b/imc2/web/icons/Icon-192.png differ
[1mdiff --git a/imc2/web/icons/Icon-512.png b/imc2/web/icons/Icon-512.png[m
[1mnew file mode 100644[m
[1mindex 0000000..88cfd48[m
Binary files /dev/null and b/imc2/web/icons/Icon-512.png differ
[1mdiff --git a/imc2/web/index.html b/imc2/web/index.html[m
[1mnew file mode 100644[m
[1mindex 0000000..6c577e3[m
[1m--- /dev/null[m
[1m+++ b/imc2/web/index.html[m
[36m@@ -0,0 +1,98 @@[m
[32m+[m[32m<!DOCTYPE html>[m
[32m+[m[32m<html>[m
[32m+[m[32m<head>[m
[32m+[m[32m  <!--[m
[32m+[m[32m    If you are serving your web app in a path other than the root, change the[m
[32m+[m[32m    href value below to reflect the base path you are serving from.[m
[32m+[m
[32m+[m[32m    The path provided below has to start and end with a slash "/" in order for[m
[32m+[m[32m    it to work correctly.[m
[32m+[m
[32m+[m[32m    For more details:[m
[32m+[m[32m    * https://developer.mozilla.org/en-US/docs/Web/HTML/Element/base[m
[32m+[m[32m  -->[m
[32m+[m[32m  <base href="/">[m
[32m+[m
[32m+[m[32m  <meta charset="UTF-8">[m
[32m+[m[32m  <meta content="IE=Edge" http-equiv="X-UA-Compatible">[m
[32m+[m[32m  <meta name="description" content="A new Flutter project.">[m
[32m+[m
[32m+[m[32m  <!-- iOS meta tags & icons -->[m
[32m+[m[32m  <meta name="apple-mobile-web-app-capable" content="yes">[m
[32m+[m[32m  <meta name="apple-mobile-web-app-status-bar-style" content="black">[m
[32m+[m[32m  <meta name="apple-mobile-web-app-title" content="imc2">[m
[32m+[m[32m  <link rel="apple-touch-icon" href="icons/Icon-192.png">[m
[32m+[m
[32m+[m[32m  <title>imc2</title>[m
[32m+[m[32m  <link rel="manifest" href="manifest.json">[m
[32m+[m[32m</head>[m
[32m+[m[32m<body>[m
[32m+[m[32m  <!-- This script installs service_worker.js to provide PWA functionality to[m
[32m+[m[32m       application. For more information, see:[m
[32m+[m[32m       https://developers.google.com/web/fundamentals/primers/service-workers -->[m
[32m+[m[32m  <script>[m
[32m+[m[32m    var serviceWorkerVersion = null;[m
[32m+[m[32m    var scriptLoaded = false;[m
[32m+[m[32m    function loadMainDartJs() {[m
[32m+[m[32m      if (scriptLoaded) {[m
[32m+[m[32m        return;[m
[32m+[m[32m      }[m
[32m+[m[32m      scriptLoaded = true;[m
[32m+[m[32m      var scriptTag = document.createElement('script');[m
[32m+[m[32m      scriptTag.src = 'main.dart.js';[m
[32m+[m[32m      scriptTag.type = 'application/javascript';[m
[32m+[m[32m      document.body.append(scriptTag);[m
[32m+[m[32m    }[m
[32m+[m
[32m+[m[32m    if ('serviceWorker' in navigator) {[m
[32m+[m[32m      // Service workers are supported. Use them.[m
[32m+[m[32m      window.addEventListener('load', function () {[m
[32m+[m[32m        // Wait for registration to finish before dropping the <script> tag.[m
[32m+[m[32m        // Otherwise, the browser will load the script multiple times,[m
[32m+[m[32m        // potentially different versions.[m
[32m+[m[32m        var serviceWorkerUrl = 'flutter_service_worker.js?v=' + serviceWorkerVersion;[m
[32m+[m[32m        navigator.serviceWorker.register(serviceWorkerUrl)[m
[32m+[m[32m          .then((reg) => {[m
[32m+[m[32m            function waitForActivation(serviceWorker) {[m
[32m+[m[32m              serviceWorker.addEventListener('statechange', () => {[m
[32m+[m[32m                if (serviceWorker.state == 'activated') {[m
[32m+[m[32m                  console.log('Installed new service worker.');[m
[32m+[m[32m                  loadMainDartJs();[m
[32m+[m[32m                }[m
[32m+[m[32m              });[m
[32m+[m[32m            }[m
[32m+[m[32m            if (!reg.active && (reg.installing || reg.waiting)) {[m
[32m+[m[32m              // No active web worker and we have installed or are installing[m
[32m+[m[32m              // one for the first time. Simply wait for it to activate.[m
[32m+[m[32m              waitForActivation(reg.installing ?? reg.waiting);[m
[32m+[m[32m            } else if (!reg.active.scriptURL.endsWith(serviceWorkerVersion)) {[m
[32m+[m[32m              // When the app updates the serviceWorkerVersion changes, so we[m
[32m+[m[32m              // need to ask the service worker to update.[m
[32m+[m[32m              console.log('New service worker available.');[m
[32m+[m[32m              reg.update();[m
[32m+[m[32m              waitForActivation(reg.installing);[m
[32m+[m[32m            } else {[m
[32m+[m[32m              // Existing service worker is still good.[m
[32m+[m[32m              console.log('Loading app from service worker.');[m
[32m+[m[32m              loadMainDartJs();[m
[32m+[m[32m            }[m
[32m+[m[32m          });[m
[32m+[m
[32m+[m[32m        // If service worker doesn't succeed in a reasonable amount of time,[m
[32m+[m[32m        // fallback to plaint <script> tag.[m
[32m+[m[32m        setTimeout(() => {[m
[32m+[m[32m          if (!scriptLoaded) {[m
[32m+[m[32m            console.warn([m
[32m+[m[32m              'Failed to load app from service worker. Falling back to plain <script> tag.',[m
[32m+[m[32m            );[m
[32m+[m[32m            loadMainDartJs();[m
[32m+[m[32m          }[m
[32m+[m[32m        }, 4000);[m
[32m+[m[32m      });[m
[32m+[m[32m    } else {[m
[32m+[m[32m      // Service workers not supported. Just drop the <script> tag.[m
[32m+[m[32m      loadMainDartJs();[m
[32m+[m[32m    }[m
[32m+[m[32m  </script>[m
[32m+[m[32m</body>[m
[32m+[m[32m</html>[m
[1mdiff --git a/imc2/web/manifest.json b/imc2/web/manifest.json[m
[1mnew file mode 100644[m
[1mindex 0000000..27860bb[m
[1m--- /dev/null[m
[1m+++ b/imc2/web/manifest.json[m
[36m@@ -0,0 +1,23 @@[m
[32m+[m[32m{[m
[32m+[m[32m    "name": "imc2",[m
[32m+[m[32m    "short_name": "imc2",[m
[32m+[m[32m    "start_url": ".",[m
[32m+[m[32m    "display": "standalone",[m
[32m+[m[32m    "background_color": "#0175C2",[m
[32m+[m[32m    "theme_color": "#0175C2",[m
[32m+[m[32m    "description": "A new Flutter project.",[m
[32m+[m[32m    "orientation": "portrait-primary",[m
[32m+[m[32m    "prefer_related_applications": false,[m
[32m+[m[32m    "icons": [[m
[32m+[m[32m        {[m
[32m+[m[32m            "src": "icons/Icon-192.png",[m
[32m+[m[32m            "sizes": "192x192",[m
[32m+[m[32m            "type": "image/png"[m
[32m+[m[32m        },[m
[32m+[m[32m        {[m
[32m+[m[32m            "src": "icons/Icon-512.png",[m
[32m+[m[32m            "sizes": "512x512",[m
[32m+[m[32m            "type": "image/png"[m
[32m+[m[32m        }[m
[32m+[m[32m    ][m
[32m+[m[32m}[m
