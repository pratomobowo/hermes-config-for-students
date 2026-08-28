# Konfigurasi Default Hermes untuk Students

> File ini adalah template konfigurasi yang di-load saat students.
> Tujuannya: setiap sekolah dapat setup konsisten tanpa setup manual per-laptop.

## File: `configs/students-default.yaml`

```yaml
# Konfigurasi ini di-load sebagai default untuk mode students
# Taruh di ~/.hermes/profiles/students/config.yaml

profile:
  name: "students"
  description: "Konfigurasi untuk konfigurasi Hermes untuk siswa ke SMK"
  
# Model
model:
  # Default ke 9router (gateway lokal lo)
  provider: "9router"
  model: "deepseek-v4-flash"  # Cepat, murah, cocok untuk demo
  
  # Fallback kalau 9router down
  fallback:
    - provider: "openrouter"
      model: "anthropic/claude-haiku-3.5"
    - provider: "openai"
      model: "gpt-4o-mini"

# Default persona saat pertama kali dibuka
default_persona: "socratic-mentor"
personas_path: "personas/"

# Behavior yang konsisten lintas persona
shared_rules:
  # Selalu pake bahasa Indonesia casual, kecuali user switch ke English
  language: "id"
  
  # Panggil user "kamu" bukan "Anda"
  formality: "casual"
  
  # Emoji secukupnya
  emoji_level: "low"  # options: none, low, medium, high
  
  # Logging untuk review guru
  logging:
    enabled: true
    path: "/var/hermes-home/safety-logs/students/"
    rotation: "daily"
    include_summaries: true

# Safety settings (load dari safety/guardrails.md)
safety:
  enabled: true
  config_path: "safety/guardrails.md"
  
  # Khusus students: 
  require_guru_approval: false  # False karena kita yang pegang laptop
  show_safety_blocks: true      # Tampilin ke siswa kalau diblokir

# TUI/Dashboard customization untuk students
ui:
  welcome_message: |
    👋 Hai! Aku Hermes, partner belajar kamu hari ini.
    
    Aturan main kita:
    1. Aku ga akan kasih kode lengkap. Aku kasih clue.
    2. Kamu yang nulis kode. Aku yang review.
    3. Stuck? Tanya, bukan minta jawaban.
    
    Yuk mulai. Mau bikin apa hari ini?
  
  theme: "edukatif-ramah"
  show_progress: true
  
  # Helpful prompts yang muncul di sidebar
  quick_prompts:
    - "Aku stuck, kasih clue dong"
    - "Review kode aku"
    - "Aku bingung mulai dari mana"
    - "Jelasin pake analogi yang simpel"

# Limit per siswa (untuk students)
session_limits:
  max_duration_minutes: 90
  reminder_at_minutes: 75  # "Waktu tinggal 15 menit"
  auto_end_at_minutes: 90
  end_message: |
    ⏰ Waktunya habis. Keren banget progress kamu hari ini!
    Yuk kita review hasil bareng-bareng dengan guru.

# Mode quick-switch di TUI
quick_switch:
  trigger: "/mode"
  options:
    - name: "mentor"
      description: "Diajak diskusi, ditanya, dikasih clue"
    - name: "reviewer"  
      description: "Aku review kode kamu"
    - name: "sparring"
      description: "Debat sehat, aku challenge keputusan kamu"
    - name: "default"
      description: "Balik ke mode awal"
```

## Per-Sekolah Customization

Setiap sekolah bisa di-customize tanpa ganti konfigurasi global:

```bash
# Untuk SMK A yang fokus ke web dev
hermes --profile students --system "$(cat personas/socratic-mentor.md)"

# Untuk SMK B yang fokus ke data science
hermes --profile students --system "$(cat configs/persona-data-science.md)"

# Untuk universitas yang lebih advance
hermes --profile students --system "$(cat personas/sparring-partner.md)"
```

## Default Quick Prompts

Siswa sering bingung mulai dari mana. Quick prompt yang muncul di sidebar:

```yaml
quick_prompts:
  beginner:
    - "Aku belum pernah coding. Mulai dari mana?"
    - "Bikinin project pertama aku yang simpel"
    - "Jelasin [topik] pake analogi"
  
  intermediate:
    - "Review kode aku yang tadi"
    - "Aku stuck di [error], clue dong"
    - "Best practice untuk [pattern] apa?"
  
  advanced:
    - "Tantang keputusan arsitektur aku"
    - "Alternative apa untuk [teknologi]?"
    - "Refactor kode ini, tapi kasih clue, bukan jawaban"
```

## First-Time Setup Script

Saat siswa pertama kali buka Hermes di laptop mereka:

```bash
# scripts/first-time-setup.sh
#!/bin/bash
# Dipanggil pertama kali saat installer dijalankan

set -e

echo "👋 Welcome to Hermes, Partner Belajar!"

# 1. Copy default config
mkdir -p ~/.hermes/profiles/students/
cp configs/students-default.yaml ~/.hermes/profiles/students/config.yaml

# 2. Setup logging
mkdir -p /var/hermes-home/safety-logs/students/

# 3. Pre-load personas
cp personas/*.md ~/.hermes/profiles/students/personas/

# 4. Test koneksi ke 9router
if curl -s --max-time 5 http://localhost:8181/health > /dev/null; then
    echo "✅ 9router OK"
else
    echo "⚠️ 9router tidak tersedia. Fallback ke cloud model."
fi

# 5. Tampilin welcome screen
hermes --profile students chat --first-run
```

## Verifikasi Setup

Setelah install, test dengan:

```bash
# Cek persona aktif
hermes --profile students status

# Test quick prompt
hermes --profile students chat "Halo"

# Cek logging
hermes --profile students logs --tail 5
```

Output yang diharapkan:
- Persona: `socratic-mentor` (default)
- Model: `9router/deepseek-v4-flash`
- Logging: aktif
- Welcome message muncul

## Catatan untuk Admin

- Backup konfigurasi per-sekolah agar tidak tertimpa
- Update safety rules tiap 3 bulan
- Monitor log size, rotate kalau > 1GB
- Test semua persona sebelum students
