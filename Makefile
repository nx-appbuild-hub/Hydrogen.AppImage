SOURCE="https://bintray.com/probono/AppImages/download_file?file_path=Hydrogen-0.9.6.glibc2.14-x86_64.AppImage"
OUTPUT="Hydrogen.AppImage"

all:
	echo "Building: $(OUTPUT)"
	rm -f ./$(OUTPUT)
	#wget --output-document=$(OUTPUT) --continue $(SOURCE)
	export ARCH=x86_64 && bin/appimagetool.AppImage AppDir $(OUTPUT)
	chmod +x $(OUTPUT)

