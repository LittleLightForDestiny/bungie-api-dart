:: Prepare the generated source directory
rmdir /S /Q .\lib > nul
mkdir .\lib

mkdir .\lib\src\helpers
copy .\generator\dart-custom\helpers\bungie_net_token.dart .\lib\src\helpers
copy .\generator\dart-custom\helpers\http.dart .\lib\src\helpers
copy .\generator\dart-custom\helpers\oauth.dart .\lib\src\helpers

:: Compile and run the generator
cd generator
.\node_modules\.bin\ts-node.cmd .\ts\generate.ts
rmdir /S /Q build > nul
cd ..

call flutter pub run build_runner build

@echo Done!