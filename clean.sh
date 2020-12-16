rm -rf .dart_tool
rm -rf pubspec.lock

flutter clean

cd generator
rm -rf node_modules
rm -rf package-lock.json
cd ..

echo "Clean!"