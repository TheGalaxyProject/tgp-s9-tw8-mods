.class public Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;
.super Ljava/lang/Object;
.source "DirectionLockSettingsHelper.java"


# instance fields
.field private INTERACTION_CONTROL_EXIT_LOCKED:Ljava/lang/String;

.field public SETTINGS_ARROW_SIZE:I

.field private mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mActivity:Landroid/app/Activity;

.field private mBioFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

.field private mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

.field private mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field private mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "interaction_control_exit_locked"

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->INTERACTION_CONTROL_EXIT_LOCKED:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mActivity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->isMobileKeyboardCovered(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_62

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070166

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->SETTINGS_ARROW_SIZE:I

    :goto_26
    new-instance v0, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-direct {v0, p1}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    const-string/jumbo v0, "accessibility"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/settings/Utils;->getFingerprintManagerOrNull(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/camera/iris/SemIrisManager;->getSemIrisManager(Landroid/content/Context;)Lcom/samsung/android/camera/iris/SemIrisManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/bio/face/SemBioFaceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mBioFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    return-void

    :cond_62
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070165

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->SETTINGS_ARROW_SIZE:I

    goto :goto_26
.end method

.method public static applyLandscapeFullScreen(Landroid/content/Context;Landroid/view/Window;)V
    .registers 7

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v1, v2, Landroid/content/res/Configuration;->orientation:I

    const-string/jumbo v2, "LAND"

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v3

    const-string/jumbo v4, "SEC_FLOATING_FEATURE_COMMON_CONFIG_HIDE_STATUS_BAR"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2f

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v2, v2, 0x400

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_2e
    :goto_2e
    return-void

    :cond_2f
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v2, v2, -0x401

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_2e
.end method

.method private confirmFingerprintPassword()V
    .registers 5

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.android.settings"

    const-string/jumbo v3, "com.samsung.android.settings.biometrics.BiometricsAuthenticationActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "for_fingerprint_authentication"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mActivity:Landroid/app/Activity;

    const/16 v3, 0x65

    invoke-virtual {v2, v1, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1c
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_1c} :catch_1d

    :goto_1c
    return-void

    :catch_1d
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_1c
.end method

.method private confirmIrisPassword()V
    .registers 5

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.android.settings"

    const-string/jumbo v3, "com.samsung.android.settings.biometrics.BiometricsAuthenticationActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "for_iris_authentication"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mActivity:Landroid/app/Activity;

    const/16 v3, 0x65

    invoke-virtual {v2, v1, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1c
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_1c} :catch_1d

    :goto_1c
    return-void

    :catch_1d
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_1c
.end method

.method private getBiometricsSummary(ZZZ)Ljava/lang/String;
    .registers 14

    const-string/jumbo v3, ", "

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ar"

    const-string/jumbo v2, "ja"

    const-string/jumbo v0, "zh"

    iget-object v7, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget-object v7, v7, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v7}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8d

    const-string/jumbo v3, "\u060c "

    :cond_2a
    :goto_2a
    iget-object v7, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "4digits_pin_enabled"

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_a1

    const/4 v5, 0x1

    :goto_3c
    iget-object v7, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v7

    sparse-switch v7, :sswitch_data_11e

    :goto_49
    if-eqz p3, :cond_5e

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f12192d

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5e
    if-eqz p1, :cond_73

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f120b24

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_73
    if-eqz p2, :cond_88

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f120e61

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_88
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    :cond_8d
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_97

    const-string/jumbo v3, "\u3001"

    goto :goto_2a

    :cond_97
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2a

    const-string/jumbo v3, "\uff0c"

    goto :goto_2a

    :cond_a1
    const/4 v5, 0x0

    goto :goto_3c

    :sswitch_a3
    iget-object v7, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mActivity:Landroid/app/Activity;

    const v8, 0x7f120856

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_49

    :sswitch_b0
    iget-object v7, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f1202d7

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_49

    :sswitch_c1
    iget-object v7, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f121cd8

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_49

    :sswitch_d3
    if-eqz v5, :cond_e7

    iget-object v7, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f121cdb

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_49

    :cond_e7
    iget-object v7, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f121cda

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_49

    :sswitch_f9
    iget-object v7, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f121cd6

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_49

    :sswitch_10b
    iget-object v7, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f121cbf

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_49

    nop

    :sswitch_data_11e
    .sparse-switch
        0x9100 -> :sswitch_b0
        0x10000 -> :sswitch_c1
        0x10001 -> :sswitch_a3
        0x20000 -> :sswitch_d3
        0x30000 -> :sswitch_d3
        0x40000 -> :sswitch_f9
        0x50000 -> :sswitch_f9
        0x60000 -> :sswitch_f9
        0x70000 -> :sswitch_10b
        0x90000 -> :sswitch_b0
    .end sparse-switch
.end method

.method public static getMinimumSupportedPassLength()I
    .registers 2

    const-string/jumbo v0, "DirectionLockSettingsHelper"

    const-string/jumbo v1, "getMinimumSupportedPassLength"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "6"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static isDirectionLockSupportFace()Z
    .registers 2

    const-string/jumbo v0, "DirectionLockSettingsHelper"

    const-string/jumbo v1, "isDirectionLockSupportFace"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/settings/Utils;->isSupportBioFace()Z

    move-result v0

    return v0
.end method

.method public static isDirectionLockSupportFingerprint(Landroid/content/Context;)Z
    .registers 3

    const-string/jumbo v0, "DirectionLockSettingsHelper"

    const-string/jumbo v1, "isDirectionLockSupportFingerprint"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/android/settings/Utils;->hasFingerprintFeature(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public static isDirectionLockSupportIris()Z
    .registers 2

    const-string/jumbo v0, "DirectionLockSettingsHelper"

    const-string/jumbo v1, "isDirectionLockSupportIris"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/settings/Utils;->isSupportIris()Z

    move-result v0

    return v0
.end method

.method private isFingerprintDisabled()Z
    .registers 11

    const/4 v9, 0x0

    const/4 v5, 0x1

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mActivity:Landroid/app/Activity;

    const-string/jumbo v7, "device_policy"

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    if-nez v0, :cond_1c

    const-string/jumbo v5, "DirectionLockSettingsHelper"

    const-string/jumbo v6, "isFingerprintDisabled :  dpm is NULL"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    :cond_1c
    invoke-virtual {v0, v9}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;)I

    move-result v6

    and-int/lit8 v6, v6, 0x20

    if-eqz v6, :cond_4e

    const/4 v2, 0x1

    :goto_25
    new-array v4, v5, [Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v8

    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mActivity:Landroid/app/Activity;

    const-string/jumbo v7, "content://com.sec.knox.provider/PasswordPolicy2"

    const-string/jumbo v8, "isBiometricAuthenticationEnabled"

    invoke-static {v6, v7, v8, v4}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v9}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result v6

    if-lez v6, :cond_4b

    if-nez v1, :cond_4b

    const-string/jumbo v6, "DirectionLockSettingsHelper"

    const-string/jumbo v7, "isBiometricAuthenticationEnabled == Utils.EDM_FALSE"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    :cond_4b
    if-nez v3, :cond_50

    :goto_4d
    return v2

    :cond_4e
    const/4 v2, 0x0

    goto :goto_25

    :cond_50
    move v2, v5

    goto :goto_4d
.end method

.method public static isTablet()Z
    .registers 1

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    return v0
.end method

.method private setMountVariables()V
    .registers 6

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v4, "universal_lock_visible"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_66

    move v0, v1

    :goto_14
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v3, v0, v4}, Lcom/android/internal/widget/LockPatternUtils;->setDirectionShowEnabled(ZI)V

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v4, "universal_lock_vibration"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_68

    move v0, v1

    :goto_2d
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v3, v0, v4}, Lcom/android/internal/widget/LockPatternUtils;->setDirectionVibrationEnabled(ZI)V

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v4, "universal_lock_beep"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_6a

    move v0, v1

    :goto_46
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v3, v0, v4}, Lcom/android/internal/widget/LockPatternUtils;->setDirectionSoundEnabled(ZI)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "universal_lock_voice"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_6c

    :goto_5e
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->setDirectionVoiceEnabled(ZI)V

    return-void

    :cond_66
    move v0, v2

    goto :goto_14

    :cond_68
    move v0, v2

    goto :goto_2d

    :cond_6a
    move v0, v2

    goto :goto_46

    :cond_6c
    move v1, v2

    goto :goto_5e
.end method

.method private startIrisRegister([B)V
    .registers 7

    const-string/jumbo v3, "DirectionLockSettingsHelper"

    const-string/jumbo v4, "startIrisRegister"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_9
    const-string/jumbo v3, "com.android.settings.iris.IrisLockSettings"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "previousStage"

    const-string/jumbo v4, "register_iris_request"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "hw_auth_token"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_33
    .catch Ljava/lang/ClassNotFoundException; {:try_start_9 .. :try_end_33} :catch_34

    :goto_33
    return-void

    :catch_34
    move-exception v1

    const-string/jumbo v3, "DirectionLockSettingsHelper"

    const-string/jumbo v4, "startFingerprintLockSettings() exception occured"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_33
.end method


# virtual methods
.method public calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .registers 10

    iget v2, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v4, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/4 v3, 0x1

    if-gt v2, p3, :cond_9

    if-le v4, p2, :cond_18

    :cond_9
    div-int/lit8 v0, v2, 0x2

    div-int/lit8 v1, v4, 0x2

    :goto_d
    div-int v5, v0, v3

    if-le v5, p3, :cond_18

    div-int v5, v1, v3

    if-le v5, p2, :cond_18

    mul-int/lit8 v3, v3, 0x2

    goto :goto_d

    :cond_18
    return v3
.end method

.method public getBitmapFromResource(Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;
    .registers 12

    const/4 v5, 0x1

    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v5, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p1, p2, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    invoke-virtual {p0, v2, p3, p4}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v5

    iput v5, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v5, 0x0

    iput-boolean v5, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v4, 0x0

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v5, v0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;

    if-eqz v5, :cond_31

    move-object v5, v0

    check-cast v5, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;

    invoke-virtual {v5}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    :goto_24
    const/4 v3, 0x0

    if-eqz v4, :cond_40

    const/4 v5, 0x1

    :try_start_28
    invoke-static {v4, p3, p4, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    :try_end_2b
    .catch Ljava/lang/OutOfMemoryError; {:try_start_28 .. :try_end_2b} :catch_41
    .catchall {:try_start_28 .. :try_end_2b} :catchall_54

    move-result-object v3

    instance-of v5, v0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;

    if-eqz v5, :cond_36

    return-object v3

    :cond_31
    invoke-static {p1, p2, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    goto :goto_24

    :cond_36
    invoke-virtual {v4, v3}, Landroid/graphics/Bitmap;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_40

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    :goto_3f
    const/4 v4, 0x0

    :cond_40
    return-object v3

    :catch_41
    move-exception v1

    :try_start_42
    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_54

    instance-of v5, v0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;

    if-eqz v5, :cond_4a

    return-object v3

    :cond_4a
    invoke-virtual {v4, v3}, Landroid/graphics/Bitmap;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_40

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_3f

    :catchall_54
    move-exception v5

    instance-of v6, v0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;

    if-eqz v6, :cond_5a

    return-object v3

    :cond_5a
    invoke-virtual {v4, v3}, Landroid/graphics/Bitmap;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_64

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v4, 0x0

    :cond_64
    throw v5
.end method

.method public getChallengeForFace()J
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mBioFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-eqz v0, :cond_14

    const-string/jumbo v0, "DirectionLockSettingsHelper"

    const-string/jumbo v1, "SemBioFaceManager is NOT Null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mBioFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-virtual {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->preEnroll()J

    move-result-wide v0

    return-wide v0

    :cond_14
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getChallengeForFingerPrint()J
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v0, :cond_14

    const-string/jumbo v0, "DirectionLockSettingsHelper"

    const-string/jumbo v1, "FingerPrint Manager is NOT Null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->preEnroll()J

    move-result-wide v0

    return-wide v0

    :cond_14
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getChallengeForIris()J
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    if-eqz v0, :cond_14

    const-string/jumbo v0, "DirectionLockSettingsHelper"

    const-string/jumbo v1, "SemIrisManager is NOT Null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-virtual {v0}, Lcom/samsung/android/camera/iris/SemIrisManager;->preEnroll()J

    move-result-wide v0

    return-wide v0

    :cond_14
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getCurrentLockScreen()I
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v0

    if-eqz v0, :cond_1a

    return v2

    :cond_1a
    return v2

    :cond_1b
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v0

    return v0
.end method

.method public getLockTypeSummary()Ljava/lang/String;
    .registers 8

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v4

    if-nez v4, :cond_35

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v4

    if-eqz v4, :cond_27

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f121ccd

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_26
    return-object v3

    :cond_27
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f121ccc

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_26

    :cond_35
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v0, 0x0

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    const/4 v6, 0x1

    invoke-virtual {v4, v6, v5}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v4

    if-eqz v4, :cond_46

    const/4 v1, 0x1

    :cond_46
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    const/16 v6, 0x10

    invoke-virtual {v4, v6, v5}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v4

    if-eqz v4, :cond_55

    const/4 v2, 0x1

    :cond_55
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    const/16 v6, 0x100

    invoke-virtual {v4, v6, v5}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v4

    if-eqz v4, :cond_64

    const/4 v0, 0x1

    :cond_64
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    const/16 v6, 0x1000

    invoke-virtual {v4, v6, v5}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v4

    if-eqz v4, :cond_74

    const/4 v2, 0x1

    const/4 v0, 0x1

    :cond_74
    invoke-direct {p0, v1, v2, v0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->getBiometricsSummary(ZZZ)Ljava/lang/String;

    move-result-object v3

    goto :goto_26
.end method

.method public hasEnrolledFingerPrints()Z
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints()Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public hasEnrolledIrises()Z
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-virtual {v0}, Lcom/samsung/android/camera/iris/SemIrisManager;->hasEnrolledIrises()Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public isFingerPrintSwitchOn()Z
    .registers 3

    const-string/jumbo v0, "DirectionLockSettingsHelper"

    const-string/jumbo v1, "isFingerPrintSwitchOn"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public isIrisSwitchOn()Z
    .registers 4

    const-string/jumbo v1, "DirectionLockSettingsHelper"

    const-string/jumbo v2, "isIrisSwitchOn"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-eqz v0, :cond_e

    const/4 v1, 0x0

    return v1

    :cond_e
    const/4 v1, 0x1

    return v1
.end method

.method public isMobileKeyboardCovered(Landroid/content/Context;)Z
    .registers 4

    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    if-ne v1, v0, :cond_e

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isTouchExplorationEnabled()Z
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    return v0
.end method

.method public launchConfirmCurrentLockScreen(ZZZ)Z
    .registers 16

    const v6, 0x10001

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->getCurrentLockScreen()I

    move-result v10

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v1

    if-eqz v1, :cond_25

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mActivity:Landroid/app/Activity;

    const v3, 0x7f120ffe

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    const/4 v1, 0x1

    return v1

    :cond_25
    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v0, 0x0

    const-string/jumbo v1, "DirectionLockSettingsHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "switchState :"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " isFingerPrintSwitch: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " isIrisSwitch: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_6e

    if-eqz p1, :cond_6c

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->getChallengeForFingerPrint()J

    move-result-wide v6

    const/16 v2, 0x69

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v1 .. v7}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;J)Z

    move-result v11

    move v0, v11

    :goto_6b
    return v0

    :cond_6c
    const/4 v0, 0x0

    goto :goto_6b

    :cond_6e
    if-eqz p3, :cond_84

    if-eqz p1, :cond_82

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->getChallengeForIris()J

    move-result-wide v6

    const/16 v2, 0x6b

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v1 .. v7}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;J)Z

    move-result v11

    move v0, v11

    :goto_81
    return v0

    :cond_82
    const/4 v0, 0x0

    goto :goto_81

    :cond_84
    if-nez p1, :cond_a2

    if-ne v10, v6, :cond_a2

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v8

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mActivity:Landroid/app/Activity;

    const/16 v2, 0x66

    invoke-virtual {v1, v8, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    const/4 v0, 0x1

    :cond_a1
    :goto_a1
    return v0

    :cond_a2
    if-nez p1, :cond_b4

    if-eq v10, v6, :cond_b4

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "universal_lock_switch_state"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v0, 0x0

    goto :goto_a1

    :cond_b4
    if-eqz p1, :cond_a1

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    const/16 v2, 0x65

    invoke-virtual {v1, v2, v3, v5}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Z)Z

    move-result v11

    move v0, v11

    if-nez v11, :cond_a1

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->hasEnrolledFingerPrints()Z

    move-result v1

    if-eqz v1, :cond_cc

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->confirmFingerprintPassword()V

    goto :goto_a1

    :cond_cc
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->hasEnrolledIrises()Z

    move-result v1

    if-eqz v1, :cond_d7

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->confirmIrisPassword()V

    goto :goto_a1

    :cond_d7
    if-nez v11, :cond_a1

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v9

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->isDirectionLockSupportFingerprint(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_ff

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mActivity:Landroid/app/Activity;

    const/16 v2, 0x68

    invoke-virtual {v1, v9, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_fd
    const/4 v0, 0x1

    goto :goto_a1

    :cond_ff
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v9}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_fd
.end method

.method public saveLockDirection(Ljava/lang/String;I)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->saveLockDirection(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public saveLockDirection(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 9

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "universal_lock_switch_state"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->setFingerprintScreenLockVerification(Landroid/content/Context;Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, v0, v4, p3}, Lcom/android/internal/widget/LockPatternUtils;->saveLockDirection(Ljava/util/List;Ljava/lang/String;I)V

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->setMountVariables()V

    return-void
.end method

.method public setFingerPrintLockOff()V
    .registers 3

    const-string/jumbo v0, "DirectionLockSettingsHelper"

    const-string/jumbo v1, "setFingerPrintLockOff"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setIrisLockOff()V
    .registers 3

    const-string/jumbo v0, "DirectionLockSettingsHelper"

    const-string/jumbo v1, "setIrisLockOff"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public shouldDirectionLockBeDisabled()Z
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordQuality(I)I

    move-result v0

    const v1, 0x10001

    if-gt v0, v1, :cond_1a

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isLockMenuDisabledByEdm(Landroid/content/Context;)Z

    move-result v0

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x1

    goto :goto_19
.end method

.method public startFingerprintLockSettings([B)V
    .registers 4

    const-string/jumbo v0, "DirectionLockSettingsHelper"

    const-string/jumbo v1, "startFingerprintLockSettings()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->startFingerprintLockSettingsImpl([B)V

    return-void
.end method

.method public startFingerprintLockSettingsImpl([B)V
    .registers 8

    const-string/jumbo v4, "DirectionLockSettingsHelper"

    const-string/jumbo v5, "startFingerprintLockSettingsImpl()"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->isFingerprintDisabled()Z

    move-result v4

    if-eqz v4, :cond_19

    const-string/jumbo v4, "DirectionLockSettingsHelper"

    const-string/jumbo v5, "isFingerprintDisabled() = TURE"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_19
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-static {v4}, Lcom/android/settings/Utils;->getFingerprintManagerOrNull(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v2

    if-eqz v2, :cond_31

    invoke-virtual {v2}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v4

    if-nez v4, :cond_31

    const-string/jumbo v4, "DirectionLockSettingsHelper"

    const-string/jumbo v5, "isHardwareDetected() of Fingerprint is FALSE."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_31
    :try_start_31
    const-string/jumbo v4, "com.android.settings.fingerprint.FingerprintLockSettings"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    iget-object v5, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "previousStage"

    const-string/jumbo v5, "lock_screen_pin_pattern_password"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v4, "hw_auth_token"

    invoke-virtual {v3, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_5b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_31 .. :try_end_5b} :catch_5c

    :goto_5b
    return-void

    :catch_5c
    move-exception v1

    const-string/jumbo v4, "DirectionLockSettingsHelper"

    const-string/jumbo v5, "startFingerprintLockSettings() exception occured"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_5b
.end method

.method public startIrisLockSettings([B)V
    .registers 4

    const-string/jumbo v0, "DirectionLockSettingsHelper"

    const-string/jumbo v1, "startIrisLockSettings"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->hasEnrolledIrises()Z

    move-result v0

    if-eqz v0, :cond_10

    :goto_f
    return-void

    :cond_10
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->startIrisRegister([B)V

    goto :goto_f
.end method

.method public switchToSwipe()V
    .registers 6

    const/4 v4, 0x0

    const-string/jumbo v2, "DirectionLockSettingsHelper"

    const-string/jumbo v3, "switchToSwipe()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "password"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Lcom/android/internal/widget/LockPatternUtils;->clearLock(Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "universal_lock_switch_state"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->INTERACTION_CONTROL_EXIT_LOCKED:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method
