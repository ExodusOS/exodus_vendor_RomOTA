#!/bin/bash
#put script in ExodusOS source folder, make executable (chmod +x createjson.sh) and run it (./createjson.sh)

#modify values below
#leave blank if not used
devices=("codename1" "codename2") #ex: onclite
buildtype="type" #choose from nightly/release

for device in ${devices[*]}; do
#don't modify from here
script_path="`dirname \"$0\"`"
zip_name=`ls -tr $script_path/out/target/product/$device/ExodusOS-*.zip | tail -1`
buildprop=$script_path/out/target/product/$device/system/build.prop

if [ -f $script_path/$device.json ]; then
  rm $script_path/$device.json
fi

linenr=`grep -n "ro.system.build.date.utc" $buildprop | cut -d':' -f1`
timestamp=`sed -n $linenr'p' < $buildprop | cut -d'=' -f2`
zip_only=`basename "$zip_name"`
md5=`md5sum "$zip_name" | cut -d' ' -f1`
size=`stat -c "%s" "$zip_name"`
versionprop=`grep -n "ro.exodus.version" $buildprop | cut -d':' -f1`
version=`sed -n $versionprop'p' < $buildprop | cut -d'=' -f2`

echo '{
   "response": [
    {
      "datetime": '$timestamp',
      "filename": "'$zip_only'",
      "id": "'$md5'",
      "romtype": "'$buildtype'",
      "size": '$size',
      "url": "https://sourceforge.net/projects/exodusos/files/ExodusOS/'$device'/'$version'/'$zip_only'/download",
      "version": "'$version'",
    }
  ]
}' >> $device.json

done
