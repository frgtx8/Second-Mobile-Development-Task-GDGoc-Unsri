# 📱 Katalog Kursus App (Flutter)

## 📌 Deskripsi Aplikasi

Aplikasi **Katalog Kursus** adalah aplikasi mobile berbasis Flutter yang digunakan untuk menampilkan daftar kursus, melihat detail, serta menambahkan kursus baru.
Aplikasi ini menggunakan **database lokal (SQLite / sqflite)** sehingga dapat berjalan tanpa koneksi internet.

---

## ✨ Fitur Utama

* 📋 Menampilkan daftar kursus (GridView responsive)
* 🔍 Melihat detail kursus
* ➕ Menambahkan kursus baru (Form + Validasi)
* ❤️ Menandai kursus sebagai favorit
* 🌙 Toggle Dark Mode (Settings)
* 💾 Penyimpanan data menggunakan database lokal SQLite
* ⚠️ Konfirmasi keluar saat form belum disimpan (PopScope)

---

## 🧱 Struktur Halaman

Aplikasi terdiri dari 4 halaman utama:

### 1. 🏠 Home / Dashboard

* Menampilkan daftar kursus
* Responsive (1 kolom mobile, 2 tablet, 4 desktop)
* Fitur favorit (state lokal)
* Navigasi ke detail dan form

### 2. 📄 Detail Page

* Menampilkan informasi lengkap kursus
* Menerima data dari halaman Home menggunakan Navigator

### 3. 📝 Form Tambah Kursus

* Input data kursus:

  * Nama
  * Kategori
  * Deskripsi
* Validasi input
* Menggunakan PopScope untuk mencegah keluar tanpa simpan

### 4. ⚙️ Settings Page

* Toggle Dark Mode
* Menggunakan Switch.adaptive
* Menggunakan Semantics (aksesibilitas)

---

## 🗂️ Struktur Folder

```bash
lib/
├── main.dart
├── models/
│   └── course.dart
├── services/
│   └── database_helper.dart
├── pages/
│   ├── home_page.dart
│   ├── detail_page.dart
│   ├── form_page.dart
│   └── settings_page.dart
├── widgets/
│   └── course_card.dart
```

---

## 🚀 Cara Menjalankan Project

### 1. Clone Repository

```bash
git clone https://github.com/frgtx8/Second-Mobile-Development-Task-GDGoc-Unsri.git
cd katalog_kursus
```

### 2. Install Dependency

```bash
flutter pub get
```

### 3. Jalankan Aplikasi

```bash
flutter run
```

---

## 📱 Requirement

* Flutter SDK
* Android Studio / VS Code
* Emulator atau perangkat Android

---

## 📌 Catatan

* Aplikasi tidak menggunakan backend atau API
* Semua data disimpan secara lokal menggunakan SQLite
* Data akan hilang jika aplikasi di-uninstall

---

## 👨‍💻 Author

Nama: Fadhil Rahman
Project: Tugas Mobile Development Flutter
