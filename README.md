# Hermes Config for Students

Config ke sekolah-sekolah SMK yang memperkenalkan AI sebagai **partner belajar**, bukan jalan pintas coding.

## Apa yang dilakukan program ini

Program ini mengunjungi sekolah SMK selama 60-90 menit. Setiap siswa mendapat kesempatan:

- Memegang langsung AI yang sudah ter-install di laptop mereka
- Mengikuti 3 mode "Partner Belajar" (Mentor, Reviewer, Sparring)
- Memecahkan masalah coding bersama AI dengan aturan ketat: **tidak copy-paste tanpa paham**

## Untuk siapa

- Siswa SMK RPL/PPLG dan mahasiswa IT tahun pertama
- Guru informatika yang ingin update metode ajar
- Sekolah yang serius memikirkan masa depan siswanya di era AI

## Yang berbeda dari config coding biasa

Kebanyakan config coding berakhir dengan:
- Anak kagum 5 menit
- Lupa besok
- Tidak ada follow-up

Config ini berbeda karena:

| Aspek | Config Biasa | Hermes Config for Students |
|---|---|---|
| Siapa yang pegang AI | Pemateri saja | Setiap anak pegang sendiri |
| Berapa menit hands-on | 0-5 menit | 40-60 menit |
| Apa yang dipelajari | "AI bisa coding" | "AI jago nulis, kamu yang harus paham" |
| Follow-up | Brosur | Installer di laptop anak + grup Telegram |
| Metrik sukses | Like & foto | Anak masih pakai 1 bulan kemudian |

## Berkas dalam repositori

- `SOUL.md` — Pondasi nilai dan prinsip program
- `personas/` — System prompt untuk 3 mode "Partner Belajar" (Socratic Mentor, Code Reviewer, Sparring Partner)
- `safety/` — Guardrails + Python pre-check untuk blokir konten berbahaya
- `configs/` — Template konfigurasi default per-kegiatan
- `prompts/` — 12 starter prompt siap pakai untuk 4 level siswa
- `demos/` — Script demo siap pakai di kelas
- `scripts/` — Installer dan automation tool
- `docs/` — Dokumentasi penggunaan (use cases, dll)

## Cara berkontribusi

Kami terbuka untuk:

- Guru SMK yang mau adopsi kurikulum
- Sekolah yang mau jadi pilot
- Developer yang mau bantu refine prompt & installer

Lihat `SOUL.md` dulu sebelum kasih ide. Ide harus selaras dengan prinsip di sana.

## Yang Bisa Siswa Lakukan dengan Hermes

Setelah terinstall, siswa punya partner belajar yang bisa dipakai kapan aja. Lihat **[docs/student-use-cases.md](docs/student-use-cases.md)** untuk 10 use case keren:

- **Stuck Solver** — debug bareng AI tanpa malu
- **Pseudo-code Diary** — latihan berpikir tiap pagi
- **Code Review** — feedback jujur sebelum submit
- **Project Pribadi** — diskusi design dengan AI
- **From Scratch Challenge** — buktikan bisa tanpa AI
- **Bug Hunt Tournament** — lomba cari bug
- **Landing Page 1 Jam** — web dev praktis
- **Cek Data** — Python untuk data science
- **Cybersecurity Konsep** — belajar defensif (lihat `safety/`)
- **Portofolio Online** — siap kerja

## Status

Aktif. Target 20 sekolah September-Desember 2026.

## Lisensi

MIT
