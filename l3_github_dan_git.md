## Git Version dan Github
### Git
Git adalah program yang digunakan untuk menyimpan dan mengelola versi-versi file pekerjaan. Pengeloaan file tersebut dilakukan di dalam komputer secara lokal.

Ilustrasi versi file dapat diibaratkan seperti kita membuat file dokumen (file_1.doc, file_2.doc, dan seterusnya sampai file_final.doc) dimana nomor menunjukkan versi kebaruan dari file pekerjaan. Daripada membuat dan menyimpan banyak file dengan nomor yang berbeda setiap melakukan perbaikan dokumen, maka program Git membantu dalam menyimpan hanya versi perubahan dalam file dokumen yang sedang dikerjakan. Dengan demikian, cukup membuat sebuah nama file.doc, kemudian setiap ada perubahan atau perbaikan, disimpan informasi perubahan menggunakan mekanisme program Git tersebut.

Keuntungan sederhana lainnya menggunakan program Git adalah bisa melihat perubahan-perubahan pada setiap versi file dan apabila diperlukan, set back ke versi terdahulu/lama dari suatu file yang sedang dikerjakan.

### Github
[Github.com](https://github.com) adalah tempat menyimpan file-file versi pekerjaan dalam suatu repositori (folder) secara online. Github adalah salah satu penyedia, ada banyak penyedia repositori versi pekerjaan online lainnya. Keuntungan menggunakan tempat penyimpanan secara online untuk versi-versi file pekerjaan adalah:

1. dapat diakses dari berbagai perangkat secara online.

2. dapat diakses oleh lebih dari satu orang untuk bekerja secara kolaboratif.

## 1. Instalasi Git dan Registrasi Akun Github
Diasumsikan pembaca bisa melakukan secara mandiri prose-proses

1. Download program [Git](https://git-scm.com/downloads)

2. Instalasi program Git.

3. Registrasi akun pada [Github](https://github.com)

> Jangan lupa install Git Extension Pack pada Visual Studio Code.


## 2. Membuat Repository di Github
Proses membuat repository pada akun github yang dimiliki.

1. Login ke [Github.com](https://github.com)
2. Pada halaman dashboard, klik Tab  Repositories.
3. Klik tombol __New__ berwarna hijau.
4. Isikan nama repository pada bagian __Repository name*__
5. Atur pilihan repository sebagai __Public__. 
6. Boleh checklist pilihan __Add a README file__
7. Klik tombol __Create Repository__. 

Proses selanjutnya adalah melakukan clone repository dari github ke komputer yang dimiliki. 

## 3. Clone Repository
Dalam sesi ini diasumsikan Anda akan melakukan __clone__, atau meng-copy suatu repository milik Anda sendiri ke komputer. 

1. Buka terminal. Tempatkan pointer terminal pada lokasi folder akan disimpan folder dan files hasil clone.
2. Ketik `git clone https://github.com/priyandari/Python_Programming_3in1.git`
3. Masuk ke folder yang terbentuk, menggunakan perintah `cd .\Python_Programming_3in1\`.
4. Ketik perintah `git remote -v`, dan hasilnya

    > origin  https://github.com/priyandari/Python_Programming_3in1.git (fetch)

    > origin  https://github.com/priyandari/Python_Programming_3in1.git (push)

    Jika Anda membuka folder melalui explorer, dan mengaktifkan show hidden file, maka terlihat sebuah folder `.git`

5. Pastikan Anda berada pada cabang atau branch yang diinginkan. Misalkan repository adalah milik Anda sendiri dan Anda tidak ingin membuat branch tetapi langsung menggunakan branch yang sudah ada sehingga __jika ada update langsung menimpa__ repository yang ada. Ketik perintah `git checkout main`. Hasilnya:

    Already on 'main'

    Your branch is up to date with 'origin/main'

6. Jika Anda ingin membuat cabang baru, bisa menambahkan parameter -b, sehingga sintaks menjadi `git checkout -b mybranch`. Jika tidak, __skip__ langkah 6 ini.

7. Tambahkan proses configurasi folder dengan __hak akses github__ sesuai akun github yang Anda miliki.

    > `git config --local user.email "emailku@gmol"`
    
    > `git config --local user.name "Namaku"`
    
    > `git config --local user.username username_github`   

8. Atur nama remote lokal untuk alamat remote dari github. Sintak umum sebagai berikut `git remote add <remote_lokal> <remote-url> -m --<namabranch>`. Contoh penggunaan 

    `git remote add "python_tutorial" https://github.com/priyandari/Python_Programming_3in1.git -m --main` 

    > [INFO] jika ingin menghapus nama remote lokal, ketik perintah `git remote remove <remote_lokal>`. Misalkan `git remote remove python_tutorial`.

## 4. Menggunakan Git Lokal Hasil Clone Repository
1. Pastikan sebelum bekerja, tarik dan samakan dahulu dengan yang ada di __repository github__ dan __branch yang dipakai__ (sesuai hak akses Anda). `git pull <remote-url> <namabranch>`, atau `git pull <nama_remote_lokal> <namabranch>`. Contoh:

    `git pull https://github.com/priyandari/Python_Programming_3in1.git main` atau 
    
    `git pull python_tutorial main`

2. Selanjutnya sudah bisa melakukan perintah-perintah untuk update file ke repository github pada branch yang menjadi hak akses atau yang telah buat. Misalkan: 

    > __Menambahkan file__ ke stagging `git add index.html`

    > __Commit dengan pesan__ untuk semua file yg sudah di add. `git commit -m "update7 index"` 

    > __Melakukan upload__ untuk update file pada branch. `git push <remote_lokal> <namabranch>`, misal `git push python_tutorial main`. 
    
    > Jika diminta mengisikan `Enter passphrase for key '/c/Users/Lenovo/.ssh/id_rsa':`, maka ketik password akun github Anda.  

## 5. Mendownload Repository dari Github dan Menjadikannya Git Lokal
Diasumsikan Anda tidak melakukan proses clone, melainkan mendownload files dari suatu repository github.

1. Ekstrak file zip, dan rename sesuai keinginan. Oleh karena prosesnya download, maka tidak ada folder .git yang diperoleh
2. Buka __terminal__, dan masuklah ke folder hasil ekstraksi repository.
3. Ubah folder lokal menjadi git lokal. Ketik perintah  `git init`
4. Lakukan proses konfigurasi __hak akses github__ sesuai akun yang Anda miliki.

    > `git config --local user.email "emailku@gmol"`

    > `git config --local user.name "Namaku"`
    
    > `git config --local user.username username_github`   

5. Atur nama remote lokal untuk alamat remote dari github. Sintak umum sebagai berikut `git remote add <remote_lokal> <remote-url> -m --<namabranch>`. Contoh penggunaan. 

    `git remote add "python_tutorial" https://github.com/priyandari/Python_Programming_3in1.git -m --main` 

    > [INFO] jika ingin menghapus nama remote lokal, ketik perintah `git remote remove <remote_lokal>`. Misalkan `git remote remove python_tutorial`.

6. Pastikan sebelum bekerja, tarik dan samakan dahulu dengan yang ada di __repository github__ dan __branch yang dipakai__ (sesuai hak akses Anda, atau sesuai branch yang dibuat). `git pull <remote-url> <namabranch>`, atau `git pull <nama_remote_lokal> <namabranch>`. Contoh:

    `git pull https://github.com/priyandari/Python_Programming_3in1.git main` atau lebih singkat jika 
    
    `git pull python_tutorial main`.

7. Jika ingin membuat __branch yang berbeda__ dengan branch utama yang ada di repository github agar ketika files di upload, __tidak langsung menimpa file pada cabang utama__. Ini __biasa dilakukan jika melakukan proses kolaborasi pekerjaan dengan teman__. 

    > `git checkout -b mybranch`

8. Jika ingin menghapus sebuah branch. `git branch -D <namabranch>`, contoh `git branch -D mybranch`

9. Jika menginginkan pengaturan namabranch lokal defaultnya berubah. `git config --global init.defaultBranch mybranch`

10. Jika ingin berpindah antar branch di lokal. `git checkout <namabranch>`. Contoh `git checkout main` atau `git checkout mybranch` 

11. Selanjutnya sudah bisa melakukan perintah-perintah untuk update file ke repository github pada branch yang menjadi hak akses atau yang telah dibuat. Misalkan: 

    > __Menambahkan file__ ke stagging `git add index.html`

    > __Commit dengan pesan__ untuk semua file yg sudah di add. `git commit -m "update7 index"` 

    > __Melakukan upload__ untuk update file pada branch. `git push <remote_lokal> <namabranch>`, misal `git push python_tutorial mybranch`. 
    
    > Jika diminta mengisikan `Enter passphrase for key '/c/Users/Lenovo/.ssh/id_rsa':`, maka ketik password akun github Anda.  

