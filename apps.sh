 #!/bin/bash         
 # f=(omtelolet_om peterpan dewa_19 dewa_19 keithurban kent_jones kla_project nur_bayan spice_girls katon_bagaskar charly_puth gun_n_roses metalica oasis enriqueig_lesias radja agnes_mo ricky_martin alessiacara dmasiv via_valen zivilia jazzy_j dbagindas bastian_steal sheryl_cow maha_dewa jasson_derulo ran)
 # f2=(omtelolet_om peterpan dewa_19 dewa_19 keithurban kent_jones kla_project nur_bayan spice_girls katon_bagaskar charly_puth gun_n_roses metalica oasis enriqueig_lesias radja agnes_mo ricky_martin alessiacara dmasiv via_valen zivilia jazzy_j dbagindas bastian_steal sheryl_cow maha_dewa jasson_derulo ran)
 f=(kinetic)
 #upinipin tayoo jarwoadit)
 f2=(kinetic)
 # jarwoadit)
 # fj=(exo bts blacpink wannaone seventeenkorea twicekorea) 
 # rawon sumbar sumut tahu tempe
   # michaeljackson
   # walpaperexo 
   # sehunwallpapers leeminhowallpapers got7wallpaper nctwallpapers leejongsukwallpapers superjuniorwallpaper jichangwookwallpapers redvelvetwallpaper bigbangwallpapers gdragonwallpaper monstaxwallpaper girlsgenerationwallpaper songhyekyowallpapers ikonwallpaper kimhyunjoongwallpapers songjoongkiwallpapers apinkwallpapers baesuzywallpapers shineewallpaper taeyeonwallpaper btobwallpaper winnerwallpaper twone1wallpapers got7wallpaperkpopv2 parkshinhyewallpapers kimbumwallpapers nuestwallpapers yoonawallpapers leeseunggiwallpapers infintewallpapers kimsoohyunwallpapers mamamoowallpapers kpopwallpapers tiffanywallpapers twopmwallpapers hajiwonwallpapers cnbluewallpapers ohmygirlwallpapers seungriwallpapers vixxwallpapers exidwallpapers
# sehunwallpapers leeminhowallpapers got7wallpaper nctwallpapers leejongsukwallpapers superjuniorwallpaper jichangwookwallpapers redvelvetwallpaper bigbangwallpapers gdragonwallpaper monstaxwallpaper girlsgenerationwallpaper songhyekyowallpapers ikonwallpaper kimhyunjoongwallpapers songjoongkiwallpapers apinkwallpapers baesuzywallpapers shineewallpaper taeyeonwallpaper btobwallpaper winnerwallpaper twone1wallpapers got7wallpaperkpopv2 parkshinhyewallpapers kimbumwallpapers nuestwallpapers yoonawallpapers leeseunggiwallpapers infintewallpapers kimsoohyunwallpapers mamamoowallpapers kpopwallpapers tiffanywallpapers twopmwallpapers hajiwonwallpapers cnbluewallpapers ohmygirlwallpapers seungriwallpapers vixxwallpapers exidwallpapers
	plugin(){
		cordova platform add android
		# cordova plugin add cordova-facebook-sdk
		cordova plugin add cordova-plugin-admobpro
		cordova plugin add cordova-plugin-firebase@0.1.19 --save
		cordova plugin add cordova-plugin-screen-orientation
		cordova plugin add cordova-plugin-x-socialsharing
	}
	games(){
		echo "Please Enter Your games :"
		echo "====================================="
		echo "1. Games Memory"
		echo "2. Games Puzzle"
		echo "3. Games Tetris"
		echo "your choise [x] : memory/puzzle/tetris"
		read games
		for ((i=0; i<${#f[*]}; i++)); do
			cordova create ${f[i]} com.rangkuman.${f[i]} ${f2[i]}
			cd ${f[i]}
			plugin
			cordova plugin add cordova-plugin-media
			rm -r www/*  && cp -R ../master_$games/www/*  www/ 
			del_drawable
			cd ../
		done

	}
   masterimg() {
   	echo "Please enter your TEMPLATE MASTER APP : "
   	echo "=========================================================="
   	echo "1. Master (Book/Reference/Recipes_o)"
   	echo "2. Master IMG/GRID template"
   	echo "your choise [x] : master/masterimg = "
   	read master
   	for ((i=0; i<${#f[*]}; i++)); do
   		cordova create ${f[i]} com.rangkuman.${f[i]} ${f2[i]}
   		cd ${f[i]}
   		plugin
 		rm -r www/*  && cp -R ../$master/www/*  www/ 
 		del_drawable
 		cd ../
 	done
 }
 mastermusic() {
 	for ((i=0; i<${#f[*]}; i++)); do
 		cordova create ${f[i]} com.rangkuman.${f[i]} ${f2[i]}
 		cd ${f[i]}
 		plugin
		cordova plugin add cordova-plugin-media
		rm -r www/*  && cp -R ../master/www/*  www/ 
		# del_drawable
		cd ../
	done
}
del_drawable() {
	rm -r platforms/android/app/src/main/res/drawable-land-hdpi/
	rm -r platforms/android/app/src/main/res/drawable-land-ldpi/
	rm -r platforms/android/app/src/main/res/drawable-land-mdpi/
	rm -r platforms/android/app/src/main/res/drawable-land-xxxhdpi/
	rm -r platforms/android/app/src/main/res/drawable-land-xxhdpi/
	rm -r platforms/android/app/src/main/res/drawable-land-xhdpi/
	rm -r platforms/android/app/src/main/res/drawable-port-hdpi/
	rm -r platforms/android/app/src/main/res/drawable-port-ldpi/
	rm -r platforms/android/app/src/main/res/drawable-port-mdpi/
	rm -r platforms/android/app/src/main/res/drawable-port-xxxhdpi/
	rm -r platforms/android/app/src/main/res/drawable-port-xxhdpi/
	rm -r platforms/android/app/src/main/res/drawable-port-xhdpi/
}
getjarupload(){
	convert 64.png 64.jpg
	convert 128.png 128.jpg
	jpegoptim --size=7k 64.jpg
	jpegoptim --size=9k 128.jpg
	convert *.jpeg -resize 480x800 '%d'.png 
}

echo "Please enter your Chois : "
echo "1. Create APP "
echo "2. Add File Music(for music APP)/Wallpaper Images"
echo "3. Android device"
echo "4. Android Release"
echo "5. Set Images For Getjar"
echo "6. XML/js Edit"
echo "7. Download MP3"
echo "8. Multiple Rename"
echo "9. Read only json"
echo "10. Download text lynx"
echo "your choise [x] = "
read menu
if [[ $menu == '1' ]]; then  
	clear
	echo "Please enter your Catrgory APP : "
	echo "=================================== "
	echo "1. Music APP "
	echo "2. TIPS/Reference APP"
	echo "3. Game Aplikasi"
	echo "your choise [x] : music/TIPS/GameApp = "
	read app

	if [[ $app == 'music' ]]; then  
		mastermusic;
	elif [[ $app == 'TIPS' ]]; then
		masterimg;
	elif [[ $app == 'GameApp' ]]; then
		games;
	else echo "Oh no choise!"
	fi
elif [[ $menu == '2' ]]; then
	echo "Music file.json/Images file.jpg [json/jpg]"
	read migs
	if [[ $migs == "json" ]]; then
		echo "Insert Your Last ID file Music = "
		read awal
		echo "Master (music=null/_resep) :"
		read checkm
		echo ${f[i]}
		for (( i = 0; i < ${#f[*]}; i++ )); do
			cd ${f[i]}
			cp ~/Downloads/conn$awal.json www/js/
			rm -f www/js/conn$checkm.json
			mv www/js/conn$awal.json www/js/conn$checkm.json
			((awal--))
			cd ../
		done
	elif [[ $migs == "jpg" ]]; then
		for (( i = 0; i < ${#fj[*]}; i++ )); do
			cd ${f[i]}
			rm -f www/images/pictures/*.jpg
			cp ~/Pictures/wallpaperimg/${fj[i]}/*.jpg  www/images/pictures/
			shopt -s nullglob
			numfiles=(www/images/pictures/*)
			numfiles=${#numfiles[@]}
			for (( d = 1; d <= $numfiles; d++ )); do
				sed -i "s;<!--link-->;<li><div><a href=\"images\/pictures\/Screenshot_$d.jpg\" class=\"swipebox grid-photo-box\" title=\"110+ MEHNDI FEET\"><img class=\"lazy\" data-original=\"images\/pictures\/Screenshot_$d.jpg\"><\/a><\/div><\/li><!--link-->;g" www/index.html
			done
			sed -i "s;<!--link-->;;g" www/index.html
			cd ../
		done
	fi
elif [[ $menu == '3' ]]; then
	for (( i = 0; i < ${#f[*]}; i++ )); do
		cd ${f[i]}
		cp DATA.png 512.png
		convert 512.png -resize 500x500 500.png 
		# convert ../img1.png 500.png ../img1.png  +append datalarge.jpg
		# convert ../12.png  500.png 500.png ../12.png  +append datalarge.jpg
		convert 512.png -resize 32x32 32.png 
		convert 512.png -resize 36x36 36.png 
		convert 512.png -resize 48x48 48.png 
		convert 512.png -resize 64x64 64.png 
		convert 512.png -resize 72x72 72.png 
		convert 512.png -resize 96x96 96.png 
		convert 512.png -resize 128x128 128.png 
		convert 512.png -resize 114x114 114.png 
		convert 512.png -resize 144x144 144.png 
		convert 512.png -resize 192x192 192.png 
		cp 36.png res/icon/android/icon-36-ldpi.png
		cp 48.png res/icon/android/icon-48-mdpi.png
		cp 72.png res/icon/android/icon-72-hdpi.png
		cp 96.png res/icon/android/icon-96-xhdpi.png
		cp 144.png res/icon/android/icon-144-xxhdpi.png
		cp 192.png res/icon/android/icon-192-xxxhdpi.png
		cd res
		mkdir android
		cp -R icon/android/* android/
		cd ../
		cp 512.png www/css/sp.png
		
		# cp 36.png platforms/android/app/src/main/res/mipmap-ldpi/ 
		# cp 48.png platforms/android/app/src/main/res/mipmap-mdpi/ 
		# cp 72.png platforms/android/app/src/main/res/mipmap-hdpi/ 
		# cp 96.png platforms/android/app/src/main/res/mipmap-xhdpi/ 
		# rm -r platforms/android/app/src/main/res/mipmap-ldpi/icon.png 
		# cd platforms/android/app/src/main/res/mipmap-ldpi/ 
		# mv 36.png icon.png 
		# cd ../../../../ 
		# rm -r platforms/android/app/src/main/res/mipmap-mdpi/icon.png 
		# cd platforms/android/app/src/main/res/mipmap-mdpi/ 
		# mv 48.png icon.png 
		# cd ../../../../ 
		# rm -r platforms/android/app/src/main/res/mipmap-hdpi/icon.png 
		# cd platforms/android/app/src/main/res/mipmap-hdpi/ 
		# mv 72.png icon.png 
		# cd ../../../../ 
		# rm -r platforms/android/app/src/main/res/mipmap-xhdpi/icon.png 
		# cd platforms/android/app/src/main/res/mipmap-xhdpi/ 
		# mv 96.png icon.png 
		# cd ../../../../
		# cordova run android --device
		cordova run android 
		cd ../
	done
elif [[ $menu == '4' ]]; then
	for (( i = 0; i < ${#f[*]}; i++ )); do
		cd ${f[i]}
		cordova run android --device
		cd ../
	done
	for (( i = 0; i < ${#f[*]}; i++ )); do
		cd ${f[i]}
		cordova run android --release -- --keystore=../videoapp.jks --storePassword=windows-123 --alias=windowss --password=windows-123
		# cordova run android --release -- --keystore="..\vappsss.keystore" --storePassword=videoapps --alias=upinipin 
		keytool -genkey -v -keystore windows.jks -keyalg RSA -keysize 2048 -validity 10000 -alias my-alias
		mv platforms/android/app/build/outputs/apk/release/app-release-unsigned.apk ${PWD##*/}.apk
		cd ../
	done
elif [[ $menu == '5' ]]; then 
	for (( i = 0; i < ${#f[*]}; i++ )); do
		cd ${f[i]}
		getjarupload
		cd ../
	done
elif [[ $menu == '6' ]]; then 
	echo "1. Add edit config.xml file :"
	echo "2. Add Banner or Intertitial ADS :"
	echo "Type 1/2 :"
	read xmljs
	if [[ $xmljs == '1' ]]; then 
		for (( i = 0; i < ${#f[*]}; i++ )); do
			cd ${f[i]}
			# sed -i "s;<\/widget>; <preference name=\"android-minSdkVersion\" value=\"14\" \/> <preference name=\"android-targetSdkVersion\" value=\"23\" \/>   <platform name=\"android\"> <icon src=\"res\/icon\/android\/icon-36-ldpi.png\" density=\"ldpi\" \/> <icon src=\"res\/icon\/android\/icon-48-mdpi.png\" density=\"mdpi\" \/> <icon src=\"res\/icon\/android\/icon-72-hdpi.png\" density=\"hdpi\" \/> <icon src=\"res\/icon\/android\/icon-96-xhdpi.png\" density=\"xhdpi\" \/> <icon src=\"res\/icon\/android\/icon-144-xxhdpi.png\" density=\"xxhdpi\" \/> <icon src=\"res\/icon\/android\/icon-192-xxxhdpi.png\" density=\"xxxhdpi\" \/> <\/platform><\/widget>;g" config.xml 
			sed -i "s;<\/widget>; <platform name=\"android\"> <icon src=\"res\/icon\/android\/icon-36-ldpi.png\" density=\"ldpi\" \/> <icon src=\"res\/icon\/android\/icon-48-mdpi.png\" density=\"mdpi\" \/> <icon src=\"res\/icon\/android\/icon-72-hdpi.png\" density=\"hdpi\" \/> <icon src=\"res\/icon\/android\/icon-96-xhdpi.png\" density=\"xhdpi\" \/> <icon src=\"res\/icon\/android\/icon-144-xxhdpi.png\" density=\"xxhdpi\" \/> <icon src=\"res\/icon\/android\/icon-192-xxxhdpi.png\" density=\"xxxhdpi\" \/> <\/platform><\/widget>;g" config.xml 
			echo "Your Dev name :"
			read namedev
			sed -i "s;rangkuman;$namedev;g" config.xml
			sed -i "s;Music Song;$namedev;g" www/js/custom.js
			sed -i "s;com.musicsongs.airsupplysongs;com.$namedev.${PWD##*/};g" www/js/custom.js
			sed -i "s;com.rangkuman.henadesign;com.$namedev.${PWD##*/};g" www/js/custom.js
			sed -i "s;appinventor.ai_opang_nova.Justin_Bieber_Songs&hl=in;com.$namedev.${PWD##*/};g" www/js/custom.js
			sed -i "s;com.$namedev.${PWD##*/};\L&;g" config.xml
			sed -i "s;com.$namedev.${PWD##*/};\L&;g" www/js/custom.js
			clear
			echo ${PWD##*/}
			echo Insert Your Color Topbar :
			read colortop
			sed -i "s;#222;#$colortop;g" www/css/bootstrap.min.css
			sed -i "s;#5a5630;#$colortop;g" www/css/style.css
			echo Insert Your Application Name :
			read appname
			if [[ $appname != '' ]]; then 
				sed -i "s;<name>${PWD##*/};<name>$appname;g" config.xml
				sed -i "s;Lagu Justin;$appname;g" www/js/custom.js
				sed -i "s;Henna Design;$appname;g" www/js/custom.js
				sed -i "s;110+ MEHNDI FEET;$appname;g" www/index.html
			fi
			cd ../
		done	
	elif [[ $xmljs == '2' ]]; then 

		for (( i = 0; i < ${#f[*]}; i++ )); do
			cd ${f[i]}
			clear
			echo ${PWD##*/}
			echo "Insert Banner Code :"
			read banners
			sed -i "s;banner: '';banner: '$banners';g" www/js/custom.js

			echo "Insert Intertitial Code :"
			read intertitial
			sed -i "s;interstitial: ''; interstitial: '$intertitial';g" www/js/custom.js
			cd ../
		done
	else
		echo "No Change"
	fi
elif [[ $menu == '7' ]]; then 
	echo "Create Folder (y/n) : "
	read ask
	if [[ $ask == 'y' ]]; then 
		echo "Create Singer/Band Folder:"
		read singer
		mkdir $singer
		cd $singer
	elif [[ $ask == 'n' ]]; then
		echo "Enter to Singer/Band Folder:"
		read singer
		cd $singer
	else 
		echo "Your Folder Now :"
		echo ${PWD##*/}
	fi
	echo "Your Download_link from list Youtube :"
	read list
	echo "From :"
	read first
	echo "To End :"
	read last
	youtube-dl -cit -x --audio-format mp3 --playlist-start $first --playlist-end $last $list

elif [[ $menu == '8' ]]; then 
	echo  ${PWD##*/}
	echo "TO file :"
	read formt
	echo "Your Multiple File: "
	read files
	ar_f=($files)
	for (( i = 0; i < ${#ar_f[*]}; i++ )); do
		mv ${ar_f[i]} a_$i.$formt
	done
elif [[ $menu == "9" ]]; then
	for f in *.Justin_Bieber_Songsn; do
		echo $f
		jq '.[].link_' $f
		echo "Delet this file ? (y/n)"
		read yn
		if [[ $yn == "y" ]]; then
			rm -rf $f
		fi
	done
elif [[ $menu == "lynx" ]]; then
	clear
	echo "Your Based Name Material Recipes: "
	read mrt
	mkdir $mrt
	cd $mrt
	echo "===================================================================="
	echo "Your link base material :"
	read based
	lynx --dump $based > ${PWD##*/}.txt
	# sed -n '155,300 p' ${PWD##*/}.txt > new_${PWD##*/}.txt
	sed -n '200,300 p' ${PWD##*/}.txt > new_${PWD##*/}.txt
	rm -rf ${PWD##*/}.txt
	subl new_${PWD##*/}.txt
	# cat new_${PWD##*/}.txt
	echo "===================================================================="
	echo "Your Multiple Link For recipes: "
	read files
	ar_f=($files)
	arr_new=()
	for (( i = 0; i < ${#ar_f[*]}; i++ )); do
		lynx --dump ${ar_f[i]} > _$i.txt
		sed -n '26,105 p' _$i.txt > new_$i.txt
		# sed -n '4,605 p' _$i.txt > new_$i.txt
		rm -rf _$i.txt
		arr_new+=(new_$i.txt)
	done
	cat ${arr_new[@]} > all_recipes.txt
	echo "===================================================================="
	echo "Download All Images Recipes Add All IMG link"
	read img_link
	mkdir img
	cd img
	ar_i=($img_link)
	for (( i = 0; i < ${#ar_i[*]}; i++ )); do
		wget ${ar_i[i]}
	done
	rename 's/.+/our $i; sprintf("photo%d.jpg", 0+$i++)/e' * -vn
	cd ../../
elif [[ $menu == '' ]]; then 
	for (( i = 0; i < ${#f[*]}; i++ )); do
		cd ${f[i]}
		# cp ../custom.css ~/MusicApp/${PWD##*/}/www/css/
		# cp ../custom.js www/js/
		# cp ../index.html www/
		# sed -i "s;s.field2;s.field1;g" www/js/custom.js
		# COPY MUSIC titile from Folder
		# echo  ${PWD##*/}
		# ls
		# echo "==="
		# read a
		# rename "s/ /_/g" *
		# cordova platform update android
		# cordova clean android
		# cordova run android --device
		# cordova run android 
		# youtube-dl ${f[i]}
		# cp ${f[i]}.apk ../tes/
		# sed -i "s;appinventor.ai_opang_nova.Justin_Bieber_Songscom.streamingmusic.airsupplysongshl=in;com.recipesindonesianfood.${PWD##*/};g" www/js/custom.js
		# rm -rf www/img/*
		# cp  -R ../img/${f[i]}/img/* www/img/
		# new kaystore
  		# keytool -genkey -v -keystore ${PWD##*/}.keystore -alias ${PWD##*/} -keyalg RSA -keysize 2048 -validity 10000;cordova build --release android;mv platforms/android/app/build/outputs/apk/release/app-release-unsigned.apk android-release-unsigned.apk;jarsigner -verbose -sigalg SHA1withRSA -digestalg SHA1 -keystore ${PWD##*/}.keystore android-release-unsigned.apk ${PWD##*/};zipalign -v 4 android-release-unsigned.apk $1;
  		# tayoo = windows
		# Copy all apk
		# mkdir	../apkAll/${f[i]}
		# cp *.apk ../apkAll/${f[i]}/
		# cp DATA.png ../apkAll/${f[i]}/
		cd ../
	done
	echo "Oh no choise!"
	# echo "Download All Images Recipes Add All IMG link"
	# read img_link
	# mkdir img
	# cd img
	# ar_i=($img_link)
	# for (( i = 0; i < ${#ar_i[*]}; i++ )); do
	# 	wget ${ar_i[i]}
	# done
	# rename 's/.+/our $i; sprintf("photo%d.jpg", 0+$i++)/e' * -vn
	# cd ../
else echo "Oh no choise!"
fi
