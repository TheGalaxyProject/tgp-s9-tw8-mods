.class public Lcom/samsung/android/settings/lockscreen/LockUtils;
.super Ljava/lang/Object;
.source "LockUtils.java"


# static fields
.field private static final CONFIG_LOCK_SCREEN_CLOCK_DISPLAY_POLICY:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_LockScreen_ConfigClockDisplayPolicy"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/lockscreen/LockUtils;->CONFIG_LOCK_SCREEN_CLOCK_DISPLAY_POLICY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAODTimeToInt(Landroid/content/Context;Z)I
    .registers 7

    if-eqz p1, :cond_10

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "aod_mode_start_time"

    const/16 v4, 0x1a4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    return v1

    :cond_10
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "aod_mode_end_time"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static isAODDisabledInPSM(Landroid/content/Context;)Z
    .registers 6

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "psm_always_on_display_mode"

    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1f

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    aget-object v0, v1, v3

    const-string/jumbo v3, "1"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    return v3

    :cond_1f
    const/4 v3, 0x1

    return v3
.end method

.method public static isAlwaysOnDisplayEnabled(Landroid/content/Context;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "aod_mode"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v0, :cond_14

    :goto_13
    return v0

    :cond_14
    move v0, v1

    goto :goto_13
.end method

.method public static isBiometricsLockEnabled(Landroid/content/Context;)Z
    .registers 6

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v4, v1}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v1

    if-eqz v1, :cond_12

    return v4

    :cond_12
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    const/16 v2, 0x10

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v1

    if-eqz v1, :cond_1f

    return v4

    :cond_1f
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    const/16 v2, 0x100

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v1

    if-eqz v1, :cond_2c

    return v4

    :cond_2c
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    const/16 v2, 0x1000

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v1

    if-eqz v1, :cond_39

    return v4

    :cond_39
    return v3
.end method

.method public static isDomesticRoaming(Landroid/content/Context;)Z
    .registers 5

    const/4 v1, 0x0

    if-eqz p0, :cond_19

    const-string/jumbo v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->semIsInternationalRoaming()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    :cond_18
    return v1

    :cond_19
    const-string/jumbo v2, "LockUtils"

    const-string/jumbo v3, "isDomesticRoaming: null context"

    invoke-static {v2, v3}, Lcom/samsung/android/settingslib/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public static isIgnoreNationalRoaming(Landroid/content/Context;)Z
    .registers 6

    const/4 v4, 0x1

    sget-object v1, Lcom/samsung/android/settings/lockscreen/LockUtils;->CONFIG_LOCK_SCREEN_CLOCK_DISPLAY_POLICY:Ljava/lang/String;

    const-string/jumbo v2, "IgnoreNationalRoamingWithoutMNC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-static {p0}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isDomesticRoaming(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_13

    return v4

    :cond_13
    sget-object v1, Lcom/samsung/android/settings/lockscreen/LockUtils;->CONFIG_LOCK_SCREEN_CLOCK_DISPLAY_POLICY:Ljava/lang/String;

    const-string/jumbo v2, "IgnoreNationalRoamingWithMNC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_37

    const-string/jumbo v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_37

    const-string/jumbo v1, "21901"

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    return v4

    :cond_37
    sget-object v1, Lcom/samsung/android/settings/lockscreen/LockUtils;->CONFIG_LOCK_SCREEN_CLOCK_DISPLAY_POLICY:Ljava/lang/String;

    const-string/jumbo v2, "IgnoreNationalRoamingWithOptus"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_56

    const-string/jumbo v1, "50503"

    const-string/jumbo v2, "gsm.sim.operator.numeric"

    const-string/jumbo v3, ""

    invoke-static {v2, v3}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_56

    return v4

    :cond_56
    const/4 v1, 0x0

    return v1
.end method

.method public static isNavigationBarEnabled()Z
    .registers 7

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    const-string/jumbo v4, "config_showNavigationBar"

    const-string/jumbo v5, "bool"

    const-string/jumbo v6, "android"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const/4 v1, 0x0

    :try_start_12
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getBoolean(I)Z
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_19} :catch_1b

    move-result v1

    :goto_1a
    return v1

    :catch_1b
    move-exception v0

    const-string/jumbo v3, "LockUtils"

    const-string/jumbo v4, "Fail to get service bool value"

    invoke-static {v3, v4}, Lcom/samsung/android/settingslib/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1a
.end method

.method public static isNotAODSettingTime(Landroid/content/Context;)Z
    .registers 11

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-static {p0, v9}, Lcom/samsung/android/settings/lockscreen/LockUtils;->getAODTimeToInt(Landroid/content/Context;Z)I

    move-result v1

    invoke-static {p0, v8}, Lcom/samsung/android/settings/lockscreen/LockUtils;->getAODTimeToInt(Landroid/content/Context;Z)I

    move-result v0

    if-ne v1, v0, :cond_d

    return v8

    :cond_d
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 v6, 0xc

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/16 v6, 0xb

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    mul-int/lit8 v6, v3, 0x3c

    add-int v5, v6, v4

    if-ge v1, v0, :cond_2f

    if-lt v5, v1, :cond_2e

    if-le v5, v0, :cond_34

    :cond_2e
    return v9

    :cond_2f
    if-ge v5, v1, :cond_34

    if-le v5, v0, :cond_34

    return v9

    :cond_34
    return v8
.end method

.method public static isSupportAodService(Landroid/content/Context;)Z
    .registers 2

    const-string/jumbo v0, "com.samsung.android.app.aodservice"

    invoke-static {p0, v0}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isSupportBiometricsFeature(Landroid/content/Context;)Z
    .registers 2

    invoke-static {}, Lcom/android/settings/Utils;->isSupportIris()Z

    move-result v0

    if-nez v0, :cond_11

    invoke-static {}, Lcom/android/settings/Utils;->isSupportBioFace()Z

    move-result v0

    if-nez v0, :cond_11

    invoke-static {p0}, Lcom/android/settings/Utils;->hasFingerprintFeature(Landroid/content/Context;)Z

    move-result v0

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x1

    goto :goto_10
.end method

.method public static isSupportFMM()Z
    .registers 4

    const-string/jumbo v2, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34

    const/4 v1, 0x1

    :goto_e
    if-eqz v1, :cond_36

    const-string/jumbo v2, "persist.sys.omc_byod"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_29

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_36

    :cond_29
    const-string/jumbo v2, "LockUtils"

    const-string/jumbo v3, "There is no byod history"

    invoke-static {v2, v3}, Lcom/samsung/android/settingslib/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    return v2

    :cond_34
    const/4 v1, 0x0

    goto :goto_e

    :cond_36
    const/4 v2, 0x1

    return v2
.end method

.method public static isUsingContentHomeButtonInAOD(Landroid/content/Context;)Z
    .registers 11

    const/4 v9, 0x0

    const/4 v2, 0x0

    const/4 v8, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "content://com.samsung.android.app.aodservice.provider/settings/aod_content_to_show"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_28

    :try_start_17
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_25

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_24
    .catch Landroid/database/SQLException; {:try_start_17 .. :try_end_24} :catch_2d
    .catchall {:try_start_17 .. :try_end_24} :catchall_35

    move-result v8

    :cond_25
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_28
    :goto_28
    const/4 v0, 0x2

    if-ne v8, v0, :cond_3a

    const/4 v0, 0x1

    :goto_2c
    return v0

    :catch_2d
    move-exception v7

    :try_start_2e
    invoke-virtual {v7}, Landroid/database/SQLException;->printStackTrace()V
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_35

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_28

    :catchall_35
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_3a
    move v0, v9

    goto :goto_2c
.end method

.method public static shouldInvertTextColor(FZ)Z
    .registers 4

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    return v1

    :cond_4
    const/high16 v0, 0x3e800000    # 0.25f

    cmpg-float v0, p0, v0

    if-gez v0, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    return v1
.end method
