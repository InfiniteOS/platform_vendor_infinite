#Build Prop Overrides
PRODUCT_PROPERTY_OVERRIDES += \
		#FaceLock Props
		ro.facelock.black_timeout=400 \
		ro.facelock.det_timeout=1500 \
		ro.facelock.rec_timeout=2500 \
		ro.facelock.lively_timeout=2500 \
		ro.facelock.est_max_time=600 \
		ro.build.selinux=1 \
		net.tethering.noprovisioning=true \
		ro.infinite.version=$(INF_VERSION)

include vendor/infinite/config/aosp_fixes.mk

PRODUCT_COPY_FILES += \
#		$(LOCAL_PATH)/media/bootanimation.zip:system/media/bootanimation.zip
		vendor/infinite/prebuilt/bin/sysinit:system/bin/sysinit \
		vendor/infinite/prebuilt/etc/init.infinite.rc:root/init.infinite.rc

#Include Overlays
PRODUCT_PACKAGE_OVERLAYS += \
		vendor/pure/overlay/common

#Required Packages
PRODUCT_PACKAGES += \
		Launcher3 \
		LiveWallpapersPicker \
		Stk \
	 	CellBroadcastReceiver \
		libprotobuf-cpp-full

export ANDROID_VERSION=8.0.0

ifeq ($(KBUILD_BUILD_USER),PlaceHolder)
		ifeq ($(KBUILD_BUILD_HOST),Europa)
				INF_BUILD_TYPE := OFFICIAL
		endif
endif

#InfiniteOS system versioning
ifndef INF_BUILD_TYPE
		INF_BUILD_TYPE := UNOFFICIAL
endif

INF_VERSION := InfiniteOS_$(PRODUCT_MODEL)_$(ANDROID_VERSION)_$(shell date +%m%d%Y)_$(INF_BUILD_TYPE)
