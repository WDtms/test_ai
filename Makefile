include .env

.PHONY: help init pod-install clean-ios init-flutter-version codegen l10n reset-goldens spider-build format build-qa-android build-qa-ios bump-major bump-minor bump-patch set-version

init:
	make init-flutter-version
	fvm flutter clean
	make clean-ios
	fvm flutter pub get
	make codegen

pod-install:
	cd ios && rm -rf .symlinks/ && rm -rf Pods && rm -rf Podfile.lock && rm -rf Flutter/Flutter.podspec
	cd ios && pod deintegrate && sudo gem uninstall cocoapods && sudo gem uninstall cocoapods-core && sudo gem uninstall cocoapods-downloader
	cd ios && brew reinstall cocoapods && pod setup && flutter precache --ios && pod install --repo-update && pod cache clean --all && pod update
	fvm flutter clean && fvm flutter pub get

clean-ios:
	fvm flutter clean
	cd ios/ && pod cache clean --all && xcodebuild clean && rm -rf .symlinks/ && rm -rf Pods && rm -rf Podfile.lock

init-flutter-version:
	fvm install $(FLUTTER_VERSION) && fvm use $(FLUTTER_VERSION)
	fvm flutter doctor
	fvm flutter clean
	fvm flutter pub get

format:
	fvm dart format -l 120 --set-exit-if-changed lib test

codegen:
	fvm flutter pub get && fvm flutter pub run build_runner build --delete-conflicting-outputs && make format

l10n:
	fvm flutter gen-l10n

reset-goldens:
	(cd test && find . -type d -name goldens -prune -exec rm -rf {} \;)
	fvm flutter test --update-goldens

# Быстрый бамп версии для локальной сборки.
bump-version:
	sh ./script/bump.sh minor

bump-major:
	sh ./script/bump.sh major

bump-minor:
	sh ./script/bump.sh minor

bump-patch:
	sh ./script/bump.sh patch

# Вызываем так: make set-version v=2.1.3
set-version:
	sh ./script/version.sh $(v)

get-all-packages:
	sh ./script/packages_get.sh

help:
	@echo "-----------------------------"
	@echo " Доступные команды Makefile:"
	@echo "-----------------------------"
	@echo " make help                   - Показать этот список команд"
	@echo " make init                   - Запуск команды при инициализации проекта"
	@echo " make pod-install            - Установка pod зависимостей для iOS"
	@echo " make clean-ios              - Чистка локальных зависимостей для iOS"
	@echo " make init-flutter-version   - Установка нужной версии fvm"
	@echo " make codegen                - build_runner build & dart format"
	@echo " make l10n                   - flutter gen-l10n & dart format"
	@echo " make reset-goldens          - Удаление всех файлов goldens из тестов"
	@echo " make format                 - dart format -l 120 lib test"
	@echo " make bump-version           - Быстрый бамп версии для локальной сборки."
	@echo " make bump-patch             - Быстрый бамп версии для локальной сборки."
	@echo " make bump-major             - Быстрый бамп версии для локальной сборки."
	@echo " make bump-minor             - Быстрый бамп версии для локальной сборки."
	@echo " make set-version            - Установка нужной версии в pubspec.yaml"
	@echo " make get-all-packages       - Установка всех пакетов в проект"