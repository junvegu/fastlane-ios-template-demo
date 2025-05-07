# =========================
# ⚙️  Configuraciones por defecto
# =========================

SCHEME        ?= NombreDeTuEsquema
USE_SWIFTLINT ?= true
IS_SPM        ?= false

# =========================
# 🧪 Lanes de Fastlane iOS
# =========================

ci:
	@echo "🚀 Ejecutando CI para SPM con Fastlane..."
	bundle check || bundle install --path vendor/bundle
	USE_SWIFTLINT=$(USE_SWIFTLINT) SCHEME=$(SCHEME) IS_SPM=$(IS_SPM) bundle exec fastlane ci

test:
	@echo "🧪 Ejecutando tests..."
	SCHEME=$(SCHEME) bundle exec fastlane test

lint:
	@echo "🧹 Ejecutando lint..."
	USE_SWIFTLINT=$(USE_SWIFTLINT) bundle exec fastlane lint

build:
	@echo "📦 Ejecutando build_release..."
	SCHEME=$(SCHEME) bundle exec fastlane build_release

tools:
	@echo "🔧 Ejecutando setup_tools..."
	USE_SWIFTLINT=$(USE_SWIFTLINT) bundle exec fastlane setup_tools

# =========================
# 🧼 Utilidades
# =========================

help:
	@echo ""
	@echo "🛠️  Comandos disponibles:"
	@echo ""
	@echo "  make ci             Ejecuta toda la integración continua (test + lint + build)"
	@echo "  make test           Ejecuta los tests unitarios"
	@echo "  make
