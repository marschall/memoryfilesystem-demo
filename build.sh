rm -rf target/classes
rm -rf mods/

mkdir target/classes
mkdir mods

javac --source-path src/main/java --module-path ./3rdparty --release 9 -d target/classes src/main/java/com/github/marschall/memoryfilesystemdemo/Main.java src/main/java/module-info.java
jar --create --file mods/memoryfilesystem-demo.jar --main-class=com.github.marschall.memoryfilesystemdemo.Main --module-version=1.0 -C target/classes .
java -p mods/:3rdparty/ -m com.github.marschall.memoryfilesystemdemo
