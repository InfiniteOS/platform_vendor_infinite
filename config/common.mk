#Build Prop Overrides
PRODUCT_PROPERTY_OVERRIDES += \
		#FaceLock Props
		ro.facelock.black_timeout=400 \
		ro.facelock.det_timeout=1500 \
		ro.facelock.rec_timeout=2500 \
		ro.facelock.lively_timeout=2500 \
		ro.facelock.est_max_time=600 \

include vendor/infinite/config/aosp_fixes.mk

#BootAnimation
#PRODUCT_COPY_FILES += \
#		$(LOCAL_PATH)/media/bootanimation.zip:system/media/bootanimation.zip

#Include Overlays
PRODUCT_PACKAGE_OVERLAYS += \
		vendor/pure/overlay/common

#Required Packages
PRODUCT_PACKAGES += \
		Launcher3 \
		LiveWallpapersPicker \
		Stk \
	 	CellBroadcastReceiver
