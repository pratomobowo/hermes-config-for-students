# 10 Hal Keren yang Bisa Siswa Lakukan dengan Hermes

> Setelah Hermes terinstall di laptop, siswa SMK punya "partner belajar" yang bisa dipakai kapan aja, ga cuma saat roadshow.
> Dokumen ini adalah showcase 10 use case yang paling impactful.

## Cara Pakai Dokumen Ini

- **Siswa**: pilih use case yang menarik, coba sendiri di laptop
- **Guru**: lihat daftar ini untuk referensi aktivitas kelas
- **Orang tua**: pahami apa yang anak Anda bisa eksplor

## Persona Cheat Sheet

Sebelum baca use case, pahami dulu 3 mode persona:

| Persona | Kapan Pakai | Ciri Khas |
|---|---|---|
| **Socratic Mentor** | Stuck, baru mulai, butuh clue | Tanya balik, kasih hint, ga kasih full code |
| **Code Reviewer** | Punya kode, mau feedback | Tanya kritis, highlight positif, kasih hint |
| **Sparring Partner** | Mau diskusi keputusan, design | Tantang pilihan, sebutkan alternatif, debat sehat |

Cara ganti mode:
```bash
hermes --persona socratic-mentor chat    # default
hermes --persona code-reviewer chat
hermes --persona sparring-partner chat
```

---

## Zona 1: Daily Learning Routine (Tiap Hari)

### 1. Stuck Solver

**Skill diasah:** Debugging, reading code, persistence

**Kapan pakai:** Saat stuck lebih dari 10 menit, malu nanya ke guru/temen, atau mau coba dulu sebelum minta tolong.

**Persona:** Socratic Mentor

**Contoh dialog:**

```
Siswa: Kak, gw stuck di loop, gatau kenapa outputnya kebalik

Hermes: Oke. Mari kita debug pelan-pelan.
        Jangan liat kode utuh dulu.
        Fokus 1 iterasi pertama. Mulai dari i=0.
        Variabelnya jadi apa? Outputnya apa?
        Ceritain ke aku pakai bahasa kamu sendiri.

Siswa: i=0, jadi array[0]. Output "apel" deh kayaknya

Hermes: Sip. Sekarang i=1?

Siswa: i=1, array[1]. Output "jeruk"

Hermes: Hmm, kalau i naik dari 0 ke 1, outputnya naik juga
        dari "apel" ke "jeruk". Kenapa kamu bilang outputnya kebalik?

Siswa: Oh... gw kira kebalik. Berarti gw salah baca output
       dari belakang tadi wkwk

Hermes: Hahaha. Itu dia. Kadang bug ada di mata kita,
        bukan di kodenya. Coba run ulang, baca output dari awal.
```

**Tips untuk guru:**
- Ajari siswa untuk coba 10 menit dulu sebelum tanya ke AI
- Tanyakan: "Apa yang udah kamu coba?" sebelum kasih clue
- Apresiasi siswa yang jujur "aku belum coba apa-apa" — itu lebih baik daripada copy-paste

---

### 2. Pseudo-code Diary

**Skill diasah:** Logical thinking, edge case awareness, komunikasi

**Kapan pakai:** Tiap pagi 5-10 menit, atau sebelum mulai coding.

**Persona:** Socratic Mentor

**Cara praktik:**

1. Pilih 1 problem kecil (misal: "validasi form email")
2. Tulis pseudo-code di notepad (ga pake syntax)
3. Submit ke AI untuk review
4. Perbaiki, ulangi

**Contoh dialog:**

```
Siswa: Pseudo-code: Buka file, baca baris 1, tampilin

Hermes: Bagus. Tapi "buka file" itu bisa gagal.
        Gimana kalo file-nya ga ada? Tambahin di pseudocode.

Siswa: Oh iya, kalau ga ada, tampilin "file not found"

Hermes: Sip. Sekarang "baca baris 1" - gimana kalo file kosong?
        Baris 1 itu ada atau engga?

Siswa: Kalo kosong, ya ga ada yang dibaca

Hermes: Trus outputnya apa?

Siswa: Hmm, mungkin "file kosong"?

Hermes: Bagus. Lihat, dari 3 baris pseudo-code tadi,
        kamu udah nemu 2 edge case yang sering dilupain programmer.
        Edge case apa lagi yang mungkin?
```

**Tips untuk guru:**
- Bikin ini jadi habit 5 menit pertama kelas
- Kumpulkan pseudo-code siswa, diskusikan yang paling lengkap
- Tunjukkan bahwa pseudo-code yang bagus = skill arsitek

---

### 3. Code Review sebelum Submit

**Skill diasah:** Self-review, code quality awareness, humility

**Kapan pakai:** Sebelum kumpulin tugas coding, atau sebelum push ke GitHub.

**Persona:** Code Reviewer

**Aturan main:**
- AI kasih 1 hal positif + 3 pertanyaan, BUKAN revisi langsung
- Siswa harus defend atau improve sendiri

**Contoh dialog:**

```
Siswa: Ini kode kasir aku kak, tolong review
       [kirim kode 30 baris]

Hermes: Oke aku udah baca. 1 hal yang aku suka: penamaan
        variabelnya jelas, ga ada "x" atau "tmp" misterius.
        
        Sekarang 3 pertanyaan:
        
        1. Line 15, kamu cek if total > 50000. Kenapa 50000?
           Itu aturan bisnis dari mana? Coba bikin jadi
           konstanta di atas dengan nama yang jelas.
        
        2. Line 22, function hitung_diskon kamu return
           diskon, bukan total setelah diskon. Itu sesuai
           requirement ga? Coba baca lagi soalnya.
        
        3. Line 30, variable "x". Hmm, "x" itu apa?
           Kasih nama yang deskriptif dong. Misal
           jumlah_bayar atau total_setelah_diskon.
        
        Coba dipikirin dulu, baru aku bahas jawabannya.

Siswa: Line 15 itu karena owner warung mau diskon mulai
       dari 50rb kak

Hermes: Sip. Sekarang tambahin komentar di kode kamu:
        # Diskon 10% untuk pembelian di atas 50rb
        # sesuai request owner
        
        Kenapa penting? Karena 6 bulan lagi kamu lupa,
        atau orang lain baca kode kamu ga ngerti.
```

**Tips untuk guru:**
- Biasakan siswa review 1 teman sebelum submit. Ini namanya "peer review".
- Diskusikan di kelas: review yang paling kritis, yang paling suportif
- Tunjukkan bahwa kritik yang bagus itu soal kode, bukan orang

---

## Zona 2: Project-Based Learning (Bikin Karya)

### 4. Project Pribadi dengan AI Sparring

**Skill diasah:** Decision making, trade-off thinking, ownership

**Kapan pakai:** Saat siswa mau bikin project di luar tugas (hobi, portofolio, atau ide bisnis).

**Persona:** Sparring Partner

**Contoh project: "App Catatan Harian dengan HTML+JS"**

```
Siswa: Gw mau bikin app catatan harian pake HTML+JS

Hermes: Oke. Sebelum mulai, jawab 3 pertanyaan dulu.
        Jangan jawab "bebas" atau "terserah". Pikirin:
        
        1. Data di mana? localStorage (di browser), atau
           server (butuh backend)?
        
        2. Butuh login? Atau cukup simpan di browser
           siapa pun yang buka laptop ini?
        
        3. Target device: HP, laptop, atau keduanya?
           (ini ngaruh ke layout)
        
        Pilih dengan alasan, bukan "bebas".

Siswa: localStorage, ga perlu login, target laptop dulu

Hermes: Oke ada alasannya?
        - localStorage: simple, ga perlu setup server
        - ga login: catatan pribadi, privacy OK
        - laptop dulu: MVP, bisa upgrade ke mobile nanti
        
        Setuju sama trade-off-nya? Yakin ga mau backend?

Siswa: Hmm kalo backend gimana?

Hermes: Bisa, tapi kamu perlu:
        - Bikin server (Node/Python)
        - Setup database
        - Handle authentication
        - Deploy ke hosting
        
        Worth it ga untuk catatan pribadi?
        Kalau niatnya portofolio, backend bagus buat dipamer.
        Kalau niatnya cuma dipake sendiri, overkill.
        
        Pilih.

Siswa: Gw pake localStorage dulu. Nanti kalo udah jadi
       dan mau share, gw upgrade.

Hermes: Sip. Sekarang baru mulai implementasi.
        Start dari: bikin 1 file HTML, form input
        catatan, tombol save. Udah?
```

**Tips untuk guru:**
- Project pribadi tanpa deadline = motivasi terbaik
- Bantu siswa resist feature creep (mau ini mau itu, tapi ga kelar)
- Review project tiap 2 minggu: apa yang udah jadi, apa yang stuck

---

### 5. From Scratch Challenge

**Skill diasah:** Independent coding, confidence, self-awareness

**Kapan pakai:** Sebagai tantangan mingguan atau bulanan. Buktiin ke diri sendiri: "Gw bisa tanpa AI."

**Persona:** Default (no hints). AI cuma boleh jawab "iya" atau "tidak".

**Cara praktik:**

1. Pilih fitur simpel (misal: fungsi hitung BMI)
2. Tulis 100% manual
3. Habis jadi, bandingin dengan versi AI
4. Refleksi: apa yang beda? apa yang sama?

**Contoh dialog:**

```
Siswa: Gw mau bikin fungsi hitung BMI 100% manual.
       Deal: kamu cuma boleh jawab "iya" atau "tidak"
       untuk klarifikasi.

Hermes: Deal. Aku cuma jawab "iya/tidak".
        Kalau stuck > 30 menit, baru boleh
        minta 1 hint maksimal. Gas.

Siswa: Pertanyaan 1: BMI itu apa?

Hermes: Iya.

Siswa: Pertanyaan 2: BMI = berat / tinggi^2?

Hermes: Iya.

Siswa: Pertanyaan 3: tinggi dalam meter atau cm?

Hermes: Terserah kamu, yang penting konsisten
        di programnya.

[... 25 menit kemudian ...]

Siswa: Udah jadi! Ini kode gw:
       function bmi(berat, tinggi) {
         return berat / (tinggi * tinggi);
       }
       console.log(bmi(70, 1.75));

Hermes: Sip! Jalan ga?

Siswa: Jalan, output 22.86...

Hermes: Yuk bandingin. Ini versi AI:
        function hitungBMI(beratKg, tinggiM) {
          if (beratKg <= 0 || tinggiM <= 0) {
            throw new Error('Input tidak valid');
          }
          return beratKg / (tinggiM ** 2);
        }
        
        Liat, versi AI ada:
        1. Validasi input (ga terima negatif)
        2. Penamaan lebih deskriptif
        3. Pakai ** bukan * (best practice)
        
        Versi kamu jalan, tapi belum handle edge case.
        Mau improve?

Siswa: Iya, gw tambahin validasi

Hermes: Mantap. Baru kamu belajar apa yang
        AI "tanggung" tanpa kamu sadari.
```

**Tips untuk guru:**
- Challenge ini cocok untuk周末 atau liburan
- Bikin leaderboard: "Siapa yang paling banyak 'from scratch' challenge selesai?"
- Refleksi kelas: "Apa yang paling susah tanpa AI? Kenapa?"

---

### 6. Bug Hunt Tournament

**Skill diasah:** Reading code, attention to detail, competitive spirit

**Kapan pakai:** Sebagai games di kelas atau antar kelas.

**Persona:** Code Reviewer (tapi dipakai untuk cari bug, bukan dapet feedback)

**Cara praktik:**

1. Siswa A bikin kode dengan 2-3 bug disengaja
2. Siswa B review dengan bantuan AI
3. Yang paling banyak bug ketemu = menang
4. Tukar peran

**Contoh dialog:**

```
Siswa A: Ini kode gw, sengaja ada bug. Cari ya!
         [kirim kode]

Siswa B: [submit ke AI]
         "Cari bug di kode ini"

Hermes (Code Reviewer): Oke, aku liat 3 hal yang perlu
        kamu cek:
        
        1. Line 12, parseInt bisa return NaN
           kalau input bukan angka. Belum dihandle.
        
        2. Line 18, off-by-one. Loop kamu jalan
           sampai <= padahal array mulai dari 0.
           Coba trace i=0, i=10.
        
        3. Line 25, kamu lupa tutup tag HTML.
           Browser akan render sisa halaman dengan
           cara unpredictable.
        
        Yang paling urgent untuk difix: yang mana?

Siswa B: Yang off-by-one kayaknya. Yang lain masih jalan
         walau ga bener.

Hermes: Betul. Off-by-one itu bug paling sering
        di production code. Yang lain itu
        "code smell" yang belum tentu crash.
```

**Tips untuk guru:**
- Bikin season: kelas vs kelas, atau angkatan vs angkatan
- Bonus poin: bug yang halus (yang ga langsung keliatan)
- Diskusi: bug apa yang paling sering ke-skip? Kenapa?

---

## Zona 3: Skill-Specific (Sesuai Jurusan)

### 7. Web Dev: Landing Page dalam 1 Jam

**Skill diasah:** HTML/CSS/JS, design thinking, time management

**Kapan pakai:** Latihan rutin untuk siswa RPL/PPLG.

**Persona:** Socratic Mentor (untuk setup) → Code Reviewer (setelah jadi)

**Aturan main:**
- 1 jam waktu total
- Siswa boleh pakai AI untuk clue, tapi design & copy harus sendiri
- Hasil akhir: landing page yang bisa live di Vercel/Netlify

**Workflow:**

```
[0-10 menit] Diskusi outline dengan AI
Siswa: Gw bikin landing page buat jualan kaos anime
Hermes: Oke. Sebelum kasih clue:
        1. Target customer: anak SMA atau orang kerja?
        2. Goal: klik WA, atau order langsung?
        3. Hero section: gambar produk atau headline?
        Tulis dulu outline, baru kita implement.

[10-50 menit] Coding sendiri
Siswa: [mulai coding, sesekali tanya clue]
       "Kak, gimana cara bikin sticky navbar?"
       "Kak, gw mau kasih efek hover di button"

[50-60 menit] Final review
Siswa: [submit kode]
Hermes: Aku review 1 hal bagus + 3 pertanyaan
```

**Tips untuk guru:**
- Tambahin constraint: "Ga boleh pake framework, murni HTML+CSS+JS"
- Atau sebaliknya: "Pakai React/Next.js, deploy ke Vercel"
- Showcase hasil siswa di GitHub Pages atau Vercel

---

### 8. Data Science: Cek Data dengan Code

**Skill diasah:** Pandas, data cleaning, error reading

**Kapan pakai:** Saat siswa belajar Python for data analysis.

**Persona:** Default (debugging mode)

**Contoh dialog:**

```
Siswa: Kak, error: KeyError: 'nilai'

Hermes: Hmm, KeyError artinya key itu ga ada di data.
        
        Coba print dulu: print(df.columns)
        Liat apa aja kolom yang ada.
        Apakah 'nilai' ada di situ?

Siswa: Kolomnya: nama, kelas, math, science, english
       Ga ada 'nilai'

Hermes: Nah, kamu ketik 'nilai' tapi kolomnya 'math',
        'science', 'english'. Mungkin kamu mau hitung
        rata-rata? Coba:
        
        df['rata_rata'] = df[['math', 'science', 'english']].mean(axis=1)
        
        Tapi, sebelum itu, coba kamu yang nulis.
        Aku kasih clue: ada function mean() di pandas.

Siswa: Oh, mean itu rata-rata ya. Aku coba dulu

[5 menit kemudian]

Siswa: Udah kak! Ini kode gw
       df['rata'] = (df['math'] + df['science'] + df['english']) / 3

Hermes: Sip, jalan! Tapi versi kamu ngerjain satu-satu.
        Coba bandingin pake mean() — lebih scalable
        kalau kolomnya 10, bukan 3. Pelajari kapan
        pakai cara manual, kapan pakai built-in.
```

**Tips untuk guru:**
- Beri dataset dunia nyata (CSV dari BPS, data sekolah, dll)
- Ajari mereka baca error message, bukan langsung nanya ke AI
- Diskusi: Kapan function built-in lebih baik dari manual?

---

### 9. Cybersecurity (Konsep): Pelajari, Bukan Exploit

**Skill diasah:** Security awareness, defensive thinking, etika

**Kapan pakai:** Materi cybersecurity untuk siswa yang tertarik ethical hacking.

**Persona:** Socratic Mentor (edukasi mode, lewat `safety_check.py`)

**PENTING:** Topik ini boleh diajarin sebagai **konsep**, TAPI AI ga kasih exploit yang siap pakai. Lihat `safety/guardrails.md` untuk policy lengkap.

**Contoh dialog:**

```
Siswa: Jelasin konsep SQL injection

Hermes: Oke, ini konsep defensif ya, bukan cara nyerang.
        
        Bayangin kamu bikin login form.
        User input username & password.
        Query kamu: SELECT * FROM users WHERE 
        username='[INPUT]' AND password='[INPUT]'
        
        Kalau form kamu ga sanitize input,
        attacker bisa inject SQL kayak:
        username: ' OR 1=1 --
        
        Query jadi:
        SELECT * FROM users WHERE username=''
        OR 1=1 --' AND password='...'
        
        'OR 1=1' selalu true, '--' komentar sisa query.
        Hasilnya: login tanpa password.
        
        Cara defend: pakai prepared statement,
        parameterized query. User input diperlakukan
        sebagai data, bukan bagian dari query.
        
        Mau aku kasih contoh code yang aman?

Siswa: Iya kak

Hermes: Oke, di Python pakai sqlite3:
        cursor.execute(
          "SELECT * FROM users WHERE username=? AND password=?",
          (username, password)
        )
        
        Tanda tanya (?) adalah placeholder.
        User input ga akan pernah dianggap sebagai
        bagian dari SQL command. Aman.

Siswa: Sip paham. Kalo di web framework gimana?

Hermes: Tergantung framework. Misal di Flask:
        User.query.filter_by(username=username, 
        password=password).first()
        
        ORM (Object-Relational Mapping) otomatis
        handle ini. Tapi tetep harus validasi
        input di level form.
```

**Tips untuk guru:**
- Konsep boleh, eksploit jangan. Penting banget untuk ditegaskan.
- Bahas juga ethics: "Punya ilmu hacking bukan berarti boleh ngehack"
- Tunjukkan career path yang etis: bug bounty, security consultant, penetration tester (legal)
- Lihat `safety/guardrails.md` untuk policy lengkap

---

## Zona 4: Career & Portfolio

### 10. Bikin Portofolio Online dengan AI

**Skill diasah:** Documentation, communication, professional branding

**Kapan pakai:** Saat siswa sudah punya 1-2 project jadi dan mau publish.

**Persona:** Sparring Partner

**Checklist portofolio yang baik:**

```
□ Project punya README yang jelas
  - Apa projectnya
  - Cara run/install
  - Tech stack yang dipakai
□ Ada screenshot atau demo gif
  - Visual > text
□ Ada link ke live demo (kalau bisa)
□ Ada penjelasan trade-off design
  - Kenapa pilih tech X, bukan Y
  - Apa yang akan di-improve kalau ada waktu
□ Kode bersih dan terorganisir
  - Naming jelas
  - Ada komentar untuk logic kompleks
  - Tidak ada dead code
```

**Contoh dialog:**

```
Siswa: Gw mau pake project kasir tadi buat portofolio

Hermes: Oke. Sebelum publish, jawab:
        1. README-nya udah jelas? Cara run-nya ditulis?
        2. Ada screenshot? Demo gif?
        3. Apa yang bisa kamu jelasin tentang
           trade-off design-mu?
        
        Recruiter ga cuma liat kode,
        mereka liat penjelasan kamu.

Siswa: README belum, screenshot juga belum

Hermes: Oke, 3 task sebelum publish:
        1. Tulis README dalam 30 menit
        2. Screenshot 3 screen utama
        3. Tulis 1 paragraf: "Kenapa gw bikin ini,
           dan apa yang gw belajar"
        
        Setelah itu, baru submit README ke aku.
        Aku review.

Siswa: Sip. Aku kerjain dulu

[1 jam kemudian]

Siswa: [kirim README]

Hermes: 1 hal bagus: cara run-nya lengkap.
        Orang bisa langsung clone & jalanin.
        
        3 pertanyaan:
        1. "Mengapa" belum ada. Kenapa kamu bikin
           ini? Buat siapa? Masalah apa yang
           diselesain?
        2. Tech stack-nya "HTML, JS, Python" -
           terlalu generic. Versi apa? Library apa?
        3. Demo gif-nya 30 detik. Apa yang terjadi
           di 30 detik itu? Recruiter ga punya
           waktu liat semua.
        
        Fix dulu, baru publish.
```

**Tips untuk guru:**
- Portofolio =面试 pertama. Recruiter liat ini sebelum interview.
- Review portofolio siswa sebelum publish. Cek: jelas, rapi, professional.
- Showcase portofolio terbaik di GitHub Pages sekolah
- Ingatkan: portofolio itu living document. Update tiap ada project baru.

---

## Ringkasan: 10 Use Case dalam 1 Tabel

| # | Use Case | Skill Utama | Persona | Butuh Sehari-hari? |
|---|---|---|---|---|
| 1 | Stuck Solver | Debugging | Socratic Mentor | Ya |
| 2 | Pseudo-code Diary | Logical thinking | Socratic Mentor | Ya |
| 3 | Code Review | Self-review | Code Reviewer | Ya |
| 4 | Project Pribadi | Decision making | Sparring Partner | Tidak |
| 5 | From Scratch | Independence | Default (no hints) | Mingguan |
| 6 | Bug Hunt | Attention to detail | Code Reviewer | Tidak |
| 7 | Landing Page 1 Jam | Web dev | Socratic → Reviewer | Tidak |
| 8 | Cek Data | Pandas | Default | Ya (kalau data) |
| 9 | Cyber Konsep | Security | Socratic | Tidak |
| 10 | Portofolio | Communication | Sparring | Bulanan |

## Next Step

- Pelajarin tiap use case di file `personas/*.md`
- Liat `prompts/starter-prompts.md` untuk prompt siap pakai per use case
- Cek `safety/guardrails.md` sebelum pake use case #9 (cybersecurity)
- Latih guru dulu sebelum kenalkan ke siswa
