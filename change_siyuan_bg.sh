#!/bin/bash
# path of bing wallpaper
bing_wallpaper_path="/c/Users/1/AppData/Local/Microsoft/BingWallpaperApp/WPImages " 
# path of siyuan cliff 
siyuan_cliff_path="/e/SiYuan2.0Data/conf/appearance/themes/Cliff"
siyuan_bg_path="/e/SiYuan2.0Data/conf/appearance/themes/bgs"

# delete old bg
rm ${siyuan_cliff_path}/cliff_bg.jpg
echo delete done!

cd ${bing_wallpaper_path}
# get the name of the latest bg
filename=`ls -t *.jpg |head -n1|awk '{print $0}'`
echo ${filename} done!

# copy the bg
cp $filename ${siyuan_bg_path}/${filename}
cp $filename ${siyuan_cliff_path}/cliff_bg.jpg
echo copy done!
echo remember: window.location.reload() 

read done


 