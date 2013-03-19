#!/bin/bash 

# build apkcerts.txt
function build_apkcerts {
    echo "Build apkcerts.txt"
    adb pull /data/system/packages.xml /home/shiro/MIUI/ace-4.0/out/target_files
    python /home/shiro/MIUI/tools/apkcerts.py /home/shiro/MIUI/ace-4.0/out/target_files/packages.xml /home/shiro/MIUI/ace-4.0/out/target_files/META/apkcerts.txt
    for file in `ls /home/shiro/MIUI/ace-4.0/out/target_files/SYSTEM/framework/*.apk`
    do
        apk=`basename $file`
        echo "name=\"$apk\" certificate=\"build/target/product/security/platform.x509.pem\" private_key=\"build/target/product/security/platform.pk8\"" >> /home/shiro/MIUI/ace-4.0/out/target_files/META/apkcerts.txt
    done
    cat /home/shiro/MIUI/ace-4.0/out/target_files/META/apkcerts.txt | sort > /home/shiro/MIUI/ace-4.0/out/target_files/META/temp.txt
    mv /home/shiro/MIUI/ace-4.0/out/target_files/META/temp.txt /home/shiro/MIUI/ace-4.0/out/target_files/META/apkcerts.txt
}
