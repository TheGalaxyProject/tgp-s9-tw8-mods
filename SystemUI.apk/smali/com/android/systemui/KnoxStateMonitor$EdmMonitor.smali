.class Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;
.super Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback$Stub;
.source "KnoxStateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/KnoxStateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EdmMonitor"
.end annotation


# instance fields
.field private mAirplaneModeAllowed:Z

.field private mBluetoothAllowed:Z

.field private mCellularDataAllowed:Z

.field private mGPSStateChangeAllowed:Z

.field private mIsDeviceDisableForMaxFailedAttempt:Z

.field private mIsLockscreenInvisibleOverlayConfigured:Z

.field private mIsLockscreenWallpaperConfigured:Z

.field private mIsMDMKioskMode:Z

.field private mIsNavigationBarHidden:Z

.field private mIsStatusBarHidden:Z

.field private mLocationProviderAllowed:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mLockDelay:I

.field private mLockedIccIdList:[Ljava/lang/String;

.field private mMaxNumFailedAttemptForDisable:I

.field private mMultiFactorAuthEnabled:Z

.field private mNFCAllowed:Z

.field private mNFCStateChangeAllowed:Z

.field private mPasswordVisibilityEnabled:Z

.field private mPwdChangeRequest:I

.field private mSettingsChangesAllowed:Z

.field private mStatusBarExpandAllowed:Z

.field private mWifiAllowed:Z

.field private mWifiStateChangeAllowed:Z

.field private mWifiTetheringAllowed:Z

.field private mWipeExcludeExternalStorage:Z

.field final synthetic this$0:Lcom/android/systemui/KnoxStateMonitor;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mAirplaneModeAllowed:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mBluetoothAllowed:Z

    return v0
.end method

.method static synthetic -get10(Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;)Ljava/util/HashMap;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mLocationProviderAllowed:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;)I
    .registers 2

    iget v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mLockDelay:I

    return v0
.end method

.method static synthetic -get12(Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;)I
    .registers 2

    iget v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mMaxNumFailedAttemptForDisable:I

    return v0
.end method

.method static synthetic -get13(Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mMultiFactorAuthEnabled:Z

    return v0
.end method

.method static synthetic -get14(Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mNFCAllowed:Z

    return v0
.end method

.method static synthetic -get15(Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mNFCStateChangeAllowed:Z

    return v0
.end method

.method static synthetic -get16(Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;)I
    .registers 2

    iget v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mPwdChangeRequest:I

    return v0
.end method

.method static synthetic -get17(Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mSettingsChangesAllowed:Z

    return v0
.end method

.method static synthetic -get18(Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mStatusBarExpandAllowed:Z

    return v0
.end method

.method static synthetic -get19(Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mWifiAllowed:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mCellularDataAllowed:Z

    return v0
.end method

.method static synthetic -get20(Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mWifiStateChangeAllowed:Z

    return v0
.end method

.method static synthetic -get21(Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mWifiTetheringAllowed:Z

    return v0
.end method

.method static synthetic -get22(Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mWipeExcludeExternalStorage:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mGPSStateChangeAllowed:Z

    return v0
.end method

.method static synthetic -get4(Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mIsDeviceDisableForMaxFailedAttempt:Z

    return v0
.end method

.method static synthetic -get5(Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mIsLockscreenInvisibleOverlayConfigured:Z

    return v0
.end method

.method static synthetic -get6(Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mIsLockscreenWallpaperConfigured:Z

    return v0
.end method

.method static synthetic -get7(Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mIsMDMKioskMode:Z

    return v0
.end method

.method static synthetic -get8(Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mIsNavigationBarHidden:Z

    return v0
.end method

.method static synthetic -get9(Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mIsStatusBarHidden:Z

    return v0
.end method

.method public constructor <init>(Lcom/android/systemui/KnoxStateMonitor;)V
    .registers 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    iput-object p1, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-direct {p0}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback$Stub;-><init>()V

    iput-boolean v1, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mIsStatusBarHidden:Z

    iput-boolean v1, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mIsNavigationBarHidden:Z

    iput-boolean v1, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mIsMDMKioskMode:Z

    iput-boolean v1, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mWipeExcludeExternalStorage:Z

    iput-boolean v1, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mIsDeviceDisableForMaxFailedAttempt:Z

    iput-boolean v1, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mIsLockscreenInvisibleOverlayConfigured:Z

    iput-boolean v1, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mIsLockscreenWallpaperConfigured:Z

    iput-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mSettingsChangesAllowed:Z

    iput-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mStatusBarExpandAllowed:Z

    iput-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mAirplaneModeAllowed:Z

    iput-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mCellularDataAllowed:Z

    iput-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mNFCAllowed:Z

    iput-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mWifiTetheringAllowed:Z

    iput-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mBluetoothAllowed:Z

    iput-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mNFCStateChangeAllowed:Z

    iput-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mWifiStateChangeAllowed:Z

    iput-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mWifiAllowed:Z

    iput-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mGPSStateChangeAllowed:Z

    iput-boolean v1, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mMultiFactorAuthEnabled:Z

    iput-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mPasswordVisibilityEnabled:Z

    iput v1, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mPwdChangeRequest:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mLockDelay:I

    iput v1, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mMaxNumFailedAttemptForDisable:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mLocationProviderAllowed:Ljava/util/HashMap;

    invoke-direct {p0}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->registerCallback()V

    return-void
.end method

.method private getCurrentFailedAttempts()I
    .registers 10

    const/4 v2, 0x0

    const/4 v8, 0x0

    const-string/jumbo v0, "content://com.sec.knox.provider/PasswordPolicy2"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string/jumbo v3, "getCurrentFailedPasswordAttempts"

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor;->-get0(Lcom/android/systemui/KnoxStateMonitor;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_2c

    :try_start_1e
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_28} :catch_2d
    .catchall {:try_start_1e .. :try_end_28} :catchall_32

    move-result v8

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2c
    :goto_2c
    return v8

    :catch_2d
    move-exception v7

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2c

    :catchall_32
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private isMDMEnabled()Z
    .registers 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mMaxNumFailedAttemptForDisable:I

    if-lez v1, :cond_6

    const/4 v0, 0x1

    :cond_6
    return v0
.end method

.method private registerCallback()V
    .registers 5

    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v1

    if-eqz v1, :cond_a

    :try_start_6
    invoke-virtual {v1, p0}, Landroid/sec/enterprise/EnterpriseDeviceManager;->registerSystemUICallback(Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;)Z

    :goto_9
    return-void

    :cond_a
    const-string/jumbo v2, "KnoxStateMonitor"

    const-string/jumbo v3, "registerKnoxCallback() cannot reference because edm is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_13} :catch_14

    goto :goto_9

    :catch_14
    move-exception v0

    const-string/jumbo v2, "KnoxStateMonitor"

    const-string/jumbo v3, "registerKnoxCallback() Failed!"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method


# virtual methods
.method public excludeExternalStorageForFailedPasswordsWipe(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mWipeExcludeExternalStorage:Z

    return-void
.end method

.method public getLockDelay()I
    .registers 2

    iget v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mLockDelay:I

    return v0
.end method

.method public getPwdChangeRequest()I
    .registers 2

    iget v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mPwdChangeRequest:I

    return v0
.end method

.method public isAirplaneModeTileBlocked()Z
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor;->-get0(Lcom/android/systemui/KnoxStateMonitor;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->isBlockedEdmSettingsChange(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_11

    iget-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mAirplaneModeAllowed:Z

    xor-int/lit8 v0, v0, 0x1

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x1

    goto :goto_10
.end method

.method public isBlockedEdmSettingsChange(Landroid/content/Context;)Z
    .registers 3

    iget-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mSettingsChangesAllowed:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isBlueLightFilterTileBlocked()Z
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor;->-get0(Lcom/android/systemui/KnoxStateMonitor;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->isBlockedEdmSettingsChange(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public isBluetoothTileBlocked()Z
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor;->-get0(Lcom/android/systemui/KnoxStateMonitor;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->isBlockedEdmSettingsChange(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_11

    iget-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mBluetoothAllowed:Z

    xor-int/lit8 v0, v0, 0x1

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x1

    goto :goto_10
.end method

.method public isBrightnessBlocked()Z
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor;->-get0(Lcom/android/systemui/KnoxStateMonitor;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->isBlockedEdmSettingsChange(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public isCellularDataAllowed()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mCellularDataAllowed:Z

    return v0
.end method

.method public isDeviceDisabledForMaxFailedAttempt()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mIsDeviceDisableForMaxFailedAttempt:Z

    if-eqz v0, :cond_f

    invoke-direct {p0}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->isMDMEnabled()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_f

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mIsDeviceDisableForMaxFailedAttempt:Z

    :cond_f
    iget-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mIsDeviceDisableForMaxFailedAttempt:Z

    return v0
.end method

.method public isDndTileBlocked()Z
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor;->-get0(Lcom/android/systemui/KnoxStateMonitor;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->isBlockedEdmSettingsChange(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public isEbookTileBlocked()Z
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor;->-get0(Lcom/android/systemui/KnoxStateMonitor;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->isBlockedEdmSettingsChange(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public isFlashlightTileBlocked()Z
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor;->-get0(Lcom/android/systemui/KnoxStateMonitor;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->isBlockedEdmSettingsChange(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public isLocationProviderAllowed(Ljava/lang/String;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mLocationProviderAllowed:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mLocationProviderAllowed:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_15
    const/4 v0, 0x1

    return v0
.end method

.method public isLocationTileBlocked()Z
    .registers 11

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v8}, Lcom/android/systemui/KnoxStateMonitor;->-get0(Lcom/android/systemui/KnoxStateMonitor;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->isBlockedEdmSettingsChange(Landroid/content/Context;)Z

    move-result v6

    const-string/jumbo v8, "gps"

    invoke-virtual {p0, v8}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->isLocationProviderAllowed(Ljava/lang/String;)Z

    move-result v8

    xor-int/lit8 v4, v8, 0x1

    const-string/jumbo v8, "network"

    invoke-virtual {p0, v8}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->isLocationProviderAllowed(Ljava/lang/String;)Z

    move-result v8

    xor-int/lit8 v5, v8, 0x1

    iget-boolean v3, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mGPSStateChangeAllowed:Z

    iget-object v8, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v8}, Lcom/android/systemui/KnoxStateMonitor;->-get0(Lcom/android/systemui/KnoxStateMonitor;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "gps"

    invoke-static {v8, v9}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v2

    if-nez v4, :cond_45

    if-nez v2, :cond_47

    xor-int/lit8 v0, v3, 0x1

    :goto_36
    if-eqz v2, :cond_49

    xor-int/lit8 v1, v3, 0x1

    :goto_3a
    if-eqz v0, :cond_3e

    if-nez v5, :cond_40

    :cond_3e
    if-eqz v6, :cond_41

    :cond_40
    const/4 v7, 0x1

    :cond_41
    if-eqz v1, :cond_44

    const/4 v7, 0x1

    :cond_44
    return v7

    :cond_45
    const/4 v0, 0x1

    goto :goto_36

    :cond_47
    const/4 v0, 0x0

    goto :goto_36

    :cond_49
    const/4 v1, 0x0

    goto :goto_3a
.end method

.method public isMDMWallpaperEnabled()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mIsLockscreenWallpaperConfigured:Z

    return v0
.end method

.method public isMobileDataTileBlocked()Z
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor;->-get0(Lcom/android/systemui/KnoxStateMonitor;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->isBlockedEdmSettingsChange(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_11

    iget-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mCellularDataAllowed:Z

    xor-int/lit8 v0, v0, 0x1

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x1

    goto :goto_10
.end method

.method public isMultifactorAuthEnforced()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mMultiFactorAuthEnabled:Z

    return v0
.end method

.method public isNavigationBarHidden()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mIsNavigationBarHidden:Z

    return v0
.end method

.method public isPanelExpandEnabled()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mStatusBarExpandAllowed:Z

    return v0
.end method

.method public isPasswordVisibilityEnabled()Z
    .registers 3

    const-string/jumbo v0, "KnoxStateMonitor"

    const-string/jumbo v1, "isPasswordVisibilityEnabled "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mPasswordVisibilityEnabled:Z

    return v0
.end method

.method public isRotationLockTileBlocked()Z
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor;->-get0(Lcom/android/systemui/KnoxStateMonitor;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->isBlockedEdmSettingsChange(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public isSoundModeTileBlocked()Z
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor;->-get0(Lcom/android/systemui/KnoxStateMonitor;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->isBlockedEdmSettingsChange(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public isStatusBarHidden()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mIsStatusBarHidden:Z

    return v0
.end method

.method public isSubIdLockedByAdmin()Z
    .registers 12

    const/4 v10, 0x1

    const/4 v6, 0x0

    iget-object v5, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v5}, Lcom/android/systemui/KnoxStateMonitor;->-get0(Lcom/android/systemui/KnoxStateMonitor;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v5

    sget-object v7, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v5, v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getNextSubIdForState(Lcom/android/internal/telephony/IccCardConstants$State;)I

    move-result v3

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v5

    if-eqz v5, :cond_4d

    iget-object v5, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v5}, Lcom/android/systemui/KnoxStateMonitor;->-get0(Lcom/android/systemui/KnoxStateMonitor;)Landroid/content/Context;

    move-result-object v5

    const-string/jumbo v7, "telephony_subscription_service"

    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionManager;

    invoke-virtual {v2, v3}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v4

    const/4 v0, 0x0

    if-eqz v4, :cond_32

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v0

    :cond_32
    if-nez v0, :cond_35

    return v10

    :cond_35
    if-eqz v0, :cond_4d

    iget-object v5, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mLockedIccIdList:[Ljava/lang/String;

    if-eqz v5, :cond_4d

    iget-object v7, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mLockedIccIdList:[Ljava/lang/String;

    array-length v8, v7

    move v5, v6

    :goto_3f
    if-ge v5, v8, :cond_4d

    aget-object v1, v7, v5

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4a

    return v10

    :cond_4a
    add-int/lit8 v5, v5, 0x1

    goto :goto_3f

    :cond_4d
    return v6
.end method

.method public isVoLteTileBlocked()Z
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor;->-get0(Lcom/android/systemui/KnoxStateMonitor;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->isBlockedEdmSettingsChange(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public isWifiCallingTileBlocked()Z
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor;->-get0(Lcom/android/systemui/KnoxStateMonitor;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->isBlockedEdmSettingsChange(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public isWifiHotspotTileBlocked()Z
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor;->-get0(Lcom/android/systemui/KnoxStateMonitor;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->isBlockedEdmSettingsChange(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_11

    iget-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mWifiTetheringAllowed:Z

    xor-int/lit8 v0, v0, 0x1

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x1

    goto :goto_10
.end method

.method public isWifiTileBlocked()Z
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor;->-get0(Lcom/android/systemui/KnoxStateMonitor;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->isBlockedEdmSettingsChange(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_17

    iget-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mWifiAllowed:Z

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_17

    iget-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mWifiStateChangeAllowed:Z

    xor-int/lit8 v0, v0, 0x1

    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x1

    goto :goto_16
.end method

.method public setAirplaneModeAllowed(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mAirplaneModeAllowed:Z

    return-void
.end method

.method public setApplicationNameControlEnabled(Z)V
    .registers 2

    return-void
.end method

.method public setBluetoothAllowed(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mBluetoothAllowed:Z

    return-void
.end method

.method public setCellularDataAllowed(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mCellularDataAllowed:Z

    return-void
.end method

.method public setGPSStateChangeAllowed(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mGPSStateChangeAllowed:Z

    return-void
.end method

.method public setKioskModeEnabled(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mIsMDMKioskMode:Z

    return-void
.end method

.method public setLocationProviderAllowed(Ljava/lang/String;Z)V
    .registers 5

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mLocationProviderAllowed:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setLockedIccIds([Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mLockedIccIdList:[Ljava/lang/String;

    return-void
.end method

.method public setLockscreenInvisibleOverlay(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mIsLockscreenInvisibleOverlayConfigured:Z

    return-void
.end method

.method public setLockscreenWallpaper(Z)V
    .registers 4

    const/16 v1, 0x13a0

    iget-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mIsLockscreenWallpaperConfigured:Z

    if-eq v0, p1, :cond_1a

    iput-boolean p1, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mIsLockscreenWallpaperConfigured:Z

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor;->-get1(Lcom/android/systemui/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor;->-get1(Lcom/android/systemui/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1a
    return-void
.end method

.method public setMaximumFailedPasswordsForDisable(I)V
    .registers 2

    iput p1, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mMaxNumFailedAttemptForDisable:I

    return-void
.end method

.method public setMultifactorAuthEnabled(Z)V
    .registers 5

    const-string/jumbo v0, "KnoxStateMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMultifactorAuthEnabled( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mMultiFactorAuthEnabled:Z

    return-void
.end method

.method public setNFCAllowed(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mNFCAllowed:Z

    return-void
.end method

.method public setNFCStateChangeAllowed(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mNFCStateChangeAllowed:Z

    return-void
.end method

.method public setNavigationBarHidden(Z)V
    .registers 4

    const/16 v1, 0x139c

    iget-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mIsNavigationBarHidden:Z

    if-eq v0, p1, :cond_1a

    iput-boolean p1, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mIsNavigationBarHidden:Z

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor;->-get1(Lcom/android/systemui/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor;->-get1(Lcom/android/systemui/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1a
    return-void
.end method

.method public setPasswordLockDelay(I)V
    .registers 2

    iput p1, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mLockDelay:I

    return-void
.end method

.method public setPasswordVisibilityEnabled(Z)V
    .registers 5

    const-string/jumbo v0, "KnoxStateMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPasswordVisibilityEnabled( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mPasswordVisibilityEnabled:Z

    return-void
.end method

.method public setPwdChangeRequested(I)V
    .registers 2

    iput p1, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mPwdChangeRequest:I

    return-void
.end method

.method public setSettingsChangeAllowed(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mSettingsChangesAllowed:Z

    return-void
.end method

.method public setStatusBarExpansionAllowed(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mStatusBarExpandAllowed:Z

    return-void
.end method

.method public setStatusBarHidden(Z)V
    .registers 4

    const/16 v1, 0x139b

    iget-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mIsStatusBarHidden:Z

    if-eq v0, p1, :cond_1a

    iput-boolean p1, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mIsStatusBarHidden:Z

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor;->-get1(Lcom/android/systemui/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor;->-get1(Lcom/android/systemui/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1a
    return-void
.end method

.method public setWifiAllowed(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mWifiAllowed:Z

    return-void
.end method

.method public setWifiStateChangeAllowed(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mWifiStateChangeAllowed:Z

    return-void
.end method

.method public setWifiTetheringAllowed(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mWifiTetheringAllowed:Z

    return-void
.end method

.method public updateFailedUnlockAttemptForDeviceDisabled()V
    .registers 6

    const/16 v4, 0x139e

    invoke-direct {p0}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->isMDMEnabled()Z

    move-result v1

    if-eqz v1, :cond_6f

    invoke-direct {p0}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->getCurrentFailedAttempts()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mMaxNumFailedAttemptForDisable:I

    if-lt v0, v1, :cond_6d

    const/4 v1, 0x1

    :goto_11
    iput-boolean v1, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mIsDeviceDisableForMaxFailedAttempt:Z

    const-string/jumbo v1, "KnoxStateMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "reportFailedUnlockAttempt : maxNumFailedAttemptForDisable="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mMaxNumFailedAttemptForDisable:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " , curNumFailedAttempts="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "KnoxStateMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isDeviceDisabledForMaxFailedAttempt="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mIsDeviceDisableForMaxFailedAttempt:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mIsDeviceDisableForMaxFailedAttempt:Z

    if-eqz v1, :cond_6c

    iget-object v1, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v1}, Lcom/android/systemui/KnoxStateMonitor;->-get1(Lcom/android/systemui/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v1}, Lcom/android/systemui/KnoxStateMonitor;->-get1(Lcom/android/systemui/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_6c
    :goto_6c
    return-void

    :cond_6d
    const/4 v1, 0x0

    goto :goto_11

    :cond_6f
    const-string/jumbo v1, "KnoxStateMonitor"

    const-string/jumbo v2, "MDM is not enabled..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6c
.end method
