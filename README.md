# Sistem-Mahasiswa
Website ini merupakan aplikasi manajemen data mahasiswa yang dikembangkan menggunakan PHP sebagai bahasa pemrograman backend, phpMyAdmin atau HeidiSQL sebagai alat pengelolaan database MySQL, serta menggunakan template AdminLTE sebagai tampilan antarmuka admin yang responsif dan modern.

---

### Tampilan Log-in 
Website ini memiliki tampilan login menggunakan template AdminLTE, di mana pengguna harus memasukkan username dan password untuk mengakses sistem. Untuk keperluan awal atau testing, login dapat dilakukan dengan:
Username: admin
Password: admin123
Setelah login berhasil, pengguna akan diarahkan ke dashboard utama untuk mengelola data mahasiswa, jurusan, dan semester.

![page log in](https://github.com/calcanica/Sistem-Mahasiswa/blob/main/6.png)
---

### Dasboard Sistem Informasi
Setelah berhasil login, pengguna akan diarahkan ke tampilan dashboard utama. Pada dashboard ini, terdapat beberapa fitur dan informasi penting, antara lain:
- Presentase Mahasiswa per Jurusan, ditampilkan dalam bentuk grafik atau diagram untuk memudahkan analisis sebaran mahasiswa.
- Daftar Mahasiswa Terbaru, yang menampilkan mahasiswa yang baru saja ditambahkan ke sistem berdasarkan input terakhir.
- Statistik Data, yang mencakup jumlah mahasiswa per jurusan & jumlah mahasimswa per semester
- Log Aktivitas, yaitu catatan yang merekam setiap aktivitas atau perubahan yang terjadi di sistem, lengkap dengan tanggal dan jam kejadian.
- Keterangan Aksi, yang menunjukkan tindakan apa yang dilakukan pada data, seperti Create (menambahkan data baru), Read (melihat data), Update (mengubah data), dan Delete (menghapus data).
- Terdapat juga fitur untuk keluar dari sistem (log out), guna mengakhiri sesi pengguna dengan aman.
  
![dasbord sistem mahasiswa](https://github.com/calcanica/Sistem-Mahasiswa/blob/main/1.png)
---

### Tampilan Menu Data Mahasiswa
Pada menu Data Mahasiswa, pengguna diberikan akses penuh untuk mengelola informasi mahasiswa. Fitur-fitur utama yang tersedia antara lain:
- Menambah Data: pengguna dapat memasukkan data mahasiswa baru ke dalam sistem, seperti nama, NIM, jurusan, dan semester.
- Mengedit Data: pengguna dapat memperbarui atau mengubah informasi mahasiswa yang sudah ada apabila terdapat kesalahan atau perubahan data.
- Menghapus Data: pengguna dapat menghapus data mahasiswa yang sudah tidak aktif atau tidak diperlukan lagi dari database.
Semua fitur ini dirancang agar mudah digunakan melalui antarmuka AdminLTE yang responsif dan terintegrasi dengan database MySQL melalui phpMyAdmin atau HeidiSQL.

![data mahasiswa](https://github.com/calcanica/Sistem-Mahasiswa/blob/main/2.png)
---

### Tampilan Menu Data Jurusan
Pada menu Data Jurusan, sistem menampilkan daftar seluruh jurusan yang terdaftar dalam database. Setiap data jurusan yang ditampilkan mencakup nama jurusan secara lengkap.
Fitur-fitur yang tersedia pada menu ini meliputi, Menambah Jurusan, Mengedit Jurusan dan Menghapus Jurusan

![data jurusan](https://github.com/calcanica/Sistem-Mahasiswa/blob/main/3.png)
---

### Tampilan Menu Data Semester
Pada menu Data Semester, sistem menampilkan daftar seluruh semester yang terdaftar dalam database. Setiap data semester yang ditampilkan mencakup nama semester secara lengkap, seperti "Semester 1", "Semester 2", dan seterusnya. Fitur-fitur juga lainnya tersedia seperti, Menambah Data Semester, Mengedit Data Semester, dan Menghapus Data Semester

![data semester](https://github.com/calcanica/Sistem-Mahasiswa/blob/main/4.png)
---

### Tampilan Menu Log-Aktivitas

Pada menu Log Aktivitas, sistem mencatat dan menampilkan seluruh riwayat aktivitas yang dilakukan oleh pengguna terhadap data-data penting dalam sistem, seperti data mahasiswa, jurusan, dan semester.
Log ini memberikan informasi lengkap yang meliputi:
- Tanggal dan Jam Perubahan: menunjukkan waktu tepat kapan suatu aktivitas dilakukan.
- Nama Pengguna (User): mencatat siapa yang melakukan aktivitas tersebut.
- Jenis Aksi: seperti Insert (menambahkan data baru), Update (mengubah data), dan Delete (menghapus data).
- Deskripsi Perubahan: menjelaskan detail perubahan yang terjadi, misalnya "Mengubah nama jurusan dari Teknik Informatika menjadi Sistem Informasi" atau "Menghapus data mahasiswa dengan NIM 210123456".
Dengan adanya log aktivitas ini, sistem menjadi lebih transparan, mudah diaudit, dan setiap perubahan dapat dilacak secara akurat berdasarkan waktu dan pengguna yang melakukannya.

![log aktivitas](https://github.com/calcanica/Sistem-Mahasiswa/blob/main/5.png)

