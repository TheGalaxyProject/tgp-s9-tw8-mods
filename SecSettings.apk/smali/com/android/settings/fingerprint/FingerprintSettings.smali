.class public Lcom/android/settings/fingerprint/FingerprintSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "FingerprintSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/SettingsActivity$onEditButtonClicked;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fingerprint/FingerprintSettings$1;,
        Lcom/android/settings/fingerprint/FingerprintSettings$2;,
        Lcom/android/settings/fingerprint/FingerprintSettings$3;,
        Lcom/android/settings/fingerprint/FingerprintSettings$4;,
        Lcom/android/settings/fingerprint/FingerprintSettings$5;,
        Lcom/android/settings/fingerprint/FingerprintSettings$6;,
        Lcom/android/settings/fingerprint/FingerprintSettings$7;,
        Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference;,
        Lcom/android/settings/fingerprint/FingerprintSettings$Survey;
    }
.end annotation


# static fields
.field private static final synthetic -com-android-settings-fingerprint-FingerprintSettings$SurveySwitchesValues:[I

.field private static isKeepEnrollSession:Z

.field private static mEdit_TextView:Landroid/widget/TextView;

.field protected static mFragment:Landroid/app/Fragment;

.field private static mListView:Landroid/support/v7/widget/RecyclerView;


# instance fields
.field private SCREEN_ID_RENAME:I

.field private colorId_identifiedId:I

.field private focusEditButtonRunnable:Ljava/lang/Runnable;

.field private isRunRegister:Z

.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/hardware/fingerprint/Fingerprint;",
            ">;"
        }
    .end annotation
.end field

.field private mAuthCallback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mEnrolledFingerCount:I

.field private mFingerprintCancel:Landroid/os/CancellationSignal;

.field private final mFingerprintLockoutReset:Ljava/lang/Runnable;

.field private mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field final mH:Landroid/os/Handler;

.field private final mHandler:Landroid/os/Handler;

.field private mHuntipCategory:Landroid/support/v7/preference/PreferenceCategory;

.field private mIdentifyFingerprint:Z

.field private mInFingerprintLockout:Z

.field private mIsAfw:Z

.field private mIsInMultiWindowMode:Z

.field private mIsMultiWindowModeChanged:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mOptionsMenu:Landroid/view/Menu;

.field private mRegisterCategory:Landroid/support/v7/preference/PreferenceCategory;

.field private mRenameDialog:Lcom/android/settings/fingerprint/FingerPrintRenameDialog;

.field private mSamsungAccount:Landroid/support/v14/preference/SwitchPreference;

.field private mSamsungAccountContext:Landroid/content/Context;

.field private mScreenLock:Landroid/support/v14/preference/SwitchPreference;

.field mSharedPreferences:Landroid/content/SharedPreferences;

.field private mToken:[B

.field private mUserId:I

.field private mWebSignIn:Landroid/support/v14/preference/SwitchPreference;

.field private notificationManager:Landroid/app/NotificationManager;

.field private origin_color_identifiedId:Landroid/content/res/ColorStateList;

.field private origin_typeface:Landroid/graphics/Typeface;

.field private retryFingerprintRunnable:Ljava/lang/Runnable;

.field private skipHuntip:Z

.field private through_onpreferencechange:Z


# direct methods
.method static synthetic -get0(Lcom/android/settings/fingerprint/FingerprintSettings;)I
    .registers 2

    iget v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->SCREEN_ID_RENAME:I

    return v0
.end method

.method static synthetic -get1()Landroid/widget/TextView;
    .registers 1

    sget-object v0, Lcom/android/settings/fingerprint/FingerprintSettings;->mEdit_TextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings/fingerprint/FingerprintSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/settings/fingerprint/FingerprintSettings;)I
    .registers 2

    iget v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I

    return v0
.end method

.method static synthetic -get4(Lcom/android/settings/fingerprint/FingerprintSettings;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get5()Landroid/support/v7/widget/RecyclerView;
    .registers 1

    sget-object v0, Lcom/android/settings/fingerprint/FingerprintSettings;->mListView:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/settings/fingerprint/FingerprintSettings;)Lcom/android/internal/widget/LockPatternUtils;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/settings/fingerprint/FingerprintSettings;)Landroid/support/v14/preference/SwitchPreference;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccount:Landroid/support/v14/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/settings/fingerprint/FingerprintSettings;)Landroid/support/v14/preference/SwitchPreference;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mScreenLock:Landroid/support/v14/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/settings/fingerprint/FingerprintSettings;)I
    .registers 2

    iget v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mUserId:I

    return v0
.end method

.method private static synthetic -getcom-android-settings-fingerprint-FingerprintSettings$SurveySwitchesValues()[I
    .registers 3

    sget-object v0, Lcom/android/settings/fingerprint/FingerprintSettings;->-com-android-settings-fingerprint-FingerprintSettings$SurveySwitchesValues:[I

    if-eqz v0, :cond_7

    sget-object v0, Lcom/android/settings/fingerprint/FingerprintSettings;->-com-android-settings-fingerprint-FingerprintSettings$SurveySwitchesValues:[I

    return-object v0

    :cond_7
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintSettings$Survey;->values()[Lcom/android/settings/fingerprint/FingerprintSettings$Survey;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_e
    sget-object v1, Lcom/android/settings/fingerprint/FingerprintSettings$Survey;->IDENTIFY:Lcom/android/settings/fingerprint/FingerprintSettings$Survey;

    invoke-virtual {v1}, Lcom/android/settings/fingerprint/FingerprintSettings$Survey;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_17} :catch_30

    :goto_17
    :try_start_17
    sget-object v1, Lcom/android/settings/fingerprint/FingerprintSettings$Survey;->RENAME:Lcom/android/settings/fingerprint/FingerprintSettings$Survey;

    invoke-virtual {v1}, Lcom/android/settings/fingerprint/FingerprintSettings$Survey;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_20} :catch_2e

    :goto_20
    :try_start_20
    sget-object v1, Lcom/android/settings/fingerprint/FingerprintSettings$Survey;->SAMSUNGPAY_LINK:Lcom/android/settings/fingerprint/FingerprintSettings$Survey;

    invoke-virtual {v1}, Lcom/android/settings/fingerprint/FingerprintSettings$Survey;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_29} :catch_2c

    :goto_29
    sput-object v0, Lcom/android/settings/fingerprint/FingerprintSettings;->-com-android-settings-fingerprint-FingerprintSettings$SurveySwitchesValues:[I

    return-object v0

    :catch_2c
    move-exception v1

    goto :goto_29

    :catch_2e
    move-exception v1

    goto :goto_20

    :catch_30
    move-exception v1

    goto :goto_17
.end method

.method static synthetic -set0(Landroid/widget/TextView;)Landroid/widget/TextView;
    .registers 1

    sput-object p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mEdit_TextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic -set1(Lcom/android/settings/fingerprint/FingerprintSettings;Landroid/os/CancellationSignal;)Landroid/os/CancellationSignal;
    .registers 2

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerprintCancel:Landroid/os/CancellationSignal;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/settings/fingerprint/FingerprintSettings;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mInFingerprintLockout:Z

    return p1
.end method

.method static synthetic -set3(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView;
    .registers 1

    sput-object p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mListView:Landroid/support/v7/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic -set4(Lcom/android/settings/fingerprint/FingerprintSettings;Lcom/android/settings/fingerprint/FingerPrintRenameDialog;)Lcom/android/settings/fingerprint/FingerPrintRenameDialog;
    .registers 2

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mRenameDialog:Lcom/android/settings/fingerprint/FingerPrintRenameDialog;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/settings/fingerprint/FingerprintSettings;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getFingerprintSamsungAccountVerification()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/settings/fingerprint/FingerprintSettings;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->registerAuthenticate()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/settings/fingerprint/FingerprintSettings;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->retryFingerprint()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/settings/fingerprint/FingerprintSettings;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/settings/fingerprint/FingerprintSettings;->runRegister(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/settings/fingerprint/FingerprintSettings;I[ZZI)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/fingerprint/FingerprintSettings;->startSelectListUI(I[ZZI)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/settings/fingerprint/FingerprintSettings;I[Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/settings/fingerprint/FingerprintSettings;->startSelectListUI(I[Z)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/settings/fingerprint/FingerprintSettings;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->stopFingerprint()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/settings/fingerprint/FingerprintSettings;ZI)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/settings/fingerprint/FingerprintSettings;->updateIdentifiedFinger(ZI)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/settings/fingerprint/FingerprintSettings;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->updatePreferences()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/fingerprint/FingerprintSettings;->mListView:Landroid/support/v7/widget/RecyclerView;

    sput-object v0, Lcom/android/settings/fingerprint/FingerprintSettings;->mEdit_TextView:Landroid/widget/TextView;

    sput-object v0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFragment:Landroid/app/Fragment;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/fingerprint/FingerprintSettings;->isKeepEnrollSession:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->colorId_identifiedId:I

    iput-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->origin_color_identifiedId:Landroid/content/res/ColorStateList;

    iput-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->origin_typeface:Landroid/graphics/Typeface;

    iput-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mRenameDialog:Lcom/android/settings/fingerprint/FingerPrintRenameDialog;

    iput-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mOptionsMenu:Landroid/view/Menu;

    iput-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->notificationManager:Landroid/app/NotificationManager;

    iput-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->through_onpreferencechange:Z

    iput-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->skipHuntip:Z

    iput-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->items:Ljava/util/List;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mH:Landroid/os/Handler;

    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I

    iput-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mIdentifyFingerprint:Z

    iput-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->isRunRegister:Z

    iput-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mIsAfw:Z

    iput-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mIsInMultiWindowMode:Z

    iput-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mIsMultiWindowModeChanged:Z

    new-instance v0, Lcom/android/settings/fingerprint/FingerprintSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/fingerprint/FingerprintSettings$1;-><init>(Lcom/android/settings/fingerprint/FingerprintSettings;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mAuthCallback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    new-instance v0, Lcom/android/settings/fingerprint/FingerprintSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/fingerprint/FingerprintSettings$2;-><init>(Lcom/android/settings/fingerprint/FingerprintSettings;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/settings/fingerprint/FingerprintSettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings/fingerprint/FingerprintSettings$3;-><init>(Lcom/android/settings/fingerprint/FingerprintSettings;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->retryFingerprintRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/settings/fingerprint/FingerprintSettings$4;

    invoke-direct {v0, p0}, Lcom/android/settings/fingerprint/FingerprintSettings$4;-><init>(Lcom/android/settings/fingerprint/FingerprintSettings;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->focusEditButtonRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/settings/fingerprint/FingerprintSettings$5;

    invoke-direct {v0, p0}, Lcom/android/settings/fingerprint/FingerprintSettings$5;-><init>(Lcom/android/settings/fingerprint/FingerprintSettings;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerprintLockoutReset:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/settings/fingerprint/FingerprintSettings$6;

    invoke-direct {v0, p0}, Lcom/android/settings/fingerprint/FingerprintSettings$6;-><init>(Lcom/android/settings/fingerprint/FingerprintSettings;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    return-void
.end method

.method private addFingerprintItemPreferences()V
    .registers 11

    const/4 v9, 0x0

    const/4 v8, 0x0

    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->items:Ljava/util/List;

    if-eqz v5, :cond_8

    iput-object v8, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->items:Ljava/util/List;

    :cond_8
    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v6, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mUserId:I

    invoke-virtual {v5, v6}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->items:Ljava/util/List;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->items:Ljava/util/List;

    if-eqz v5, :cond_15c

    if-eqz v0, :cond_15c

    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->items:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    iput v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I

    const/4 v1, 0x0

    :goto_25
    iget v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I

    if-ge v1, v5, :cond_64

    move v3, v1

    :goto_2a
    if-lez v3, :cond_61

    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->items:Ljava/util/List;

    add-int/lit8 v6, v3, -0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v5}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v6

    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->items:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v5}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v5

    if-le v6, v5, :cond_61

    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->items:Ljava/util/List;

    add-int/lit8 v7, v3, -0x1

    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->items:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/fingerprint/Fingerprint;

    invoke-interface {v6, v7, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->items:Ljava/util/List;

    add-int/lit8 v6, v3, 0x1

    invoke-interface {v5, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v3, v3, -0x1

    goto :goto_2a

    :cond_61
    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    :cond_64
    iget v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I

    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->items:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-eq v5, v6, :cond_8f

    const-string/jumbo v5, "FpstFingerprintSettings"

    const-string/jumbo v6, "addFingerprintItemPreferences : Sort Error"

    invoke-static {v5, v6}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v8, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->items:Ljava/util/List;

    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v6, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mUserId:I

    invoke-virtual {v5, v6}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->items:Ljava/util/List;

    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->items:Ljava/util/List;

    if-eqz v5, :cond_8f

    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->items:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    iput v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I

    :cond_8f
    const-string/jumbo v5, "FpstFingerprintSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "addFingerprintItemPreferences : mEnrolledFingerCount["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->items:Ljava/util/List;

    if-eqz v5, :cond_14d

    const/4 v1, 0x0

    :goto_b7
    iget v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I

    if-ge v1, v5, :cond_109

    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->items:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/fingerprint/Fingerprint;

    const-string/jumbo v5, "FpstFingerprintSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "addFingerprintItemPreferences : fid["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "], Name["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Landroid/hardware/fingerprint/Fingerprint;->getName()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "], Gid["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Landroid/hardware/fingerprint/Fingerprint;->getGroupId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_b7

    :cond_109
    const/4 v1, 0x0

    :goto_10a
    iget v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I

    if-ge v1, v5, :cond_158

    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->items:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/fingerprint/Fingerprint;

    new-instance v4, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference;

    invoke-direct {v4, p0, v0}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference;-><init>(Lcom/android/settings/fingerprint/FingerprintSettings;Landroid/content/Context;)V

    invoke-virtual {v2}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v5

    invoke-static {v5}, Lcom/android/settings/fingerprint/FingerprintSettings;->genKey(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference;->setKey(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/hardware/fingerprint/Fingerprint;->getName()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v4, v2}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference;->setFingerprint(Landroid/hardware/fingerprint/Fingerprint;)V

    const v5, 0x7f0d011a

    invoke-virtual {v4, v5}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference;->setLayoutResource(I)V

    invoke-virtual {v4, v9}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference;->setPersistent(Z)V

    const v5, 0x7f08020d

    invoke-virtual {v4, v5}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference;->setIcon(I)V

    invoke-virtual {v4, v1}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference;->setOrder(I)V

    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mRegisterCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v5, v4}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    invoke-virtual {v4, p0}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_10a

    :cond_14d
    iput v9, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I

    const-string/jumbo v5, "FpstFingerprintSettings"

    const-string/jumbo v6, "addFingerprintItemPreferences : mFingerprintManager.getEnrolledFingerprints() return null 2"

    invoke-static {v5, v6}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    :cond_158
    :goto_158
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->updateAddPreference()V

    return-void

    :cond_15c
    iput v9, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I

    const-string/jumbo v5, "FpstFingerprintSettings"

    const-string/jumbo v6, "addFingerprintItemPreferences : mFingerprintManager.getEnrolledFingerprints() return null 1"

    invoke-static {v5, v6}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_158
.end method

.method private cancelAndSessionEnd()V
    .registers 3

    const-string/jumbo v0, "FpstFingerprintSettings"

    const-string/jumbo v1, "cancelAndSessionEnd() "

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->stopFingerprint()V

    sget-boolean v0, Lcom/android/settings/fingerprint/FingerprintSettings;->isKeepEnrollSession:Z

    if-eqz v0, :cond_14

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/fingerprint/FingerprintSettings;->isKeepEnrollSession:Z

    :goto_13
    return-void

    :cond_14
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->postEnroll()I

    :cond_1d
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->finishFingerprintSettings()V

    goto :goto_13
.end method

.method private checkMobileKeyboard()Z
    .registers 6

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-static {v0}, Lcom/android/settings/Utils;->isNotAvailableFingerprintWithMobileKeyboard(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_14

    const/4 v1, 0x1

    :cond_14
    const-string/jumbo v2, "FpstFingerprintSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "checkMobileKeyboard. return : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", isAdded() :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->isAdded()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private createPreferenceHierarchy()Landroid/support/v7/preference/PreferenceScreen;
    .registers 4

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_12

    const-string/jumbo v1, "FpstFingerprintSettings"

    const-string/jumbo v2, "createPreferenceHierarchy : remove all"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    :cond_12
    const v1, 0x7f15006c

    invoke-virtual {p0, v1}, Lcom/android/settings/fingerprint/FingerprintSettings;->addPreferencesFromResource(I)V

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->setFingerprintPreference()V

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->addFingerprintItemPreferences()V

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->updateEditbtn()V

    return-object v0
.end method

.method private static genKey(I)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "key_fingerprint_item_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFingerprintPreferenceForUser(Landroid/content/Context;I)Landroid/support/v7/preference/Preference;
    .registers 11

    const/4 v8, 0x0

    const/4 v7, 0x0

    invoke-static {p0}, Lcom/android/settings/Utils;->getFingerprintManagerOrNull(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v3

    if-eqz v3, :cond_10

    invoke-virtual {v3}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_1a

    :cond_10
    const-string/jumbo v5, "FpstFingerprintSettings"

    const-string/jumbo v6, "No fingerprint hardware detected!!"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-object v7

    :cond_1a
    new-instance v2, Landroid/support/v7/preference/Preference;

    invoke-direct {v2, p0}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    const-string/jumbo v5, "fingerprint_settings"

    invoke-virtual {v2, v5}, Landroid/support/v7/preference/Preference;->setKey(Ljava/lang/String;)V

    const v5, 0x7f12186a

    invoke-virtual {v2, v5}, Landroid/support/v7/preference/Preference;->setTitle(I)V

    invoke-virtual {v3, p1}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_5d

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    :goto_35
    if-lez v1, :cond_5f

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    const v7, 0x7f10002e

    invoke-virtual {v5, v7, v1, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const-class v5, Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_54
    new-instance v5, Lcom/android/settings/fingerprint/FingerprintSettings$10;

    invoke-direct {v5, p1, v0}, Lcom/android/settings/fingerprint/FingerprintSettings$10;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2, v5}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    return-object v2

    :cond_5d
    const/4 v1, 0x0

    goto :goto_35

    :cond_5f
    const v5, 0x7f121869

    invoke-virtual {v2, v5}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    const-class v5, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_54
.end method

.method private getFingerprintSamsungAccountVerification()Z
    .registers 5

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "fingerprint_used_samsungaccount"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_2a

    const/4 v0, 0x1

    :goto_f
    const-string/jumbo v1, "FpstFingerprintSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getFingerprintSamsungAccountVerification :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_2a
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private getFingerprintVerification()Z
    .registers 5

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isEnabledSamsungPass(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_36

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "fingerprint_webpass"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_34

    const/4 v0, 0x1

    :goto_19
    const-string/jumbo v1, "FpstFingerprintSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getFingerprintVerification :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_34
    const/4 v0, 0x0

    goto :goto_19

    :cond_36
    return v3
.end method

.method protected static getFragment()Landroid/app/Fragment;
    .registers 1

    sget-object v0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFragment:Landroid/app/Fragment;

    return-object v0
.end method

.method private getIndexForRegisteration()I
    .registers 2

    const/4 v0, -0x1

    return v0
.end method

.method private isSamsungAccountSignedIn(Landroid/content/Context;)Z
    .registers 7

    const/4 v4, 0x0

    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string/jumbo v2, "com.osp.app.signin"

    invoke-virtual {v0, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    array-length v2, v1

    if-lez v2, :cond_1a

    const-string/jumbo v2, "FpstFingerprintSettings"

    const-string/jumbo v3, "isHaveSA() - true"

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    return v2

    :cond_1a
    const-string/jumbo v2, "FpstFingerprintSettings"

    const-string/jumbo v3, "isHaveSA() - false"

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return v4
.end method

.method private registerAuthenticate()V
    .registers 9

    const/4 v3, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mUserId:I

    invoke-virtual {v0, v2}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1c

    :cond_12
    const-string/jumbo v0, "FpstFingerprintSettings"

    const-string/jumbo v1, "registerAuthenticate : Skip"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1c
    const/4 v0, -0x1

    invoke-direct {p0, v3, v0}, Lcom/android/settings/fingerprint/FingerprintSettings;->updateIdentifiedFinger(ZI)V

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mInFingerprintLockout:Z

    if-nez v0, :cond_43

    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerprintCancel:Landroid/os/CancellationSignal;

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "privileged_attr"

    const/4 v2, 0x2

    invoke-virtual {v7, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerprintCancel:Landroid/os/CancellationSignal;

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mAuthCallback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    iget v6, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mUserId:I

    move-object v5, v1

    invoke-virtual/range {v0 .. v7}, Landroid/hardware/fingerprint/FingerprintManager;->authenticate(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;Landroid/os/CancellationSignal;ILandroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;Landroid/os/Handler;ILandroid/os/Bundle;)V

    :cond_43
    return-void
.end method

.method private renameFingerPrint(ILjava/lang/CharSequence;)V
    .registers 6

    const-string/jumbo v0, "FpstFingerprintSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "renameFingerPrint : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mRenameDialog:Lcom/android/settings/fingerprint/FingerPrintRenameDialog;

    if-eqz v0, :cond_33

    const-string/jumbo v0, "FpstFingerprintSettings"

    const-string/jumbo v1, "renameFingerPrint not null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_33
    new-instance v0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;

    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mUserId:I

    invoke-direct {v0, p1, p2, v1}, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;-><init>(ILjava/lang/CharSequence;I)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mRenameDialog:Lcom/android/settings/fingerprint/FingerPrintRenameDialog;

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mRenameDialog:Lcom/android/settings/fingerprint/FingerPrintRenameDialog;

    new-instance v1, Lcom/android/settings/fingerprint/FingerprintSettings$9;

    invoke-direct {v1, p0}, Lcom/android/settings/fingerprint/FingerprintSettings$9;-><init>(Lcom/android/settings/fingerprint/FingerprintSettings;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->setConfirmationDialogFragmentListener(Lcom/android/settings/fingerprint/FingerPrintRenameDialog$ConfirmationDialogFragmentListener;)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mRenameDialog:Lcom/android/settings/fingerprint/FingerPrintRenameDialog;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "dialog"

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    sget-object v0, Lcom/android/settings/fingerprint/FingerprintSettings$Survey;->RENAME:Lcom/android/settings/fingerprint/FingerprintSettings$Survey;

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintSettings;->sendSurvey(Lcom/android/settings/fingerprint/FingerprintSettings$Survey;)V

    return-void
.end method

.method private retryFingerprint()V
    .registers 5

    const-string/jumbo v0, "FpstFingerprintSettings"

    const-string/jumbo v1, "retryFingerprint"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->retryFingerprintRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private runRegister(Ljava/lang/String;)V
    .registers 8

    const/4 v5, 0x0

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->checkMobileKeyboard()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->showMobileKeyboardToastMsg()V

    :goto_a
    return-void

    :cond_b
    iget-boolean v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mIsInMultiWindowMode:Z

    if-eqz v3, :cond_22

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f120b6d

    invoke-virtual {p0, v4}, Lcom/android/settings/fingerprint/FingerprintSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_a

    :cond_22
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v3, "com.android.settings"

    const-string/jumbo v4, "com.android.settings.fingerprint.RegisterFingerprint"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "fingerIndex"

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getIndexForRegisteration()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v3, "previousStage"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "identifyFingerprint"

    iget-boolean v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mIdentifyFingerprint:Z

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v3, 0x20000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mToken:[B

    if-eqz v3, :cond_59

    const-string/jumbo v3, "hw_auth_token"

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mToken:[B

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    :cond_59
    iget-boolean v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->isRunRegister:Z

    if-eqz v3, :cond_7a

    const-string/jumbo v3, "FpstFingerprintSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "runRegister already called : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->isRunRegister:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_7a
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->isRunRegister:Z

    const-string/jumbo v3, "FpstFingerprintSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "runRegister called : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->isRunRegister:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_99
    iget v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I

    if-lez v3, :cond_aa

    const/16 v3, 0x3e9

    invoke-direct {p0, v1, v3}, Lcom/android/settings/fingerprint/FingerprintSettings;->startActivityForResultWrapper(Landroid/content/Intent;I)V
    :try_end_a2
    .catch Ljava/lang/Exception; {:try_start_99 .. :try_end_a2} :catch_a4

    goto/16 :goto_a

    :catch_a4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_a

    :cond_aa
    const/16 v3, 0x3e8

    :try_start_ac
    invoke-direct {p0, v1, v3}, Lcom/android/settings/fingerprint/FingerprintSettings;->startActivityForResultWrapper(Landroid/content/Intent;I)V
    :try_end_af
    .catch Ljava/lang/Exception; {:try_start_ac .. :try_end_af} :catch_a4

    goto/16 :goto_a
.end method

.method private setFingerPrintOnSAConfirmed(Landroid/content/Context;I)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p2, :cond_b

    const/4 v1, 0x1

    if-eq p2, v1, :cond_b

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :cond_b
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "fingerprint_samsungaccount_confirmed"

    invoke-static {v1, v2, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    const-string/jumbo v1, "FpstFingerprintSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setFingerPrintOnSamsungAccountConfirmed:result : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private setFingerprintPreference()V
    .registers 15

    const-string/jumbo v10, "check_huntip"

    invoke-virtual {p0, v10}, Lcom/android/settings/fingerprint/FingerprintSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v10, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mHuntipCategory:Landroid/support/v7/preference/PreferenceCategory;

    const-string/jumbo v10, "register_category"

    invoke-virtual {p0, v10}, Lcom/android/settings/fingerprint/FingerprintSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v10, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mRegisterCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "device_provisioned"

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v10

    if-nez v10, :cond_49

    iget-object v10, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v11, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mUserId:I

    invoke-virtual {v10, v11}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v10

    if-eqz v10, :cond_49

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    check-cast v10, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v10, p0}, Lcom/android/settings/SettingsActivity;->setOnEditPressedListener(Lcom/android/settings/SettingsActivity$onEditButtonClicked;)V

    iget-object v10, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mRegisterCategory:Landroid/support/v7/preference/PreferenceCategory;

    const v11, 0x7f0d010a

    invoke-virtual {v10, v11}, Landroid/support/v7/preference/PreferenceCategory;->setLayoutResource(I)V

    :cond_49
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/support/v7/preference/PreferenceManager;->setStorageDeviceProtected()V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/support/v7/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    iget-object v10, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v11, "pref_huntip"

    const/4 v12, 0x1

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string/jumbo v10, "FpstFingerprintSettings"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "setFingerprintPreference [isResumed, isFirstHuntip] : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->isResumed()Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v10}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints()Z

    move-result v10

    if-eqz v10, :cond_29b

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_29b

    iget-boolean v10, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->skipHuntip:Z

    if-eqz v10, :cond_af

    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->skipHuntip:Z

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mHuntipCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v10, v11}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_af
    :goto_af
    const-string/jumbo v10, "support_web_signin"

    invoke-virtual {p0, v10}, Lcom/android/settings/fingerprint/FingerprintSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/support/v14/preference/SwitchPreference;

    iput-object v10, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mWebSignIn:Landroid/support/v14/preference/SwitchPreference;

    iget-object v10, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mWebSignIn:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v10, :cond_ec

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const-string/jumbo v11, "com.sec.android.app.sbrowser"

    invoke-static {v10, v11}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_d5

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-static {v10}, Lcom/android/settings/Utils;->isEnabledSamsungPass(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_2a6

    :cond_d5
    const-string/jumbo v10, "FpstFingerprintSettings"

    const-string/jumbo v11, "setFingerprintPreference : Remove Web Sign-In"

    invoke-static {v10, v11}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v10, "feature_category"

    invoke-virtual {p0, v10}, Lcom/android/settings/fingerprint/FingerprintSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/support/v7/preference/PreferenceGroup;

    iget-object v11, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mWebSignIn:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v10, v11}, Landroid/support/v7/preference/PreferenceGroup;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_ec
    :goto_ec
    const-string/jumbo v10, "samsung_pay"

    invoke-virtual {p0, v10}, Lcom/android/settings/fingerprint/FingerprintSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v7

    if-eqz v7, :cond_117

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const-string/jumbo v11, "com.samsung.android.spay"

    invoke-static {v10, v11}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_2b6

    const-string/jumbo v10, "FpstFingerprintSettings"

    const-string/jumbo v11, "setFingerprintPreference : Remove SamsungPay"

    invoke-static {v10, v11}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v10, "feature_category"

    invoke-virtual {p0, v10}, Lcom/android/settings/fingerprint/FingerprintSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v10, v7}, Landroid/support/v7/preference/PreferenceGroup;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_117
    :goto_117
    const-string/jumbo v10, "support_samsung_account"

    invoke-virtual {p0, v10}, Lcom/android/settings/fingerprint/FingerprintSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/support/v14/preference/SwitchPreference;

    iput-object v10, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccount:Landroid/support/v14/preference/SwitchPreference;

    iget-object v10, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccount:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v10, :cond_154

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-static {v10}, Lcom/android/settings/Utils;->isEnabledSamsungPass(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_2f0

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-static {v10}, Lcom/android/settings/Utils;->checkSAMenuChanged(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_2f0

    const-string/jumbo v10, "FpstFingerprintSettings"

    const-string/jumbo v11, "setFingerprintPreference : Remove Samsung Account"

    invoke-static {v10, v11}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v10, "feature_category"

    invoke-virtual {p0, v10}, Lcom/android/settings/fingerprint/FingerprintSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/support/v7/preference/PreferenceGroup;

    iget-object v11, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccount:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v10, v11}, Landroid/support/v7/preference/PreferenceGroup;->removePreference(Landroid/support/v7/preference/Preference;)Z

    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccount:Landroid/support/v14/preference/SwitchPreference;

    :cond_154
    :goto_154
    const-string/jumbo v10, "key_fingerprint_samsung_pass"

    invoke-virtual {p0, v10}, Lcom/android/settings/fingerprint/FingerprintSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    if-eqz v6, :cond_17c

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-static {v10}, Lcom/android/settings/Utils;->isEnabledSamsungPass(Landroid/content/Context;)Z

    move-result v10

    if-nez v10, :cond_352

    const-string/jumbo v10, "FpstFingerprintSettings"

    const-string/jumbo v11, "setFingerprintPreference : Remove SamsungPass"

    invoke-static {v10, v11}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v10, "feature_category"

    invoke-virtual {p0, v10}, Lcom/android/settings/fingerprint/FingerprintSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v10, v6}, Landroid/support/v7/preference/PreferenceGroup;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_17c
    :goto_17c
    const-string/jumbo v10, "set_screen_lock"

    invoke-virtual {p0, v10}, Lcom/android/settings/fingerprint/FingerprintSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/support/v14/preference/SwitchPreference;

    iput-object v10, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mScreenLock:Landroid/support/v14/preference/SwitchPreference;

    iget-object v10, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mScreenLock:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v10, :cond_25c

    iget-object v10, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v11, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mUserId:I

    const/4 v12, 0x1

    invoke-virtual {v10, v12, v11}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_377

    const/4 v1, 0x1

    :goto_198
    iget-object v10, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mScreenLock:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v10, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v10, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mScreenLock:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v10, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-static {v10, v1}, Lcom/android/settings/Utils;->setFingerprintScreenLockVerification(Landroid/content/Context;Z)V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-static {v10}, Lcom/android/settings/Utils;->isSharedDeviceEnabled(Landroid/content/Context;)Z

    move-result v10

    if-nez v10, :cond_1b9

    iget-object v10, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mScreenLock:Landroid/support/v14/preference/SwitchPreference;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    :cond_1b9
    :try_start_1b9
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    iget v11, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mUserId:I

    invoke-static {v10, v11}, Lcom/android/settings/Utils;->isFingerprintDisabled(Landroid/content/Context;I)Z

    move-result v10

    if-nez v10, :cond_208

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "knox_finger_print_plus"

    iget v12, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mUserId:I

    const/4 v13, 0x0

    invoke-static {v10, v11, v13, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_1e2

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    iget v11, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mUserId:I

    invoke-static {v10, v11}, Lcom/android/settings/Utils;->isMultifactorAuthEnforced(Landroid/content/Context;I)Z

    move-result v10

    if-nez v10, :cond_208

    :cond_1e2
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-static {v10}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v10

    if-eqz v10, :cond_217

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-static {v10}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v10

    iget v11, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mUserId:I

    invoke-virtual {v10, v11}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v10

    if-eqz v10, :cond_217

    iget-object v10, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v11, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mUserId:I

    invoke-virtual {v10, v11}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v10

    xor-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_217

    :cond_208
    const-string/jumbo v10, "FpstFingerprintSettings"

    const-string/jumbo v11, "setFingerprintPreference : Screen lock switch disable by MDM!"

    invoke-static {v10, v11}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mScreenLock:Landroid/support/v14/preference/SwitchPreference;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V
    :try_end_217
    .catch Ljava/lang/Exception; {:try_start_1b9 .. :try_end_217} :catch_37a

    :cond_217
    :goto_217
    iget-object v10, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v11, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mUserId:I

    invoke-virtual {v10, v11}, Lcom/android/internal/widget/LockPatternUtils;->isEnterpriseIdentityLockSet(I)Z

    move-result v10

    if-eqz v10, :cond_230

    const-string/jumbo v10, "FpstFingerprintSettings"

    const-string/jumbo v11, "setFingerprintPreference : Screen lock switch disable by Enterprise ID feature"

    invoke-static {v10, v11}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mScreenLock:Landroid/support/v14/preference/SwitchPreference;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    :cond_230
    iget v10, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mUserId:I

    invoke-static {v10}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v10

    if-eqz v10, :cond_25c

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getContext()Landroid/content/Context;

    move-result-object v10

    iget v11, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mUserId:I

    invoke-static {v10, v11}, Lcom/android/settings/Utils;->getKnoxName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mScreenLock:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f120bcc

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v9, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/support/v14/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_25c
    const/4 v10, 0x1

    if-eq v5, v10, :cond_271

    const-string/jumbo v10, "FpstFingerprintSettings"

    const-string/jumbo v11, "setFingerprintPreference : SUW Remove reigster category"

    invoke-static {v10, v11}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mRegisterCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v10, v11}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_271
    iget-boolean v10, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mIsAfw:Z

    if-eqz v10, :cond_29a

    const-string/jumbo v10, "FpstFingerprintSettings"

    const-string/jumbo v11, "setFingerprintPreference : Remove all feature and unlock category"

    invoke-static {v10, v11}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v10

    const-string/jumbo v11, "feature_category"

    invoke-virtual {p0, v11}, Lcom/android/settings/fingerprint/FingerprintSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v10

    const-string/jumbo v11, "unlock_category"

    invoke-virtual {p0, v11}, Lcom/android/settings/fingerprint/FingerprintSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_29a
    return-void

    :cond_29b
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mHuntipCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v10, v11}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto/16 :goto_af

    :cond_2a6
    iget-object v10, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mWebSignIn:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v10, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v10, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mWebSignIn:Landroid/support/v14/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getFingerprintVerification()Z

    move-result v11

    invoke-virtual {v10, v11}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_ec

    :cond_2b6
    :try_start_2b6
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    const-string/jumbo v11, "com.samsung.android.spay"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v8

    const-string/jumbo v10, "0.0.00"

    iget-object v11, v8, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_117

    const-string/jumbo v10, "FpstFingerprintSettings"

    const-string/jumbo v11, "setFingerprintPreference : Remove SamsungPay. Stub application isntalled"

    invoke-static {v10, v11}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v10, "feature_category"

    invoke-virtual {p0, v10}, Lcom/android/settings/fingerprint/FingerprintSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v10, v7}, Landroid/support/v7/preference/PreferenceGroup;->removePreference(Landroid/support/v7/preference/Preference;)Z
    :try_end_2e2
    .catch Ljava/lang/Exception; {:try_start_2b6 .. :try_end_2e2} :catch_2e4

    goto/16 :goto_117

    :catch_2e4
    move-exception v0

    const-string/jumbo v10, "FpstFingerprintSettings"

    const-string/jumbo v11, "setFingerprintPreference : Getting information of SamsungPay make the Exception!"

    invoke-static {v10, v11}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_117

    :cond_2f0
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getFingerprintSamsungAccountVerification()Z

    move-result v4

    iget-object v10, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroid/content/Context;

    invoke-direct {p0, v10}, Lcom/android/settings/fingerprint/FingerprintSettings;->isSamsungAccountSignedIn(Landroid/content/Context;)Z

    move-result v3

    const-string/jumbo v10, "FpstFingerprintSettings"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "setFingerprintPreference : Samsung Account  isSAVerfied : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " , isSASigndIn : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_31f
    iget-object v11, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroid/content/Context;

    if-eqz v4, :cond_347

    if-eqz v3, :cond_347

    const/4 v10, 0x1

    :goto_326
    invoke-direct {p0, v11, v10}, Lcom/android/settings/fingerprint/FingerprintSettings;->setUseFingerprintForSA(Landroid/content/Context;I)Z

    iget-object v11, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroid/content/Context;

    if-eqz v4, :cond_349

    if-eqz v3, :cond_349

    const/4 v10, 0x1

    :goto_330
    invoke-direct {p0, v11, v10}, Lcom/android/settings/fingerprint/FingerprintSettings;->setFingerPrintOnSAConfirmed(Landroid/content/Context;I)Z

    iget-object v10, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccount:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v4, :cond_34b

    :goto_337
    invoke-virtual {v10, v3}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V
    :try_end_33a
    .catch Ljava/lang/Exception; {:try_start_31f .. :try_end_33a} :catch_34d

    :goto_33a
    iget-object v10, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccount:Landroid/support/v14/preference/SwitchPreference;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v10, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccount:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v10, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    goto/16 :goto_154

    :cond_347
    const/4 v10, 0x0

    goto :goto_326

    :cond_349
    const/4 v10, 0x0

    goto :goto_330

    :cond_34b
    const/4 v3, 0x0

    goto :goto_337

    :catch_34d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_33a

    :cond_352
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f120bc8

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f120bc7

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v11, v13

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_17c

    :cond_377
    const/4 v1, 0x0

    goto/16 :goto_198

    :catch_37a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_217
.end method

.method private setFingerprintVerification(Z)V
    .registers 5

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isEnabledSamsungPass(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_31

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "fingerprint_webpass"

    if-eqz p1, :cond_32

    const/4 v0, 0x1

    :goto_14
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v0, "FpstFingerprintSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setFingerprintVerification: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_31
    return-void

    :cond_32
    const/4 v0, 0x0

    goto :goto_14
.end method

.method private setUseFingerprintForSA(Landroid/content/Context;I)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p2, :cond_b

    const/4 v1, 0x1

    if-eq p2, v1, :cond_b

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :cond_b
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "fingerprint_used_samsungaccount"

    invoke-static {v1, v2, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    const-string/jumbo v1, "FpstFingerprintSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setFingerPrintOnSamsungAccountUsed:result : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private showMobileKeyboardToastMsg()V
    .registers 6

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const v3, 0x7f120b24

    invoke-virtual {p0, v3}, Lcom/android/settings/fingerprint/FingerprintSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const v3, 0x7f120bf5

    invoke-virtual {p0, v3, v2}, Lcom/android/settings/fingerprint/FingerprintSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private startActivityForResultWrapper(Landroid/content/Intent;I)V
    .registers 7

    const-string/jumbo v1, "FpstFingerprintSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startActivityForResultWrapper:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "isAfw"

    iget-boolean v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mIsAfw:Z

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.extra.USER_ID"

    iget v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mUserId:I

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :try_start_2a
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/fingerprint/FingerprintSettings;->startActivityForResult(Landroid/content/Intent;I)V

    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/settings/fingerprint/FingerprintSettings;->isKeepEnrollSession:Z
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_30} :catch_31

    :goto_30
    return-void

    :catch_31
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_30
.end method

.method private startActivityWrapper(Landroid/content/Intent;)V
    .registers 6

    const-string/jumbo v1, "FpstFingerprintSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startActivityWrapper:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "isAfw"

    iget-boolean v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mIsAfw:Z

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.extra.USER_ID"

    iget v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mUserId:I

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :try_start_2a
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/settings/fingerprint/FingerprintSettings;->isKeepEnrollSession:Z
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_34} :catch_35

    :goto_34
    return-void

    :catch_35
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_34
.end method

.method private startActivityWrapperWithSessionClose(Landroid/content/Intent;)V
    .registers 6

    const-string/jumbo v1, "FpstFingerprintSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startActivityWrapperWithSessionClose:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "isAfw"

    iget-boolean v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mIsAfw:Z

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.extra.USER_ID"

    iget v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mUserId:I

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :try_start_2a
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/settings/fingerprint/FingerprintSettings;->isKeepEnrollSession:Z
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_34} :catch_35

    :goto_34
    return-void

    :catch_35
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_34
.end method

.method private startSelectListUI(I[Z)V
    .registers 5

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/settings/fingerprint/FingerprintSettings;->startSelectListUI(I[ZZI)V

    return-void
.end method

.method private startSelectListUI(I[ZZI)V
    .registers 15

    iget v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->items:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result p1

    :cond_12
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings/fingerprint/FingerprintSettings;->isKeepEnrollSession:Z

    const-string/jumbo v0, "FpstFingerprintSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startSelectListUI : fId["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "], twChecklist["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "], "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "callByBixby["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "], "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "opValue["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "selected_id"

    invoke-virtual {v3, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "isAfw"

    iget-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mIsAfw:Z

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v0, "callby_bixby"

    invoke-virtual {v3, v0, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    if-eqz p3, :cond_8a

    const-string/jumbo v0, "bixby_opvalue"

    invoke-virtual {v3, v0, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_8a
    const-string/jumbo v0, "android.intent.extra.USER_ID"

    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mUserId:I

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz p2, :cond_9a

    const-string/jumbo v0, "twmultiselected_id"

    invoke-virtual {v3, v0, p2}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    :cond_9a
    const-string/jumbo v0, "FpstFingerprintSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isTablet : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_d7

    invoke-static {}, Lcom/android/settings/SettingsActivity;->getSettingsActivityContext()Landroid/content/Context;

    move-result-object v9

    if-nez v9, :cond_c5

    return-void

    :cond_c5
    move-object v0, v9

    check-cast v0, Lcom/android/settings/SettingsActivity;

    const-string/jumbo v2, "com.android.settings.fingerprint.FingerprintSettingsMultiSelect"

    const/4 v1, 0x0

    const v4, 0x7f12037f

    const/4 v5, 0x0

    const/16 v7, 0x3ef

    move-object v6, p0

    invoke-virtual/range {v0 .. v7}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Landroid/app/Fragment;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    :goto_d6
    return-void

    :cond_d7
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "com.android.settings.fingerprint.FingerprintSettingsMultiSelect"

    const/16 v5, 0x3ef

    const v6, 0x7f12037f

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, p0

    invoke-static/range {v1 .. v8}, Lcom/android/settings/Utils;->startWithFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;IILjava/lang/CharSequence;I)V

    goto :goto_d6
.end method

.method private stopFingerprint()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerprintCancel:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerprintCancel:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1d

    const-string/jumbo v0, "FpstFingerprintSettings"

    const-string/jumbo v1, "stopFingerprint cancel()"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerprintCancel:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    :cond_1d
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->retryFingerprintRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mH:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->focusEditButtonRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerprintCancel:Landroid/os/CancellationSignal;

    return-void
.end method

.method private updateAddPreference()V
    .registers 9

    const/4 v7, 0x0

    iget v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I

    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintSettingsUtils;->getMaxFingerEnroll()I

    move-result v6

    if-lt v5, v6, :cond_22

    const-string/jumbo v5, "key_fingerprint_add"

    invoke-virtual {p0, v5}, Lcom/android/settings/fingerprint/FingerprintSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/support/v7/preference/PreferenceScreen;

    if-eqz v3, :cond_84

    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mRegisterCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v5, v3}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    const-string/jumbo v5, "FpstFingerprintSettings"

    const-string/jumbo v6, "updateAddPreference : Remove mAddFingerprint"

    invoke-static {v5, v6}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    :goto_22
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string/jumbo v6, "keyguard"

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "biometrics_backup_type"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mUserId:I

    invoke-virtual {v2, v5}, Landroid/app/KeyguardManager;->isDeviceSecure(I)Z

    move-result v1

    iget v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I

    if-lez v5, :cond_4e

    if-nez v1, :cond_4e

    if-nez v1, :cond_67

    if-eqz v0, :cond_67

    :cond_4e
    const-string/jumbo v5, "change_reset_password"

    invoke-virtual {p0, v5}, Lcom/android/settings/fingerprint/FingerprintSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/support/v7/preference/PreferenceScreen;

    if-eqz v4, :cond_8e

    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mRegisterCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v5, v4}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    const-string/jumbo v5, "FpstFingerprintSettings"

    const-string/jumbo v6, "updateAddPreference : Remove mFingerprintPassword"

    invoke-static {v5, v6}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_67
    :goto_67
    const-string/jumbo v5, "FpstFingerprintSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateAddPreference [mEnrolledFingerCount] = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_84
    const-string/jumbo v5, "FpstFingerprintSettings"

    const-string/jumbo v6, "updateAddPreference : mAddFingerprint is null"

    invoke-static {v5, v6}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22

    :cond_8e
    const-string/jumbo v5, "FpstFingerprintSettings"

    const-string/jumbo v6, "updateAddPreference : mFingerprintPassword is null"

    invoke-static {v5, v6}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_67
.end method

.method private updateEditbtn()V
    .registers 7

    const/4 v3, 0x0

    const-string/jumbo v1, "FpstFingerprintSettings"

    const-string/jumbo v2, "updateEditbtn"

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "show_button_background"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_38

    const/4 v0, 0x1

    :goto_1c
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-nez v1, :cond_2e

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mUserId:I

    invoke-virtual {v1, v2}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3a

    :cond_2e
    const-string/jumbo v1, "FpstFingerprintSettings"

    const-string/jumbo v2, "skip update Edit BG catetory"

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_38
    const/4 v0, 0x0

    goto :goto_1c

    :cond_3a
    if-eqz v0, :cond_44

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mRegisterCategory:Landroid/support/v7/preference/PreferenceCategory;

    const v2, 0x7f0d0109

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceCategory;->setLayoutResource(I)V

    :cond_44
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mH:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->focusEditButtonRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x96

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private declared-synchronized updateIdentifiedFinger(ZI)V
    .registers 14

    monitor-enter p0

    const/4 v4, 0x0

    :goto_2
    :try_start_2
    iget v8, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I

    if-ge v4, v8, :cond_db

    iget-object v8, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->items:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v8}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v2

    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintSettings;->genKey(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/settings/fingerprint/FingerprintSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference;

    invoke-virtual {v3}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference;->getView()Landroid/view/View;

    move-result-object v7

    const/4 v6, 0x0

    if-eqz v7, :cond_2c

    const v8, 0x1020016

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    :cond_2c
    if-eqz v6, :cond_87

    iget-object v8, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->origin_color_identifiedId:Landroid/content/res/ColorStateList;

    if-nez v8, :cond_38

    invoke-virtual {v6}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->origin_color_identifiedId:Landroid/content/res/ColorStateList;

    :cond_38
    iget-object v8, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->origin_typeface:Landroid/graphics/Typeface;

    if-nez v8, :cond_42

    invoke-virtual {v6}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->origin_typeface:Landroid/graphics/Typeface;

    :cond_42
    if-eqz p1, :cond_8b

    if-ne p2, v2, :cond_87

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual {v6, v8, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    iget v8, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->colorId_identifiedId:I

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setTextColor(I)V

    const-string/jumbo v8, "FpstFingerprintSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "updateIdentifiedFinger identified["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "]["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "]["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_87
    :goto_87
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    :cond_8b
    iget-object v8, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->origin_typeface:Landroid/graphics/Typeface;

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    iget-object v8, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->origin_color_identifiedId:Landroid/content/res/ColorStateList;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    const-string/jumbo v8, "FpstFingerprintSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "updateIdentifiedFinger["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "]["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "]["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_cd
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_cd} :catch_ce
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_cd} :catch_dd
    .catchall {:try_start_2 .. :try_end_cd} :catchall_eb

    goto :goto_87

    :catch_ce
    move-exception v0

    :try_start_cf
    const-string/jumbo v8, "FpstFingerprintSettings"

    const-string/jumbo v9, "updateIdentifiedFinger : IllegalStateException"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_db
    .catchall {:try_start_cf .. :try_end_db} :catchall_eb

    :cond_db
    :goto_db
    monitor-exit p0

    return-void

    :catch_dd
    move-exception v1

    :try_start_de
    const-string/jumbo v8, "FpstFingerprintSettings"

    const-string/jumbo v9, "updateIdentifiedFinger : Exception"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_ea
    .catchall {:try_start_de .. :try_end_ea} :catchall_eb

    goto :goto_db

    :catchall_eb
    move-exception v8

    monitor-exit p0

    throw v8
.end method

.method private updateOptionsMenu(Landroid/view/Menu;)V
    .registers 11

    const v8, 0x7f120cf8

    const/4 v7, 0x2

    const v6, 0x7f120605

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-nez p1, :cond_15

    const-string/jumbo v1, "FpstFingerprintSettings"

    const-string/jumbo v2, "updateOptionsMenu : menu is Null. Skip update"

    invoke-static {v1, v2}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_15
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "FpstFingerprintSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateOptionsMenu : enrolledFingerprintNum["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "USA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_71

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_71

    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I

    if-nez v1, :cond_69

    invoke-interface {p1, v4, v5, v4, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_68
    :goto_68
    return-void

    :cond_69
    invoke-interface {p1, v4, v5, v4, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_68

    :cond_71
    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I

    if-nez v1, :cond_91

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isSupportOnlineHelpMenu(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_89

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isSupportHelpMenu(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_68

    :cond_89
    invoke-interface {p1, v4, v7, v4, v8}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_68

    :cond_91
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isSupportOnlineHelpMenu(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_a5

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isSupportHelpMenu(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_ba

    :cond_a5
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_b2

    invoke-interface {p1, v4, v5, v4, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    invoke-interface {p1, v4, v7, v4, v8}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_68

    :cond_b2
    invoke-interface {p1, v4, v7, v4, v8}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_68

    :cond_ba
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_68

    invoke-interface {p1, v4, v5, v4, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_68
.end method

.method private updatePreferences()V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->createPreferenceHierarchy()Landroid/support/v7/preference/PreferenceScreen;

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->retryFingerprint()V

    return-void
.end method


# virtual methods
.method public editKeyPressed(Landroid/view/View;)V
    .registers 5

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a08ba

    if-ne v0, v1, :cond_24

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "pref_huntip"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mHuntipCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_23
    :goto_23
    return-void

    :cond_24
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a0339

    if-ne v0, v1, :cond_23

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b023c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/settings/fingerprint/FingerprintSettings;->startSelectListUI(I[Z)V

    goto :goto_23
.end method

.method protected finishFingerprintSettings()V
    .registers 3

    const-string/jumbo v0, "FpstFingerprintSettings"

    const-string/jumbo v1, "finishFingerprintSettings()"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->isRemoving()Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    :cond_1c
    :goto_1c
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mRenameDialog:Lcom/android/settings/fingerprint/FingerPrintRenameDialog;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mRenameDialog:Lcom/android/settings/fingerprint/FingerPrintRenameDialog;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->cancelRenameDialog()V

    :cond_25
    return-void

    :cond_26
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_1c
.end method

.method protected getHelpResource()I
    .registers 2

    const v0, 0x7f120d0d

    return v0
.end method

.method public getMetricsCategory()I
    .registers 2

    const/16 v0, 0x2016

    return v0
.end method

.method protected handleError(ILjava/lang/CharSequence;)V
    .registers 9

    const/4 v4, 0x0

    const-string/jumbo v1, "FpstFingerprintSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleError errMsgId"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", msg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerprintCancel:Landroid/os/CancellationSignal;

    packed-switch p1, :pswitch_data_4e

    :cond_2b
    :goto_2b
    :pswitch_2b
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_35

    const/4 v1, 0x0

    invoke-static {v0, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    :cond_35
    return-void

    :pswitch_36
    return-void

    :pswitch_37
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mInFingerprintLockout:Z

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerprintLockoutReset:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    if-nez v1, :cond_2b

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerprintLockoutReset:Ljava/lang/Runnable;

    const-wide/16 v4, 0x7530

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2b

    :pswitch_data_4e
    .packed-switch 0x5
        :pswitch_36
        :pswitch_2b
        :pswitch_37
    .end packed-switch
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 19

    invoke-super/range {p0 .. p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    const-string/jumbo v10, "FpstFingerprintSettings"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "=====onActivityResult requestCode : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " resultCode : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    sparse-switch p1, :sswitch_data_364

    :cond_2f
    :goto_2f
    return-void

    :sswitch_30
    const/4 v10, -0x1

    move/from16 v0, p2

    if-ne v0, v10, :cond_80

    :try_start_35
    iget-object v10, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroid/content/Context;

    const/4 v11, 0x1

    invoke-direct {p0, v10, v11}, Lcom/android/settings/fingerprint/FingerprintSettings;->setUseFingerprintForSA(Landroid/content/Context;I)Z

    iget-object v10, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroid/content/Context;

    const/4 v11, 0x1

    invoke-direct {p0, v10, v11}, Lcom/android/settings/fingerprint/FingerprintSettings;->setFingerPrintOnSAConfirmed(Landroid/content/Context;I)Z

    iget-object v10, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccount:Landroid/support/v14/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getFingerprintSamsungAccountVerification()Z

    move-result v11

    invoke-virtual {v10, v11}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    const-string/jumbo v11, "FpstFingerprintSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "SAMSUNGACCOUNT_EXISTING_REQUEST RESULT_OK setChecked : "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v13, "fingerprint_used_samsungaccount"

    const/4 v14, 0x0

    invoke-static {v10, v13, v14}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    const/4 v13, 0x1

    if-ne v10, v13, :cond_7e

    const/4 v10, 0x1

    :goto_6d
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_78} :catch_79

    goto :goto_2f

    :catch_79
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2f

    :cond_7e
    const/4 v10, 0x0

    goto :goto_6d

    :cond_80
    :try_start_80
    iget-object v10, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroid/content/Context;

    const/4 v11, 0x0

    invoke-direct {p0, v10, v11}, Lcom/android/settings/fingerprint/FingerprintSettings;->setUseFingerprintForSA(Landroid/content/Context;I)Z

    iget-object v10, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroid/content/Context;

    const/4 v11, 0x0

    invoke-direct {p0, v10, v11}, Lcom/android/settings/fingerprint/FingerprintSettings;->setFingerPrintOnSAConfirmed(Landroid/content/Context;I)Z

    iget-object v10, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccount:Landroid/support/v14/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getFingerprintSamsungAccountVerification()Z

    move-result v11

    invoke-virtual {v10, v11}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    const-string/jumbo v11, "FpstFingerprintSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "SAMSUNGACCOUNT_EXISTING_REQUEST RESULT_NOK setChecked : "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v13, "fingerprint_used_samsungaccount"

    const/4 v14, 0x0

    invoke-static {v10, v13, v14}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    const/4 v13, 0x1

    if-ne v10, v13, :cond_cb

    const/4 v10, 0x1

    :goto_b8
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c3
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_c3} :catch_c5

    goto/16 :goto_2f

    :catch_c5
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2f

    :cond_cb
    const/4 v10, 0x0

    goto :goto_b8

    :sswitch_cd
    const/4 v10, -0x1

    move/from16 v0, p2

    if-eq v0, v10, :cond_d7

    const/4 v10, 0x1

    move/from16 v0, p2

    if-ne v0, v10, :cond_124

    :cond_d7
    :try_start_d7
    iget-object v10, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroid/content/Context;

    const/4 v11, 0x1

    invoke-direct {p0, v10, v11}, Lcom/android/settings/fingerprint/FingerprintSettings;->setUseFingerprintForSA(Landroid/content/Context;I)Z

    iget-object v10, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroid/content/Context;

    const/4 v11, 0x1

    invoke-direct {p0, v10, v11}, Lcom/android/settings/fingerprint/FingerprintSettings;->setFingerPrintOnSAConfirmed(Landroid/content/Context;I)Z

    iget-object v10, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccount:Landroid/support/v14/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getFingerprintSamsungAccountVerification()Z

    move-result v11

    invoke-virtual {v10, v11}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    const-string/jumbo v11, "FpstFingerprintSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "SAMSUNGACCOUNT_REQUEST RESULT_OK setChecked : "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v13, "fingerprint_used_samsungaccount"

    const/4 v14, 0x0

    invoke-static {v10, v13, v14}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    const/4 v13, 0x1

    if-ne v10, v13, :cond_122

    const/4 v10, 0x1

    :goto_10f
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11a
    .catch Ljava/lang/Exception; {:try_start_d7 .. :try_end_11a} :catch_11c

    goto/16 :goto_2f

    :catch_11c
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2f

    :cond_122
    const/4 v10, 0x0

    goto :goto_10f

    :cond_124
    :try_start_124
    iget-object v10, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroid/content/Context;

    const/4 v11, 0x0

    invoke-direct {p0, v10, v11}, Lcom/android/settings/fingerprint/FingerprintSettings;->setUseFingerprintForSA(Landroid/content/Context;I)Z

    iget-object v10, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroid/content/Context;

    const/4 v11, 0x0

    invoke-direct {p0, v10, v11}, Lcom/android/settings/fingerprint/FingerprintSettings;->setFingerPrintOnSAConfirmed(Landroid/content/Context;I)Z

    iget-object v10, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccount:Landroid/support/v14/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getFingerprintSamsungAccountVerification()Z

    move-result v11

    invoke-virtual {v10, v11}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    const-string/jumbo v11, "FpstFingerprintSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "SAMSUNGACCOUNT_REQUEST RESULT_NOK setChecked : "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v13, "fingerprint_used_samsungaccount"

    const/4 v14, 0x0

    invoke-static {v10, v13, v14}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    const/4 v13, 0x1

    if-ne v10, v13, :cond_16f

    const/4 v10, 0x1

    :goto_15c
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_167
    .catch Ljava/lang/Exception; {:try_start_124 .. :try_end_167} :catch_169

    goto/16 :goto_2f

    :catch_169
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2f

    :cond_16f
    const/4 v10, 0x0

    goto :goto_15c

    :sswitch_171
    if-eqz p3, :cond_17e

    const-string/jumbo v10, "hw_auth_token"

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mToken:[B

    :cond_17e
    iget-boolean v10, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->isRunRegister:Z

    if-eqz v10, :cond_18e

    const-string/jumbo v10, "FpstFingerprintSettings"

    const-string/jumbo v11, "reset runRegister"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->isRunRegister:Z

    :cond_18e
    const/4 v10, -0x1

    move/from16 v0, p2

    if-eq v0, v10, :cond_198

    const/4 v10, 0x1

    move/from16 v0, p2

    if-ne v0, v10, :cond_2b6

    :cond_198
    const/4 v5, 0x0

    if-eqz p3, :cond_1a4

    :try_start_19b
    const-string/jumbo v10, "previousStage"

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_1a4
    const-string/jumbo v10, "support_web_signin"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1ba

    const-string/jumbo v10, "FpstFingerprintSettings"

    const-string/jumbo v11, "previos stage is WebSingin"

    invoke-static {v10, v11}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x1

    invoke-direct {p0, v10}, Lcom/android/settings/fingerprint/FingerprintSettings;->setFingerprintVerification(Z)V

    :cond_1ba
    const-string/jumbo v10, "samsung_pay"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1f3

    const-string/jumbo v10, "FpstFingerprintSettings"

    const-string/jumbo v11, "Fingerprint registered successfully! Launch the SamsungPay"

    invoke-static {v10, v11}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v10, Lcom/android/settings/fingerprint/FingerprintSettings$Survey;->SAMSUNGPAY_LINK:Lcom/android/settings/fingerprint/FingerprintSettings$Survey;

    invoke-virtual {p0, v10}, Lcom/android/settings/fingerprint/FingerprintSettings;->sendSurvey(Lcom/android/settings/fingerprint/FingerprintSettings$Survey;)V

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v10, "com.samsung.android.spay"

    const-string/jumbo v11, "com.samsung.android.spay.ui.SpayMainActivity"

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v10, 0x10000000

    invoke-virtual {v4, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string/jumbo v10, "previousStage"

    const-string/jumbo v11, "FingerprintSettings"

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0, v4}, Lcom/android/settings/fingerprint/FingerprintSettings;->startActivityWrapperWithSessionClose(Landroid/content/Intent;)V

    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->skipHuntip:Z

    :cond_1f3
    const-string/jumbo v10, "support_samsung_account"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_252

    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->skipHuntip:Z

    iget-object v10, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroid/content/Context;

    invoke-direct {p0, v10}, Lcom/android/settings/fingerprint/FingerprintSettings;->isSamsungAccountSignedIn(Landroid/content/Context;)Z

    move-result v10

    if-nez v10, :cond_28f

    const-string/jumbo v10, "FpstFingerprintSettings"

    const-string/jumbo v11, "SamsungAccountSignedIn is False."

    invoke-static {v10, v11}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroid/content/Context;

    invoke-static {v10}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v6

    const-string/jumbo v10, "com.osp.app.signin"

    invoke-virtual {v6, v10}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v9

    array-length v8, v9

    if-nez v8, :cond_27a

    iget-object v10, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v10, "com.osp.app.signin.action.ADD_SAMSUNG_ACCOUNT"

    invoke-direct {v4, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v10, "mypackage"

    invoke-virtual {v4, v10, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v10, "OSP_VER"

    const-string/jumbo v11, "OSP_02"

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v10, "MODE"

    const-string/jumbo v11, "ADD_ACCOUNT"

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v10, "Is_From_SA_Verify"

    const/4 v11, 0x1

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v10, 0x66

    invoke-direct {p0, v4, v10}, Lcom/android/settings/fingerprint/FingerprintSettings;->startActivityForResultWrapper(Landroid/content/Intent;I)V
    :try_end_252
    .catch Ljava/lang/NullPointerException; {:try_start_19b .. :try_end_252} :catch_284

    :cond_252
    :goto_252
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v10

    if-eqz v10, :cond_2f

    const/16 v10, 0x3e8

    move/from16 v0, p1

    if-ne v0, v10, :cond_2f

    iget-object v10, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mOptionsMenu:Landroid/view/Menu;

    if-eqz v10, :cond_2f

    const-string/jumbo v10, "FpstFingerprintSettings"

    const-string/jumbo v11, "updateOptionsMenu after FIRSTFINGER_REQUEST_CODE"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x1

    iput v10, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I

    iget-object v10, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v10}, Landroid/view/Menu;->clear()V

    iget-object v10, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mOptionsMenu:Landroid/view/Menu;

    invoke-direct {p0, v10}, Lcom/android/settings/fingerprint/FingerprintSettings;->updateOptionsMenu(Landroid/view/Menu;)V

    goto/16 :goto_2f

    :cond_27a
    :try_start_27a
    const-string/jumbo v10, "FpstFingerprintSettings"

    const-string/jumbo v11, "returnvalue_sa is not 0"

    invoke-static {v10, v11}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_283
    .catch Ljava/lang/NullPointerException; {:try_start_27a .. :try_end_283} :catch_284

    goto :goto_252

    :catch_284
    move-exception v2

    const-string/jumbo v10, "FpstFingerprintSettings"

    const-string/jumbo v11, "data is null!!"

    invoke-static {v10, v11}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_252

    :cond_28f
    :try_start_28f
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v10, "com.msc.action.samsungaccount.CONFIRM_PASSWORD_POPUP"

    invoke-direct {v4, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v10, "client_id"

    const-string/jumbo v11, "s5d189ajvs"

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v10, "client_secret"

    const-string/jumbo v11, "E8781246E4A0F6E9E213178CC003DE6A"

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v10, "Is_From_SA_Verify"

    const/4 v11, 0x1

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v10, 0x65

    invoke-direct {p0, v4, v10}, Lcom/android/settings/fingerprint/FingerprintSettings;->startActivityForResultWrapper(Landroid/content/Intent;I)V
    :try_end_2b5
    .catch Ljava/lang/NullPointerException; {:try_start_28f .. :try_end_2b5} :catch_284

    goto :goto_252

    :cond_2b6
    if-nez p2, :cond_2cf

    if-eqz p3, :cond_2f

    const-string/jumbo v10, "enrollResult"

    const/4 v11, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const/4 v10, 0x1

    if-ne v3, v10, :cond_2f

    const/4 v10, 0x0

    sput-boolean v10, Lcom/android/settings/fingerprint/FingerprintSettings;->isKeepEnrollSession:Z

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->cancelAndSessionEnd()V

    goto/16 :goto_2f

    :cond_2cf
    iget-object v10, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccount:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v10, :cond_2f

    :try_start_2d3
    const-string/jumbo v10, "FpstFingerprintSettings"

    const-string/jumbo v11, "SAMSUNGACCOUNT : there is no case"

    invoke-static {v10, v11}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroid/content/Context;

    const/4 v11, 0x0

    invoke-direct {p0, v10, v11}, Lcom/android/settings/fingerprint/FingerprintSettings;->setUseFingerprintForSA(Landroid/content/Context;I)Z

    iget-object v10, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroid/content/Context;

    const/4 v11, 0x0

    invoke-direct {p0, v10, v11}, Lcom/android/settings/fingerprint/FingerprintSettings;->setFingerPrintOnSAConfirmed(Landroid/content/Context;I)Z

    iget-object v10, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccount:Landroid/support/v14/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getFingerprintSamsungAccountVerification()Z

    move-result v11

    invoke-virtual {v10, v11}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V
    :try_end_2f1
    .catch Ljava/lang/Exception; {:try_start_2d3 .. :try_end_2f1} :catch_2f3

    goto/16 :goto_2f

    :catch_2f3
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2f

    :sswitch_2f9
    const/4 v10, -0x1

    move/from16 v0, p2

    if-ne v0, v10, :cond_316

    const-string/jumbo v10, "FpstFingerprintSettings"

    const-string/jumbo v11, "onActivityResult ChooseLockGeneric Granted"

    invoke-static {v10, v11}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_2f

    const-string/jumbo v10, "hw_auth_token"

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mToken:[B

    goto/16 :goto_2f

    :cond_316
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->finish()V

    goto/16 :goto_2f

    :sswitch_31b
    if-eqz p3, :cond_328

    const-string/jumbo v10, "hw_auth_token"

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mToken:[B

    :cond_328
    const/4 v10, -0x1

    move/from16 v0, p2

    if-ne v0, v10, :cond_2f

    iget-object v10, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mScreenLock:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-static {v11}, Lcom/android/settings/Utils;->getFingerprintScreenLockVerification(Landroid/content/Context;)Z

    move-result v11

    invoke-virtual {v10, v11}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_2f

    :sswitch_33c
    const-string/jumbo v10, "FpstFingerprintSettings"

    const-string/jumbo v11, "activity. FINGERPRINT_MULTI_SELECT"

    invoke-static {v10, v11}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_2f

    if-eqz p3, :cond_2f

    const-string/jumbo v10, "cancelsession"

    const-string/jumbo v11, "reason"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2f

    const/4 v10, 0x0

    sput-boolean v10, Lcom/android/settings/fingerprint/FingerprintSettings;->isKeepEnrollSession:Z

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->cancelAndSessionEnd()V

    goto/16 :goto_2f

    nop

    :sswitch_data_364
    .sparse-switch
        0x65 -> :sswitch_30
        0x66 -> :sswitch_cd
        0xc9 -> :sswitch_2f9
        0x3e8 -> :sswitch_171
        0x3e9 -> :sswitch_171
        0x3ee -> :sswitch_31b
        0x3ef -> :sswitch_33c
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4

    const-string/jumbo v0, "FpstFingerprintSettings"

    const-string/jumbo v1, "=====onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 9

    const/4 v6, 0x0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo v3, "FpstFingerprintSettings"

    const-string/jumbo v4, "=====onCreate()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "FpstFingerprintSettings"

    const v5, 0x7f12037f

    invoke-static {v3, v5, v4}, Lcom/android/settings/Utils;->isNotAvailableBiometricsWithDexAndMultiWindow(Landroid/app/Activity;ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->finish()V

    return-void

    :cond_21
    sput-object p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFragment:Landroid/app/Fragment;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v3, "tokenFromLock"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v2

    const-string/jumbo v3, "identifyFingerprint"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mIdentifyFingerprint:Z

    const-string/jumbo v3, "isAfw"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mIsAfw:Z

    const-string/jumbo v3, "android.intent.extra.USER_ID"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mUserId:I

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mIsInMultiWindowMode:Z

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mIsMultiWindowModeChanged:Z

    const-string/jumbo v3, "FpstFingerprintSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mIsAfw : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mIsAfw:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "FpstFingerprintSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mUserId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mUserId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_92

    iput-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mToken:[B

    :cond_92
    if-eqz p1, :cond_9d

    const-string/jumbo v3, "hw_auth_token"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mToken:[B

    :cond_9d
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v3, "fingerprint"

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/settings/fingerprint/FingerprintSettings;->setHasOptionsMenu(Z)V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f06011a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->colorId_identifiedId:I

    new-instance v3, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sput-object v6, Lcom/android/settings/fingerprint/FingerprintSettings;->mListView:Landroid/support/v7/widget/RecyclerView;

    sput-object v6, Lcom/android/settings/fingerprint/FingerprintSettings;->mEdit_TextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0250

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->SCREEN_ID_RENAME:I

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->createPreferenceHierarchy()Landroid/support/v7/preference/PreferenceScreen;

    new-instance v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 5

    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const-string/jumbo v0, "FpstFingerprintSettings"

    const-string/jumbo v1, "=====onCreateOptionsMenu"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mOptionsMenu:Landroid/view/Menu;

    invoke-direct {p0, p1}, Lcom/android/settings/fingerprint/FingerprintSettings;->updateOptionsMenu(Landroid/view/Menu;)V

    return-void
.end method

.method public onDestroy()V
    .registers 6

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    const-string/jumbo v1, "FpstFingerprintSettings"

    const-string/jumbo v2, "=====onDestroy()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->isRunRegister:Z

    if-eqz v1, :cond_1d

    const-string/jumbo v1, "FpstFingerprintSettings"

    const-string/jumbo v2, "reset runRegister"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->isRunRegister:Z

    :cond_1d
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-nez v1, :cond_30

    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I

    if-lez v1, :cond_30

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v1, v4}, Lcom/android/settings/SettingsActivity;->setOnEditPressedListener(Lcom/android/settings/SettingsActivity$onEditButtonClicked;)V

    :cond_30
    iget-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mIsMultiWindowModeChanged:Z

    if-nez v1, :cond_5b

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v1, :cond_3f

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v1}, Landroid/hardware/fingerprint/FingerprintManager;->postEnroll()I

    move-result v0

    :cond_3f
    if-gez v0, :cond_5b

    const-string/jumbo v1, "FpstFingerprintSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "postEnroll failed: result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5b
    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .registers 5

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onMultiWindowModeChanged(Z)V

    const-string/jumbo v0, "FpstFingerprintSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onMultiWindowModeChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->isResumed()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_57

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_57

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_57

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f120b6d

    invoke-virtual {p0, v1}, Lcom/android/settings/fingerprint/FingerprintSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_57
    iput-boolean p1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mIsInMultiWindowMode:Z

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 6

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_6a

    const/4 v1, 0x0

    return v1

    :sswitch_9
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isSupportOnlineHelpMenu(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2c

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.helphub.HELP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "helphub:appid"

    const-string/jumbo v2, "finger_scanner"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/android/settings/fingerprint/FingerprintSettings;->startActivityWrapper(Landroid/content/Intent;)V

    :cond_27
    :goto_27
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    :cond_2c
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isSupportHelpMenu(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_27

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.helphub.HELP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "helphub:section"

    const-string/jumbo v2, "fingerprints"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/android/settings/fingerprint/FingerprintSettings;->startActivityWrapper(Landroid/content/Intent;)V

    goto :goto_27

    :sswitch_4b
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_27

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/settings/fingerprint/FingerprintSettings;->startSelectListUI(I[Z)V

    goto :goto_27

    :sswitch_57
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0262

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    goto :goto_27

    :sswitch_data_6a
    .sparse-switch
        0x1 -> :sswitch_4b
        0x2 -> :sswitch_9
        0x102002c -> :sswitch_57
    .end sparse-switch
.end method

.method public onPause()V
    .registers 4

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    const-string/jumbo v1, "FpstFingerprintSettings"

    const-string/jumbo v2, "=====onPause()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->notificationManager:Landroid/app/NotificationManager;

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->notificationManager:Landroid/app/NotificationManager;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->cancel(I)V

    :cond_17
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_4b

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f0a04f6

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_47

    instance-of v1, v0, Lcom/samsung/android/settings/search/SecSearchResultsSummary;

    if-eqz v1, :cond_47

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->stopFingerprint()V

    const-string/jumbo v1, "FpstFingerprintSettings"

    const-string/jumbo v2, "Top of fragment is searchResultsSummary"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3a
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    if-eqz v1, :cond_46

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "FingerprintsEntry"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    :cond_46
    return-void

    :cond_47
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->cancelAndSessionEnd()V

    goto :goto_3a

    :cond_4b
    iget-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mIsInMultiWindowMode:Z

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v2

    if-eq v1, v2, :cond_64

    const-string/jumbo v1, "FpstFingerprintSettings"

    const-string/jumbo v2, "multi-window mode changed : skip cancelAndSessionEnd"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mIsMultiWindowModeChanged:Z

    goto :goto_3a

    :cond_64
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->cancelAndSessionEnd()V

    goto :goto_3a
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .registers 14

    const/4 v4, 0x1

    const/4 v1, 0x0

    const-string/jumbo v2, "FpstFingerprintSettings"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "=====onPreferenceChange : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x1

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v0, "fingerprint_enable_keyguard_toggle"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    :goto_2d
    return v10

    :cond_2e
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mWebSignIn:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6f

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0b0264

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_63

    :goto_4e
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_65

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->startDisclaimerFromWebSignin()Z

    move-result v0

    return v0

    :cond_63
    move v4, v1

    goto :goto_4e

    :cond_65
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/fingerprint/FingerprintSettings;->setFingerprintVerification(Z)V

    goto :goto_2d

    :cond_6f
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccount:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cc

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0b0263

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_90

    move v1, v4

    :cond_90
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    iput-boolean v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->through_onpreferencechange:Z

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_a6

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->startDisclaimerFromSamsungAccount()Z

    move-result v0

    return v0

    :cond_a6
    :try_start_a6
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/settings/fingerprint/FingerprintSettings;->setUseFingerprintForSA(Landroid/content/Context;I)Z

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/settings/fingerprint/FingerprintSettings;->setFingerPrintOnSAConfirmed(Landroid/content/Context;I)Z

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccount:Landroid/support/v14/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getFingerprintSamsungAccountVerification()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    const-string/jumbo v0, "FpstFingerprintSettings"

    const-string/jumbo v1, "SAMSUNGACCOUNT value is false "

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c4
    .catch Ljava/lang/Exception; {:try_start_a6 .. :try_end_c4} :catch_c6

    goto/16 :goto_2d

    :catch_c6
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2d

    :cond_cc
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mScreenLock:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19b

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mUserId:I

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality(I)I

    move-result v9

    const-string/jumbo v0, "FpstFingerprintSettings"

    const-string/jumbo v2, "passwordQuality : passwordQuality"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0b0261

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_127

    move v0, v4

    :goto_fe
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_129

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mUserId:I

    invoke-static {v0, v2, v3, v4}, Lcom/android/settings/fingerprint/FingerprintSettingsUtils;->removeFingerprintLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;IZ)V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "knox_finger_print_plus"

    iget v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mUserId:I

    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto/16 :goto_2d

    :cond_127
    move v0, v1

    goto :goto_fe

    :cond_129
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mUserId:I

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    if-eqz v0, :cond_15d

    const v0, 0x10001

    if-ne v9, v0, :cond_142

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->isDirectionLockSupportFingerprint(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_15d

    :cond_142
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mUserId:I

    invoke-virtual {v0, v2}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v0

    if-eqz v0, :cond_15d

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mUserId:I

    const-string/jumbo v3, "fingerprint_settings_set_screen_lock"

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/android/settings/fingerprint/FingerprintSettingsUtils;->setFingerprintLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;ILjava/lang/String;ZZ)V

    goto/16 :goto_2d

    :cond_15d
    const-string/jumbo v0, "FpstFingerprintSettings"

    const-string/jumbo v2, "Launch the FingerprintLockSettings"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v0, "com.android.settings"

    const-string/jumbo v2, "com.android.settings.fingerprint.FingerprintLockSettings"

    invoke-virtual {v8, v0, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "previousStage"

    const-string/jumbo v2, "fingerprint_settings_set_screen_lock"

    invoke-virtual {v8, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "fingerprintlockEnable"

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {v8, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string/jumbo v0, "hw_auth_token"

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mToken:[B

    invoke-virtual {v8, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string/jumbo v0, "identifyFingerprint"

    iget-boolean v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mIdentifyFingerprint:Z

    invoke-virtual {v8, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v0, 0x3ee

    invoke-direct {p0, v8, v0}, Lcom/android/settings/fingerprint/FingerprintSettings;->startActivityForResultWrapper(Landroid/content/Intent;I)V

    return v1

    :cond_19b
    const-string/jumbo v0, "FpstFingerprintSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown key:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2d
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .registers 12

    const/4 v8, 0x0

    const-string/jumbo v5, "FpstFingerprintSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "=====onPreferenceTreeClick : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const/4 v4, 0x1

    instance-of v5, p1, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference;

    if-eqz v5, :cond_5b

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b024e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    invoke-static {v5, v6}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget v6, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->SCREEN_ID_RENAME:I

    invoke-static {v5, v6}, Lcom/android/settings/Utils;->insertFlowLog(Landroid/content/Context;I)V

    move-object v1, p1

    check-cast v1, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference;

    invoke-virtual {v1}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference;->getFingerprint()Landroid/hardware/fingerprint/Fingerprint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v5

    invoke-virtual {v0}, Landroid/hardware/fingerprint/Fingerprint;->getName()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/android/settings/fingerprint/FingerprintSettings;->renameFingerPrint(ILjava/lang/CharSequence;)V

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v5

    return v5

    :cond_5b
    const-string/jumbo v5, "key_fingerprint_add"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_86

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->stopFingerprint()V

    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/settings/fingerprint/FingerprintSettings$8;

    invoke-direct {v6, p0}, Lcom/android/settings/fingerprint/FingerprintSettings$8;-><init>(Lcom/android/settings/fingerprint/FingerprintSettings;)V

    const-wide/16 v8, 0x1f4

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b023b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    invoke-static {v5, v6}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    :goto_85
    return v4

    :cond_86
    const-string/jumbo v5, "change_reset_password"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_aa

    const-string/jumbo v5, "previousStage"

    const-string/jumbo v6, "changepassword"

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v5, "com.android.settings"

    const-class v6, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v5, 0x3ea

    invoke-direct {p0, v3, v5}, Lcom/android/settings/fingerprint/FingerprintSettings;->startActivityForResultWrapper(Landroid/content/Intent;I)V

    goto :goto_85

    :cond_aa
    const-string/jumbo v5, "support_samsung_account"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_bc

    iget-boolean v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->through_onpreferencechange:Z

    if-nez v5, :cond_112

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->startDisclaimerFromSamsungAccount()Z

    move-result v5

    return v5

    :cond_bc
    const-string/jumbo v5, "samsung_pay"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e6

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b0253

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    invoke-static {v5, v6}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    iget v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I

    if-nez v5, :cond_126

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->checkMobileKeyboard()Z

    move-result v5

    if-eqz v5, :cond_116

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->showMobileKeyboardToastMsg()V

    :goto_e4
    const/4 v4, 0x0

    goto :goto_85

    :cond_e6
    const-string/jumbo v5, "key_fingerprint_samsung_pass"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14f

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b0252

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    invoke-static {v5, v6}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    const-string/jumbo v5, "com.samsung.android.samsungpass.ACTION_USE_BIOMETRIC"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v5, "biometricType"

    invoke-virtual {v3, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-direct {p0, v3}, Lcom/android/settings/fingerprint/FingerprintSettings;->startActivityWrapperWithSessionClose(Landroid/content/Intent;)V

    goto/16 :goto_85

    :cond_112
    iput-boolean v8, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->through_onpreferencechange:Z

    goto/16 :goto_85

    :cond_116
    const-string/jumbo v5, "FpstFingerprintSettings"

    const-string/jumbo v6, "There is no registered fingerprint"

    invoke-static {v5, v6}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v5, "samsung_pay"

    invoke-direct {p0, v5}, Lcom/android/settings/fingerprint/FingerprintSettings;->runRegister(Ljava/lang/String;)V

    goto :goto_e4

    :cond_126
    const-string/jumbo v5, "FpstFingerprintSettings"

    const-string/jumbo v6, "There is Registered Fingerprint. Launch the SamsungPay"

    invoke-static {v5, v6}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Lcom/android/settings/fingerprint/FingerprintSettings$Survey;->SAMSUNGPAY_LINK:Lcom/android/settings/fingerprint/FingerprintSettings$Survey;

    invoke-virtual {p0, v5}, Lcom/android/settings/fingerprint/FingerprintSettings;->sendSurvey(Lcom/android/settings/fingerprint/FingerprintSettings$Survey;)V

    const-string/jumbo v5, "com.samsung.android.spay"

    const-string/jumbo v6, "com.samsung.android.spay.ui.SpayMainActivity"

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v5, 0x10000000

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string/jumbo v5, "previousStage"

    const-string/jumbo v6, "FingerprintSettings"

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0, v3}, Lcom/android/settings/fingerprint/FingerprintSettings;->startActivityWrapperWithSessionClose(Landroid/content/Intent;)V

    goto :goto_e4

    :cond_14f
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v5

    return v5
.end method

.method public onResume()V
    .registers 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    const-string/jumbo v0, "FpstFingerprintSettings"

    const-string/jumbo v3, "=====onResume()"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->updatePreferences()V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mToken:[B

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mUserId:I

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mUserId:I

    invoke-virtual {v0, v3}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3e

    const-string/jumbo v0, "FpstFingerprintSettings"

    const-string/jumbo v3, "Enroll session close."

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mToken:[B

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->postEnroll()I

    :cond_3e
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getListView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    sput-object v0, Lcom/android/settings/fingerprint/FingerprintSettings;->mListView:Landroid/support/v7/widget/RecyclerView;

    sget-object v0, Lcom/android/settings/fingerprint/FingerprintSettings;->mListView:Landroid/support/v7/widget/RecyclerView;

    const/4 v0, -0x1

    invoke-direct {p0, v2, v0}, Lcom/android/settings/fingerprint/FingerprintSettings;->updateIdentifiedFinger(ZI)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mToken:[B

    if-eqz v0, :cond_63

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->isEnrollSession()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_63

    const-string/jumbo v0, "FpstFingerprintSettings"

    const-string/jumbo v3, "Session closed! Token must be null!"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mToken:[B

    :cond_63
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mWebSignIn:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_8e

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0b0260

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mWebSignIn:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_116

    move v0, v1

    :goto_87
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v3, v4, v0}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    :cond_8e
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccount:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_b9

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0b025f

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccount:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_119

    move v0, v1

    :goto_b2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v3, v4, v0}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    :cond_b9
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mScreenLock:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_ef

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isSharedDeviceEnabled(Landroid/content/Context;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_ef

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b025e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mScreenLock:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v4}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_11b

    :goto_e8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v3, v1}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    :cond_ef
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b025d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iget v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v3, "FingerprintsEntry"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    return-void

    :cond_116
    move v0, v2

    goto/16 :goto_87

    :cond_119
    move v0, v2

    goto :goto_b2

    :cond_11b
    move v1, v2

    goto :goto_e8
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string/jumbo v0, "hw_auth_token"

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mToken:[B

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const-string/jumbo v0, "FpstFingerprintSettings"

    const-string/jumbo v1, "onViewCreated()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected sendSurvey(Lcom/android/settings/fingerprint/FingerprintSettings$Survey;)V
    .registers 7

    const-string/jumbo v0, "com.samsung.android.fingerprint.service"

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintSettings;->-getcom-android-settings-fingerprint-FingerprintSettings$SurveySwitchesValues()[I

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/settings/fingerprint/FingerprintSettings$Survey;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_28

    :goto_11
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x0

    const/16 v4, -0x3e8

    invoke-static {v2, v0, v1, v3, v4}, Lcom/samsung/android/settings/biometrics/BiometricsLog;->sendGsimLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void

    :pswitch_1c
    const-string/jumbo v1, "FPRN"

    goto :goto_11

    :pswitch_20
    const-string/jumbo v1, "FPLI"

    goto :goto_11

    :pswitch_24
    const-string/jumbo v1, "FPSP"

    goto :goto_11

    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_20
        :pswitch_1c
        :pswitch_24
    .end packed-switch
.end method

.method public startDisclaimerFromSamsungAccount()Z
    .registers 10

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string/jumbo v5, "FpstFingerprintSettings"

    const-string/jumbo v6, "startDisclaimerFromSamsungAccount"

    invoke-static {v5, v6}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I

    if-nez v5, :cond_20

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->checkMobileKeyboard()Z

    move-result v5

    if-eqz v5, :cond_19

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->showMobileKeyboardToastMsg()V

    :goto_18
    return v7

    :cond_19
    const-string/jumbo v5, "support_samsung_account"

    invoke-direct {p0, v5}, Lcom/android/settings/fingerprint/FingerprintSettings;->runRegister(Ljava/lang/String;)V

    goto :goto_18

    :cond_20
    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroid/content/Context;

    invoke-direct {p0, v5}, Lcom/android/settings/fingerprint/FingerprintSettings;->isSamsungAccountSignedIn(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_74

    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const-string/jumbo v5, "com.osp.app.signin"

    invoke-virtual {v1, v5}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v4

    array-length v3, v4

    if-nez v3, :cond_6a

    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v5, "com.osp.app.signin.action.ADD_SAMSUNG_ACCOUNT"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "mypackage"

    invoke-virtual {v0, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v5, "OSP_VER"

    const-string/jumbo v6, "OSP_02"

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v5, "MODE"

    const-string/jumbo v6, "ADD_ACCOUNT"

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v5, "Is_From_SA_Verify"

    invoke-virtual {v0, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v5, 0x66

    invoke-direct {p0, v0, v5}, Lcom/android/settings/fingerprint/FingerprintSettings;->startActivityForResultWrapper(Landroid/content/Intent;I)V

    :goto_69
    return v8

    :cond_6a
    const-string/jumbo v5, "FpstFingerprintSettings"

    const-string/jumbo v6, "returnvalue_sa is not 0"

    invoke-static {v5, v6}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_69

    :cond_74
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v5, "com.msc.action.samsungaccount.CONFIRM_PASSWORD_POPUP"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "client_id"

    const-string/jumbo v6, "s5d189ajvs"

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v5, "client_secret"

    const-string/jumbo v6, "E8781246E4A0F6E9E213178CC003DE6A"

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v5, "Is_From_SA_Verify"

    invoke-virtual {v0, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v5, 0x65

    invoke-direct {p0, v0, v5}, Lcom/android/settings/fingerprint/FingerprintSettings;->startActivityForResultWrapper(Landroid/content/Intent;I)V

    goto :goto_69
.end method

.method public startDisclaimerFromWebSignin()Z
    .registers 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string/jumbo v0, "FpstFingerprintSettings"

    const-string/jumbo v1, "startDisclaimerFromWebSignin"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I

    if-nez v0, :cond_20

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->checkMobileKeyboard()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->showMobileKeyboardToastMsg()V

    :goto_18
    return v2

    :cond_19
    const-string/jumbo v0, "support_web_signin"

    invoke-direct {p0, v0}, Lcom/android/settings/fingerprint/FingerprintSettings;->runRegister(Ljava/lang/String;)V

    goto :goto_18

    :cond_20
    invoke-direct {p0, v3}, Lcom/android/settings/fingerprint/FingerprintSettings;->setFingerprintVerification(Z)V

    return v3
.end method
