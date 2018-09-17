.class public Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityUtils;
.super Ljava/lang/Object;
.source "DeviceVisibilityUtils.java"


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field private static final DEFALUT_PROJECTION:[Ljava/lang/String;

.field private static mIsServeyModeOn:I

.field public static misAppInstalled:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, -0x1

    sput v0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityUtils;->misAppInstalled:I

    sput v0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityUtils;->mIsServeyModeOn:I

    const-string/jumbo v0, "content://com.samsung.android.oneconnect.external/exsettings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityUtils;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "settings_key"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "settings_value"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityUtils;->DEFALUT_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAirPlaneModeStatus(Landroid/content/Context;)I
    .registers 4

    if-nez p0, :cond_d

    const-string/jumbo v0, "DeviceVisibilityUtils"

    const-string/jumbo v1, "Context is null"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    return v0

    :cond_d
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "airplane_mode_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getDBInt(Landroid/content/ContentResolver;)I
    .registers 12

    const/4 v5, 0x0

    const/4 v10, 0x0

    if-nez p0, :cond_f

    const-string/jumbo v0, "DeviceVisibilityUtils"

    const-string/jumbo v1, "Context is null"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    return v0

    :cond_f
    const/4 v9, 0x0

    sget-object v1, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityUtils;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityUtils;->DEFALUT_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v3, "settings_key=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const-string/jumbo v0, "device_visibility_enabled"

    aput-object v0, v4, v10

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_3d

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3e

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    const-string/jumbo v0, "settings_value"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    :goto_3a
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3d
    return v9

    :cond_3e
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v0, "settings_key"

    const-string/jumbo v1, "device_visibility_enabled"

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "settings_value"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :try_start_56
    sget-object v0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityUtils;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v0, v7}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_5b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_56 .. :try_end_5b} :catch_5c

    goto :goto_3a

    :catch_5c
    move-exception v8

    const-string/jumbo v0, "DeviceVisibilityUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "can\'t insert - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3a
.end method

.method public static hasPermissions(Landroid/content/Context;)Z
    .registers 6

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string/jumbo v3, "android.permission.ACCESS_FINE_LOCATION"

    const-string/jumbo v4, "com.samsung.android.oneconnect"

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_12

    const/4 v2, 0x1

    :cond_12
    return v2
.end method

.method public static insertLog(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6

    invoke-static {}, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityUtils;->isServeyModeOn()Z

    move-result v2

    if-nez v2, :cond_7

    return-void

    :cond_7
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v2, "app_id"

    const-string/jumbo v3, "com.samsung.android.oneconnect"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "feature"

    const-string/jumbo v3, "DVFM"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_26

    const-string/jumbo v2, "extra"

    invoke-virtual {v0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_26
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "data"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.android.providers.context"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static isQcFirstLaunched(Landroid/content/Context;)Z
    .registers 14

    const/4 v5, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-nez v0, :cond_13

    const-string/jumbo v1, "DeviceVisibilityUtils"

    const-string/jumbo v2, "Context is null"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    return v11

    :cond_13
    const/4 v9, 0x1

    sget-object v1, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityUtils;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityUtils;->DEFALUT_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v3, "settings_key=?"

    new-array v4, v10, [Ljava/lang/String;

    const-string/jumbo v12, "first_launch_enabled"

    aput-object v12, v4, v11

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_3f

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_43

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    const-string/jumbo v1, "settings_value"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    :goto_3c
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3f
    if-ne v9, v10, :cond_7d

    move v1, v10

    :goto_42
    return v1

    :cond_43
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v1, "settings_key"

    const-string/jumbo v2, "first_launch_enabled"

    invoke-virtual {v7, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "settings_value"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :try_start_5b
    sget-object v1, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityUtils;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v7}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_60
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5b .. :try_end_60} :catch_61

    goto :goto_3c

    :catch_61
    move-exception v8

    const-string/jumbo v1, "DeviceVisibilityUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "can\'t insert - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3c

    :cond_7d
    move v1, v11

    goto :goto_42
.end method

.method private static isServeyModeOn()Z
    .registers 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    sget v0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityUtils;->mIsServeyModeOn:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_16

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v1, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    sput v2, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityUtils;->mIsServeyModeOn:I

    :cond_16
    :goto_16
    sget v0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityUtils;->mIsServeyModeOn:I

    if-ne v0, v2, :cond_1e

    return v2

    :cond_1b
    sput v3, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityUtils;->mIsServeyModeOn:I

    goto :goto_16

    :cond_1e
    return v3
.end method

.method public static setDBInt(Landroid/content/Context;ILjava/lang/String;)V
    .registers 12

    if-nez p0, :cond_c

    const-string/jumbo v4, "DeviceVisibilityUtils"

    const-string/jumbo v5, "Context is null"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityUtils;->getDBInt(Landroid/content/ContentResolver;)I

    move-result v4

    if-eq v4, p1, :cond_64

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v4, "settings_key"

    const-string/jumbo v5, "device_visibility_enabled"

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "settings_value"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :try_start_2e
    sget-object v4, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityUtils;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v5, "settings_key=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const-string/jumbo v7, "device_visibility_enabled"

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-virtual {v0, v4, v1, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "com.samsung.android.oneconnect.DEVICE_VISIBILITY"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_61

    const-string/jumbo v5, "DEVICE_VISIBILITY_FROM"

    const-string/jumbo v4, "Settings_more"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_65

    const-string/jumbo v4, "Settings_more"

    :goto_58
    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v4, "DEVICE_VISIBILITY_VALUE"

    invoke-virtual {v3, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_61
    invoke-virtual {p0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_64
    :goto_64
    return-void

    :cond_65
    const-string/jumbo v4, "Settings"
    :try_end_68
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2e .. :try_end_68} :catch_69

    goto :goto_58

    :catch_69
    move-exception v2

    const-string/jumbo v4, "DeviceVisibilityUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "can\'t update - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_64
.end method
