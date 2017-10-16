cat >$ANDROID_BUILD_TOP/ota_conf <<EOF
# OTA_configuration
ota_url=https://raw.githubusercontent.com/InfiniteOS-devices/ota/master/ota_$(PRODUCT_DEVICE).xml
device_name=ro.infinite.device
release_type=$(INF_BUILD_TYPE)
version_source=ro.cos.version
version_delimiter=_
version_position=3
version_format=MMddyyyy
EOF


cat >$OUT/ota_$(PRODUCT_DEVICE).xml <<EOF
<?xml version="1.0" encoding="UTF-8"?>
<InfiniteOTA xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:noNamespaceSchemaLocation="ota.xsd">
    <Stable>
        <$PRODUCT_DEVICE>
            <Filename>$INF_VERSION</Filename>
            <RomUrl
                id="rom"
                title="ROM"
                description="Download the latest build">https://sourceforge.net/projects/infinite-os/files/$PRODUCT_DEVICE/$INF_VERSION.zip/download</RomUrl>
        </$PRODUCT_DEVICE>
    </Stable>
</InfiniteOTA>
EOF