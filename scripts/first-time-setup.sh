#!/usr/bin/env bash
# First-time setup script untuk installer roadshow di laptop siswa
# Usage: ./first-time-setup.sh

set -e

HERMES_DIR="$HOME/.hermes"
PROFILE_DIR="$HERMES_DIR/profiles/roadshow"
LOG_DIR="/var/hermes-home/safety-logs/roadshow"
PROJECT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

echo ""
echo "============================================="
echo "  👋 Hermes Partner Belajar - First Time Setup"
echo "============================================="
echo ""

# 1. Detect Hermes installation
if ! command -v hermes &> /dev/null; then
    echo "❌ Hermes belum terinstall."
    echo ""
    echo "Cara install:"
    echo "  1. Download dari https://github.com/NousResearch/Hermes-Agent"
    echo "  2. Atau pake pip: pip install hermes-agent"
    echo "  3. Setelah install, jalankan script ini lagi"
    exit 1
fi

echo "✅ Hermes detected: $(hermes --version | head -1)"

# 2. Create profile directory
mkdir -p "$PROFILE_DIR/personas"
mkdir -p "$LOG_DIR"

echo "✅ Profile directory: $PROFILE_DIR"

# 3. Copy personas
echo "📦 Installing personas..."
cp "$PROJECT_DIR/personas/"*.md "$PROFILE_DIR/personas/"
echo "   - socratic-mentor.md"
echo "   - code-reviewer.md"
echo "   - sparring-partner.md"

# 4. Copy default config
echo "📦 Installing default config..."
cp "$PROJECT_DIR/configs/roadshow-default.md" "$PROFILE_DIR/config.md"

# 5. Install safety check script
echo "📦 Installing safety check..."
cp "$PROJECT_DIR/scripts/safety_check.py" "$PROFILE_DIR/safety_check.py"
chmod +x "$PROFILE_DIR/safety_check.py"

# 6. Test safety check
echo ""
echo "🧪 Testing safety check..."
python3 "$PROFILE_DIR/safety_check.py" "Bikinin game ular dong"
echo ""

# 7. Test 9router connection (optional)
if command -v curl &> /dev/null; then
    if curl -s --max-time 3 http://localhost:8181/health > /dev/null 2>&1; then
        echo "✅ 9router detected (localhost:8181)"
    else
        echo "⚠️  9router tidak terdeteksi. Akan pakai cloud fallback."
    fi
fi

# 8. Tampilkan welcome
echo ""
echo "============================================="
echo "  ✅ Setup selesai!"
echo "============================================="
echo ""
echo "Cara menjalankan:"
echo "  hermes --profile roadshow chat"
echo ""
echo "Atau pake shortcut:"
echo "  hermes-roadshow"
echo ""
echo "Default persona: Socratic Mentor"
echo "Default bahasa: Indonesia casual"
echo "Log lokasi: $LOG_DIR"
echo ""
echo "Aturan main partner belajar:"
echo "  1. AI kasih clue, bukan full code"
echo "  2. Kamu yang nulis, AI yang review"
echo "  3. Stuck? Tanya, jangan minta jawaban"
echo ""
