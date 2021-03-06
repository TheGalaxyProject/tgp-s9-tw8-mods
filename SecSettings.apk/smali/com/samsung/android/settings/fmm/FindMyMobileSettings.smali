.class public Lcom/samsung/android/settings/fmm/FindMyMobileSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "FindMyMobileSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/fmm/FindMyMobileSettings$1;,
        Lcom/samsung/android/settings/fmm/FindMyMobileSettings$2;,
        Lcom/samsung/android/settings/fmm/FindMyMobileSettings$3;,
        Lcom/samsung/android/settings/fmm/FindMyMobileSettings$4;,
        Lcom/samsung/android/settings/fmm/FindMyMobileSettings$5;,
        Lcom/samsung/android/settings/fmm/FindMyMobileSettings$6;,
        Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static SETTINGS_FMM:I

.field private static SETTINGS_FMM_ADD_ACCOUNT:I

.field private static SETTINGS_FMM_HYPER_LINK:I

.field private static SETTINGS_FMM_LOCATIONSERVICE:I

.field private static SETTINGS_FMM_REMOTECONTROL:I

.field public static chkboxFlag:Z

.field private static rsm:Lcom/samsung/android/service/reactive/ReactiveServiceManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDescriptionText:Landroid/widget/TextView;

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mFirstLogin:Z

.field private mGoogleLocationService:Landroid/support/v14/preference/SecSwitchPreference;

.field private mHasFMMDMClient:Z

.field private mHasSamsungAccount:Z

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsSupportLMM:Z

.field private mLastLocationObserver:Landroid/database/ContentObserver;

.field private mLinkBtnClickListener:Landroid/view/View$OnClickListener;

.field private mListView:Landroid/widget/ListView;

.field private mReactivationLock:Landroid/support/v14/preference/SecSwitchPreference;

.field private mReactivationLockDialog:Landroid/app/AlertDialog;

.field private mReactivationLockObserver:Landroid/database/ContentObserver;

.field private mRemoteControls:Landroid/support/v14/preference/SecSwitchPreference;

.field private mRemoteControlsObserver:Landroid/database/ContentObserver;

.field private mSamsungAccount:Landroid/accounts/Account;

.field private mSamsungAccountContext:Landroid/content/Context;

.field private mSamsungAccountDescription:Landroid/accounts/AuthenticatorDescription;

.field private mSamsungAccountPref:Landroid/support/v7/preference/SecPreference;

.field private mSendLastLocation:Landroid/support/v14/preference/SecSwitchPreference;

.field private mSimChangeAlert:Landroid/support/v7/preference/SecPreferenceScreen;

.field private mURL:Ljava/lang/String;


# direct methods
.method static synthetic -get0()I
    .registers 1

    sget v0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->SETTINGS_FMM_HYPER_LINK:I

    return v0
.end method

.method static synthetic -get1()I
    .registers 1

    sget v0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->SETTINGS_FMM_REMOTECONTROL:I

    return v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Landroid/support/v14/preference/SecSwitchPreference;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mGoogleLocationService:Landroid/support/v14/preference/SecSwitchPreference;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Landroid/support/v14/preference/SecSwitchPreference;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mReactivationLock:Landroid/support/v14/preference/SecSwitchPreference;

    return-object v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Landroid/support/v14/preference/SecSwitchPreference;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mRemoteControls:Landroid/support/v14/preference/SecSwitchPreference;

    return-object v0
.end method

.method static synthetic -get7(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Landroid/support/v14/preference/SecSwitchPreference;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mSendLastLocation:Landroid/support/v14/preference/SecSwitchPreference;

    return-object v0
.end method

.method static synthetic -get8(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mURL:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -set0(I)I
    .registers 1

    sput p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->SETTINGS_FMM_HYPER_LINK:I

    return p0
.end method

.method static synthetic -set1(I)I
    .registers 1

    sput p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->SETTINGS_FMM_REMOTECONTROL:I

    return p0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Landroid/content/ContentResolver;
    .registers 2

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Landroid/content/Context;)Z
    .registers 2

    invoke-static {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->isSupportSendLastLocation(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->onCancelPressed()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->updateSimChangeAlert()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$6;

    invoke-direct {v0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$6;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mListView:Landroid/widget/ListView;

    iput-object v1, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mReactivationLockDialog:Landroid/app/AlertDialog;

    iput-boolean v0, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mHasSamsungAccount:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mIsSupportLMM:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mHasFMMDMClient:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mFirstLogin:Z

    new-instance v0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$1;-><init>(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mRemoteControlsObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$2;-><init>(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mReactivationLockObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$3;-><init>(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mLastLocationObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$4;-><init>(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$5;-><init>(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mLinkBtnClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;-><init>(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    return-void
.end method

.method private checkReactivationLock()Z
    .registers 6

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isSupportLMM(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_33

    sget-object v2, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->rsm:Lcom/samsung/android/service/reactive/ReactiveServiceManager;

    invoke-virtual {v2}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->getStatus()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_34

    const/4 v1, 0x1

    :goto_19
    const-string/jumbo v2, "FindMyMobileSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ReactivationLock Check= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_33
    return v1

    :cond_34
    const/4 v1, 0x0

    goto :goto_19
.end method

.method private static isSupportSendLastLocation(Landroid/content/Context;)Z
    .registers 9

    const/4 v3, 0x0

    const v4, 0x25ad14a0

    :try_start_4
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string/jumbo v6, "com.samsung.android.fmm"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget v0, v2, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_12
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_12} :catch_19

    const v5, 0x25ad14a0

    if-gt v5, v0, :cond_18

    const/4 v3, 0x1

    :cond_18
    :goto_18
    return v3

    :catch_19
    move-exception v1

    goto :goto_18
.end method

.method private moveToFMMActivity(Z)V
    .registers 12

    const/4 v6, 0x0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v7, "login_state"

    invoke-static {v5, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    const-string/jumbo v5, "login_state"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_37

    const-string/jumbo v5, "ko"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_91

    const/4 v5, 0x1

    :goto_33
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    :cond_37
    const-string/jumbo v5, "FindMyMobileSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isDomestic : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v5, "isDomestic"

    invoke-virtual {v1, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string/jumbo v5, "switch_state"

    invoke-virtual {v1, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v5, "com.samsung.android.fmm"

    const-string/jumbo v7, "com.sec.dsm.system.FMMAgreement"

    invoke-virtual {v1, v5, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v5, "FindMyMobileSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "mSendLastLocation change : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "login_state"

    invoke-static {v8, v9, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v5, 0x3eb

    :try_start_8d
    invoke-virtual {p0, v1, v5}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_90
    .catch Landroid/content/ActivityNotFoundException; {:try_start_8d .. :try_end_90} :catch_93

    :goto_90
    return-void

    :cond_91
    move v5, v6

    goto :goto_33

    :catch_93
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_90
.end method

.method private moveToLoginPage(I)V
    .registers 6

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.osp.app.signin"

    const-string/jumbo v3, "com.osp.app.signin.UserValidateCheck"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "MODE"

    const-string/jumbo v3, "REMOTE_CONTROLS"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_17
    invoke-virtual {p0, v1, p1}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1a
    .catch Landroid/content/ActivityNotFoundException; {:try_start_17 .. :try_end_1a} :catch_1b

    :goto_1a
    return-void

    :catch_1b
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_1a
.end method

.method private onCancelPressed()V
    .registers 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "lock_my_mobile"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_19

    iget-object v0, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mReactivationLock:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v0, v3}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    :goto_18
    return-void

    :cond_19
    iget-object v0, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mReactivationLock:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v0, v2}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    goto :goto_18
.end method

.method private setDescriptionText()V
    .registers 4

    const v1, 0x7f120b17

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mHasSamsungAccount:Z

    if-nez v1, :cond_3d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v1

    if-eqz v1, :cond_43

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f120b19

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3d
    :goto_3d
    iget-object v1, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mDescriptionText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_43
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f120b18

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3d
.end method

.method private showReactivationLockDialog()V
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mReactivationLockDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mReactivationLockDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v1, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mReactivationLockDialog:Landroid/app/AlertDialog;

    :cond_c
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f120fef

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f120fee

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$8;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$8;-><init>(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)V

    const v2, 0x7f1208a6

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$9;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$9;-><init>(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)V

    const v2, 0x7f12055d

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$10;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$10;-><init>(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mReactivationLockDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method private showReactivationLockDisableDialog()V
    .registers 6

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mReactivationLockDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mReactivationLockDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v3, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mReactivationLockDialog:Landroid/app/AlertDialog;

    :cond_c
    const v0, 0x7f120864

    const v1, 0x7f120866

    const-string/jumbo v2, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    const v0, 0x7f120865

    const v1, 0x7f120867

    :cond_25
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$11;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$11;-><init>(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)V

    const v4, 0x7f1208a6

    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$12;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$12;-><init>(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)V

    const v4, 0x7f12055d

    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$13;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$13;-><init>(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mReactivationLockDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method private updateAccountInformation()V
    .registers 7

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string/jumbo v2, "com.osp.app.signin"

    invoke-virtual {v0, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    array-length v2, v1

    if-lez v2, :cond_40

    const/4 v2, 0x1

    :goto_14
    iput-boolean v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mHasSamsungAccount:Z

    iget-boolean v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mHasSamsungAccount:Z

    if-eqz v2, :cond_42

    aget-object v2, v1, v3

    iput-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mSamsungAccount:Landroid/accounts/Account;

    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mSamsungAccountPref:Landroid/support/v7/preference/SecPreference;

    aget-object v4, v1, v3

    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/support/v7/preference/SecPreference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mSamsungAccountPref:Landroid/support/v7/preference/SecPreference;

    iget-object v4, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mSamsungAccountContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mSamsungAccountDescription:Landroid/accounts/AuthenticatorDescription;

    iget v5, v5, Landroid/accounts/AuthenticatorDescription;->labelId:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/support/v7/preference/SecPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mSamsungAccountPref:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/SecPreference;->setWidgetLayoutResource(I)V

    :goto_3f
    return-void

    :cond_40
    move v2, v3

    goto :goto_14

    :cond_42
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mSamsungAccountPref:Landroid/support/v7/preference/SecPreference;

    const v3, 0x7f1200e3

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/SecPreference;->setTitle(I)V

    iget-boolean v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mIsSupportLMM:Z

    if-eqz v2, :cond_65

    iget-boolean v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mHasFMMDMClient:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_65

    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mSamsungAccountPref:Landroid/support/v7/preference/SecPreference;

    const v3, 0x7f1200ee

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/SecPreference;->setSummary(I)V

    :goto_5c
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mSamsungAccountPref:Landroid/support/v7/preference/SecPreference;

    const v3, 0x7f0d026e

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/SecPreference;->setWidgetLayoutResource(I)V

    goto :goto_3f

    :cond_65
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mSamsungAccountPref:Landroid/support/v7/preference/SecPreference;

    const v3, 0x7f1200ed

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/SecPreference;->setSummary(I)V

    goto :goto_5c
.end method

.method private updateSimChangeAlert()V
    .registers 6

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isAirplaneModeEnabled(Landroid/content/Context;)Z

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mSimChangeAlert:Landroid/support/v7/preference/SecPreferenceScreen;

    if-eqz v1, :cond_4c

    invoke-static {}, Lcom/android/settings/Utils;->isMultisimModel()Z

    move-result v1

    if-eqz v1, :cond_5f

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isNoSIM(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4d

    iget-object v1, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mSimChangeAlert:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v1, v3}, Landroid/support/v7/preference/SecPreferenceScreen;->setEnabled(Z)V

    :goto_2b
    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "change_alert"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_96

    iget-object v1, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mSimChangeAlert:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f121b7e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/SecPreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    :cond_4c
    :goto_4c
    return-void

    :cond_4d
    iget-boolean v1, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mHasSamsungAccount:Z

    if-nez v1, :cond_57

    iget-object v1, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mSimChangeAlert:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v1, v3}, Landroid/support/v7/preference/SecPreferenceScreen;->setEnabled(Z)V

    goto :goto_2b

    :cond_57
    iget-object v1, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mSimChangeAlert:Landroid/support/v7/preference/SecPreferenceScreen;

    xor-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/SecPreferenceScreen;->setEnabled(Z)V

    goto :goto_2b

    :cond_5f
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    if-eq v1, v4, :cond_73

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    if-nez v1, :cond_79

    :cond_73
    iget-object v1, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mSimChangeAlert:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v1, v3}, Landroid/support/v7/preference/SecPreferenceScreen;->setEnabled(Z)V

    goto :goto_2b

    :cond_79
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_73

    iget-boolean v1, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mHasSamsungAccount:Z

    if-nez v1, :cond_8e

    iget-object v1, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mSimChangeAlert:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v1, v3}, Landroid/support/v7/preference/SecPreferenceScreen;->setEnabled(Z)V

    goto :goto_2b

    :cond_8e
    iget-object v1, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mSimChangeAlert:Landroid/support/v7/preference/SecPreferenceScreen;

    xor-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/SecPreferenceScreen;->setEnabled(Z)V

    goto :goto_2b

    :cond_96
    iget-object v1, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mSimChangeAlert:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f121b7d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/SecPreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_4c
.end method


# virtual methods
.method public getMetricsCategory()I
    .registers 2

    const/16 v0, 0x1176

    sput v0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->SETTINGS_FMM:I

    sget v0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->SETTINGS_FMM:I

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 7

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    const v3, 0x7f0d0106

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v3, 0x7f0a089e

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mDescriptionText:Landroid/widget/TextView;

    const v3, 0x7f0a04aa

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v3

    if-eqz v3, :cond_45

    const-string/jumbo v3, "http://findmymobile.samsung.cn"

    :goto_32
    iput-object v3, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mURL:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mURL:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mLinkBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->setHeaderView(Landroid/view/View;)V

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void

    :cond_45
    const-string/jumbo v3, "https://findmymobile.samsung.com"

    goto :goto_32
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 15

    const/4 v10, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v4, 0x3e9

    if-ne p1, v4, :cond_64

    if-ne p2, v10, :cond_64

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v7, "login_state"

    invoke-static {v4, v7, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v4, "FindMyMobileSettings"

    const-string/jumbo v7, "RemoteControlRequestCode complete"

    invoke-static {v4, v7}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mRemoteControls:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v4, v6}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f0b0220

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    sput v4, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->SETTINGS_FMM_REMOTECONTROL:I

    iget-object v4, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mContext:Landroid/content/Context;

    sget v7, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->SETTINGS_FMM_REMOTECONTROL:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v4, v7, v8}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v7, "remote_control"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v4, "android.settings.remotecontrol_off"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "com.samsung.android.fmm"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v4, "FindMyMobileSettings"

    const-string/jumbo v7, " onCheckedChanged[remotecontrol_off]"

    invoke-static {v4, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    :cond_64
    const/16 v4, 0x3ea

    if-ne p1, v4, :cond_77

    if-ne p2, v10, :cond_77

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v7, "login_state"

    invoke-static {v4, v7, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-direct {p0, v6}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->moveToFMMActivity(Z)V

    :cond_77
    const/16 v4, 0x3eb

    if-ne p1, v4, :cond_e3

    if-ne p2, v10, :cond_ab

    const-string/jumbo v4, "FindMyMobileSettings"

    const-string/jumbo v7, "FMMAgreement RESULT_OK"

    invoke-static {v4, v7}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "switch_state"

    invoke-virtual {p3, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "send_last_location"

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_145

    move v4, v5

    :goto_9f
    invoke-static {v7, v8, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v4, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mSendLastLocation:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {v4, v7}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    :cond_ab
    if-eqz p3, :cond_be

    const-string/jumbo v4, "login_state"

    invoke-virtual {p3, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v7, "login_state"

    invoke-static {v4, v7, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_be
    const-string/jumbo v4, "FindMyMobileSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "FMMAgreement : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "login_state"

    invoke-static {v8, v9, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e3
    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->isSupportLMM(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_144

    const/16 v4, 0x3e8

    if-ne p1, v4, :cond_144

    if-ne p2, v10, :cond_176

    invoke-direct {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->checkReactivationLock()Z

    move-result v1

    const-string/jumbo v4, "FindMyMobileSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Reactivation lock is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_148

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v6, "lock_my_mobile"

    invoke-static {v4, v6, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v4, "android.settings.reactivationlock_on"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "com.samsung.android.fmm"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v4, "FindMyMobileSettings"

    const-string/jumbo v6, " onActivityResult[reactivationlock_on]"

    invoke-static {v4, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v4, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mReactivationLock:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v4, v5}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    :cond_144
    :goto_144
    return-void

    :cond_145
    move v4, v6

    goto/16 :goto_9f

    :cond_148
    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "lock_my_mobile"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v4, "android.settings.reactivationlock_off"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "com.samsung.android.fmm"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v4, "FindMyMobileSettings"

    const-string/jumbo v5, " onActivityResult[reactivationlock_off]"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v4, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mReactivationLock:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v4, v6}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    goto :goto_144

    :cond_176
    const-string/jumbo v4, "FindMyMobileSettings"

    const-string/jumbo v5, "Reactivation lock onActivityResult is not RESULT_OK!!!"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_144
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 12

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v7, 0x7f15006a

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->addPreferencesFromResource(I)V

    const-string/jumbo v7, "samsung_account"

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/support/v7/preference/SecPreference;

    iput-object v7, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mSamsungAccountPref:Landroid/support/v7/preference/SecPreference;

    const-string/jumbo v7, "remote_controls"

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/support/v14/preference/SecSwitchPreference;

    iput-object v7, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mRemoteControls:Landroid/support/v14/preference/SecSwitchPreference;

    const-string/jumbo v7, "google_location_service"

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/support/v14/preference/SecSwitchPreference;

    iput-object v7, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mGoogleLocationService:Landroid/support/v14/preference/SecSwitchPreference;

    const-string/jumbo v7, "sim_change_alert"

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/support/v7/preference/SecPreferenceScreen;

    iput-object v7, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mSimChangeAlert:Landroid/support/v7/preference/SecPreferenceScreen;

    iget-object v7, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mSimChangeAlert:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f1205a1

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/Utils;->replaceSIMString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/support/v7/preference/SecPreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    const-string/jumbo v7, "reactivation_lock"

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/support/v14/preference/SecSwitchPreference;

    iput-object v7, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mReactivationLock:Landroid/support/v14/preference/SecSwitchPreference;

    const-string/jumbo v7, "send_last_location"

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/support/v14/preference/SecSwitchPreference;

    iput-object v7, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mSendLastLocation:Landroid/support/v14/preference/SecSwitchPreference;

    iget-object v7, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mRemoteControls:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v7, p0}, Landroid/support/v14/preference/SecSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v7, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mGoogleLocationService:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v7, p0}, Landroid/support/v14/preference/SecSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v7, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mReactivationLock:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v7, p0}, Landroid/support/v14/preference/SecSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v7, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mSendLastLocation:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v7, p0}, Landroid/support/v14/preference/SecSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v7

    if-eqz v7, :cond_91

    iget-object v7, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mGoogleLocationService:Landroid/support/v14/preference/SecSwitchPreference;

    const v8, 0x7f120dcf

    invoke-virtual {v7, v8}, Landroid/support/v14/preference/SecSwitchPreference;->setTitle(I)V

    iget-object v7, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mGoogleLocationService:Landroid/support/v14/preference/SecSwitchPreference;

    const v8, 0x7f120dce

    invoke-virtual {v7, v8}, Landroid/support/v14/preference/SecSwitchPreference;->setSummary(I)V

    :cond_91
    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const-string/jumbo v8, "com.osp.app.signin"

    invoke-static {v7, v8}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    const-string/jumbo v7, "FindMyMobileSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "hasSAPackage : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_14b

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/accounts/AccountManager;->getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;

    move-result-object v0

    const/4 v4, 0x0

    :goto_c9
    array-length v7, v0

    if-ge v4, v7, :cond_dd

    aget-object v7, v0, v4

    iget-object v7, v7, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    const-string/jumbo v8, "com.osp.app.signin"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_138

    aget-object v7, v0, v4

    iput-object v7, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mSamsungAccountDescription:Landroid/accounts/AuthenticatorDescription;

    :cond_dd
    :try_start_dd
    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mSamsungAccountDescription:Landroid/accounts/AuthenticatorDescription;

    iget-object v8, v8, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/app/Activity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mSamsungAccountContext:Landroid/content/Context;
    :try_end_ec
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_dd .. :try_end_ec} :catch_140
    .catch Ljava/lang/NullPointerException; {:try_start_dd .. :try_end_ec} :catch_13b

    :goto_ec
    new-instance v6, Lcom/samsung/android/settings/IconResizer;

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/samsung/android/settings/IconResizer;-><init>(Landroid/content/Context;)V

    const v7, 0x7f0704d6

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/IconResizer;->setIconSize(I)V

    const/4 v5, 0x0

    iget-object v7, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mSamsungAccountContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mSamsungAccountDescription:Landroid/accounts/AuthenticatorDescription;

    iget v8, v8, Landroid/accounts/AuthenticatorDescription;->iconId:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/IconResizer;->createIconThumbnail(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iget-object v7, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mSamsungAccountPref:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {v7, v5}, Landroid/support/v7/preference/SecPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :goto_113
    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/Utils;->isSupportLMM(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_130

    new-instance v7, Lcom/samsung/android/service/reactive/ReactiveServiceManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;-><init>(Landroid/content/Context;)V

    sput-object v7, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->rsm:Lcom/samsung/android/service/reactive/ReactiveServiceManager;

    :cond_130
    new-instance v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v7, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-void

    :cond_138
    add-int/lit8 v4, v4, 0x1

    goto :goto_c9

    :catch_13b
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_ec

    :catch_140
    move-exception v1

    const-string/jumbo v7, "FindMyMobileSettings"

    const-string/jumbo v8, "No Package name for account type com.osp.app.signin"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ec

    :cond_14b
    const-string/jumbo v7, "samsung_account"

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->removePreference(Ljava/lang/String;)V

    goto :goto_113
.end method

.method public onPause()V
    .registers 6

    const/4 v4, 0x0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mRemoteControlsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mReactivationLockObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mLastLocationObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_2c

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_2c
    iget-boolean v0, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mFirstLogin:Z

    if-nez v0, :cond_3a

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "login_state"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_3a
    const-string/jumbo v0, "FindMyMobileSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPause : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "login_state"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "FindMyMobile"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .registers 13

    const v9, 0x7f0b0220

    const/16 v4, 0x3e8

    const/4 v8, 0x1

    const/4 v5, 0x0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "login_state"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v8, :cond_57

    const/4 v3, 0x1

    :goto_1c
    iget-object v6, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mRemoteControls:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {p1, v6}, Landroid/support/v7/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e7

    if-eqz v1, :cond_9b

    const-string/jumbo v6, "CHM"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4d

    const-string/jumbo v6, "CHU"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4d

    const-string/jumbo v6, "CTC"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_59

    :cond_4d
    sget-boolean v6, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->chkboxFlag:Z

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_59

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->showNotificationChargeDialog()V

    :cond_56
    :goto_56
    return v2

    :cond_57
    const/4 v3, 0x0

    goto :goto_1c

    :cond_59
    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    sput v6, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->SETTINGS_FMM_REMOTECONTROL:I

    iget-object v6, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mContext:Landroid/content/Context;

    sget v7, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->SETTINGS_FMM_REMOTECONTROL:I

    if-eqz v1, :cond_99

    :goto_69
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v6, v7, v4}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "remote_control"

    invoke-static {v4, v5, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v4, "android.settings.remotecontrol_on"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "com.samsung.android.fmm"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v4, "FindMyMobileSettings"

    const-string/jumbo v5, " onCheckedChanged[remotecontrol_on]"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_56

    :cond_99
    move v4, v5

    goto :goto_69

    :cond_9b
    if-eqz v3, :cond_e0

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    sput v6, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->SETTINGS_FMM_REMOTECONTROL:I

    iget-object v6, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mContext:Landroid/content/Context;

    sget v7, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->SETTINGS_FMM_REMOTECONTROL:I

    if-eqz v1, :cond_de

    :goto_ad
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v6, v7, v4}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v6, "remote_control"

    invoke-static {v4, v6, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v4, "android.settings.remotecontrol_off"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "com.samsung.android.fmm"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v4, "FindMyMobileSettings"

    const-string/jumbo v5, " onCheckedChanged[remotecontrol_off]"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_56

    :cond_de
    move v4, v5

    goto :goto_ad

    :cond_e0
    const/16 v4, 0x3e9

    invoke-direct {p0, v4}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->moveToLoginPage(I)V

    goto/16 :goto_56

    :cond_e7
    iget-object v6, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mGoogleLocationService:Landroid/support/v14/preference/SecSwitchPreference;

    if-ne p1, v6, :cond_117

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b021d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    sput v6, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->SETTINGS_FMM_LOCATIONSERVICE:I

    iget-object v6, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mContext:Landroid/content/Context;

    sget v7, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->SETTINGS_FMM_LOCATIONSERVICE:I

    if-eqz v1, :cond_115

    :goto_fe
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v6, v7, v4}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "network"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    goto/16 :goto_56

    :cond_115
    move v4, v5

    goto :goto_fe

    :cond_117
    iget-object v4, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mSendLastLocation:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {p1, v4}, Landroid/support/v7/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_131

    if-nez v1, :cond_12c

    xor-int/lit8 v4, v3, 0x1

    if-eqz v4, :cond_12c

    const/16 v4, 0x3ea

    invoke-direct {p0, v4}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->moveToLoginPage(I)V

    goto/16 :goto_56

    :cond_12c
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->moveToFMMActivity(Z)V

    goto/16 :goto_56

    :cond_131
    iget-object v4, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mReactivationLock:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {p1, v4}, Landroid/support/v7/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_56

    iput-boolean v8, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mFirstLogin:Z

    if-eqz v1, :cond_161

    invoke-direct {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->showReactivationLockDialog()V

    const/4 v2, 0x0

    :goto_141
    const-string/jumbo v4, "FindMyMobileSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ReactivationLock state = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->checkReactivationLock()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_56

    :cond_161
    invoke-direct {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->showReactivationLockDisableDialog()V

    const/4 v2, 0x0

    goto :goto_141
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .registers 12

    const/4 v7, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mSamsungAccountPref:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_72

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->isResumed()Z

    move-result v0

    if-nez v0, :cond_12

    return v1

    :cond_12
    iget-boolean v0, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mHasSamsungAccount:Z

    if-nez v0, :cond_61

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b021b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->SETTINGS_FMM_ADD_ACCOUNT:I

    iget-object v0, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mContext:Landroid/content/Context;

    sget v1, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->SETTINGS_FMM_ADD_ACCOUNT:I

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    :try_start_2a
    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "samsung_signin"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "login_state"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mFirstLogin:Z

    new-instance v9, Landroid/content/Intent;

    const-string/jumbo v0, "com.osp.app.signin.action.ADD_SAMSUNG_ACCOUNT"

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "MODE"

    const-string/jumbo v1, "REMOTE_CONTROLS"

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_57
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2a .. :try_end_57} :catch_5c

    :cond_57
    :goto_57
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0

    :catch_5c
    move-exception v8

    invoke-virtual {v8}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_57

    :cond_61
    :try_start_61
    new-instance v9, Landroid/content/Intent;

    const-string/jumbo v0, "com.samsung.android.mobileservice.action.ACTION_OPEN_SASETTINGS"

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_6c
    .catch Landroid/content/ActivityNotFoundException; {:try_start_61 .. :try_end_6c} :catch_6d

    goto :goto_57

    :catch_6d
    move-exception v8

    invoke-virtual {v8}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_57

    :cond_72
    iget-object v0, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mSimChangeAlert:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_57

    invoke-static {}, Lcom/android/settings/Utils;->isChinaCTCModel()Z

    move-result v0

    if-eqz v0, :cond_9a

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    const-class v1, Lcom/samsung/android/settings/fmm/SimChangeAlert;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const v4, 0x7f1205a5

    move-object v1, p0

    move-object v6, v5

    invoke-virtual/range {v0 .. v7}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Landroid/app/Fragment;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_57

    :cond_9a
    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    const-class v1, Lcom/samsung/android/settings/fmm/SimChangeAlert;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const v4, 0x7f1205a1

    move-object v1, p0

    move-object v6, v5

    invoke-virtual/range {v0 .. v7}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Landroid/app/Fragment;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_57
.end method

.method public onResume()V
    .registers 9

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isSupportLMM(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    if-nez v2, :cond_1c

    iput-boolean v6, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mIsSupportLMM:Z

    :cond_1c
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->hasFMMDMClient(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mHasFMMDMClient:Z

    iget-boolean v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mIsSupportLMM:Z

    if-eqz v2, :cond_3c

    iget-boolean v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mHasFMMDMClient:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_3c

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    const v3, 0x7f120fee

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setTitle(I)V

    :cond_3c
    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "remote_control"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v6, :cond_1a8

    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mRemoteControls:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v2, v6}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    :goto_52
    invoke-direct {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->checkReactivationLock()Z

    move-result v2

    if-eqz v2, :cond_1af

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "lock_my_mobile"

    invoke-static {v2, v3, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_62
    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "lock_my_mobile"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v6, :cond_1bb

    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mReactivationLock:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v2, v6}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    :goto_78
    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "send_last_location"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v6, :cond_1c2

    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mSendLastLocation:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v2, v6}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    :goto_8e
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mGoogleLocationService:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "network"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    iget-boolean v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mIsSupportLMM:Z

    if-nez v2, :cond_ac

    const-string/jumbo v2, "reactivation_lock"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->removePreference(Ljava/lang/String;)V

    :cond_ac
    iget-boolean v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mHasFMMDMClient:Z

    if-nez v2, :cond_1c9

    const-string/jumbo v2, "google_location_service"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v2, "remote_controls"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v2, "sim_change_alert"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v2, "send_last_location"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->removePreference(Ljava/lang/String;)V

    :cond_c8
    :goto_c8
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "com.sec.android.app.mt"

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_dd

    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isSmsCapable(Landroid/content/Context;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_e3

    :cond_dd
    const-string/jumbo v2, "sim_change_alert"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->removePreference(Ljava/lang/String;)V

    :cond_e3
    const-string/jumbo v2, "USC"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f6

    const-string/jumbo v2, "sim_change_alert"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->removePreference(Ljava/lang/String;)V

    :cond_f6
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_104

    const-string/jumbo v2, "sim_change_alert"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->removePreference(Ljava/lang/String;)V

    :cond_104
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->isSupportSendLastLocation(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_112

    const-string/jumbo v2, "send_last_location"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->removePreference(Ljava/lang/String;)V

    :cond_112
    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "com.osp.app.signin"

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_126

    invoke-direct {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->updateAccountInformation()V

    :cond_126
    iget-boolean v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mHasSamsungAccount:Z

    if-eqz v2, :cond_1e4

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "samsung_signin"

    invoke-static {v2, v3, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mRemoteControls:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v2, v6}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mGoogleLocationService:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v2, v6}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mReactivationLock:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v2, v6}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mSimChangeAlert:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v2, v6}, Landroid/support/v7/preference/SecPreferenceScreen;->setEnabled(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mSendLastLocation:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v2, v6}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    :goto_14d
    iput-boolean v5, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mFirstLogin:Z

    invoke-direct {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->updateSimChangeAlert()V

    invoke-direct {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->setDescriptionText()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0, v7, v7}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "remote_control"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mRemoteControlsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "lock_my_mobile"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mReactivationLockObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "send_last_location"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mLastLocationObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v5, "FindMyMobile"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    return-void

    :cond_1a8
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mRemoteControls:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v2, v5}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    goto/16 :goto_52

    :cond_1af
    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "lock_my_mobile"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_62

    :cond_1bb
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mReactivationLock:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v2, v5}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    goto/16 :goto_78

    :cond_1c2
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mSendLastLocation:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v2, v5}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    goto/16 :goto_8e

    :cond_1c9
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "com.google.android.gms"

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_c8

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_c8

    const-string/jumbo v2, "google_location_service"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_c8

    :cond_1e4
    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "samsung_signin"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "login_state"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mRemoteControls:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v2, v5}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mGoogleLocationService:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v2, v5}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mReactivationLock:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v2, v5}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mSimChangeAlert:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v2, v5}, Landroid/support/v7/preference/SecPreferenceScreen;->setEnabled(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mSendLastLocation:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v2, v5}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    goto/16 :goto_14d
.end method

.method public showNotificationChargeDialog()V
    .registers 7

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0d01bf

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0a029a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    new-instance v3, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$14;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$14;-><init>(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)V

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f1206dc

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$15;

    invoke-direct {v4, p0, v0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$15;-><init>(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;Landroid/widget/CheckBox;)V

    const v5, 0x104000a

    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$16;

    invoke-direct {v4, p0, v0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$16;-><init>(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;Landroid/widget/CheckBox;)V

    const/high16 v5, 0x1040000

    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    return-void
.end method
