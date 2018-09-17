.class public Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "KnoxFingerprintPlusMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KnoxFingerprintPlusMenuFagment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment$1;,
        Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment$2;,
        Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment$3;,
        Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment$4;,
        Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment$FingerprintPreference;,
        Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment$Survey;
    }
.end annotation


# static fields
.field private static PREF_TYPE_NORMAL:Ljava/lang/String;

.field private static PREF_TYPE_SWITCH:Ljava/lang/String;

.field private static isKeepEnrollSession:Z

.field private static mEdit_TextView:Landroid/widget/TextView;

.field protected static mFragment:Landroid/app/Fragment;

.field private static mListView:Landroid/support/v7/widget/RecyclerView;

.field private static mPrefType:Ljava/lang/String;

.field public static mSelectedKey:Ljava/lang/String;


# instance fields
.field private colorId_identifiedId:I

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

.field private mEnrolledFingerCount:I

.field private mFingerprintCancel:Landroid/os/CancellationSignal;

.field private final mFingerprintLockoutReset:Ljava/lang/Runnable;

.field private mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field final mH:Landroid/os/Handler;

.field private final mHandler:Landroid/os/Handler;

.field private mIdentifyFingerprint:Z

.field private mInFingerprintLockout:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mRegisterCategory:Landroid/support/v7/preference/SecPreferenceCategory;

.field private mRenameDialog:Lcom/android/settings/fingerprint/FingerPrintRenameDialog;

.field mSharedPreferences:Landroid/content/SharedPreferences;

.field private mToken:[B

.field private mUserId:I

.field private origin_color_identifiedId:Landroid/content/res/ColorStateList;

.field private origin_typeface:Landroid/graphics/Typeface;

.field private retryFingerprintRunnable:Ljava/lang/Runnable;

.field private through_onpreferencechange:Z


# direct methods
.method static synthetic -get0(Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;Landroid/os/CancellationSignal;)Landroid/os/CancellationSignal;
    .registers 2

    iput-object p1, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->mFingerprintCancel:Landroid/os/CancellationSignal;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->mInFingerprintLockout:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->registerAuthenticate()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->retryFingerprint()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->runRegister(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;ZI)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->updateIdentifiedFinger(ZI)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    sput-object v1, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->mListView:Landroid/support/v7/widget/RecyclerView;

    sput-object v1, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->mEdit_TextView:Landroid/widget/TextView;

    sput-object v1, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->mFragment:Landroid/app/Fragment;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->isKeepEnrollSession:Z

    sput-object v1, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->mPrefType:Ljava/lang/String;

    const-string/jumbo v0, "switchtype"

    sput-object v0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->PREF_TYPE_SWITCH:Ljava/lang/String;

    const-string/jumbo v0, "normaltype"

    sput-object v0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->PREF_TYPE_NORMAL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->colorId_identifiedId:I

    iput-object v2, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->origin_color_identifiedId:Landroid/content/res/ColorStateList;

    iput-object v2, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->origin_typeface:Landroid/graphics/Typeface;

    iput-object v2, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->mRenameDialog:Lcom/android/settings/fingerprint/FingerPrintRenameDialog;

    iput-boolean v1, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->through_onpreferencechange:Z

    iput-object v2, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->items:Ljava/util/List;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->mH:Landroid/os/Handler;

    iput v1, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->mEnrolledFingerCount:I

    iput-boolean v1, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->mIdentifyFingerprint:Z

    iput-boolean v1, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->isRunRegister:Z

    new-instance v0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment$1;-><init>(Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->mAuthCallback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    new-instance v0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment$2;

    invoke-direct {v0, p0}, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment$2;-><init>(Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment$3;

    invoke-direct {v0, p0}, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment$3;-><init>(Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->retryFingerprintRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment$4;

    invoke-direct {v0, p0}, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment$4;-><init>(Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->mFingerprintLockoutReset:Ljava/lang/Runnable;

    return-void
.end method

.method private addFingerprintItemPreferences()V
    .registers 12

    const/4 v10, 0x0

    const/4 v9, 0x0

    iget-object v6, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->items:Ljava/util/List;

    if-eqz v6, :cond_8

    iput-object v9, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->items:Ljava/util/List;

    :cond_8
    iget-object v6, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v7, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->mUserId:I

    invoke-virtual {v6, v7}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->items:Ljava/util/List;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v6, "PREV_FINGER_PLUS_ID"

    invoke-direct {p0, v6}, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->getFingerprintPlusForKey(Ljava/lang/String;)I

    move-result v1

    iget-object v6, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->items:Ljava/util/List;

    if-eqz v6, :cond_129

    if-eqz v0, :cond_129

    iget-object v6, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->items:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    iput v6, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->mEnrolledFingerCount:I

    const/4 v2, 0x0

    :goto_2c
    iget v6, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->mEnrolledFingerCount:I

    if-ge v2, v6, :cond_6b

    move v4, v2

    :goto_31
    if-lez v4, :cond_68

    iget-object v6, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->items:Ljava/util/List;

    add-int/lit8 v7, v4, -0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v6}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v7

    iget-object v6, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->items:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v6}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v6

    if-le v7, v6, :cond_68

    iget-object v7, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->items:Ljava/util/List;

    add-int/lit8 v8, v4, -0x1

    iget-object v6, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->items:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/fingerprint/Fingerprint;

    invoke-interface {v7, v8, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v6, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->items:Ljava/util/List;

    add-int/lit8 v7, v4, 0x1

    invoke-interface {v6, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v4, v4, -0x1

    goto :goto_31

    :cond_68
    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    :cond_6b
    iget v6, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->mEnrolledFingerCount:I

    iget-object v7, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->items:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-eq v6, v7, :cond_96

    const-string/jumbo v6, "KnoxFingerprintPlusMenu"

    const-string/jumbo v7, "addFingerprintItemPreferences : Sort Error"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v9, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->items:Ljava/util/List;

    iget-object v6, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v7, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->mUserId:I

    invoke-virtual {v6, v7}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->items:Ljava/util/List;

    iget-object v6, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->items:Ljava/util/List;

    if-eqz v6, :cond_96

    iget-object v6, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->items:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    iput v6, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->mEnrolledFingerCount:I

    :cond_96
    const-string/jumbo v6, "KnoxFingerprintPlusMenu"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "addFingerprintItemPreferences : mEnrolledFingerCount["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->mEnrolledFingerCount:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->items:Ljava/util/List;

    if-eqz v6, :cond_11a

    const/4 v2, 0x0

    :goto_be
    iget v6, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->mEnrolledFingerCount:I

    if-ge v2, v6, :cond_125

    iget-object v6, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->items:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/fingerprint/Fingerprint;

    new-instance v5, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment$FingerprintPreference;

    invoke-direct {v5, p0, v0}, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment$FingerprintPreference;-><init>(Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;Landroid/content/Context;)V

    invoke-virtual {v3}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v6

    invoke-static {v6}, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->genKey(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment$FingerprintPreference;->setKey(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/hardware/fingerprint/Fingerprint;->getName()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment$FingerprintPreference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v5, v3}, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment$FingerprintPreference;->setFingerprint(Landroid/hardware/fingerprint/Fingerprint;)V

    sget-object v6, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->mPrefType:Ljava/lang/String;

    sget-object v7, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->PREF_TYPE_SWITCH:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_113

    const v6, 0x7f0d02af

    invoke-virtual {v5, v6}, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment$FingerprintPreference;->setLayoutResource(I)V

    const v6, 0x7f0d0238

    invoke-virtual {v5, v6}, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment$FingerprintPreference;->setWidgetLayoutResource(I)V

    invoke-virtual {v3}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v6

    if-ne v1, v6, :cond_10f

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment$FingerprintPreference;->setChecked(Z)V

    :goto_104
    invoke-virtual {v5, v2}, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment$FingerprintPreference;->setOrder(I)V

    iget-object v6, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->mRegisterCategory:Landroid/support/v7/preference/SecPreferenceCategory;

    invoke-virtual {v6, v5}, Landroid/support/v7/preference/SecPreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_be

    :cond_10f
    invoke-virtual {v5, v10}, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment$FingerprintPreference;->setChecked(Z)V

    goto :goto_104

    :cond_113
    const v6, 0x7f0d0118

    invoke-virtual {v5, v6}, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment$FingerprintPreference;->setLayoutResource(I)V

    goto :goto_104

    :cond_11a
    iput v10, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->mEnrolledFingerCount:I

    const-string/jumbo v6, "KnoxFingerprintPlusMenu"

    const-string/jumbo v7, "addFingerprintItemPreferences : mFingerprintManager.getEnrolledFingerprints() return null 2"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_125
    :goto_125
    invoke-direct {p0}, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->updateAddPreference()V

    return-void

    :cond_129
    iput v10, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->mEnrolledFingerCount:I

    const-string/jumbo v6, "KnoxFingerprintPlusMenu"

    const-string/jumbo v7, "addFingerprintItemPreferences : mFingerprintManager.getEnrolledFingerprints() return null 1"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_125
.end method

.method private cancelAndSessionEnd()V
    .registers 3

    const-string/jumbo v0, "KnoxFingerprintPlusMenu"

    const-string/jumbo v1, "cancelAndSessionEnd() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->stopFingerprint()V

    sget-boolean v0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->isKeepEnrollSession:Z

    if-eqz v0, :cond_14

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->isKeepEnrollSession:Z

    :cond_13
    :goto_13
    return-void

    :cond_14
    iget-object v0, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->postEnroll()I

    goto :goto_13
.end method

.method private createPreferenceHierarchy()Landroid/support/v7/preference/PreferenceScreen;
    .registers 4

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_12

    const-string/jumbo v1, "KnoxFingerprintPlusMenu"

    const-string/jumbo v2, "createPreferenceHierarchy : remove all"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    :cond_12
    const v1, 0x7f15006d

    invoke-virtual {p0, v1}, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->addPreferencesFromResource(I)V

    invoke-direct {p0}, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->setFingerprintPreference()V

    invoke-direct {p0}, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->addFingerprintItemPreferences()V

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

.method private getFingerprintPlusForKey(Ljava/lang/String;)I
    .registers 6

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    const/4 v3, -0x1

    invoke-static {v1, p1, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method private getIndexForRegisteration()I
    .registers 2

    const/4 v0, -0x1

    return v0
.end method

.method private registerAuthenticate()V
    .registers 9

    const/4 v3, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v2, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->mUserId:I

    invoke-virtual {v0, v2}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1c

    :cond_12
    const-string/jumbo v0, "KnoxFingerprintPlusMenu"

    const-string/jumbo v1, "registerAuthenticate : Skip"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1c
    const/4 v0, -0x1

    invoke-direct {p0, v3, v0}, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->updateIdentifiedFinger(ZI)V

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->mInFingerprintLockout:Z

    if-nez v0, :cond_43

    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->mFingerprintCancel:Landroid/os/CancellationSignal;

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "privileged_attr"

    const/4 v2, 0x2

    invoke-virtual {v7, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget-object v2, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->mFingerprintCancel:Landroid/os/CancellationSignal;

    iget-object v4, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->mAuthCallback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    iget v6, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->mUserId:I

    move-object v5, v1

    invoke-virtual/range {v0 .. v7}, Landroid/hardware/fingerprint/FingerprintManager;->authenticate(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;Landroid/os/CancellationSignal;ILandroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;Landroid/os/Handler;ILandroid/os/Bundle;)V

    :cond_43
    return-void
.end method

.method private retryFingerprint()V
    .registers 5

    const-string/jumbo v0, "KnoxFingerprintPlusMenu"

    const-string/jumbo v1, "retryFingerprint"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->retryFingerprintRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private runRegister(Ljava/lang/String;)V
    .registers 7

    const/4 v4, 0x0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.android.settings"

    const-string/jumbo v3, "com.android.settings.fingerprint.RegisterFingerprint"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "fingerIndex"

    invoke-direct {p0}, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->getIndexForRegisteration()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v2, "previousStage"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "identifyFingerprint"

    iget-boolean v3, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->mIdentifyFingerprint:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v2, 0x20000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {v4}, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu;->-set1(Z)Z

    iget-object v2, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->mToken:[B

    if-eqz v2, :cond_3b

    const-string/jumbo v2, "hw_auth_token"

    iget-object v3, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->mToken:[B

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    :cond_3b
    iget-boolean v2, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->isRunRegister:Z

    if-eqz v2, :cond_5c

    const-string/jumbo v2, "KnoxFingerprintPlusMenu"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "runRegister already called : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->isRunRegister:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5c
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->isRunRegister:Z

    const-string/jumbo v2, "KnoxFingerprintPlusMenu"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "runRegister called : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->isRunRegister:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_7b
    iget v2, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->mEnrolledFingerCount:I

    if-lez v2, :cond_85

    const/16 v2, 0x3e9

    invoke-direct {p0, v1, v2}, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->startActivityForResultWrapper(Landroid/content/Intent;I)V

    :goto_84
    return-void

    :cond_85
    const/16 v2, 0x3e8

    invoke-direct {p0, v1, v2}, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->startActivityForResultWrapper(Landroid/content/Intent;I)V
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_8a} :catch_8b

    goto :goto_84

    :catch_8b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_84
.end method

.method private setFingerprintPlusForKey(Ljava/lang/String;I)V
    .registers 5

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {v0, p1, p2, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method private setFingerprintPreference()V
    .registers 2

    const-string/jumbo v0, "register_category"

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/SecPreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->mRegisterCategory:Landroid/support/v7/preference/SecPreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceManager;->setStorageDeviceProtected()V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-void
.end method

.method private startActivityForResultWrapper(Landroid/content/Intent;I)V
    .registers 7

    const-string/jumbo v1, "KnoxFingerprintPlusMenu"

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

    const-string/jumbo v1, "android.intent.extra.USER_ID"

    iget v2, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->mUserId:I

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :try_start_22
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->startActivityForResult(Landroid/content/Intent;I)V

    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->isKeepEnrollSession:Z
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_28} :catch_29

    :goto_28
    return-void

    :catch_29
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_28
.end method

.method private startBiometricAuthentication(I)V
    .registers 7

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu;->-set1(Z)Z

    :try_start_4
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.samsung.knox.securefolder"

    const-string/jumbo v3, "com.samsung.knox.securefolder.keyguard.KnoxKeyguardDialogForFingerprintPlus"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "fingerId"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v2, 0x24000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/16 v2, 0x68

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->startActivityForResult(Landroid/content/Intent;I)V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->overridePendingTransition(II)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_2b} :catch_2c

    :goto_2b
    return-void

    :catch_2c
    move-exception v0

    const-string/jumbo v2, "KnoxFingerprintPlusMenu"

    const-string/jumbo v3, "KnoxKeyguardDialogForFingerprintPlus not found."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    goto :goto_2b
.end method

.method private stopFingerprint()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->mFingerprintCancel:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->mFingerprintCancel:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1d

    const-string/jumbo v0, "KnoxFingerprintPlusMenu"

    const-string/jumbo v1, "stopFingerprint cancel()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->mFingerprintCancel:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    :cond_1d
    iget-object v0, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->retryFingerprintRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-object v2, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->mFingerprintCancel:Landroid/os/CancellationSignal;

    return-void
.end method

.method private updateAddPreference()V
    .registers 4

    iget v1, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->mEnrolledFingerCount:I

    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintSettingsUtils;->getMaxFingerEnroll()I

    move-result v2

    if-lt v1, v2, :cond_21

    const-string/jumbo v1, "key_fingerprint_add"

    invoke-virtual {p0, v1}, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceScreen;

    if-eqz v0, :cond_22

    iget-object v1, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->mRegisterCategory:Landroid/support/v7/preference/SecPreferenceCategory;

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/SecPreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    const-string/jumbo v1, "KnoxFingerprintPlusMenu"

    const-string/jumbo v2, "updateAddPreference : Remove mAddFingerprint"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    :goto_21
    return-void

    :cond_22
    const-string/jumbo v1, "KnoxFingerprintPlusMenu"

    const-string/jumbo v2, "updateAddPreference : mAddFingerprint is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21
.end method

.method private declared-synchronized updateIdentifiedFinger(ZI)V
    .registers 15

    monitor-enter p0

    :try_start_1
    const-string/jumbo v9, "PREV_FINGER_PLUS_ID"

    invoke-direct {p0, v9}, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->getFingerprintPlusForKey(Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_fd

    move-result v6

    const/4 v4, 0x0

    :goto_9
    :try_start_9
    iget v9, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->mEnrolledFingerCount:I

    if-ge v4, v9, :cond_aa

    iget-object v9, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->items:Ljava/util/List;

    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v9}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v2

    invoke-static {v2}, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->genKey(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment$FingerprintPreference;

    if-ne v6, v2, :cond_98

    const/4 v9, 0x1

    invoke-virtual {v3, v9}, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment$FingerprintPreference;->setChecked(Z)V

    :goto_29
    invoke-virtual {v3}, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment$FingerprintPreference;->getView()Landroid/view/View;

    move-result-object v8

    const/4 v7, 0x0

    if-eqz v8, :cond_39

    const v9, 0x1020016

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    :cond_39
    if-eqz v7, :cond_94

    iget-object v9, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->origin_color_identifiedId:Landroid/content/res/ColorStateList;

    if-nez v9, :cond_45

    invoke-virtual {v7}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->origin_color_identifiedId:Landroid/content/res/ColorStateList;

    :cond_45
    iget-object v9, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->origin_typeface:Landroid/graphics/Typeface;

    if-nez v9, :cond_4f

    invoke-virtual {v7}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->origin_typeface:Landroid/graphics/Typeface;

    :cond_4f
    if-eqz p1, :cond_ac

    if-ne p2, v2, :cond_94

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual {v7, v9, v10}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    iget v9, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->colorId_identifiedId:I

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setTextColor(I)V

    const-string/jumbo v9, "KnoxFingerprintPlusMenu"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "updateIdentifiedFinger identified["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "]["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "]["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_94
    :goto_94
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_9

    :cond_98
    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment$FingerprintPreference;->setChecked(Z)V
    :try_end_9c
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_9c} :catch_9d
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9c} :catch_ef
    .catchall {:try_start_9 .. :try_end_9c} :catchall_fd

    goto :goto_29

    :catch_9d
    move-exception v0

    :try_start_9e
    const-string/jumbo v9, "KnoxFingerprintPlusMenu"

    const-string/jumbo v10, "updateIdentifiedFinger : IllegalStateException"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_aa
    .catchall {:try_start_9e .. :try_end_aa} :catchall_fd

    :cond_aa
    :goto_aa
    monitor-exit p0

    return-void

    :cond_ac
    :try_start_ac
    iget-object v9, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->origin_typeface:Landroid/graphics/Typeface;

    const/4 v10, 0x0

    invoke-virtual {v7, v9, v10}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    iget-object v9, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->origin_color_identifiedId:Landroid/content/res/ColorStateList;

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    const-string/jumbo v9, "KnoxFingerprintPlusMenu"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "updateIdentifiedFinger["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "]["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "]["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ee
    .catch Ljava/lang/IllegalStateException; {:try_start_ac .. :try_end_ee} :catch_9d
    .catch Ljava/lang/Exception; {:try_start_ac .. :try_end_ee} :catch_ef
    .catchall {:try_start_ac .. :try_end_ee} :catchall_fd

    goto :goto_94

    :catch_ef
    move-exception v1

    :try_start_f0
    const-string/jumbo v9, "KnoxFingerprintPlusMenu"

    const-string/jumbo v10, "updateIdentifiedFinger : Exception"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_fc
    .catchall {:try_start_f0 .. :try_end_fc} :catchall_fd

    goto :goto_aa

    :catchall_fd
    move-exception v9

    monitor-exit p0

    throw v9
.end method

.method private updatePreferences()V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->createPreferenceHierarchy()Landroid/support/v7/preference/PreferenceScreen;

    invoke-direct {p0}, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->retryFingerprint()V

    return-void
.end method


# virtual methods
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

    const-string/jumbo v1, "KnoxFingerprintPlusMenu"

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

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v4, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->mFingerprintCancel:Landroid/os/CancellationSignal;

    packed-switch p1, :pswitch_data_4e

    :cond_2b
    :goto_2b
    :pswitch_2b
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->getActivity()Landroid/app/Activity;

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

    iput-boolean v1, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->mInFingerprintLockout:Z

    iget-object v1, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->mFingerprintLockoutReset:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    if-nez v1, :cond_2b

    iget-object v1, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->mFingerprintLockoutReset:Ljava/lang/Runnable;

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

    const-string/jumbo v12, "KnoxFingerprintPlusMenu"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "=====onActivityResult requestCode : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " resultCode : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sparse-switch p1, :sswitch_data_160

    :cond_2f
    :goto_2f
    return-void

    :sswitch_30
    const/4 v12, -0x1

    move/from16 v0, p2

    if-ne v0, v12, :cond_99

    iget-object v12, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v12, :cond_43

    iget-object v12, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v13, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->mUserId:I

    invoke-virtual {v12, v13}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->items:Ljava/util/List;

    :cond_43
    iget-object v12, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->items:Ljava/util/List;

    if-eqz v12, :cond_2f

    sget-object v12, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {p0, v12}, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v11

    iget-object v12, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->items:Ljava/util/List;

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_53
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_82

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v7}, Landroid/hardware/fingerprint/Fingerprint;->getName()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11}, Landroid/support/v7/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_53

    const-string/jumbo v12, "FINGERPRINT_PLUS_STATE"

    const/4 v13, 0x1

    invoke-direct {p0, v12, v13}, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->setFingerprintPlusForKey(Ljava/lang/String;I)V

    const-string/jumbo v12, "PREV_FINGER_PLUS_ID"

    invoke-virtual {v7}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v13

    invoke-direct {p0, v12, v13}, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->setFingerprintPlusForKey(Ljava/lang/String;I)V

    :cond_82
    const/4 v12, -0x1

    invoke-static {v12}, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu;->-set0(I)I

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-static {}, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu;->-get0()I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/Activity;->finish()V

    goto :goto_2f

    :cond_99
    const-string/jumbo v12, "KnoxFingerprintPlusMenu"

    const-string/jumbo v13, "Failed to authenticate."

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2f

    :sswitch_a3
    if-eqz p3, :cond_b0

    const-string/jumbo v12, "hw_auth_token"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->mToken:[B

    :cond_b0
    iget-boolean v12, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->isRunRegister:Z

    if-eqz v12, :cond_c0

    const-string/jumbo v12, "KnoxFingerprintPlusMenu"

    const-string/jumbo v13, "reset runRegister"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->isRunRegister:Z

    :cond_c0
    const/4 v12, -0x1

    move/from16 v0, p2

    if-eq v0, v12, :cond_ca

    const/4 v12, 0x1

    move/from16 v0, p2

    if-ne v0, v12, :cond_125

    :cond_ca
    const/4 v9, 0x0

    if-eqz p3, :cond_d6

    :try_start_cd
    const-string/jumbo v12, "previousStage"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    :cond_d6
    iget-object v12, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v12, :cond_2f

    iget-object v12, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->items:Ljava/util/List;

    iget-object v12, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->items:Ljava/util/List;

    if-eqz v12, :cond_2f

    iget-object v12, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->items:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v4

    const/4 v10, -0x1

    const/4 v5, 0x0

    :goto_ef
    if-ge v5, v4, :cond_103

    iget-object v12, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->items:Ljava/util/List;

    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v7}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v6

    if-le v6, v10, :cond_100

    move v10, v6

    :cond_100
    add-int/lit8 v5, v5, 0x1

    goto :goto_ef

    :cond_103
    const-string/jumbo v12, "FINGERPRINT_PLUS_STATE"

    const/4 v13, 0x1

    invoke-direct {p0, v12, v13}, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->setFingerprintPlusForKey(Ljava/lang/String;I)V

    const-string/jumbo v12, "PREV_FINGER_PLUS_ID"

    invoke-direct {p0, v12, v10}, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->setFingerprintPlusForKey(Ljava/lang/String;I)V

    const/4 v12, -0x1

    invoke-virtual {p0, v12}, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->setResult(I)V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->finish()V
    :try_end_117
    .catch Ljava/lang/NullPointerException; {:try_start_cd .. :try_end_117} :catch_119

    goto/16 :goto_2f

    :catch_119
    move-exception v1

    const-string/jumbo v12, "KnoxFingerprintPlusMenu"

    const-string/jumbo v13, "data is null!!"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2f

    :cond_125
    if-nez p2, :cond_2f

    if-eqz p3, :cond_2f

    const-string/jumbo v12, "enrollResult"

    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const/4 v12, 0x1

    if-ne v2, v12, :cond_2f

    const/4 v12, 0x0

    sput-boolean v12, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->isKeepEnrollSession:Z

    invoke-direct {p0}, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->cancelAndSessionEnd()V

    goto/16 :goto_2f

    :sswitch_13e
    const/4 v12, -0x1

    move/from16 v0, p2

    if-ne v0, v12, :cond_15b

    const-string/jumbo v12, "KnoxFingerprintPlusMenu"

    const-string/jumbo v13, "onActivityResult ChooseLockGeneric Granted"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_2f

    const-string/jumbo v12, "hw_auth_token"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->mToken:[B

    goto/16 :goto_2f

    :cond_15b
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->finish()V

    goto/16 :goto_2f

    :sswitch_data_160
    .sparse-switch
        0x68 -> :sswitch_30
        0xc9 -> :sswitch_13e
        0x3e8 -> :sswitch_a3
        0x3e9 -> :sswitch_a3
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4

    const-string/jumbo v0, "KnoxFingerprintPlusMenu"

    const-string/jumbo v1, "=====onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 8

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo v1, "KnoxFingerprintPlusMenu"

    const-string/jumbo v2, "=====onCreate()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v5}, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu;->-set0(I)I

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {}, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu;->-get0()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "KnoxFingerprintPlusMenu"

    const v3, 0x7f12037f

    invoke-static {v1, v3, v2}, Lcom/android/settings/Utils;->isNotAvailableBiometricsWithDexAndMultiWindow(Landroid/app/Activity;ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->finish()V

    return-void

    :cond_30
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_4b

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "preftype"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->mPrefType:Ljava/lang/String;

    :cond_4b
    sput-object p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->mFragment:Landroid/app/Fragment;

    iput v5, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->mUserId:I

    const-string/jumbo v1, "KnoxFingerprintPlusMenu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mUserId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->mUserId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_76

    const-string/jumbo v1, "hw_auth_token"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->mToken:[B

    :cond_76
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "fingerprint"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v1, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->setHasOptionsMenu(Z)V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06011a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->colorId_identifiedId:I

    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sput-object v4, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->mListView:Landroid/support/v7/widget/RecyclerView;

    sput-object v4, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->mEdit_TextView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->createPreferenceHierarchy()Landroid/support/v7/preference/PreferenceScreen;

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 5

    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const-string/jumbo v0, "KnoxFingerprintPlusMenu"

    const-string/jumbo v1, "=====onCreateOptionsMenu"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDestroy()V
    .registers 4

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    const-string/jumbo v0, "KnoxFingerprintPlusMenu"

    const-string/jumbo v1, "=====onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->isRunRegister:Z

    if-eqz v0, :cond_1c

    const-string/jumbo v0, "KnoxFingerprintPlusMenu"

    const-string/jumbo v1, "reset runRegister"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->isRunRegister:Z

    :cond_1c
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-nez v0, :cond_30

    iget v0, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->mEnrolledFingerCount:I

    if-lez v0, :cond_30

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsActivity;->setOnEditPressedListener(Lcom/android/settings/SettingsActivity$onEditButtonClicked;)V

    :cond_30
    return-void
.end method

.method public onPause()V
    .registers 4

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    const-string/jumbo v1, "KnoxFingerprintPlusMenu"

    const-string/jumbo v2, "=====onPause()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f0a04f6

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_30

    instance-of v1, v0, Lcom/samsung/android/settings/search/SecSearchResultsSummary;

    if-eqz v1, :cond_30

    invoke-direct {p0}, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->stopFingerprint()V

    const-string/jumbo v1, "KnoxFingerprintPlusMenu"

    const-string/jumbo v2, "Top of fragment is searchResultsSummary"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2f
    return-void

    :cond_30
    invoke-direct {p0}, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->cancelAndSessionEnd()V

    goto :goto_2f

    :cond_34
    invoke-direct {p0}, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->cancelAndSessionEnd()V

    goto :goto_2f
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .registers 16

    const/4 v12, 0x0

    const-string/jumbo v9, "KnoxFingerprintPlusMenu"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "=====onPreferenceTreeClick : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    const/4 v7, 0x1

    const-string/jumbo v9, "PREV_FINGER_PLUS_ID"

    invoke-direct {p0, v9}, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->getFingerprintPlusForKey(Ljava/lang/String;)I

    move-result v8

    const/4 v0, -0x1

    const-string/jumbo v9, "key_fingerprint_add"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_58

    invoke-direct {p0}, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->stopFingerprint()V

    iget-object v9, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->mHandler:Landroid/os/Handler;

    new-instance v10, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment$5;

    invoke-direct {v10, p0}, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment$5;-><init>(Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;)V

    const-wide/16 v12, 0x1f4

    invoke-virtual {v9, v10, v12, v13}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0b023b

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    invoke-static {v9, v10}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    return v7

    :cond_58
    sput-object v4, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->mSelectedKey:Ljava/lang/String;

    sget-object v9, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {p0, v9}, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    instance-of v9, v6, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment$FingerprintPreference;

    if-eqz v9, :cond_a1

    if-eqz v6, :cond_9e

    iget-object v9, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->items:Ljava/util/List;

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6c
    :goto_6c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v2}, Landroid/hardware/fingerprint/Fingerprint;->getName()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6}, Landroid/support/v7/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6c

    invoke-virtual {v2}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v0

    if-ne v8, v0, :cond_97

    check-cast v6, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment$FingerprintPreference;

    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment$FingerprintPreference;->setChecked(Z)V

    return v12

    :cond_97
    move-object v9, v6

    check-cast v9, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment$FingerprintPreference;

    invoke-virtual {v9, v12}, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment$FingerprintPreference;->setChecked(Z)V

    goto :goto_6c

    :cond_9e
    invoke-direct {p0, v0}, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->startBiometricAuthentication(I)V

    :cond_a1
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v9

    return v9
.end method

.method public onResume()V
    .registers 4

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    const-string/jumbo v0, "KnoxFingerprintPlusMenu"

    const-string/jumbo v1, "=====onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->updatePreferences()V

    iget-object v0, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->mToken:[B

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v1, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3c

    const-string/jumbo v0, "KnoxFingerprintPlusMenu"

    const-string/jumbo v1, "Enroll session close."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v2, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->mToken:[B

    iget-object v0, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->postEnroll()I

    :cond_3c
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->getListView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    sput-object v0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->mListView:Landroid/support/v7/widget/RecyclerView;

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->updateIdentifiedFinger(ZI)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->mToken:[B

    if-eqz v0, :cond_60

    iget-object v0, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->isEnrollSession()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_60

    const-string/jumbo v0, "KnoxFingerprintPlusMenu"

    const-string/jumbo v1, "Session closed! Token must be null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v2, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->mToken:[B

    :cond_60
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string/jumbo v0, "hw_auth_token"

    iget-object v1, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->mToken:[B

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const-string/jumbo v0, "KnoxFingerprintPlusMenu"

    const-string/jumbo v1, "onViewCreated()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
