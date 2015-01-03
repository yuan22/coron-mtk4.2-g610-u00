#!/bin/bash
#        usage: ./mysed.sh dir
#        ./mysed Settings

 for files in `find $1 -name *.smali`
     do
                echo "$files"
                 sed -i 's/com\.android\.settings/com\.android\.settings_ex/g' $files
        
     done
 for replaceClass in `find $1 -name *.smali`
     do
                echo "$files"
                 sed -i 's/com\/android\/settings/com\/android\/settings_ex/g' $replaceClass
        
     done
 for file in `find $1 -name "*.xml"`
     do
                echo "$file"
                 sed -i 's/com\.android\.settings/com\.android\.settings_ex/g' $file
        
     done

mv $1/smali/com/android/settings/ $1/smali/com/android/settings_ex/
