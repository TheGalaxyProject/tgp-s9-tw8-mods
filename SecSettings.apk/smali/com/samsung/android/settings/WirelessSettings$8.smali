.class final Lcom/samsung/android/settings/WirelessSettings$8;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "WirelessSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/WirelessSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;
    .registers 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v23, "user"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v12

    if-eqz v12, :cond_3f8

    const/4 v10, 0x1

    :goto_19
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    invoke-static {}, Lcom/android/settings/Utils;->isSupportCseriesUX()Z

    move-result v23

    if-nez v23, :cond_41

    const-string/jumbo v23, "data_usage_settings"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v23, "header_connection_tethering_hotspot"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v23, "toggle_nearby_scanning"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_41
    invoke-static {}, Lcom/android/settings/Utils;->isSupportCseriesUX()Z

    move-result v23

    if-eqz v23, :cond_54

    const-string/jumbo v23, "android.hardware.nfc"

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v23

    xor-int/lit8 v23, v23, 0x1

    if-eqz v23, :cond_5e

    :cond_54
    const-string/jumbo v23, "nfc_setting"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5e
    invoke-static {}, Lcom/android/settings/Utils;->isSupportCseriesUX()Z

    move-result v23

    if-eqz v23, :cond_6a

    invoke-static/range {p1 .. p1}, Lcom/android/settings/Utils;->isHideMobileNetworks(Landroid/content/Context;)Z

    move-result v23

    if-eqz v23, :cond_74

    :cond_6a
    const-string/jumbo v23, "mobile_network_settings_for_C"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_74
    const-string/jumbo v23, "network_management"

    invoke-static/range {v23 .. v23}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v13

    :try_start_7f
    invoke-interface {v13}, Landroid/os/INetworkManagementService;->isBandwidthControlEnabled()Z

    move-result v23

    if-nez v23, :cond_8f

    const-string/jumbo v23, "data_usage_settings"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_8f
    .catch Landroid/os/RemoteException; {:try_start_7f .. :try_end_8f} :catch_56b

    :cond_8f
    :goto_8f
    const-string/jumbo v23, "com.ipsec.vpnclient"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3fb

    const-string/jumbo v23, "vpn_settings"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_a6
    if-nez v10, :cond_bd

    invoke-static/range {p1 .. p1}, Lcom/android/settings/Utils;->isShopDemo(Landroid/content/Context;)Z

    move-result v23

    if-nez v23, :cond_bd

    invoke-static {}, Lcom/android/settings/Utils;->isLDUModel()Z

    move-result v23

    if-nez v23, :cond_bd

    const-string/jumbo v23, "no_config_vpn"

    invoke-virtual/range {v22 .. v23}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_d1

    :cond_bd
    const-string/jumbo v23, "vpn_settings"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v23, "vpn_settings_for_att"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d1
    const-string/jumbo v23, "persist.sys.tether_data"

    const/16 v24, -0x1

    invoke-static/range {v23 .. v24}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v23

    invoke-static/range {v23 .. v23}, Lcom/samsung/android/settings/WirelessSettings;->-set2(I)I

    const-string/jumbo v23, "WirelessSettings"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "getNonIndexableKeys() mTetheredDataML : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-static {}, Lcom/samsung/android/settings/WirelessSettings;->-get8()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v23, "wifi_ap_settings"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v23, "MTR"

    invoke-static {}, Lcom/samsung/android/settings/WirelessSettings;->-get11()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_11c

    const-string/jumbo v23, "vpn_settings"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_11c
    if-nez v10, :cond_124

    invoke-static/range {p1 .. p1}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v23

    if-eqz v23, :cond_12e

    :cond_124
    const-string/jumbo v23, "mobile_network_settings"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_12e
    const-string/jumbo v23, "mobile_network_settings"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v18

    const-string/jumbo v23, "VZW"

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_151

    invoke-static {}, Lcom/samsung/android/settings/WirelessSettings;->-get0()Z

    move-result v23

    xor-int/lit8 v23, v23, 0x1

    if-eqz v23, :cond_165

    :cond_151
    const-string/jumbo v23, "nearby_setting_vzw"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v23, "media_share_category_vzw"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_165
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v23

    const-string/jumbo v24, "CscFeature_Common_ConfigPco"

    invoke-virtual/range {v23 .. v24}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v23, "VZW_PREPAID"

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_407

    const-string/jumbo v23, "VZW_TABLET"

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v23

    :goto_184
    if-eqz v23, :cond_18c

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v23

    if-eqz v23, :cond_1a0

    :cond_18c
    const-string/jumbo v23, "pay_as_you_go"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v23, "data_plan_category"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1a0
    const-string/jumbo v23, "android.hardware.type.television"

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v23

    if-nez v23, :cond_1b3

    invoke-static {}, Lcom/android/settings/Utils;->isSupportCseriesUX()Z

    move-result v23

    xor-int/lit8 v23, v23, 0x1

    if-eqz v23, :cond_1bd

    :cond_1b3
    const-string/jumbo v23, "toggle_airplane"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1bd
    const-string/jumbo v23, "connectivity"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    if-nez v10, :cond_1e3

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->isTetheringSupported()Z

    move-result v23

    xor-int/lit8 v23, v23, 0x1

    if-nez v23, :cond_1e3

    const-string/jumbo v23, "SBM"

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    xor-int/lit8 v23, v23, 0x1

    if-eqz v23, :cond_1f7

    :cond_1e3
    const-string/jumbo v23, "tether_settings"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v23, "wifi_ap_settings"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1f7
    const-string/jumbo v23, "SBM"

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_218

    const-string/jumbo v23, "tether_settings"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v23, "wifi_ap_settings"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_218
    if-nez v10, :cond_228

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->isTetheringSupported()Z

    move-result v23

    xor-int/lit8 v23, v23, 0x1

    if-nez v23, :cond_228

    invoke-static/range {p1 .. p1}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v23

    if-eqz v23, :cond_232

    :cond_228
    const-string/jumbo v23, "header_connection_tethering_hotspot"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_232
    invoke-static {}, Lcom/android/settings/Utils;->isSupportEthernet()Z

    move-result v23

    if-nez v23, :cond_242

    const-string/jumbo v23, "ethernet_settings"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_242
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/rcs/RcsUtils;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/rcs/RcsUtils;

    move-result-object v15

    if-eqz v15, :cond_27b

    const-string/jumbo v23, "com.samsung.rcs"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_25d

    invoke-virtual {v15}, Lcom/samsung/android/settings/rcs/RcsUtils;->isRcsEnabledInCsc()Z

    move-result v23

    xor-int/lit8 v23, v23, 0x1

    if-eqz v23, :cond_40b

    :cond_25d
    const-string/jumbo v23, "rcs_settings"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v23, "rcs_settings_partial_branded"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v23, "rcs_settings_partial_branded_cpr"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_27b
    :goto_27b
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v23

    const-string/jumbo v24, "com.samsung.feature.mirrorlink_fw"

    invoke-virtual/range {v23 .. v24}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v11

    :try_start_286
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v23

    const-string/jumbo v24, "com.samsung.android.app.mirrorlink"

    const/16 v25, 0x0

    invoke-virtual/range {v23 .. v25}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_292
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_286 .. :try_end_292} :catch_495
    .catchall {:try_start_286 .. :try_end_292} :catchall_4f8

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v17

    const/4 v9, 0x0

    const/16 v21, -0x1

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v23

    const-string/jumbo v24, "CscFeature_Common_EnableSprintExtension"

    invoke-virtual/range {v23 .. v24}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_2d2

    const-string/jumbo v23, "persist.sys.tether_data_usb"

    const/16 v24, -0x1

    invoke-static/range {v23 .. v24}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v21

    const-string/jumbo v23, "persist.sys.tether_data_bt"

    const/16 v24, -0x1

    invoke-static/range {v23 .. v24}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v19

    const-string/jumbo v23, "persist.sys.tether_data_wifi"

    const/16 v24, -0x1

    invoke-static/range {v23 .. v24}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v20

    const/16 v23, -0x1

    move/from16 v0, v21

    move/from16 v1, v23

    if-ne v0, v1, :cond_2d1

    const/16 v23, -0x1

    move/from16 v0, v19

    move/from16 v1, v23

    if-eq v0, v1, :cond_48b

    :cond_2d1
    :goto_2d1
    const/4 v9, 0x1

    :cond_2d2
    if-eqz v11, :cond_2de

    if-eqz v9, :cond_2e8

    const/16 v23, 0x1

    move/from16 v0, v21

    move/from16 v1, v23

    if-ge v0, v1, :cond_2e8

    :cond_2de
    const-string/jumbo v23, "mirror_link_settings"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2e8
    :goto_2e8
    invoke-static {}, Lcom/android/settings/Utils;->isSupportSmartBonding()Z

    move-result v23

    if-eqz v23, :cond_2f6

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/WirelessSettings;->isDownloadBoosterSupported(Landroid/content/Context;)Z

    move-result v23

    xor-int/lit8 v23, v23, 0x1

    if-eqz v23, :cond_300

    :cond_2f6
    const-string/jumbo v23, "smart_bonding_settings"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_300
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v23

    if-eqz v23, :cond_31a

    const-string/jumbo v23, "vpn_settings"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v23, "vpn_settings_for_att"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_31a
    const-string/jumbo v23, "network_reset"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMptcp()Z

    move-result v23

    if-eqz v23, :cond_33a

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticLGTModel()Z

    move-result v23

    if-nez v23, :cond_338

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticSKTModel()Z

    move-result v23

    xor-int/lit8 v23, v23, 0x1

    if-nez v23, :cond_33a

    :cond_338
    if-eqz v10, :cond_344

    :cond_33a
    const-string/jumbo v23, "multi_path"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_344
    const-string/jumbo v23, "wifi_calling_settings"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/WirelessSettings;->isEnabledWifiCallingActivity(Landroid/content/Context;)Z

    move-result v23

    if-eqz v23, :cond_36b

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v23

    const-string/jumbo v24, "CscFeature_Common_SupportSecWFC"

    invoke-virtual/range {v23 .. v24}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_36b

    const-string/jumbo v23, "wfc_settings_key"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_36b
    if-nez v10, :cond_373

    invoke-static {}, Lcom/android/settings/Utils;->isSupportCseriesUX()Z

    move-result v23

    if-eqz v23, :cond_37d

    :cond_373
    const-string/jumbo v23, "nearby_scanning_setting_category"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_37d
    const/4 v3, 0x0

    const-string/jumbo v23, "screen_sharing_ready_category"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static/range {p1 .. p1}, Lcom/android/settings/Utils;->showVzwEmergencyAlertOption(Landroid/content/Context;)Z

    move-result v23

    if-nez v23, :cond_398

    const-string/jumbo v23, "key_vzw_emergency_alert"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_398
    if-nez v10, :cond_3a2

    invoke-static/range {p1 .. p1}, Lcom/android/settings/Utils;->isSupportDeviceVisibility(Landroid/content/Context;)Z

    move-result v23

    xor-int/lit8 v23, v23, 0x1

    if-eqz v23, :cond_559

    :cond_3a2
    const-string/jumbo v23, "device_visibility_settings"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3ac
    :goto_3ac
    invoke-static/range {p1 .. p1}, Lcom/android/settings/Utils;->isSupportVZWNetworkLock(Landroid/content/Context;)Z

    move-result v23

    if-eqz v23, :cond_3b8

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->isVzwNetworkUnLocked(Landroid/content/Context;)Z

    move-result v23

    if-eqz v23, :cond_3c5

    :cond_3b8
    const-string/jumbo v23, "network_unlock"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->setVzwNetworkUnLocked(Landroid/content/Context;)V

    :cond_3c5
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    const-string/jumbo v24, "hdmi_mode"

    const/16 v25, -0x1

    invoke-static/range {v23 .. v25}, Lcom/android/settings/Utils;->getIntFromDeXSettings(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    invoke-static {}, Lcom/android/settings/Utils;->isDesktopModeSupported()Z

    move-result v23

    if-eqz v23, :cond_3ed

    const-string/jumbo v23, "com.sec.android.app.desktoplauncher"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->isPackageEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v23

    xor-int/lit8 v23, v23, 0x1

    if-nez v23, :cond_3ed

    const/16 v23, -0x1

    move/from16 v0, v23

    if-ne v8, v0, :cond_3f7

    :cond_3ed
    const-string/jumbo v23, "hdmi_mode"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3f7
    return-object v16

    :cond_3f8
    const/4 v10, 0x0

    goto/16 :goto_19

    :cond_3fb
    const-string/jumbo v23, "vpn_settings_for_att"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_a6

    :cond_407
    const/16 v23, 0x1

    goto/16 :goto_184

    :cond_40b
    invoke-virtual {v15}, Lcom/samsung/android/settings/rcs/RcsUtils;->getRcsFeatures()Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures;->isRcse()Z

    move-result v23

    if-nez v23, :cond_41f

    invoke-virtual {v15}, Lcom/samsung/android/settings/rcs/RcsUtils;->getRcsFeatures()Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures;->isFullBranded()Z

    move-result v23

    if-eqz v23, :cond_435

    :cond_41f
    const-string/jumbo v23, "rcs_settings_partial_branded"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v23, "rcs_settings_partial_branded_cpr"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_27b

    :cond_435
    invoke-virtual {v15}, Lcom/samsung/android/settings/rcs/RcsUtils;->getRcsFeatures()Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures;->isPartialBranded()Z

    move-result v23

    if-eqz v23, :cond_46b

    const-string/jumbo v23, "rcs_settings"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v15}, Lcom/samsung/android/settings/rcs/RcsUtils;->getRcsFeatures()Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures;->isSupportCPR()Z

    move-result v23

    if-eqz v23, :cond_45f

    const-string/jumbo v23, "rcs_settings_partial_branded"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_27b

    :cond_45f
    const-string/jumbo v23, "rcs_settings_partial_branded_cpr"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_27b

    :cond_46b
    const-string/jumbo v23, "rcs_settings"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v23, "rcs_settings_partial_branded"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v23, "rcs_settings_partial_branded_cpr"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_27b

    :cond_48b
    const/16 v23, -0x1

    move/from16 v0, v20

    move/from16 v1, v23

    if-eq v0, v1, :cond_2d2

    goto/16 :goto_2d1

    :catch_495
    move-exception v4

    const/4 v11, 0x0

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v17

    const/4 v9, 0x0

    const/16 v21, -0x1

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v23

    const-string/jumbo v24, "CscFeature_Common_EnableSprintExtension"

    invoke-virtual/range {v23 .. v24}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_4d7

    const-string/jumbo v23, "persist.sys.tether_data_usb"

    const/16 v24, -0x1

    invoke-static/range {v23 .. v24}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v21

    const-string/jumbo v23, "persist.sys.tether_data_bt"

    const/16 v24, -0x1

    invoke-static/range {v23 .. v24}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v19

    const-string/jumbo v23, "persist.sys.tether_data_wifi"

    const/16 v24, -0x1

    invoke-static/range {v23 .. v24}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v20

    const/16 v23, -0x1

    move/from16 v0, v21

    move/from16 v1, v23

    if-ne v0, v1, :cond_4d6

    const/16 v23, -0x1

    move/from16 v0, v19

    move/from16 v1, v23

    if-eq v0, v1, :cond_4ef

    :cond_4d6
    :goto_4d6
    const/4 v9, 0x1

    :cond_4d7
    if-eqz v11, :cond_4e3

    if-eqz v9, :cond_2e8

    const/16 v23, 0x1

    move/from16 v0, v21

    move/from16 v1, v23

    if-ge v0, v1, :cond_2e8

    :cond_4e3
    const-string/jumbo v23, "mirror_link_settings"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2e8

    :cond_4ef
    const/16 v23, -0x1

    move/from16 v0, v20

    move/from16 v1, v23

    if-eq v0, v1, :cond_4d7

    goto :goto_4d6

    :catchall_4f8
    move-exception v23

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v17

    const/4 v9, 0x0

    const/16 v21, -0x1

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v24

    const-string/jumbo v25, "CscFeature_Common_EnableSprintExtension"

    invoke-virtual/range {v24 .. v25}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_539

    const-string/jumbo v24, "persist.sys.tether_data_usb"

    const/16 v25, -0x1

    invoke-static/range {v24 .. v25}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v21

    const-string/jumbo v24, "persist.sys.tether_data_bt"

    const/16 v25, -0x1

    invoke-static/range {v24 .. v25}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v19

    const-string/jumbo v24, "persist.sys.tether_data_wifi"

    const/16 v25, -0x1

    invoke-static/range {v24 .. v25}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v20

    const/16 v24, -0x1

    move/from16 v0, v21

    move/from16 v1, v24

    if-ne v0, v1, :cond_538

    const/16 v24, -0x1

    move/from16 v0, v19

    move/from16 v1, v24

    if-eq v0, v1, :cond_550

    :cond_538
    :goto_538
    const/4 v9, 0x1

    :cond_539
    if-eqz v11, :cond_545

    if-eqz v9, :cond_54f

    const/16 v24, 0x1

    move/from16 v0, v21

    move/from16 v1, v24

    if-ge v0, v1, :cond_54f

    :cond_545
    const-string/jumbo v24, "mirror_link_settings"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_54f
    throw v23

    :cond_550
    const/16 v24, -0x1

    move/from16 v0, v20

    move/from16 v1, v24

    if-eq v0, v1, :cond_539

    goto :goto_538

    :cond_559
    invoke-static/range {p1 .. p1}, Lcom/android/settings/Utils;->isSupportGraceUXHeroView(Landroid/content/Context;)Z

    move-result v23

    if-nez v23, :cond_3ac

    const-string/jumbo v23, "device_visibility_settings"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3ac

    :catch_56b
    move-exception v5

    goto/16 :goto_8f
.end method

.method public getRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/search/SearchIndexableRaw;",
            ">;"
        }
    .end annotation

    const v5, 0x7f12030b

    const/4 v8, 0x3

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/android/settings/search/SearchIndexableRaw;

    invoke-direct {v1, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMptcp()Z

    move-result v4

    if-eqz v4, :cond_39

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticSKTModel()Z

    move-result v4

    if-eqz v4, :cond_39

    new-instance v1, Lcom/android/settings/search/SearchIndexableRaw;

    invoke-direct {v1, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    const-string/jumbo v4, "multi_path"

    iput-object v4, v1, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    invoke-static {p1, v5}, Lcom/android/settings/Utils;->getKeywordForSearch(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/settings/search/SearchIndexableRaw;->keywords:Ljava/lang/String;

    iput v8, v1, Lcom/android/settings/search/SearchIndexableRaw;->menu_type:I

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_39
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "eth_device_conn"

    const/4 v6, 0x0

    const/4 v7, -0x2

    invoke-static {v4, v5, v6, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v4, 0x2

    if-eq v0, v4, :cond_58

    new-instance v1, Lcom/android/settings/search/SearchIndexableRaw;

    invoke-direct {v1, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    const-string/jumbo v4, "ethernet_settings"

    iput-object v4, v1, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    iput v8, v1, Lcom/android/settings/search/SearchIndexableRaw;->menu_type:I

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_58
    return-object v3
.end method

.method public getXmlResourcesToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Landroid/provider/SearchIndexableResource;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/provider/SearchIndexableResource;

    invoke-direct {v0, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    const-class v1, Lcom/samsung/android/settings/WirelessSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/provider/SearchIndexableResource;->className:Ljava/lang/String;

    const v1, 0x7f1500dd

    iput v1, v0, Landroid/provider/SearchIndexableResource;->xmlResId:I

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/provider/SearchIndexableResource;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method
