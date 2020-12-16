del /S /Q .dart_tool > nul
del /S /Q pubspec.lock > nul

call flutter clean

cd generator
del /S /Q node_modules > nul
del /S /Q package-lock.json > nul
cd ..

@echo Clean!