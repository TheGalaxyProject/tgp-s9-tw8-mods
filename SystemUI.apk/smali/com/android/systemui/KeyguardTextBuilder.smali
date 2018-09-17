.class public Lcom/android/systemui/KeyguardTextBuilder;
.super Ljava/lang/Object;
.source "KeyguardTextBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/KeyguardTextBuilder$Biometric;,
        Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;,
        Lcom/android/systemui/KeyguardTextBuilder$PromptReason;,
        Lcom/android/systemui/KeyguardTextBuilder$Security;
    }
.end annotation


# static fields
.field private static final synthetic -com-android-keyguard-KeyguardConstants$KeyguardDismissActionTypeSwitchesValues:[I

.field private static final synthetic -com-android-keyguard-KeyguardSecurityModel$SecurityModeSwitchesValues:[I

.field private static sInstance:Lcom/android/systemui/KeyguardTextBuilder;


# instance fields
.field private m2StepVerification:Z

.field private mAddRemainingAttempt:I

.field private mBiometricType:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mDeviceType:Ljava/lang/String;

.field private mDismissActionType:Ljava/lang/String;

.field private mIsFace:Z

.field private mIsFingerprint:Z

.field private mIsIb:Z

.field private mIsIris:Z

.field private mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mKnoxStateMonitor:Lcom/android/systemui/KnoxStateMonitor;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mPromptReasonType:Ljava/lang/String;

.field private mSecurityType:Ljava/lang/String;


# direct methods
.method private static synthetic -getcom-android-keyguard-KeyguardConstants$KeyguardDismissActionTypeSwitchesValues()[I
    .registers 3

    sget-object v0, Lcom/android/systemui/KeyguardTextBuilder;->-com-android-keyguard-KeyguardConstants$KeyguardDismissActionTypeSwitchesValues:[I

    if-eqz v0, :cond_7

    sget-object v0, Lcom/android/systemui/KeyguardTextBuilder;->-com-android-keyguard-KeyguardConstants$KeyguardDismissActionTypeSwitchesValues:[I

    return-object v0

    :cond_7
    invoke-static {}, Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;->values()[Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_e
    sget-object v1, Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;->KEYGUARD_DISMISS_ACTION_ACTIVE:Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_17} :catch_25

    :goto_17
    :try_start_17
    sget-object v1, Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;->KEYGUARD_DISMISS_ACTION_SHUTDOWN:Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_20} :catch_23

    :goto_20
    sput-object v0, Lcom/android/systemui/KeyguardTextBuilder;->-com-android-keyguard-KeyguardConstants$KeyguardDismissActionTypeSwitchesValues:[I

    return-object v0

    :catch_23
    move-exception v1

    goto :goto_20

    :catch_25
    move-exception v1

    goto :goto_17
.end method

.method private static synthetic -getcom-android-keyguard-KeyguardSecurityModel$SecurityModeSwitchesValues()[I
    .registers 3

    sget-object v0, Lcom/android/systemui/KeyguardTextBuilder;->-com-android-keyguard-KeyguardSecurityModel$SecurityModeSwitchesValues:[I

    if-eqz v0, :cond_7

    sget-object v0, Lcom/android/systemui/KeyguardTextBuilder;->-com-android-keyguard-KeyguardSecurityModel$SecurityModeSwitchesValues:[I

    return-object v0

    :cond_7
    invoke-static {}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->values()[Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_e
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Account:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_17} :catch_db

    :goto_17
    :try_start_17
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->CarrierLock:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_21} :catch_d8

    :goto_21
    :try_start_21
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->CarrierPassword:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_2b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21 .. :try_end_2b} :catch_d5

    :goto_2b
    :try_start_2b
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->DirectionLock:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_34
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2b .. :try_end_34} :catch_d2

    :goto_34
    :try_start_34
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->FMM:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_34 .. :try_end_3e} :catch_cf

    :goto_3e
    :try_start_3e
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Invalid:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_48
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_48} :catch_cc

    :goto_48
    :try_start_48
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_52
    .catch Ljava/lang/NoSuchFieldError; {:try_start_48 .. :try_end_52} :catch_ca

    :goto_52
    :try_start_52
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->PIN:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_5b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_52 .. :try_end_5b} :catch_c8

    :goto_5b
    :try_start_5b
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Password:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_64
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5b .. :try_end_64} :catch_c6

    :goto_64
    :try_start_64
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Pattern:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_6d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_64 .. :try_end_6d} :catch_c4

    :goto_6d
    :try_start_6d
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->RMM:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_77
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6d .. :try_end_77} :catch_c2

    :goto_77
    :try_start_77
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Recovery:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_81
    .catch Ljava/lang/NoSuchFieldError; {:try_start_77 .. :try_end_81} :catch_c0

    :goto_81
    :try_start_81
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SimPerso:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_8b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_81 .. :try_end_8b} :catch_be

    :goto_8b
    :try_start_8b
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SimPin:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_95
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8b .. :try_end_95} :catch_bc

    :goto_95
    :try_start_95
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SimPuk:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_9f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_95 .. :try_end_9f} :catch_ba

    :goto_9f
    :try_start_9f
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SmartcardPIN:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_a9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9f .. :try_end_a9} :catch_b8

    :goto_a9
    :try_start_a9
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Swipe:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_b3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a9 .. :try_end_b3} :catch_b6

    :goto_b3
    sput-object v0, Lcom/android/systemui/KeyguardTextBuilder;->-com-android-keyguard-KeyguardSecurityModel$SecurityModeSwitchesValues:[I

    return-object v0

    :catch_b6
    move-exception v1

    goto :goto_b3

    :catch_b8
    move-exception v1

    goto :goto_a9

    :catch_ba
    move-exception v1

    goto :goto_9f

    :catch_bc
    move-exception v1

    goto :goto_95

    :catch_be
    move-exception v1

    goto :goto_8b

    :catch_c0
    move-exception v1

    goto :goto_81

    :catch_c2
    move-exception v1

    goto :goto_77

    :catch_c4
    move-exception v1

    goto :goto_6d

    :catch_c6
    move-exception v1

    goto :goto_64

    :catch_c8
    move-exception v1

    goto :goto_5b

    :catch_ca
    move-exception v1

    goto :goto_52

    :catch_cc
    move-exception v1

    goto/16 :goto_48

    :catch_cf
    move-exception v1

    goto/16 :goto_3e

    :catch_d2
    move-exception v1

    goto/16 :goto_34

    :catch_d5
    move-exception v1

    goto/16 :goto_2b

    :catch_d8
    move-exception v1

    goto/16 :goto_21

    :catch_db
    move-exception v1

    goto/16 :goto_17
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/KeyguardTextBuilder;->m2StepVerification:Z

    iput-object p1, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/KeyguardTextBuilder;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v0, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/KeyguardTextBuilder;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const-class v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/KnoxStateMonitor;

    iput-object v0, p0, Lcom/android/systemui/KeyguardTextBuilder;->mKnoxStateMonitor:Lcom/android/systemui/KnoxStateMonitor;

    sget-boolean v0, Lcom/android/systemui/Rune;->IS_TABLET_DEVICE:Z

    if-eqz v0, :cond_2d

    const-string/jumbo v0, "tablet"

    :goto_2a
    iput-object v0, p0, Lcom/android/systemui/KeyguardTextBuilder;->mDeviceType:Ljava/lang/String;

    return-void

    :cond_2d
    const-string/jumbo v0, "none"

    goto :goto_2a
.end method

.method private getAddRemainingAttemptIndication(I)Ljava/lang/String;
    .registers 9

    const/4 v6, 0x0

    iget v1, p0, Lcom/android/systemui/KeyguardTextBuilder;->mAddRemainingAttempt:I

    if-lez v1, :cond_44

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/KeyguardTextBuilder;->mAddRemainingAttempt:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p0, Lcom/android/systemui/KeyguardTextBuilder;->mAddRemainingAttempt:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    const/high16 v5, 0x7f100000

    invoke-virtual {v2, v5, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_43
    return-object v0

    :cond_44
    iget-object v1, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_43
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/systemui/KeyguardTextBuilder;
    .registers 2

    sget-object v0, Lcom/android/systemui/KeyguardTextBuilder;->sInstance:Lcom/android/systemui/KeyguardTextBuilder;

    if-nez v0, :cond_b

    new-instance v0, Lcom/android/systemui/KeyguardTextBuilder;

    invoke-direct {v0, p0}, Lcom/android/systemui/KeyguardTextBuilder;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui/KeyguardTextBuilder;->sInstance:Lcom/android/systemui/KeyguardTextBuilder;

    :cond_b
    sget-object v0, Lcom/android/systemui/KeyguardTextBuilder;->sInstance:Lcom/android/systemui/KeyguardTextBuilder;

    return-object v0
.end method

.method private updateCurrentState(Z)V
    .registers 10

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v4, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintDisabled(I)Z

    move-result v1

    const/4 v2, 0x0

    sget-boolean v4, Lcom/android/systemui/Rune;->SYSUI_SUPPORT_MOBILE_KEYBOARD:Z

    if-eqz v4, :cond_26

    invoke-static {}, Lcom/android/systemui/Rune;->isFingerprintSensorRear()Z

    move-result v4

    if-nez v4, :cond_26

    iget-object v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    if-ne v5, v4, :cond_26

    const/4 v2, 0x1

    :cond_26
    iget-object v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v4, v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getAddRemainingAttempt(I)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mAddRemainingAttempt:I

    iget-object v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4, v3}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricType(I)I

    move-result v0

    if-nez v1, :cond_d3

    and-int/lit8 v4, v0, 0x1

    if-ne v4, v5, :cond_d3

    move v4, v5

    :goto_3b
    iput-boolean v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mIsFingerprint:Z

    if-nez v1, :cond_d6

    and-int/lit8 v4, v0, 0x10

    const/16 v7, 0x10

    if-ne v4, v7, :cond_d6

    move v4, v5

    :goto_46
    iput-boolean v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mIsIris:Z

    if-nez v1, :cond_d9

    and-int/lit16 v4, v0, 0x100

    const/16 v7, 0x100

    if-ne v4, v7, :cond_d9

    move v4, v5

    :goto_51
    iput-boolean v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mIsFace:Z

    if-nez v1, :cond_dc

    and-int/lit16 v4, v0, 0x1000

    const/16 v7, 0x1000

    if-ne v4, v7, :cond_dc

    :goto_5b
    iput-boolean v5, p0, Lcom/android/systemui/KeyguardTextBuilder;->mIsIb:Z

    if-nez p1, :cond_8b

    iget-boolean v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mIsFingerprint:Z

    if-eqz v4, :cond_df

    iget-object v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed()Z

    move-result v4

    if-eqz v4, :cond_df

    xor-int/lit8 v4, v2, 0x1

    :goto_6d
    iput-boolean v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mIsFingerprint:Z

    iget-object v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isCameraDisabledByPolicy()Z

    move-result v4

    if-nez v4, :cond_7f

    iget-object v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v4, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceDisabled(I)Z

    move-result v4

    if-eqz v4, :cond_e1

    :cond_7f
    iget-boolean v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mIsFace:Z

    if-eqz v4, :cond_89

    iget-object v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed()Z

    move-result v6

    :cond_89
    iput-boolean v6, p0, Lcom/android/systemui/KeyguardTextBuilder;->mIsFace:Z

    :cond_8b
    :goto_8b
    iget-boolean v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mIsFingerprint:Z

    if-eqz v4, :cond_10a

    iget-boolean v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mIsFace:Z

    if-nez v4, :cond_9b

    iget-boolean v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mIsIb:Z

    if-nez v4, :cond_9b

    iget-boolean v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mIsIris:Z

    if-eqz v4, :cond_10a

    :cond_9b
    sget-object v4, Lcom/android/systemui/KeyguardTextBuilder$Biometric;->MultiBiometrics:Lcom/android/systemui/KeyguardTextBuilder$Biometric;

    invoke-virtual {v4}, Lcom/android/systemui/KeyguardTextBuilder$Biometric;->getType()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mBiometricType:Ljava/lang/String;

    :goto_a3
    iget-object v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDismissActionExist()Z

    move-result v4

    if-eqz v4, :cond_151

    invoke-static {}, Lcom/android/systemui/KeyguardTextBuilder;->-getcom-android-keyguard-KeyguardConstants$KeyguardDismissActionTypeSwitchesValues()[I

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/KeyguardTextBuilder;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getDismissActionType()Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_158

    sget-object v4, Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;->Active:Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;

    invoke-virtual {v4}, Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;->getType()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mDismissActionType:Ljava/lang/String;

    :goto_c6
    iget-object v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mKnoxStateMonitor:Lcom/android/systemui/KnoxStateMonitor;

    if-eqz v4, :cond_d2

    iget-object v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mKnoxStateMonitor:Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v4}, Lcom/android/systemui/KnoxStateMonitor;->isMultifactorAuthEnforced()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->m2StepVerification:Z

    :cond_d2
    return-void

    :cond_d3
    move v4, v6

    goto/16 :goto_3b

    :cond_d6
    move v4, v6

    goto/16 :goto_46

    :cond_d9
    move v4, v6

    goto/16 :goto_51

    :cond_dc
    move v5, v6

    goto/16 :goto_5b

    :cond_df
    move v4, v6

    goto :goto_6d

    :cond_e1
    iget-boolean v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mIsIris:Z

    if-eqz v4, :cond_106

    iget-object v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIrisRunning()Z

    move-result v4

    :goto_eb
    iput-boolean v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mIsIris:Z

    iget-boolean v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mIsFace:Z

    if-eqz v4, :cond_108

    iget-object v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceRecognitionRunning()Z

    move-result v4

    :goto_f7
    iput-boolean v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mIsFace:Z

    iget-boolean v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mIsIb:Z

    if-eqz v4, :cond_103

    iget-object v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIBRunning()Z

    move-result v6

    :cond_103
    iput-boolean v6, p0, Lcom/android/systemui/KeyguardTextBuilder;->mIsIb:Z

    goto :goto_8b

    :cond_106
    move v4, v6

    goto :goto_eb

    :cond_108
    move v4, v6

    goto :goto_f7

    :cond_10a
    iget-boolean v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mIsFingerprint:Z

    if-eqz v4, :cond_117

    sget-object v4, Lcom/android/systemui/KeyguardTextBuilder$Biometric;->Fingerprint:Lcom/android/systemui/KeyguardTextBuilder$Biometric;

    invoke-virtual {v4}, Lcom/android/systemui/KeyguardTextBuilder$Biometric;->getType()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mBiometricType:Ljava/lang/String;

    goto :goto_a3

    :cond_117
    iget-boolean v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mIsIris:Z

    if-eqz v4, :cond_124

    sget-object v4, Lcom/android/systemui/KeyguardTextBuilder$Biometric;->Iris:Lcom/android/systemui/KeyguardTextBuilder$Biometric;

    invoke-virtual {v4}, Lcom/android/systemui/KeyguardTextBuilder$Biometric;->getType()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mBiometricType:Ljava/lang/String;

    goto :goto_a3

    :cond_124
    iget-boolean v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mIsFace:Z

    if-eqz v4, :cond_132

    sget-object v4, Lcom/android/systemui/KeyguardTextBuilder$Biometric;->Face:Lcom/android/systemui/KeyguardTextBuilder$Biometric;

    invoke-virtual {v4}, Lcom/android/systemui/KeyguardTextBuilder$Biometric;->getType()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mBiometricType:Ljava/lang/String;

    goto/16 :goto_a3

    :cond_132
    iget-boolean v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mIsIb:Z

    if-eqz v4, :cond_140

    sget-object v4, Lcom/android/systemui/KeyguardTextBuilder$Biometric;->Intelligent:Lcom/android/systemui/KeyguardTextBuilder$Biometric;

    invoke-virtual {v4}, Lcom/android/systemui/KeyguardTextBuilder$Biometric;->getType()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mBiometricType:Ljava/lang/String;

    goto/16 :goto_a3

    :cond_140
    const-string/jumbo v4, "none"

    iput-object v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mBiometricType:Ljava/lang/String;

    goto/16 :goto_a3

    :pswitch_147
    sget-object v4, Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;->ShutDown:Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;

    invoke-virtual {v4}, Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;->getType()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mDismissActionType:Ljava/lang/String;

    goto/16 :goto_c6

    :cond_151
    const-string/jumbo v4, "none"

    iput-object v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mDismissActionType:Ljava/lang/String;

    goto/16 :goto_c6

    :pswitch_data_158
    .packed-switch 0x2
        :pswitch_147
    .end packed-switch
.end method

.method private updateSecurityMode(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V
    .registers 4

    invoke-static {}, Lcom/android/systemui/KeyguardTextBuilder;->-getcom-android-keyguard-KeyguardSecurityModel$SecurityModeSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_3a

    sget-object v0, Lcom/android/systemui/KeyguardTextBuilder$Security;->Password:Lcom/android/systemui/KeyguardTextBuilder$Security;

    invoke-virtual {v0}, Lcom/android/systemui/KeyguardTextBuilder$Security;->getType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/KeyguardTextBuilder;->mSecurityType:Ljava/lang/String;

    :goto_15
    return-void

    :pswitch_16
    sget-object v0, Lcom/android/systemui/KeyguardTextBuilder$Security;->PIN:Lcom/android/systemui/KeyguardTextBuilder$Security;

    invoke-virtual {v0}, Lcom/android/systemui/KeyguardTextBuilder$Security;->getType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/KeyguardTextBuilder;->mSecurityType:Ljava/lang/String;

    goto :goto_15

    :pswitch_1f
    sget-object v0, Lcom/android/systemui/KeyguardTextBuilder$Security;->Pattern:Lcom/android/systemui/KeyguardTextBuilder$Security;

    invoke-virtual {v0}, Lcom/android/systemui/KeyguardTextBuilder$Security;->getType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/KeyguardTextBuilder;->mSecurityType:Ljava/lang/String;

    goto :goto_15

    :pswitch_28
    sget-object v0, Lcom/android/systemui/KeyguardTextBuilder$Security;->Password:Lcom/android/systemui/KeyguardTextBuilder$Security;

    invoke-virtual {v0}, Lcom/android/systemui/KeyguardTextBuilder$Security;->getType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/KeyguardTextBuilder;->mSecurityType:Ljava/lang/String;

    goto :goto_15

    :pswitch_31
    sget-object v0, Lcom/android/systemui/KeyguardTextBuilder$Security;->Direction:Lcom/android/systemui/KeyguardTextBuilder$Security;

    invoke-virtual {v0}, Lcom/android/systemui/KeyguardTextBuilder$Security;->getType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/KeyguardTextBuilder;->mSecurityType:Ljava/lang/String;

    goto :goto_15

    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_31
        :pswitch_16
        :pswitch_28
        :pswitch_1f
    .end packed-switch
.end method


# virtual methods
.method public getDefaultSecurityMessage(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Ljava/lang/String;
    .registers 13

    const/4 v6, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mKnoxStateMonitor:Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v4}, Lcom/android/systemui/KnoxStateMonitor;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v4

    if-eqz v4, :cond_17

    iget-object v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    const v5, 0x1040292

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_17
    const/4 v2, 0x0

    const/4 v1, 0x0

    const-string/jumbo v0, ""

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    invoke-direct {p0, p1}, Lcom/android/systemui/KeyguardTextBuilder;->updateSecurityMode(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    invoke-direct {p0, v7}, Lcom/android/systemui/KeyguardTextBuilder;->updateCurrentState(Z)V

    iget-boolean v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->m2StepVerification:Z

    if-eqz v4, :cond_37

    iget-object v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v4, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isAuthenticatedWithBiometric(I)Z

    move-result v4

    if-eqz v4, :cond_9e

    const-string/jumbo v4, "none"

    iput-object v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mBiometricType:Ljava/lang/String;

    :cond_37
    iget-boolean v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mIsFace:Z

    if-eqz v4, :cond_172

    iget-object v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isCameraDisabledByPolicy()Z

    move-result v4

    if-nez v4, :cond_4b

    iget-object v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v4, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceDisabled(I)Z

    move-result v4

    if-eqz v4, :cond_172

    :cond_4b
    iget-boolean v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mIsFingerprint:Z

    if-eqz v4, :cond_114

    sget-object v4, Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;->ShutDown:Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;

    invoke-virtual {v4}, Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;->getType()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/KeyguardTextBuilder;->mDismissActionType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e6

    iget-object v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f1204ac

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/systemui/KeyguardTextBuilder;->mDeviceType:Ljava/lang/String;

    aput-object v6, v5, v7

    sget-object v6, Lcom/android/systemui/KeyguardTextBuilder$Biometric;->Fingerprint:Lcom/android/systemui/KeyguardTextBuilder$Biometric;

    invoke-virtual {v6}, Lcom/android/systemui/KeyguardTextBuilder$Biometric;->getType()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    iget-object v6, p0, Lcom/android/systemui/KeyguardTextBuilder;->mSecurityType:Ljava/lang/String;

    aput-object v6, v5, v9

    iget-object v6, p0, Lcom/android/systemui/KeyguardTextBuilder;->mDismissActionType:Ljava/lang/String;

    aput-object v6, v5, v10

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_84
    iget-object v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string/jumbo v5, "string"

    iget-object v6, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v1, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1c6

    invoke-direct {p0, v2}, Lcom/android/systemui/KeyguardTextBuilder;->getAddRemainingAttemptIndication(I)Ljava/lang/String;

    move-result-object v0

    :goto_9d
    return-object v0

    :cond_9e
    iget-object v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mBiometricType:Ljava/lang/String;

    sget-object v5, Lcom/android/systemui/KeyguardTextBuilder$Biometric;->MultiBiometrics:Lcom/android/systemui/KeyguardTextBuilder$Biometric;

    invoke-virtual {v5}, Lcom/android/systemui/KeyguardTextBuilder$Biometric;->getType()Ljava/lang/String;

    move-result-object v5

    if-ne v4, v5, :cond_b6

    iget-object v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f1206c6

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_b6
    iget-object v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mBiometricType:Ljava/lang/String;

    sget-object v5, Lcom/android/systemui/KeyguardTextBuilder$Biometric;->Iris:Lcom/android/systemui/KeyguardTextBuilder$Biometric;

    invoke-virtual {v5}, Lcom/android/systemui/KeyguardTextBuilder$Biometric;->getType()Ljava/lang/String;

    move-result-object v5

    if-ne v4, v5, :cond_ce

    iget-object v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f1206c8

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_ce
    iget-object v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mBiometricType:Ljava/lang/String;

    sget-object v5, Lcom/android/systemui/KeyguardTextBuilder$Biometric;->Fingerprint:Lcom/android/systemui/KeyguardTextBuilder$Biometric;

    invoke-virtual {v5}, Lcom/android/systemui/KeyguardTextBuilder$Biometric;->getType()Ljava/lang/String;

    move-result-object v5

    if-ne v4, v5, :cond_37

    iget-object v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f1206c7

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_e6
    iget-object v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f1204ad

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    const-string/jumbo v6, "none"

    aput-object v6, v5, v7

    sget-object v6, Lcom/android/systemui/KeyguardTextBuilder$Biometric;->FaceFingerprint:Lcom/android/systemui/KeyguardTextBuilder$Biometric;

    invoke-virtual {v6}, Lcom/android/systemui/KeyguardTextBuilder$Biometric;->getType()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    iget-object v6, p0, Lcom/android/systemui/KeyguardTextBuilder;->mSecurityType:Ljava/lang/String;

    aput-object v6, v5, v9

    sget-object v6, Lcom/android/systemui/KeyguardTextBuilder$PromptReason;->ItPolicy:Lcom/android/systemui/KeyguardTextBuilder$PromptReason;

    invoke-virtual {v6}, Lcom/android/systemui/KeyguardTextBuilder$PromptReason;->getType()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_84

    :cond_114
    sget-object v4, Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;->ShutDown:Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;

    invoke-virtual {v4}, Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;->getType()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/KeyguardTextBuilder;->mDismissActionType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_148

    iget-object v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f1204ac

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/systemui/KeyguardTextBuilder;->mDeviceType:Ljava/lang/String;

    aput-object v6, v5, v7

    const-string/jumbo v6, "none"

    aput-object v6, v5, v8

    iget-object v6, p0, Lcom/android/systemui/KeyguardTextBuilder;->mSecurityType:Ljava/lang/String;

    aput-object v6, v5, v9

    iget-object v6, p0, Lcom/android/systemui/KeyguardTextBuilder;->mDismissActionType:Ljava/lang/String;

    aput-object v6, v5, v10

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_84

    :cond_148
    iget-object v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f1204ad

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    const-string/jumbo v6, "none"

    aput-object v6, v5, v7

    iget-object v6, p0, Lcom/android/systemui/KeyguardTextBuilder;->mBiometricType:Ljava/lang/String;

    aput-object v6, v5, v8

    iget-object v6, p0, Lcom/android/systemui/KeyguardTextBuilder;->mSecurityType:Ljava/lang/String;

    aput-object v6, v5, v9

    sget-object v6, Lcom/android/systemui/KeyguardTextBuilder$PromptReason;->DeviceAdmin:Lcom/android/systemui/KeyguardTextBuilder$PromptReason;

    invoke-virtual {v6}, Lcom/android/systemui/KeyguardTextBuilder$PromptReason;->getType()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_84

    :cond_172
    sget-object v4, Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;->ShutDown:Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;

    invoke-virtual {v4}, Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;->getType()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/KeyguardTextBuilder;->mDismissActionType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a5

    iget-object v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f1204ac

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/systemui/KeyguardTextBuilder;->mDeviceType:Ljava/lang/String;

    aput-object v6, v5, v7

    iget-object v6, p0, Lcom/android/systemui/KeyguardTextBuilder;->mBiometricType:Ljava/lang/String;

    aput-object v6, v5, v8

    iget-object v6, p0, Lcom/android/systemui/KeyguardTextBuilder;->mSecurityType:Ljava/lang/String;

    aput-object v6, v5, v9

    iget-object v6, p0, Lcom/android/systemui/KeyguardTextBuilder;->mDismissActionType:Ljava/lang/String;

    aput-object v6, v5, v10

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_84

    :cond_1a5
    iget-object v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f120495

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v10, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/systemui/KeyguardTextBuilder;->mBiometricType:Ljava/lang/String;

    aput-object v6, v5, v7

    iget-object v6, p0, Lcom/android/systemui/KeyguardTextBuilder;->mSecurityType:Ljava/lang/String;

    aput-object v6, v5, v8

    iget-object v6, p0, Lcom/android/systemui/KeyguardTextBuilder;->mDismissActionType:Ljava/lang/String;

    aput-object v6, v5, v9

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_84

    :cond_1c6
    const-string/jumbo v4, "KeyguardTextBuilder"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Can\'t find default string id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9d
.end method

.method public getFPFailedAttemptionGuideMessageWhenScreenOff(ILcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Z)Ljava/lang/String;
    .registers 10

    const v3, 0x7f120626

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-eqz p3, :cond_19

    iget-object v1, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const v3, 0x7f12062a

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_19
    invoke-static {}, Lcom/android/systemui/KeyguardTextBuilder;->-getcom-android-keyguard-KeyguardSecurityModel$SecurityModeSwitchesValues()[I

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_5c

    iget-object v1, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_2c
    iget-object v1, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    aput-object v0, v2, v5

    const v3, 0x7f120629

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_41
    iget-object v1, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    const v2, 0x7f120628

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2c

    :pswitch_4b
    iget-object v1, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2c

    :pswitch_52
    iget-object v1, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    const v2, 0x7f120627

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2c

    :pswitch_data_5c
    .packed-switch 0x2
        :pswitch_41
        :pswitch_4b
        :pswitch_52
    .end packed-switch
.end method

.method public getPromptSecurityMessage(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;I)Ljava/lang/String;
    .registers 14

    const/4 v6, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mKnoxStateMonitor:Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v4}, Lcom/android/systemui/KnoxStateMonitor;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v4

    if-eqz v4, :cond_17

    iget-object v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    const v5, 0x1040292

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_17
    const-string/jumbo v1, ""

    iget-object v0, p0, Lcom/android/systemui/KeyguardTextBuilder;->mDeviceType:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/systemui/KeyguardTextBuilder;->updateSecurityMode(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    invoke-direct {p0, v8}, Lcom/android/systemui/KeyguardTextBuilder;->updateCurrentState(Z)V

    packed-switch p2, :pswitch_data_d0

    const-string/jumbo v4, ""

    return-object v4

    :pswitch_29
    sget-object v4, Lcom/android/systemui/KeyguardTextBuilder$PromptReason;->Restart:Lcom/android/systemui/KeyguardTextBuilder$PromptReason;

    invoke-virtual {v4}, Lcom/android/systemui/KeyguardTextBuilder$PromptReason;->getType()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mPromptReasonType:Ljava/lang/String;

    :goto_31
    sget-object v4, Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;->ShutDown:Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;

    invoke-virtual {v4}, Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;->getType()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/KeyguardTextBuilder;->mDismissActionType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_92

    iget-object v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f1204ac

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/systemui/KeyguardTextBuilder;->mDeviceType:Ljava/lang/String;

    aput-object v6, v5, v7

    const-string/jumbo v6, "none"

    aput-object v6, v5, v8

    iget-object v6, p0, Lcom/android/systemui/KeyguardTextBuilder;->mSecurityType:Ljava/lang/String;

    aput-object v6, v5, v9

    iget-object v6, p0, Lcom/android/systemui/KeyguardTextBuilder;->mDismissActionType:Ljava/lang/String;

    aput-object v6, v5, v10

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_63
    iget-object v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string/jumbo v5, "string"

    iget-object v6, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v2, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_b4

    invoke-direct {p0, v3}, Lcom/android/systemui/KeyguardTextBuilder;->getAddRemainingAttemptIndication(I)Ljava/lang/String;

    move-result-object v1

    :goto_7c
    return-object v1

    :pswitch_7d
    sget-object v4, Lcom/android/systemui/KeyguardTextBuilder$PromptReason;->Timeout:Lcom/android/systemui/KeyguardTextBuilder$PromptReason;

    invoke-virtual {v4}, Lcom/android/systemui/KeyguardTextBuilder$PromptReason;->getType()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mPromptReasonType:Ljava/lang/String;

    goto :goto_31

    :pswitch_86
    sget-object v4, Lcom/android/systemui/KeyguardTextBuilder$PromptReason;->DeviceAdmin:Lcom/android/systemui/KeyguardTextBuilder$PromptReason;

    invoke-virtual {v4}, Lcom/android/systemui/KeyguardTextBuilder$PromptReason;->getType()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mPromptReasonType:Ljava/lang/String;

    const-string/jumbo v0, "none"

    goto :goto_31

    :cond_92
    iget-object v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f1204ad

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    aput-object v0, v5, v7

    iget-object v6, p0, Lcom/android/systemui/KeyguardTextBuilder;->mBiometricType:Ljava/lang/String;

    aput-object v6, v5, v8

    iget-object v6, p0, Lcom/android/systemui/KeyguardTextBuilder;->mSecurityType:Ljava/lang/String;

    aput-object v6, v5, v9

    iget-object v6, p0, Lcom/android/systemui/KeyguardTextBuilder;->mPromptReasonType:Ljava/lang/String;

    aput-object v6, v5, v10

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_63

    :cond_b4
    const-string/jumbo v4, "KeyguardTextBuilder"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Can\'t find prompt string id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7c

    nop

    :pswitch_data_d0
    .packed-switch 0x1
        :pswitch_29
        :pswitch_7d
        :pswitch_86
    .end packed-switch
.end method

.method public getWarningAutoWipeMessage(II)Ljava/lang/String;
    .registers 14

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    const-string/jumbo v1, ""

    const-string/jumbo v0, "none"

    const-string/jumbo v4, "none"

    if-ne p1, v8, :cond_11

    const-string/jumbo v0, "1"

    :cond_11
    if-ne p2, v8, :cond_16

    const-string/jumbo v4, "1"

    :cond_16
    iget-object v5, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f1206da

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/systemui/KeyguardTextBuilder;->mDeviceType:Ljava/lang/String;

    aput-object v7, v6, v9

    aput-object v0, v6, v8

    aput-object v4, v6, v10

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string/jumbo v6, "string"

    iget-object v7, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v2, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_ad

    const-string/jumbo v5, "none"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6e

    const-string/jumbo v5, "none"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6e

    iget-object v5, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v5, v3, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_6d
    return-object v1

    :cond_6e
    const-string/jumbo v5, "1"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_86

    iget-object v5, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {v5, v3, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_6d

    :cond_86
    const-string/jumbo v5, "1"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9e

    iget-object v5, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {v5, v3, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_6d

    :cond_9e
    iget-object v5, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {v5, v3, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_6d

    :cond_ad
    const-string/jumbo v5, "KeyguardTextBuilder"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Can\'t find the warning on auto wipe string id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6d
.end method

.method public getWarningFRPMessage(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;I)Ljava/lang/String;
    .registers 12

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string/jumbo v0, ""

    const-string/jumbo v3, "none"

    if-ne p2, v8, :cond_d

    const-string/jumbo v3, "1"

    :cond_d
    invoke-direct {p0, p1}, Lcom/android/systemui/KeyguardTextBuilder;->updateSecurityMode(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    iget-object v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f1204ae

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/systemui/KeyguardTextBuilder;->mDeviceType:Ljava/lang/String;

    aput-object v6, v5, v7

    iget-object v6, p0, Lcom/android/systemui/KeyguardTextBuilder;->mSecurityType:Ljava/lang/String;

    aput-object v6, v5, v8

    const/4 v6, 0x2

    aput-object v3, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string/jumbo v5, "string"

    iget-object v6, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v1, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_53

    iget-object v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v4, v2, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_52
    return-object v0

    :cond_53
    const-string/jumbo v4, "KeyguardTextBuilder"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Can\'t find warning frp string id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_52
.end method

.method public getWarningReactivationMessage(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;I)Ljava/lang/String;
    .registers 12

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string/jumbo v0, ""

    const-string/jumbo v3, "none"

    if-ne p2, v8, :cond_d

    const-string/jumbo v3, "1"

    :cond_d
    invoke-direct {p0, p1}, Lcom/android/systemui/KeyguardTextBuilder;->updateSecurityMode(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    iget-object v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f1204af

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/systemui/KeyguardTextBuilder;->mDeviceType:Ljava/lang/String;

    aput-object v6, v5, v7

    iget-object v6, p0, Lcom/android/systemui/KeyguardTextBuilder;->mSecurityType:Ljava/lang/String;

    aput-object v6, v5, v8

    const/4 v6, 0x2

    aput-object v3, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string/jumbo v5, "string"

    iget-object v6, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v1, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_53

    iget-object v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v4, v2, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_52
    return-object v0

    :cond_53
    const-string/jumbo v4, "KeyguardTextBuilder"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Can\'t find warning reactivation string id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_52
.end method
