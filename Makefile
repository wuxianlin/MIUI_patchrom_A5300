#
# Makefile for CUBE A5300
#

local-zip-file		:= stockrom.zip

local-out-zip-file	:= MIUI_A5300.zip

# All apps need to be removed from original ZIP file
local-remove-apps   := \
	android_market \
	ChromeBookmarksSyncAdapter \
	cube \
	cube_VideoPlayer \
	DataTransfer \
	DataUsageLockScreenClient \
	DigitalClock \
	FileManager \
	FMRadio \
	Galaxy4 \
	Gallery2 \
	MiHome \
	MtkWeatherProvider \
	MtkWorldClockWidget \
	OneTimeInitializer \
	PinyinIME \
	Phonesky \
	SetupWizard \
	SogouIME \
	SohuTV \
	SystemUI \
	SystemUpdate \
	SystemUpdateAssistant \
	Talkback \
	taobao \
	TFUpdate \
	tianmao \
	UCBrowser \
	Weather3DWidget \
	BasicDreams \
	GmsCore \
	HoloSpiralWallpaper \
	LiveWallpapers \
	LiveWallpapersPicker \
	MagicSmokeWallpapers \
	NoiseField \
	PhaseBeam \
	FaceLock \
	SecurityLocker \
	LatinImeDictionaryPack \
	ConfigUpdater \
	VoiceUnlock \
	VoiceCommand \
	VoiceSearchStub \
	VoiceUnlock \
	VisualizationWallpapers \
	GmsCore \
	GoogleBackupTransport \
	GoogleCalendarSyncAdapter \
	GoogleContactsSyncAdapter \
	GoogleFeedback \
	GoogleLoginService \
	GooglePartnerSetup \
	GoogleServicesFramework \
	GoogleTTS \
	NetworkLocation \


# All apps from original ZIP, but has smali files chanded
local-modified-apps := Stk1 StkSelection StockSettings

local-modified-jars :=

# All apks from MIUI execept MIUISystemUI and framework-miui-res.apk
local-miui-removed-apps := MiuiCompass 
local-miui-apps     := 

local-miui-modified-apps := Phone MiuiSystemUI Settings

local-density := XHDPI

# To define any local-target
#updater := misc/updater-script

# To include the local targets before and after zip the final ZIP file, 
# and the local-targets should: 
# (1) be defined after including porting.mk if using any global variable(see porting.mk)
# (2) the name should be leaded with local- to prevent any conflict with global targets
local-pre-zip := local-zip-misc
local-after-zip :=

include $(PORT_BUILD)/porting.mk

# To define any local-target
local-zip-misc:
	cp ../miui/XHDPI/system/lib/liblbesec.so $(ZIP_DIR)/system/lib
	rm $(ZIP_DIR)/system/media/shutanimation.zip
	cp other/boot.img $(ZIP_DIR)/boot.img
	cp other/build.prop $(ZIP_DIR)/system/build.prop
#	cp other/SogouInput_39860_android_oem_oppo_20131108.apk $(ZIP_DIR)/system/app/SogouInput.apk
#	cp other/Adobe_Flash_Player_11.1.115.81.apk $(ZIP_DIR)/data/miui/preinstall_apps/Adobe_Flash_Player_11.1.115.81.apk
	cp other/Camera.apk $(ZIP_DIR)/system/app/Camera.apk
	cp other/FM.apk $(ZIP_DIR)/system/app/FM.apk
	rm $(ZIP_DIR)/system/chivin/*.apk
	rm $(ZIP_DIR)/system/framework/theme-res-mint.apk
	rm $(ZIP_DIR)/system/framework/theme-res-mocha.apk
	rm $(ZIP_DIR)/system/framework/theme-res-raspberry.apk
