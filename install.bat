call flutter pub get
call flutter pub upgrade

cd generator
call npm install
call npm run submodule
cd ..

@echo Done!