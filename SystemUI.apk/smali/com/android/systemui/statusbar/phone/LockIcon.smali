.class public Lcom/android/systemui/statusbar/phone/LockIcon;
.super Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;
.source "LockIcon.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/UserInfoController$OnUserInfoChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/LockIcon$1;,
        Lcom/android/systemui/statusbar/phone/LockIcon$BottomIconsCallback;,
        Lcom/android/systemui/statusbar/phone/LockIcon$IntrinsicSizeDrawable;
    }
.end annotation


# instance fields
.field private mAccessibilityController:Lcom/android/systemui/statusbar/policy/AccessibilityController;

.field private mCurrentState:I

.field private mDensity:I

.field private mDeviceInteractive:Z

.field private final mDrawOffTimeout:Ljava/lang/Runnable;

.field private mHasFingerPrintIcon:Z

.field private mIconCallback:Lcom/android/systemui/statusbar/phone/LockIcon$BottomIconsCallback;

.field private mLastDeviceInteractive:Z

.field private mLastScreenOn:Z

.field private mLastState:I

.field private mPowerManager:Landroid/os/PowerManager;

.field private mScreenOn:Z

.field private mTransientFpError:Z

.field private mTrustDrawable:Lcom/android/systemui/statusbar/phone/TrustDrawable;

.field private final mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

.field private final mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mUserAvatarIcon:Landroid/graphics/drawable/Drawable;


# direct methods
.method static synthetic -get0()Landroid/content/Context;
    .registers 1

    sget-object v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastState:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mCurrentState:I

    new-instance v0, Lcom/android/systemui/statusbar/phone/-$Lambda$4ML7UA3HI1AZz7rF4mD53wD9vY4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$Lambda$4ML7UA3HI1AZz7rF4mD53wD9vY4;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mDrawOffTimeout:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/systemui/statusbar/phone/LockIcon$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/LockIcon$1;-><init>(Lcom/android/systemui/statusbar/phone/LockIcon;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    new-instance v0, Lcom/android/systemui/statusbar/phone/TrustDrawable;

    invoke-direct {v0, p1}, Lcom/android/systemui/statusbar/phone/TrustDrawable;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/TrustDrawable;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/TrustDrawable;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/LockIcon;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    sget-object v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mPowerManager:Landroid/os/PowerManager;

    return-void
.end method

.method private getAnimationResForTransition(IIZZZZ)I
    .registers 11

    const/4 v3, 0x1

    const/4 v0, -0x1

    const/4 v1, 0x4

    const/4 v2, 0x3

    if-ne p1, v2, :cond_c

    if-ne p2, v1, :cond_c

    const v0, 0x7f08041e

    return v0

    :cond_c
    if-ne p1, v3, :cond_14

    if-ne p2, v1, :cond_14

    const v0, 0x7f0807b5

    return v0

    :cond_14
    if-ne p1, v1, :cond_1c

    if-ne p2, v3, :cond_1c

    const v0, 0x7f080168

    return v0

    :cond_1c
    if-ne p1, v1, :cond_30

    if-ne p2, v2, :cond_30

    const-string/jumbo v1, "SEP"

    sget-object v2, Lcom/android/systemui/Rune;->KEYWI_VALUE_SHORTCUT_STYLE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    :goto_2b
    return v0

    :cond_2c
    const v0, 0x7f08041c

    goto :goto_2b

    :cond_30
    if-ne p1, v2, :cond_42

    if-ne p2, v3, :cond_42

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isTrusted()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_42

    const v0, 0x7f080418

    return v0

    :cond_42
    if-ne p2, v2, :cond_5e

    if-nez p5, :cond_4a

    if-eqz p6, :cond_4a

    if-nez p4, :cond_52

    :cond_4a
    if-eqz p6, :cond_5e

    xor-int/lit8 v1, p3, 0x1

    if-eqz v1, :cond_5e

    if-eqz p4, :cond_5e

    :cond_52
    sget-object v1, Lcom/android/systemui/Rune;->KEYWI_VALUE_SHORTCUT_STYLE:Ljava/lang/String;

    const-string/jumbo v2, "SEP"

    if-ne v1, v2, :cond_5a

    :goto_59
    return v0

    :cond_5a
    const v0, 0x7f08041a

    goto :goto_59

    :cond_5e
    return v0
.end method

.method private getIconForState(IZZ)Landroid/graphics/drawable/Drawable;
    .registers 6

    packed-switch p1, :pswitch_data_3e

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :pswitch_9
    const/4 v0, -0x1

    :goto_a
    sget-object v1, Lcom/android/systemui/statusbar/phone/LockIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    :pswitch_11
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isTrustManaged()Z

    move-result v1

    if-eqz v1, :cond_23

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isTrusted()Z

    move-result v1

    if-eqz v1, :cond_23

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mUserAvatarIcon:Landroid/graphics/drawable/Drawable;

    :cond_23
    const v0, 0x7f080188

    goto :goto_a

    :pswitch_27
    const/4 v0, -0x1

    goto :goto_a

    :pswitch_29
    const v0, 0x1080377

    goto :goto_a

    :pswitch_2d
    if-eqz p2, :cond_35

    if-eqz p3, :cond_35

    const v0, 0x7f0801c6

    goto :goto_a

    :cond_35
    const v0, 0x7f08041a

    goto :goto_a

    :pswitch_39
    const v0, 0x7f0801c7

    goto :goto_a

    nop

    :pswitch_data_3e
    .packed-switch 0x0
        :pswitch_9
        :pswitch_11
        :pswitch_29
        :pswitch_2d
        :pswitch_39
        :pswitch_27
    .end packed-switch
.end method

.method private getState()I
    .registers 7

    sget-object v5, Lcom/android/systemui/statusbar/phone/LockIcon;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintDetectionRunning()Z

    move-result v0

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithFingerprintAllowed()Z

    move-result v2

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v4

    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    sget-object v5, Lcom/android/systemui/statusbar/phone/LockIcon;->mContext:Landroid/content/Context;

    invoke-direct {v1, v5}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/util/SettingsHelper;->isEnabledFaceRecognitionFirstScreen()Z

    move-result v5

    if-eqz v5, :cond_2b

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isShowingFaceRecognitionRetry()Z

    move-result v5

    if-eqz v5, :cond_2b

    const/4 v5, 0x7

    return v5

    :cond_2b
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/util/SettingsHelper;->isEnabledFaceRecognitionFirstScreen()Z

    move-result v5

    if-eqz v5, :cond_3d

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceRecognitionRunning()Z

    move-result v5

    if-eqz v5, :cond_3d

    const/4 v5, 0x6

    return v5

    :cond_3d
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/util/SettingsHelper;->isEnabledIrisOnFirstScreen()Z

    move-result v5

    if-eqz v5, :cond_50

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isShowingIrisRetryButton()Z

    move-result v5

    if-eqz v5, :cond_50

    const/16 v5, 0x9

    return v5

    :cond_50
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/util/SettingsHelper;->isEnabledIrisOnFirstScreen()Z

    move-result v5

    if-eqz v5, :cond_63

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIrisRunning()Z

    move-result v5

    if-eqz v5, :cond_63

    const/16 v5, 0x8

    return v5

    :cond_63
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/util/SettingsHelper;->isEnabledSmartScanRecognitionFirstScreen()Z

    move-result v5

    if-eqz v5, :cond_76

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isShowingIBRetryButton()Z

    move-result v5

    if-eqz v5, :cond_76

    const/16 v5, 0xb

    return v5

    :cond_76
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/util/SettingsHelper;->isEnabledSmartScanRecognitionFirstScreen()Z

    move-result v5

    if-eqz v5, :cond_89

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIBRunning()Z

    move-result v5

    if-eqz v5, :cond_89

    const/16 v5, 0xa

    return v5

    :cond_89
    invoke-virtual {v3, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    move-result v5

    if-eqz v5, :cond_91

    const/4 v5, 0x1

    return v5

    :cond_91
    invoke-virtual {v1, v4}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v5

    if-eqz v5, :cond_a1

    invoke-virtual {v3, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_a1

    const/4 v5, 0x0

    return v5

    :cond_a1
    const/4 v5, 0x5

    return v5
.end method

.method private isOnIconExact(Landroid/view/View;FF)Z
    .registers 9

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v0, v3, [I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v3, v0, v2

    int-to-float v3, v3

    cmpl-float v3, p2, v3

    if-lez v3, :cond_31

    aget v3, v0, v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    cmpg-float v3, p2, v3

    if-gez v3, :cond_31

    aget v3, v0, v1

    int-to-float v3, v3

    cmpl-float v3, p3, v3

    if-lez v3, :cond_2f

    aget v3, v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    cmpg-float v3, p3, v3

    if-gez v3, :cond_2f

    :goto_2e
    return v1

    :cond_2f
    move v1, v2

    goto :goto_2e

    :cond_31
    move v1, v2

    goto :goto_2e
.end method

.method private lockIconPossible()Z
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->getVisibility()I

    move-result v1

    if-nez v1, :cond_10

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->getImageAlpha()I

    move-result v1

    const/16 v2, 0xbf

    if-ne v1, v2, :cond_10

    const/4 v0, 0x1

    :cond_10
    return v0
.end method

.method private updateClickable()V
    .registers 5

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mAccessibilityController:Lcom/android/systemui/statusbar/policy/AccessibilityController;

    if-nez v3, :cond_5

    return-void

    :cond_5
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mAccessibilityController:Lcom/android/systemui/statusbar/policy/AccessibilityController;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/AccessibilityController;->isTouchExplorationEnabled()Z

    move-result v1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isTrustManaged()Z

    move-result v3

    if-eqz v3, :cond_37

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mAccessibilityController:Lcom/android/systemui/statusbar/policy/AccessibilityController;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/AccessibilityController;->isAccessibilityEnabled()Z

    move-result v3

    xor-int/lit8 v0, v3, 0x1

    :goto_1b
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isTrustManaged()Z

    move-result v3

    if-eqz v3, :cond_39

    xor-int/lit8 v2, v0, 0x1

    :goto_25
    if-nez v0, :cond_3b

    :goto_27
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/LockIcon;->setClickable(Z)V

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/LockIcon;->setLongClickable(Z)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mAccessibilityController:Lcom/android/systemui/statusbar/policy/AccessibilityController;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/AccessibilityController;->isAccessibilityEnabled()Z

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/LockIcon;->setFocusable(Z)V

    return-void

    :cond_37
    const/4 v0, 0x0

    goto :goto_1b

    :cond_39
    const/4 v2, 0x0

    goto :goto_25

    :cond_3b
    const/4 v1, 0x1

    goto :goto_27
.end method

.method private updateImageDrawable(I)V
    .registers 8

    const/16 v5, 0x8

    const/4 v4, 0x7

    const/4 v3, 0x6

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_c2

    :pswitch_9
    iget v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mCurrentState:I

    if-ne v0, v1, :cond_7c

    const-string/jumbo v0, "lock_ic_autolock"

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/LockIcon;->setOriginImage(Ljava/lang/String;)V

    const-string/jumbo v0, "lock_ic_autolock_white_solution"

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/LockIcon;->setWhiteBgImage(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/LockIcon;->setAdaptiveColor(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->invalidateImage()V

    :cond_1f
    :goto_1f
    return-void

    :pswitch_20
    iget v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mCurrentState:I

    if-ne v0, v1, :cond_37

    const-string/jumbo v0, "lock_ic_autolock_pressed"

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/LockIcon;->setOriginImage(Ljava/lang/String;)V

    const-string/jumbo v0, "lock_ic_autolock_pressed_white_solution"

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/LockIcon;->setWhiteBgImage(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/LockIcon;->setAdaptiveColor(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->invalidateImage()V

    goto :goto_1f

    :cond_37
    iget v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mCurrentState:I

    if-eq v0, v3, :cond_3f

    iget v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mCurrentState:I

    if-ne v0, v5, :cond_52

    :cond_3f
    const-string/jumbo v0, "ic_biometric_cancel_pressed"

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/LockIcon;->setOriginImage(Ljava/lang/String;)V

    const-string/jumbo v0, "ic_biometric_cancel_pressed_whitebg"

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/LockIcon;->setWhiteBgImage(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/LockIcon;->setAdaptiveColor(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->invalidateImage()V

    goto :goto_1f

    :cond_52
    iget v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mCurrentState:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_3f

    iget v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mCurrentState:I

    if-eq v0, v4, :cond_62

    iget v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mCurrentState:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_75

    :cond_62
    :goto_62
    const-string/jumbo v0, "ic_biometric_retry_pressed"

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/LockIcon;->setOriginImage(Ljava/lang/String;)V

    const-string/jumbo v0, "ic_biometric_retry_pressed_whitebg"

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/LockIcon;->setWhiteBgImage(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/LockIcon;->setAdaptiveColor(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->invalidateImage()V

    goto :goto_1f

    :cond_75
    iget v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mCurrentState:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_1f

    goto :goto_62

    :cond_7c
    iget v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mCurrentState:I

    if-eq v0, v3, :cond_84

    iget v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mCurrentState:I

    if-ne v0, v5, :cond_97

    :cond_84
    const-string/jumbo v0, "ic_biometric_cancel"

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/LockIcon;->setOriginImage(Ljava/lang/String;)V

    const-string/jumbo v0, "ic_biometric_cancel_whitebg"

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/LockIcon;->setWhiteBgImage(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/LockIcon;->setAdaptiveColor(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->invalidateImage()V

    goto :goto_1f

    :cond_97
    iget v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mCurrentState:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_84

    iget v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mCurrentState:I

    if-eq v0, v4, :cond_a7

    iget v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mCurrentState:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_bb

    :cond_a7
    :goto_a7
    const-string/jumbo v0, "ic_biometric_retry"

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/LockIcon;->setOriginImage(Ljava/lang/String;)V

    const-string/jumbo v0, "ic_biometric_retry_whitebg"

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/LockIcon;->setWhiteBgImage(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/LockIcon;->setAdaptiveColor(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->invalidateImage()V

    goto/16 :goto_1f

    :cond_bb
    iget v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mCurrentState:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_1f

    goto :goto_a7

    :pswitch_data_c2
    .packed-switch 0x0
        :pswitch_20
        :pswitch_9
        :pswitch_20
    .end packed-switch
.end method


# virtual methods
.method public isLockIconSelected(FF)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/systemui/lockstar/PluginLockStarManager;->getInstance()Lcom/android/systemui/lockstar/PluginLockStarManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/lockstar/PluginLockStarManager;->isLockStarEnabled()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->getWidth()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v2, p1, v2

    if-gez v2, :cond_25

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->getHeight()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v2, p2, v2

    if-gez v2, :cond_25

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->getVisibility()I

    move-result v2

    if-nez v2, :cond_25

    :goto_24
    return v0

    :cond_25
    move v0, v1

    goto :goto_24

    :cond_27
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->lockIconPossible()Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-direct {p0, p0, p1, p2}, Lcom/android/systemui/statusbar/phone/LockIcon;->isOnIconExact(Landroid/view/View;FF)Z

    move-result v2

    if-eqz v2, :cond_34

    return v0

    :cond_34
    return v1
.end method

.method synthetic lambda$-com_android_systemui_statusbar_phone_LockIcon_3654()V
    .registers 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/LockIcon;->update(Z)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 3

    invoke-super {p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->onAttachedToWindow()V

    sget-object v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget v0, p1, Landroid/content/res/Configuration;->densityDpi:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mDensity:I

    if-eq v0, v1, :cond_23

    iput v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mDensity:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/TrustDrawable;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/TrustDrawable;->stop()V

    new-instance v1, Lcom/android/systemui/statusbar/phone/TrustDrawable;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/systemui/statusbar/phone/TrustDrawable;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/TrustDrawable;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/TrustDrawable;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/LockIcon;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->update()V

    :cond_23
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    invoke-super {p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/TrustDrawable;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/TrustDrawable;->stop()V

    const-string/jumbo v0, "SEP"

    sget-object v1, Lcom/android/systemui/Rune;->KEYWI_VALUE_SHORTCUT_STYLE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mIconCallback:Lcom/android/systemui/statusbar/phone/LockIcon$BottomIconsCallback;

    :cond_16
    sget-object v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 11

    const/4 v8, 0x6

    const/4 v7, 0x0

    const/4 v6, 0x1

    const-string/jumbo v2, "SEP"

    sget-object v3, Lcom/android/systemui/Rune;->KEYWI_VALUE_SHORTCUT_STYLE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    iget v2, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mCurrentState:I

    if-eq v2, v6, :cond_16

    iget v2, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mCurrentState:I

    if-lt v2, v8, :cond_2c

    :cond_16
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/LockIcon;->updateImageDrawable(I)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_174

    :cond_2c
    :goto_2c
    invoke-static {}, Lcom/android/systemui/lockstar/PluginLockStarManager;->getInstance()Lcom/android/systemui/lockstar/PluginLockStarManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/lockstar/PluginLockStarManager;->isLockStarEnabled()Z

    move-result v2

    if-eqz v2, :cond_173

    return v6

    :pswitch_37
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mHelperCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    invoke-interface {v2, v7}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->onSwipingStarted(Z)V

    goto :goto_2c

    :pswitch_3d
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/LockIcon;->isLockIconSelected(FF)Z

    move-result v2

    if-eqz v2, :cond_2c

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mPowerManager:Landroid/os/PowerManager;

    if-eqz v2, :cond_50

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5, v6}, Landroid/os/PowerManager;->userActivity(JZ)V

    :cond_50
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mIconCallback:Lcom/android/systemui/statusbar/phone/LockIcon$BottomIconsCallback;

    if-eqz v2, :cond_84

    iget v2, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mCurrentState:I

    if-ne v2, v6, :cond_84

    :goto_58
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mIconCallback:Lcom/android/systemui/statusbar/phone/LockIcon$BottomIconsCallback;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/phone/LockIcon$BottomIconsCallback;->trustCircleSelected()V

    :cond_5d
    iget v2, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mCurrentState:I

    if-ne v2, v8, :cond_99

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mPowerManager:Landroid/os/PowerManager;

    if-eqz v2, :cond_6e

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5, v6}, Landroid/os/PowerManager;->userActivity(JZ)V

    :cond_6e
    sget-object v2, Lcom/android/systemui/statusbar/phone/LockIcon;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->stopListeningForFace()V

    const-string/jumbo v2, "101"

    const-string/jumbo v3, "1012"

    const-string/jumbo v4, "4"

    invoke-static {v2, v3, v4}, Lcom/android/systemui/util/AnalyticUtils;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2c

    :cond_84
    iget v2, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mCurrentState:I

    if-lt v2, v8, :cond_5d

    sget-object v2, Lcom/android/systemui/statusbar/phone/LockIcon;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    move-result v2

    if-eqz v2, :cond_5d

    goto :goto_58

    :cond_99
    iget v2, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mCurrentState:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_c2

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mPowerManager:Landroid/os/PowerManager;

    if-eqz v2, :cond_ab

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5, v6}, Landroid/os/PowerManager;->userActivity(JZ)V

    :cond_ab
    sget-object v2, Lcom/android/systemui/statusbar/phone/LockIcon;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFaceRecognitionListeningState()V

    const-string/jumbo v2, "101"

    const-string/jumbo v3, "1013"

    const-string/jumbo v4, "4"

    invoke-static {v2, v3, v4}, Lcom/android/systemui/util/AnalyticUtils;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2c

    :cond_c2
    iget v2, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mCurrentState:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_f5

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mPowerManager:Landroid/os/PowerManager;

    if-eqz v2, :cond_d5

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5, v6}, Landroid/os/PowerManager;->userActivity(JZ)V

    :cond_d5
    sget-object v2, Lcom/android/systemui/statusbar/phone/LockIcon;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->stopIrisCamera()V

    sget-object v2, Lcom/android/systemui/statusbar/phone/LockIcon;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setIrisUnlockFailedState(Z)V

    const-string/jumbo v2, "101"

    const-string/jumbo v3, "1012"

    const-string/jumbo v4, "3"

    invoke-static {v2, v3, v4}, Lcom/android/systemui/util/AnalyticUtils;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2c

    :cond_f5
    iget v2, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mCurrentState:I

    const/16 v3, 0x9

    if-ne v2, v3, :cond_11f

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mPowerManager:Landroid/os/PowerManager;

    if-eqz v2, :cond_108

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5, v6}, Landroid/os/PowerManager;->userActivity(JZ)V

    :cond_108
    sget-object v2, Lcom/android/systemui/statusbar/phone/LockIcon;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateIrisListeningState()V

    const-string/jumbo v2, "101"

    const-string/jumbo v3, "1013"

    const-string/jumbo v4, "3"

    invoke-static {v2, v3, v4}, Lcom/android/systemui/util/AnalyticUtils;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2c

    :cond_11f
    iget v2, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mCurrentState:I

    const/16 v3, 0xa

    if-ne v2, v3, :cond_149

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mPowerManager:Landroid/os/PowerManager;

    if-eqz v2, :cond_132

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5, v6}, Landroid/os/PowerManager;->userActivity(JZ)V

    :cond_132
    sget-object v2, Lcom/android/systemui/statusbar/phone/LockIcon;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->stopListeningForIB()V

    const-string/jumbo v2, "101"

    const-string/jumbo v3, "1012"

    const-string/jumbo v4, "5"

    invoke-static {v2, v3, v4}, Lcom/android/systemui/util/AnalyticUtils;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2c

    :cond_149
    iget v2, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mCurrentState:I

    const/16 v3, 0xb

    if-ne v2, v3, :cond_2c

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mPowerManager:Landroid/os/PowerManager;

    if-eqz v2, :cond_15c

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5, v6}, Landroid/os/PowerManager;->userActivity(JZ)V

    :cond_15c
    sget-object v2, Lcom/android/systemui/statusbar/phone/LockIcon;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateIBListeningState()V

    const-string/jumbo v2, "101"

    const-string/jumbo v3, "1013"

    const-string/jumbo v4, "5"

    invoke-static {v2, v3, v4}, Lcom/android/systemui/util/AnalyticUtils;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2c

    :cond_173
    return v7

    :pswitch_data_174
    .packed-switch 0x0
        :pswitch_37
        :pswitch_3d
    .end packed-switch
.end method

.method public onUserInfoChanged(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .registers 4

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mUserAvatarIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->update()V

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .registers 5

    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->onVisibilityChanged(Landroid/view/View;I)V

    const-string/jumbo v0, "GED"

    sget-object v1, Lcom/android/systemui/Rune;->KEYWI_VALUE_SHORTCUT_STYLE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/TrustDrawable;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/TrustDrawable;->start()V

    :cond_19
    :goto_19
    return-void

    :cond_1a
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/TrustDrawable;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/TrustDrawable;->stop()V

    goto :goto_19
.end method

.method public setBottomIconsCallback(Lcom/android/systemui/statusbar/phone/LockIcon$BottomIconsCallback;)V
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mIconCallback:Lcom/android/systemui/statusbar/phone/LockIcon$BottomIconsCallback;

    return-void
.end method

.method public setDeviceInteractive(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mDeviceInteractive:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->update()V

    return-void
.end method

.method public setScreenOn(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mScreenOn:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->update()V

    return-void
.end method

.method public setTransientFpError(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mTransientFpError:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->update()V

    return-void
.end method

.method public update()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/LockIcon;->update(Z)V

    return-void
.end method

.method public update(Z)V
    .registers 23

    const-string/jumbo v2, "SEP"

    sget-object v3, Lcom/android/systemui/Rune;->KEYWI_VALUE_SHORTCUT_STYLE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c4

    sget-object v2, Lcom/android/systemui/statusbar/phone/LockIcon;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v2

    if-nez v2, :cond_18

    return-void

    :cond_18
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->getState()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mCurrentState:I

    const-string/jumbo v2, "LockIcon"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mCurrentState = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mCurrentState:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, ", mLastState = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastState:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, ", mDeviceInteractive = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mDeviceInteractive:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, ", mLastDeviceInteractive = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastDeviceInteractive:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, ", mScreenOn = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mScreenOn:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, ", mLastScreenOn = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastScreenOn:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, ",  force = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mCurrentState:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastState:I

    if-ne v2, v3, :cond_aa

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mDeviceInteractive:Z

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastDeviceInteractive:Z

    if-eq v2, v3, :cond_116

    :cond_aa
    :goto_aa
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mCurrentState:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_b8

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mCurrentState:I

    const/4 v3, 0x6

    if-lt v2, v3, :cond_1bb

    :cond_b8
    sget-object v2, Lcom/android/systemui/statusbar/phone/LockIcon;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDexMode()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1bb

    const/4 v2, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/systemui/statusbar/phone/LockIcon;->updateImageDrawable(I)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/LockIcon;->setVisibility(I)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mCurrentState:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_123

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f12063b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/LockIcon;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_e9
    :goto_e9
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mCurrentState:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastState:I

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mDeviceInteractive:Z

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastDeviceInteractive:Z

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mScreenOn:Z

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastScreenOn:Z

    :cond_101
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isTrustManaged()Z

    move-result v18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/TrustDrawable;

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/phone/TrustDrawable;->setTrustManaged(Z)V

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->updateClickable()V

    :goto_115
    return-void

    :cond_116
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mScreenOn:Z

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastScreenOn:Z

    if-ne v2, v3, :cond_aa

    if-eqz p1, :cond_101

    goto :goto_aa

    :cond_123
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mCurrentState:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_13b

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1204ce

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/LockIcon;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_e9

    :cond_13b
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mCurrentState:I

    const/16 v3, 0x9

    if-ne v2, v3, :cond_154

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f120541

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/LockIcon;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_e9

    :cond_154
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mCurrentState:I

    const/16 v3, 0xb

    if-ne v2, v3, :cond_16e

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f120520

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/LockIcon;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_e9

    :cond_16e
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mCurrentState:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_187

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1204b8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/LockIcon;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_e9

    :cond_187
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mCurrentState:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_1a1

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f12052b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/LockIcon;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_e9

    :cond_1a1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mCurrentState:I

    const/16 v3, 0xa

    if-ne v2, v3, :cond_e9

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f120505

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/LockIcon;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_e9

    :cond_1bb
    const/16 v2, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/LockIcon;->setVisibility(I)V

    goto/16 :goto_e9

    :cond_1c4
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->isShown()Z

    move-result v2

    if-eqz v2, :cond_2d6

    sget-object v2, Lcom/android/systemui/statusbar/phone/LockIcon;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v20

    :goto_1d4
    if-eqz v20, :cond_2da

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/TrustDrawable;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/TrustDrawable;->start()V

    :goto_1dd
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->getState()I

    move-result v4

    const/4 v2, 0x3

    if-eq v4, v2, :cond_1e7

    const/4 v2, 0x4

    if-ne v4, v2, :cond_2e3

    :cond_1e7
    const/4 v10, 0x1

    :goto_1e8
    move/from16 v19, v10

    move/from16 v17, v10

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastState:I

    if-ne v4, v2, :cond_1fc

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mDeviceInteractive:Z

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastDeviceInteractive:Z

    if-eq v2, v3, :cond_2e6

    :cond_1fc
    :goto_1fc
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastState:I

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastDeviceInteractive:Z

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mDeviceInteractive:Z

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastScreenOn:Z

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mScreenOn:Z

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/statusbar/phone/LockIcon;->getAnimationResForTransition(IIZZZZ)I

    move-result v13

    const/4 v2, -0x1

    if-eq v13, v2, :cond_2f4

    const/16 v16, 0x1

    :goto_21b
    const v2, 0x7f080418

    if-ne v13, v2, :cond_2f8

    const/4 v10, 0x1

    const/16 v19, 0x1

    const/16 v17, 0x1

    :cond_225
    :goto_225
    if-eqz v16, :cond_310

    sget-object v2, Lcom/android/systemui/statusbar/phone/LockIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v13}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    :goto_22d
    instance-of v2, v11, Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz v2, :cond_320

    move-object v9, v11

    check-cast v9, Landroid/graphics/drawable/AnimatedVectorDrawable;

    :goto_234
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070174

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070175

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    if-nez v10, :cond_25e

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    if-ne v2, v14, :cond_258

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    if-eq v2, v15, :cond_25e

    :cond_258
    new-instance v12, Lcom/android/systemui/statusbar/phone/LockIcon$IntrinsicSizeDrawable;

    invoke-direct {v12, v11, v15, v14}, Lcom/android/systemui/statusbar/phone/LockIcon$IntrinsicSizeDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    move-object v11, v12

    :cond_25e
    if-eqz v19, :cond_323

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070136

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    :goto_26b
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5, v6, v2}, Lcom/android/systemui/statusbar/phone/LockIcon;->setPaddingRelative(IIII)V

    if-eqz v10, :cond_326

    const/high16 v2, 0x3f800000    # 1.0f

    :goto_277
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/LockIcon;->setRestingAlpha(F)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/systemui/statusbar/phone/LockIcon;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iput-boolean v10, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mHasFingerPrintIcon:Z

    if-eqz v9, :cond_28f

    if-eqz v16, :cond_28f

    invoke-virtual {v9}, Landroid/graphics/drawable/AnimatedVectorDrawable;->forceAnimationOnUI()V

    invoke-virtual {v9}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    :cond_28f
    const v2, 0x7f080418

    if-ne v13, v2, :cond_32a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mDrawOffTimeout:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/LockIcon;->removeCallbacks(Ljava/lang/Runnable;)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mDrawOffTimeout:Ljava/lang/Runnable;

    const-wide/16 v6, 0x320

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v6, v7}, Lcom/android/systemui/statusbar/phone/LockIcon;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_2a8
    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastState:I

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mDeviceInteractive:Z

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastDeviceInteractive:Z

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mScreenOn:Z

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastScreenOn:Z

    :cond_2bc
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isTrustManaged()Z

    move-result v2

    if-eqz v2, :cond_335

    xor-int/lit8 v18, v17, 0x1

    :goto_2c8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/TrustDrawable;

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/phone/TrustDrawable;->setTrustManaged(Z)V

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->updateClickable()V

    goto/16 :goto_115

    :cond_2d6
    const/16 v20, 0x0

    goto/16 :goto_1d4

    :cond_2da
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/TrustDrawable;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/TrustDrawable;->stop()V

    goto/16 :goto_1dd

    :cond_2e3
    const/4 v10, 0x0

    goto/16 :goto_1e8

    :cond_2e6
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mScreenOn:Z

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastScreenOn:Z

    if-ne v2, v3, :cond_1fc

    if-eqz p1, :cond_2bc

    goto/16 :goto_1fc

    :cond_2f4
    const/16 v16, 0x0

    goto/16 :goto_21b

    :cond_2f8
    const v2, 0x7f0807b5

    if-ne v13, v2, :cond_304

    const/4 v10, 0x1

    const/16 v19, 0x0

    const/16 v17, 0x1

    goto/16 :goto_225

    :cond_304
    const v2, 0x7f080168

    if-ne v13, v2, :cond_225

    const/4 v10, 0x1

    const/16 v19, 0x0

    const/16 v17, 0x0

    goto/16 :goto_225

    :cond_310
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mScreenOn:Z

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mDeviceInteractive:Z

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v2, v3}, Lcom/android/systemui/statusbar/phone/LockIcon;->getIconForState(IZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    goto/16 :goto_22d

    :cond_320
    const/4 v9, 0x0

    goto/16 :goto_234

    :cond_323
    const/4 v2, 0x0

    goto/16 :goto_26b

    :cond_326
    const/high16 v2, 0x3f000000    # 0.5f

    goto/16 :goto_277

    :cond_32a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mDrawOffTimeout:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/LockIcon;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto/16 :goto_2a8

    :cond_335
    const/16 v18, 0x0

    goto :goto_2c8
.end method
