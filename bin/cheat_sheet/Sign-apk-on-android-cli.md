How to sign an APK on Android (command line) and deal with zip
_____________________________________________________________
# Get details about APK
-  aapt dump badging SpareParts.apk
```
unzip -l app.apk
aapt dump permissions app/demo_input.apk
```

- Check detailed view zip
```
unzip -v demo_input.apk 
```

- copy files recursively in zip (./ present working directory)
```
zip -r demo_input.apk ./
```

- delete all the sign files (demo at the end)
```
zip -d my_application.apk META-INF/\*
or 
zip -d demo_input.apk "META-INF/*"
```

# Extract specific file from apk
```
unzip -l
unzip -j "demo_input.apk" "res/mipmap-xxxhdpi/ic_launcher.png" -d $PWD/saved-dir
```

- Extract to a relative dir
```
unzip -j -d relativedir archive.zip path/in/archive/file.ext
```

- Extract to the current dir
```
unzip -j -d . archive.zip path/in/archive/file.ext
```

- Extract to absolute dir
```
unzip -j -d /absolutedir archive.zip path/in/archive/file.ext
```

- update file to zip file
```
zip -u demo_input.apk file.txt
```

- update file into an existing directory of zip
```
zip -u demo_input.apk res/fine.txt
```

- Move the file to zip file 
```
zip -m demo_input.apk file.txt
```

- Add the directory to a zip file
```
zip -r demo_input.apk directory_path
```

- Create an encrypted file with a password
```
zip -e demo_input.apk .*txt
```

# Create a key tool
```
keytool -genkey -v -keystore release.keystore -alias example -keyalg RSA -keysize 2048 -validity 10000
```

-Sign APK JARSIGNER
```
jarsigner -verbose -sigalg SHA1withRSA -digestalg ShA1 -keystore release.keystore L3MON.apk example
```

- zip align apk
```
 wget http://security.ubuntu.com/ubuntu/pool/universe/a/android-platform-build/zipalign_8.1.0+r23-3ubuntu2_amd64.deb
 zipalign -v 4 new.apk aligned.apk
```
 
 
 # Create a cert using OpenSSL
```
openssl req -x509 -days 9125 -newkey rsa:1024 -nodes -keyout key.pem -out certificate_x509.pem
openssl pkcs8 -topk8 -outform DER -in key.pem -inform PEM -out key.pk8 -nocrypt
apksigner sign --key key.pk8 --cert certificate_x509.pem app/demo_input.apk
```


# Sign using apksigner
```
keytool -genkey -v -keystore release.keystore -alias example -keyalg RSA -keysize 2048 -validity 10000
apksigner sign --ks-key-alias example --ks release.keystore app/demo_input.apk 
apksigner verify app/demo_input.apk 
jarsigner -verify -verbose my_application.apk
```

# Sign using uber signer
```
openssl req -x509 -days 9125 -newkey rsa:1024 -nodes -keyout key.pem -out certificate_x509.pem
openssl pkcs8 -topk8 -outform DER -in key.pem -inform PEM -out key.pk8 -nocrypt
java -jar uber.jar certificate.pem key.pk8 app/demo_input.apk path-of-the-new-signed-apk.apk
```

We will update this file soon...

Join our private classes on telegram t.me/efxtv
