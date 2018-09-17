.class public Lcom/samsung/android/settings/spen/SPenSettingsMenu;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SPenSettingsMenu.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/spen/SPenSettingsMenu$1;,
        Lcom/samsung/android/settings/spen/SPenSettingsMenu$2;,
        Lcom/samsung/android/settings/spen/SPenSettingsMenu$3;,
        Lcom/samsung/android/settings/spen/SPenSettingsMenu$4;,
        Lcom/samsung/android/settings/spen/SPenSettingsMenu$5;,
        Lcom/samsung/android/settings/spen/SPenSettingsMenu$6;,
        Lcom/samsung/android/settings/spen/SPenSettingsMenu$7;
    }
.end annotation


# static fields
.field static final CONTENT_URI:Landroid/net/Uri;

.field private static final PEN_NOTIFICATION_OFF:Ljava/lang/String;

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static aircommand_flag:Z


# instance fields
.field private ContactUs_appId:Ljava/lang/String;

.field private ContactUs_appName:Ljava/lang/String;

.field private ContactUs_packageName:Ljava/lang/String;

.field private IntentUpdated:Z

.field private bUpdated:Z

.field private isMemoSupported:Z

.field private mAboutSpen:Landroid/support/v7/preference/SecPreferenceScreen;

.field private mActionMemoOnOffScreenSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

.field private mAirCommandPref:Landroid/support/v7/preference/SecPreference;

.field private mAirViewObserver:Landroid/database/ContentObserver;

.field private mAppsAndFunctionsPref:Landroid/support/v7/preference/SecPreference;

.field private mContext:Landroid/content/Context;

.field private mDirectPenInputPref:Lcom/android/settings/SecSettingsSwitchPreference;

.field private mDirectPenObserver:Landroid/database/ContentObserver;

.field private mDisablePenDetectionSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

.field private mInboxSPen:Z

.field private mLearnAboutSpen:Landroid/support/v7/preference/SecPreferenceScreen;

.field private mLossPreventionAlertSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

.field private mMagnifierGestureObserver:Landroid/database/ContentObserver;

.field private mMagnifierObserver:Landroid/database/ContentObserver;

.field private mPenAirViewPref:Lcom/android/settings/SecSettingsSwitchPreference;

.field private mPenDetachObserver:Landroid/database/ContentObserver;

.field private mPenDetachOptionPref:Lcom/samsung/android/settings/spen/SpenDropDownPreference;

.field private mPenFeedbackHapticSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

.field private mPenFeedbackSoundSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

.field private mPenScreenOnPref:Landroid/support/v14/preference/SecSwitchPreference;

.field private mScreenoffNoteSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

.field private mShortcutList:Ljava/lang/String;

.field private mSpenPointerSwtichPref:Landroid/support/v14/preference/SecSwitchPreference;

.field private mTalkbackDisableDialog:Landroid/app/AlertDialog;

.field private mUseMinimizedSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

.field private mVoiceAssistanceObserver:Landroid/database/ContentObserver;

.field private magnificationGesturesEnabled:Z

.field private magnifierWindowEnabled:Z

.field private sTalkbackEnabled:Z

.field private talkbackEnabled:Z


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/spen/SPenSettingsMenu;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/spen/SPenSettingsMenu;)Lcom/android/settings/SecSettingsSwitchPreference;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mDirectPenInputPref:Lcom/android/settings/SecSettingsSwitchPreference;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/spen/SPenSettingsMenu;)Lcom/android/settings/SecSettingsSwitchPreference;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenAirViewPref:Lcom/android/settings/SecSettingsSwitchPreference;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/spen/SPenSettingsMenu;)Lcom/samsung/android/settings/spen/SpenDropDownPreference;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenDetachOptionPref:Lcom/samsung/android/settings/spen/SpenDropDownPreference;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/spen/SPenSettingsMenu;)Landroid/content/ContentResolver;
    .registers 2

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Landroid/content/Context;)Z
    .registers 2

    invoke-static {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->isNotesEnabled(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/spen/SPenSettingsMenu;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->setAirviewDB(Z)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/samsung/android/settings/spen/SPenSettingsMenu;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->updateEnableState()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/samsung/android/settings/spen/SPenSettingsMenu;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->updateState()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    const-string/jumbo v0, "content://com.sec.android.desktopmode.uiservice.SettingsProvider/settings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->aircommand_flag:Z

    new-instance v0, Lcom/samsung/android/settings/spen/SPenSettingsMenu$6;

    invoke-direct {v0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu$6;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    iput-boolean v1, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->sTalkbackEnabled:Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->talkbackEnabled:Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->magnifierWindowEnabled:Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->magnificationGesturesEnabled:Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->isMemoSupported:Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mInboxSPen:Z

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mShortcutList:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->bUpdated:Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->IntentUpdated:Z

    const-string/jumbo v0, "com.sec.android.app.SmartClipService"

    iput-object v0, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->ContactUs_packageName:Ljava/lang/String;

    const-string/jumbo v0, "Spen"

    iput-object v0, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->ContactUs_appName:Ljava/lang/String;

    const-string/jumbo v0, "304612tl4e"

    iput-object v0, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->ContactUs_appId:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    new-instance v0, Lcom/samsung/android/settings/spen/SPenSettingsMenu$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/spen/SPenSettingsMenu$1;-><init>(Lcom/samsung/android/settings/spen/SPenSettingsMenu;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mVoiceAssistanceObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/spen/SPenSettingsMenu$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/spen/SPenSettingsMenu$2;-><init>(Lcom/samsung/android/settings/spen/SPenSettingsMenu;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mMagnifierGestureObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/spen/SPenSettingsMenu$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/spen/SPenSettingsMenu$3;-><init>(Lcom/samsung/android/settings/spen/SPenSettingsMenu;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mMagnifierObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/spen/SPenSettingsMenu$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/spen/SPenSettingsMenu$4;-><init>(Lcom/samsung/android/settings/spen/SPenSettingsMenu;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mDirectPenObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/spen/SPenSettingsMenu$5;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/spen/SPenSettingsMenu$5;-><init>(Lcom/samsung/android/settings/spen/SPenSettingsMenu;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mAirViewObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/spen/SPenSettingsMenu$7;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/spen/SPenSettingsMenu$7;-><init>(Lcom/samsung/android/settings/spen/SPenSettingsMenu;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenDetachObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method private appsCountSummaryUpdate()V
    .registers 23

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/4 v13, 0x0

    const/4 v12, 0x0

    const-string/jumbo v16, ""

    const v19, 0x7f121b0a

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v18, " "

    const-string/jumbo v19, "SPenSettingsMenu"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "UpdateSavedAirCmd mShortcutList :"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mShortcutList:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mShortcutList:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_1e1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mShortcutList:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string/jumbo v20, ","

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    array-length v14, v15

    const/4 v10, 0x0

    :goto_50
    if-ge v10, v14, :cond_1c0

    aget-object v19, v15, v10

    const-string/jumbo v20, ";"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string/jumbo v20, "execute"

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/app/SemExecutableManager;

    const-string/jumbo v19, "0"

    const/16 v20, 0x0

    aget-object v20, v13, v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_11c

    const/4 v4, 0x0

    new-instance v5, Landroid/content/ComponentName;

    const/16 v19, 0x1

    aget-object v19, v13, v19

    const/16 v20, 0x2

    aget-object v20, v13, v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v5, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_93
    const-string/jumbo v19, "A"

    const/16 v20, 0x3

    aget-object v20, v13, v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_e7

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v5, v1}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_a9
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_93 .. :try_end_a9} :catch_117

    move-result-object v4

    :cond_aa
    :goto_aa
    if-eqz v4, :cond_e3

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/content/pm/ComponentInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    :cond_b8
    :goto_b8
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_1a7

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    :cond_e3
    :goto_e3
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_50

    :cond_e7
    :try_start_e7
    const-string/jumbo v19, "S"

    const/16 v20, 0x3

    aget-object v20, v13, v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_ff

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v5, v1}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v4

    goto :goto_aa

    :cond_ff
    const-string/jumbo v19, "P"

    const/16 v20, 0x3

    aget-object v20, v13, v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_aa

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v5, v1}, Landroid/content/pm/PackageManager;->getProviderInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ProviderInfo;
    :try_end_115
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_e7 .. :try_end_115} :catch_117

    move-result-object v4

    goto :goto_aa

    :catch_117
    move-exception v8

    invoke-virtual {v8}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_aa

    :cond_11c
    const-string/jumbo v19, "1"

    const/16 v20, 0x0

    aget-object v20, v13, v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_b8

    if-eqz v9, :cond_19c

    const/16 v19, 0x4

    aget-object v19, v13, v19

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Lcom/samsung/android/app/SemExecutableManager;->getExecutableInfo(Ljava/lang/String;)Lcom/samsung/android/app/SemExecutableInfo;

    move-result-object v11

    if-eqz v11, :cond_e3

    const/4 v3, 0x0

    const/16 v19, 0x1

    :try_start_13a
    aget-object v19, v13, v19

    const/16 v20, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_147
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_13a .. :try_end_147} :catch_17c

    move-result-object v3

    :goto_148
    if-eqz v3, :cond_b8

    const/16 v19, 0x1

    aget-object v19, v13, v19

    invoke-virtual {v11}, Lcom/samsung/android/app/SemExecutableInfo;->getLabelId()I

    move-result v20

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    const-string/jumbo v19, "SPenSettingsMenu"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "mAppName :"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b8

    :catch_17c
    move-exception v7

    const-string/jumbo v19, "SPenSettingsMenu"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Fail to get application info : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v7}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_148

    :cond_19c
    const-string/jumbo v19, "SPenSettingsMenu"

    const-string/jumbo v20, "ExecuteManager is null"

    invoke-static/range {v19 .. v20}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b8

    :cond_1a7
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_e3

    :cond_1c0
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_1d4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mAppsAndFunctionsPref:Landroid/support/v7/preference/SecPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecPreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_1d3
    return-void

    :cond_1d4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mAppsAndFunctionsPref:Landroid/support/v7/preference/SecPreference;

    move-object/from16 v19, v0

    const v20, 0x7f12022a

    invoke-virtual/range {v19 .. v20}, Landroid/support/v7/preference/SecPreference;->setSummary(I)V

    goto :goto_1d3

    :cond_1e1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mAppsAndFunctionsPref:Landroid/support/v7/preference/SecPreference;

    move-object/from16 v19, v0

    const v20, 0x7f12022a

    invoke-virtual/range {v19 .. v20}, Landroid/support/v7/preference/SecPreference;->setSummary(I)V

    goto :goto_1d3
.end method

.method private dismissAllDialog()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v1, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    :cond_c
    return-void
.end method

.method private getShortCutList()V
    .registers 5

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.android.service.aircommand.action.REQUEST_DATA"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "request"

    const-string/jumbo v3, "shortcut_list"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v2, 0x3e8

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_16
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_16} :catch_17

    :goto_16
    return-void

    :catch_17
    move-exception v0

    const-string/jumbo v2, "SPenSettingsMenu"

    const-string/jumbo v3, "Failed to get shortcut list, no activity found"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16
.end method

.method private static isNotesEnabled(Landroid/content/Context;)Z
    .registers 2

    const-string/jumbo v0, "com.samsung.android.app.notes"

    invoke-static {p0, v0}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    return v0

    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method private sendLossPreventionAlert(Z)V
    .registers 6

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.android.settings.LossPeventionAlertChanged"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "LossPreventionAlertState"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v1, "SPenSettingsMenu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "BroadCast Loss prevention alert : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private setAirviewDB(Z)V
    .registers 5

    if-eqz p1, :cond_36

    const/4 v0, 0x1

    :goto_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "pen_hovering"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "pen_hovering_information_preview"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "pen_hovering_icon_label"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "pen_hovering_list_scroll"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "pen_hovering_link_preview"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_36
    const/4 v0, 0x0

    goto :goto_3
.end method

.method private showAirViewTalkBackDisableDialog()V
    .registers 11

    invoke-direct {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->dismissAllDialog()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const v8, 0x7f120b1d

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v5, ""

    iget-object v7, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "com.samsung.android.app.talkback"

    invoke-static {v7, v8}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_42

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\u2022 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const v8, 0x7f12082e

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_42
    iget-object v7, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "com.google.android.marvin.talkback"

    invoke-static {v7, v8}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_73

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\u2022 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const v8, 0x7f120830

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_73
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\u2022 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const v8, 0x7f120082

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v7, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string/jumbo v8, "com.sec.feature.overlaymagnifier"

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c6

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v7

    if-nez v7, :cond_c6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\n\u2022 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const v8, 0x7f120068

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_c6
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const v8, 0x1030132

    invoke-direct {v0, v7, v8}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    const-string/jumbo v7, "layout_inflater"

    invoke-virtual {v0, v7}, Landroid/view/ContextThemeWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    const v7, 0x7f0d001e

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    const v7, 0x7f0a0256

    invoke-virtual {v3, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v7, 0x7f0a0257

    invoke-virtual {v3, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const v8, 0x7f120b1c

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    new-instance v8, Lcom/samsung/android/settings/spen/SPenSettingsMenu$8;

    invoke-direct {v8, p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu$8;-><init>(Lcom/samsung/android/settings/spen/SPenSettingsMenu;)V

    const v9, 0x7f121c56

    invoke-virtual {v7, v9, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    new-instance v8, Lcom/samsung/android/settings/spen/SPenSettingsMenu$9;

    invoke-direct {v8, p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu$9;-><init>(Lcom/samsung/android/settings/spen/SPenSettingsMenu;)V

    const/high16 v9, 0x1040000

    invoke-virtual {v7, v9, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    iget-object v7, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    iget-object v7, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    new-instance v8, Lcom/samsung/android/settings/spen/SPenSettingsMenu$10;

    invoke-direct {v8, p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu$10;-><init>(Lcom/samsung/android/settings/spen/SPenSettingsMenu;)V

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method private showDirectPenInputTalkBackDisableDialog()V
    .registers 11

    invoke-direct {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->dismissAllDialog()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const v8, 0x7f121450

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v5, ""

    iget-object v7, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "com.samsung.android.app.talkback"

    invoke-static {v7, v8}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_42

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\u2022 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const v8, 0x7f12082e

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_42
    iget-object v7, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "com.google.android.marvin.talkback"

    invoke-static {v7, v8}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_73

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\u2022 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const v8, 0x7f120830

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_73
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\u2022 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const v8, 0x7f120082

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v7, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string/jumbo v8, "com.sec.feature.overlaymagnifier"

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c6

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v7

    if-nez v7, :cond_c6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\n\u2022 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const v8, 0x7f120068

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_c6
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const v8, 0x1030132

    invoke-direct {v0, v7, v8}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    const-string/jumbo v7, "layout_inflater"

    invoke-virtual {v0, v7}, Landroid/view/ContextThemeWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    const v7, 0x7f0d001e

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    const v7, 0x7f0a0256

    invoke-virtual {v3, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v7, 0x7f0a0257

    invoke-virtual {v3, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const v8, 0x7f121456

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    new-instance v8, Lcom/samsung/android/settings/spen/SPenSettingsMenu$11;

    invoke-direct {v8, p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu$11;-><init>(Lcom/samsung/android/settings/spen/SPenSettingsMenu;)V

    const v9, 0x7f121c56

    invoke-virtual {v7, v9, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    new-instance v8, Lcom/samsung/android/settings/spen/SPenSettingsMenu$12;

    invoke-direct {v8, p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu$12;-><init>(Lcom/samsung/android/settings/spen/SPenSettingsMenu;)V

    const/high16 v9, 0x1040000

    invoke-virtual {v7, v9, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    iget-object v7, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    iget-object v7, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    new-instance v8, Lcom/samsung/android/settings/spen/SPenSettingsMenu$13;

    invoke-direct {v8, p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu$13;-><init>(Lcom/samsung/android/settings/spen/SPenSettingsMenu;)V

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method private updateEnableState()V
    .registers 18

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string/jumbo v14, "finger_magnifier"

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_1dc

    const/4 v13, 0x1

    :goto_10
    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->magnifierWindowEnabled:Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/android/settings/Utils;->isStalkBackEnabled(Landroid/content/Context;)Z

    move-result v13

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->sTalkbackEnabled:Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/android/settings/Utils;->isGEDTalkBackEnabled(Landroid/content/Context;)Z

    move-result v13

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->talkbackEnabled:Z

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string/jumbo v14, "accessibility_display_magnification_enabled"

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_1df

    const/4 v13, 0x1

    :goto_3c
    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->magnificationGesturesEnabled:Z

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->magnifierWindowEnabled:Z

    if-nez v13, :cond_1e2

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->magnificationGesturesEnabled:Z

    xor-int/lit8 v13, v13, 0x1

    if-eqz v13, :cond_1e2

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->sTalkbackEnabled:Z

    xor-int/lit8 v13, v13, 0x1

    if-eqz v13, :cond_1e2

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->talkbackEnabled:Z

    xor-int/lit8 v13, v13, 0x1

    if-eqz v13, :cond_1e2

    const/4 v8, 0x1

    :goto_5f
    const-string/jumbo v13, "SPenSettingsMenu"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "isEnable() "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {v8}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " magnifierWindowEnabled :"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->magnifierWindowEnabled:Z

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "  magnificationGesturesEnabled: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->magnificationGesturesEnabled:Z

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v13, "SPenSettingsMenu"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "sTalkbackEnabled "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->sTalkbackEnabled:Z

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " talkbackEnabled :"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->talkbackEnabled:Z

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v13, "SPenSettingsMenu"

    const-string/jumbo v14, "updateEnableState() "

    invoke-static {v13, v14}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/settings/Utils;->isDesktopModeSupported()Z

    move-result v13

    if-eqz v13, :cond_1e5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v7

    :goto_df
    if-eqz v7, :cond_1e8

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mAppsAndFunctionsPref:Landroid/support/v7/preference/SecPreference;

    if-eqz v13, :cond_f0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mAppsAndFunctionsPref:Landroid/support/v7/preference/SecPreference;

    xor-int/lit8 v14, v7, 0x1

    invoke-virtual {v13, v14}, Landroid/support/v7/preference/SecPreference;->setEnabled(Z)V

    :cond_f0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mUseMinimizedSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    if-eqz v13, :cond_107

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mUseMinimizedSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    xor-int/lit8 v14, v7, 0x1

    invoke-virtual {v13, v14}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mUseMinimizedSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    :cond_107
    :goto_107
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenDetachOptionPref:Lcom/samsung/android/settings/spen/SpenDropDownPreference;

    if-eqz v13, :cond_27a

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const/4 v13, 0x3

    new-array v3, v13, [Ljava/lang/CharSequence;

    const/4 v13, 0x3

    new-array v5, v13, [Ljava/lang/CharSequence;

    const/4 v4, 0x0

    if-eqz v8, :cond_213

    const v13, 0x7f121448

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    aput-object v13, v3, v14

    const-string/jumbo v13, "2"

    const/4 v14, 0x0

    aput-object v13, v5, v14

    const/4 v4, 0x1

    const-string/jumbo v13, "SPenSettingsMenu"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "mPenDetachOptionPref.getItemClick() = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenDetachOptionPref:Lcom/samsung/android/settings/spen/SpenDropDownPreference;

    invoke-virtual {v15}, Lcom/samsung/android/settings/spen/SpenDropDownPreference;->getItemClick()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenDetachOptionPref:Lcom/samsung/android/settings/spen/SpenDropDownPreference;

    invoke-virtual {v13}, Lcom/samsung/android/settings/spen/SpenDropDownPreference;->getItemClick()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_170

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenDetachOptionPref:Lcom/samsung/android/settings/spen/SpenDropDownPreference;

    invoke-virtual {v13}, Lcom/samsung/android/settings/spen/SpenDropDownPreference;->getItemClick()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_170

    const/4 v1, 0x1

    :cond_170
    sget-boolean v13, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->aircommand_flag:Z

    if-eqz v13, :cond_194

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string/jumbo v14, "pen_detachment_option"

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    if-nez v13, :cond_194

    xor-int/lit8 v13, v1, 0x1

    if-eqz v13, :cond_194

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string/jumbo v14, "pen_detachment_option"

    const/4 v15, 0x2

    invoke-static {v13, v14, v15}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v13, 0x0

    sput-boolean v13, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->aircommand_flag:Z

    :cond_194
    :goto_194
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->isMemoSupported:Z

    if-eqz v13, :cond_232

    const v13, 0x7f121449

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    aput-object v13, v3, v14

    const-string/jumbo v13, "3"

    const/4 v14, 0x1

    aput-object v13, v5, v14

    add-int/lit8 v4, v4, 0x1

    :cond_1ac
    :goto_1ac
    const v13, 0x7f121444

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x2

    aput-object v13, v3, v14

    const-string/jumbo v13, "0"

    const/4 v14, 0x2

    aput-object v13, v5, v14

    add-int/lit8 v4, v4, 0x1

    new-array v9, v4, [Ljava/lang/CharSequence;

    new-array v10, v4, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const/4 v6, 0x0

    :goto_1c4
    array-length v13, v3

    if-ge v6, v13, :cond_251

    aget-object v13, v3, v6

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_1d9

    aget-object v13, v3, v6

    aput-object v13, v9, v2

    aget-object v13, v5, v6

    aput-object v13, v10, v2

    add-int/lit8 v2, v2, 0x1

    :cond_1d9
    add-int/lit8 v6, v6, 0x1

    goto :goto_1c4

    :cond_1dc
    const/4 v13, 0x0

    goto/16 :goto_10

    :cond_1df
    const/4 v13, 0x0

    goto/16 :goto_3c

    :cond_1e2
    const/4 v8, 0x0

    goto/16 :goto_5f

    :cond_1e5
    const/4 v7, 0x0

    goto/16 :goto_df

    :cond_1e8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mAppsAndFunctionsPref:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {v13, v8}, Landroid/support/v7/preference/SecPreference;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mUseMinimizedSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v13, v8}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mUseMinimizedSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string/jumbo v15, "air_cmd_use_minimized"

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v13, v15, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    if-eqz v13, :cond_211

    const/4 v13, 0x1

    :goto_20c
    invoke-virtual {v14, v13}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    goto/16 :goto_107

    :cond_211
    const/4 v13, 0x0

    goto :goto_20c

    :cond_213
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string/jumbo v14, "pen_detachment_option"

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    const/4 v14, 0x2

    if-ne v13, v14, :cond_194

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string/jumbo v14, "pen_detachment_option"

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v13, 0x1

    sput-boolean v13, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->aircommand_flag:Z

    goto/16 :goto_194

    :cond_232
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string/jumbo v14, "pen_detachment_option"

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    const/4 v13, 0x1

    if-eq v11, v13, :cond_244

    const/4 v13, 0x3

    if-ne v11, v13, :cond_1ac

    :cond_244
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string/jumbo v14, "pen_detachment_option"

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1ac

    :cond_251
    const-string/jumbo v13, "SPenSettingsMenu"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "entries.length = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    array-length v15, v3

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenDetachOptionPref:Lcom/samsung/android/settings/spen/SpenDropDownPreference;

    invoke-virtual {v13, v9}, Lcom/samsung/android/settings/spen/SpenDropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenDetachOptionPref:Lcom/samsung/android/settings/spen/SpenDropDownPreference;

    invoke-virtual {v13, v10}, Lcom/samsung/android/settings/spen/SpenDropDownPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    :cond_27a
    return-void
.end method

.method private updateState()V
    .registers 11

    const-wide/16 v8, 0x0

    const-string/jumbo v6, "SPenSettingsMenu"

    const-string/jumbo v7, "updateState() "

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "pen_detached_time"

    invoke-static {v6, v7, v8, v9}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v6

    if-eqz v6, :cond_8c

    const v6, 0x7f1210de

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_29
    cmp-long v6, v0, v8

    if-lez v6, :cond_94

    iget-object v6, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " \u200e "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v8

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    const v7, 0x7f121a42

    invoke-virtual {v4, v7, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v6, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mLossPreventionAlertSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/support/v14/preference/SecSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_8b
    return-void

    :cond_8c
    const v6, 0x7f1210dd

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_29

    :cond_94
    iget-object v6, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mLossPreventionAlertSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v6, v3}, Landroid/support/v14/preference/SecSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_8b
.end method


# virtual methods
.method public getMetricsCategory()I
    .registers 2

    const/16 v0, 0x12de

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 6

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    const-string/jumbo v0, "SPenSettingsMenu"

    const-string/jumbo v1, "onActivityResult()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_21

    if-eqz p3, :cond_21

    const-string/jumbo v0, "shortcut_list"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mShortcutList:Ljava/lang/String;

    invoke-direct {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->appsCountSummaryUpdate()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->bUpdated:Z

    :cond_21
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 11

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string/jumbo v5, "SPenSettingsMenu"

    const-string/jumbo v6, "onCreate() "

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Runtime;->gc()V

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f1500ab

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->addPreferencesFromResource(I)V

    const-string/jumbo v5, "key_air_button"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/support/v7/preference/SecPreference;

    iput-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mAirCommandPref:Landroid/support/v7/preference/SecPreference;

    const-string/jumbo v5, "pen_air_view"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/android/settings/SecSettingsSwitchPreference;

    iput-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenAirViewPref:Lcom/android/settings/SecSettingsSwitchPreference;

    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenAirViewPref:Lcom/android/settings/SecSettingsSwitchPreference;

    if-eqz v5, :cond_4f

    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenAirViewPref:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v5, v8}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenAirViewPref:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v5, p0}, Lcom/android/settings/SecSettingsSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    :cond_4f
    const-string/jumbo v5, "key_writing_buddy"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/android/settings/SecSettingsSwitchPreference;

    iput-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mDirectPenInputPref:Lcom/android/settings/SecSettingsSwitchPreference;

    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mDirectPenInputPref:Lcom/android/settings/SecSettingsSwitchPreference;

    if-eqz v5, :cond_68

    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mDirectPenInputPref:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v5, v8}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mDirectPenInputPref:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v5, p0}, Lcom/android/settings/SecSettingsSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    :cond_68
    const-string/jumbo v5, "key_spen_pointer_switch"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/support/v14/preference/SecSwitchPreference;

    iput-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mSpenPointerSwtichPref:Landroid/support/v14/preference/SecSwitchPreference;

    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mSpenPointerSwtichPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v5, v7}, Landroid/support/v14/preference/SecSwitchPreference;->setPersistent(Z)V

    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mSpenPointerSwtichPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v5, p0}, Landroid/support/v14/preference/SecSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    const-string/jumbo v5, "loss_prevention_alert"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/support/v14/preference/SecSwitchPreference;

    iput-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mLossPreventionAlertSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mLossPreventionAlertSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v5, v7}, Landroid/support/v14/preference/SecSwitchPreference;->setPersistent(Z)V

    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mLossPreventionAlertSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v5, p0}, Landroid/support/v14/preference/SecSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    const-string/jumbo v5, "action_memo_on_off_screen"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/support/v14/preference/SecSwitchPreference;

    iput-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mActionMemoOnOffScreenSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mActionMemoOnOffScreenSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v5, v7}, Landroid/support/v14/preference/SecSwitchPreference;->setPersistent(Z)V

    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mActionMemoOnOffScreenSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v5, p0}, Landroid/support/v14/preference/SecSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    const-string/jumbo v5, "screen_off_note"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/support/v14/preference/SecSwitchPreference;

    iput-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mScreenoffNoteSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mScreenoffNoteSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v5, v7}, Landroid/support/v14/preference/SecSwitchPreference;->setPersistent(Z)V

    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mScreenoffNoteSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v5, p0}, Landroid/support/v14/preference/SecSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    const-string/jumbo v5, "battery_saving"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/support/v14/preference/SecSwitchPreference;

    iput-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mDisablePenDetectionSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mDisablePenDetectionSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v5, v7}, Landroid/support/v14/preference/SecSwitchPreference;->setPersistent(Z)V

    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mDisablePenDetectionSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v5, p0}, Landroid/support/v14/preference/SecSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    const-string/jumbo v5, "key_spen_screen_on"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/support/v14/preference/SecSwitchPreference;

    iput-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenScreenOnPref:Landroid/support/v14/preference/SecSwitchPreference;

    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenScreenOnPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v5, v7}, Landroid/support/v14/preference/SecSwitchPreference;->setPersistent(Z)V

    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenScreenOnPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v5, p0}, Landroid/support/v14/preference/SecSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    const-string/jumbo v5, "key_additional_feedback_pen_sound"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/support/v14/preference/SecSwitchPreference;

    iput-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenFeedbackSoundSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenFeedbackSoundSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v5, v7}, Landroid/support/v14/preference/SecSwitchPreference;->setPersistent(Z)V

    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenFeedbackSoundSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v5, p0}, Landroid/support/v14/preference/SecSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    const-string/jumbo v5, "key_additional_feedback_pen_haptic"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/support/v14/preference/SecSwitchPreference;

    iput-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenFeedbackHapticSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenFeedbackHapticSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v5, v7}, Landroid/support/v14/preference/SecSwitchPreference;->setPersistent(Z)V

    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenFeedbackHapticSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v5, p0}, Landroid/support/v14/preference/SecSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    const-string/jumbo v5, "pen_detachment_option_list"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/settings/spen/SpenDropDownPreference;

    iput-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenDetachOptionPref:Lcom/samsung/android/settings/spen/SpenDropDownPreference;

    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenDetachOptionPref:Lcom/samsung/android/settings/spen/SpenDropDownPreference;

    if-eqz v5, :cond_129

    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenDetachOptionPref:Lcom/samsung/android/settings/spen/SpenDropDownPreference;

    invoke-virtual {v5, p0}, Lcom/samsung/android/settings/spen/SpenDropDownPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenDetachOptionPref:Lcom/samsung/android/settings/spen/SpenDropDownPreference;

    invoke-virtual {v5, v8}, Lcom/samsung/android/settings/spen/SpenDropDownPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_129
    const-string/jumbo v5, "key_air_cmd_apps_and_functions"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/support/v7/preference/SecPreference;

    iput-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mAppsAndFunctionsPref:Landroid/support/v7/preference/SecPreference;

    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mAppsAndFunctionsPref:Landroid/support/v7/preference/SecPreference;

    if-eqz v5, :cond_13d

    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mAppsAndFunctionsPref:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {v5, v8}, Landroid/support/v7/preference/SecPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_13d
    const-string/jumbo v5, "key_air_cmd_use_minimized"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/support/v14/preference/SecSwitchPreference;

    iput-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mUseMinimizedSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mUseMinimizedSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v5, p0}, Landroid/support/v14/preference/SecSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    const-string/jumbo v5, "about_spen_features"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/support/v7/preference/SecPreferenceScreen;

    iput-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mAboutSpen:Landroid/support/v7/preference/SecPreferenceScreen;

    const-string/jumbo v5, "learn_about_spen_features"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/support/v7/preference/SecPreferenceScreen;

    iput-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mLearnAboutSpen:Landroid/support/v7/preference/SecPreferenceScreen;

    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "com.sec.android.app.SPenKeeper"

    invoke-static {v5, v6}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_177

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mLossPreventionAlertSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v5, v6}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_177
    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settings/Utils;->hasHaptic(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_189

    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settings/Utils;->isEnableIntensity(Landroid/content/Context;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_197

    :cond_189
    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v5

    const-string/jumbo v6, "key_additional_feedback_pen_haptic"

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_197
    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->isNotesEnabled(Landroid/content/Context;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->isMemoSupported:Z

    iget-boolean v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->isMemoSupported:Z

    if-nez v5, :cond_1ac

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mScreenoffNoteSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v5, v6}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_1ac
    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mActionMemoOnOffScreenSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v5, v6}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    const-string/jumbo v5, "ro.product.name"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "grace"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1ce

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenScreenOnPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v5, v6}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_1ce
    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settings/Utils;->isSupportContactUs(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_1dc

    const-string/jumbo v5, "spen_contact_us"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->removePreference(Ljava/lang/String;)V

    :cond_1dc
    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    if-eqz v2, :cond_226

    const-string/jumbo v5, "com.sec.feature.spen_usp"

    invoke-virtual {v2, v5}, Landroid/content/pm/PackageManager;->semGetSystemFeatureLevel(Ljava/lang/String;)I

    move-result v0

    rem-int/lit8 v5, v0, 0xa

    const/4 v6, 0x5

    if-ne v5, v6, :cond_226

    const-string/jumbo v5, "pen_detachment_category"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v5, "pen_detachment_option_list"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v5, "loss_prevention_alert"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v5, "battery_saving"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v5, "key_additional_feedback_pen_haptic"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->removePreference(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenFeedbackSoundSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    const v6, 0x7f12144d

    invoke-virtual {v5, v6}, Landroid/support/v14/preference/SecSwitchPreference;->setSummary(I)V

    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mScreenoffNoteSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    const v6, 0x7f12176a

    invoke-virtual {v5, v6}, Landroid/support/v14/preference/SecSwitchPreference;->setSummary(I)V

    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mUseMinimizedSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    const v6, 0x7f120120

    invoke-virtual {v5, v6}, Landroid/support/v14/preference/SecSwitchPreference;->setSummary(I)V

    :cond_226
    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "com.samsung.android.app.spenhub"

    invoke-static {v5, v6}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_237

    const-string/jumbo v5, "about_spen_features"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->removePreference(Ljava/lang/String;)V

    :cond_237
    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "com.samsung.android.service.aircommand"

    invoke-static {v5, v6}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_254

    const-string/jumbo v5, "key_air_cmd_apps_and_functions"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v5, "key_air_cmd_use_minimized"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v5, "pen_air_cmd_settings_menu"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->removePreference(Ljava/lang/String;)V

    :cond_254
    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "com.samsung.android.service.aircommand"

    invoke-static {v5, v6}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_269

    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settings/Utils;->getSPenUSPLevel(Landroid/content/Context;)I

    move-result v5

    const/16 v6, 0xa

    if-gt v5, v6, :cond_26f

    :cond_269
    const-string/jumbo v5, "learn_about_spen_features"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->removePreference(Ljava/lang/String;)V

    :cond_26f
    return-void
.end method

.method public onPause()V
    .registers 3

    const-string/jumbo v0, "SPenSettingsMenu"

    const-string/jumbo v1, "onPause() "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mVoiceAssistanceObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mMagnifierGestureObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mMagnifierObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenDetachObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mDirectPenObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mAirViewObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .registers 16

    const v9, 0x7f121b7d

    const/16 v5, 0x3e8

    const v8, 0x7f121b7e

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v10, "key_writing_buddy"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_114

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0b04a2

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v11

    if-eqz v4, :cond_81

    :goto_32
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v10, v11, v5}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    if-eqz v4, :cond_98

    const/4 v0, 0x0

    const/4 v2, 0x0

    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string/jumbo v10, "com.sec.feature.overlaymagnifier"

    invoke-virtual {v5, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_68

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v10, "accessibility_magnifier"

    invoke-static {v5, v10, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v7, :cond_83

    const/4 v0, 0x1

    :goto_5a
    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v10, "finger_magnifier"

    invoke-static {v5, v10, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v7, :cond_85

    const/4 v2, 0x1

    :cond_68
    :goto_68
    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_7d

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v10, "accessibility_display_magnification_enabled"

    invoke-static {v5, v10, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v7, :cond_87

    :cond_7d
    invoke-direct {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->showDirectPenInputTalkBackDisableDialog()V

    return v7

    :cond_81
    move v5, v6

    goto :goto_32

    :cond_83
    const/4 v0, 0x0

    goto :goto_5a

    :cond_85
    const/4 v2, 0x0

    goto :goto_68

    :cond_87
    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v10, "accessibility_display_magnification_navbar_enabled"

    invoke-static {v5, v10, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eq v5, v7, :cond_7d

    if-nez v0, :cond_7d

    if-nez v2, :cond_7d

    :cond_98
    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "pen_writing_buddy"

    if-eqz v4, :cond_f7

    move v5, v7

    :goto_a2
    invoke-static {v10, v11, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v5

    if-eqz v5, :cond_ff

    iget-object v9, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mDirectPenInputPref:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v10, "pen_writing_buddy"

    invoke-static {v5, v10, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_f9

    move v5, v8

    :goto_bb
    invoke-virtual {v9, v5}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    iget-object v8, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mDirectPenInputPref:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v9, "pen_writing_buddy"

    invoke-static {v5, v9, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_fd

    move v5, v7

    :goto_ce
    invoke-virtual {v8, v5}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    :goto_d1
    const-string/jumbo v5, "SPenSettingsMenu"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "direct pen input : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "pen_writing_buddy"

    invoke-static {v9, v10, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_f7
    move v5, v6

    goto :goto_a2

    :cond_f9
    const v5, 0x7f121453

    goto :goto_bb

    :cond_fd
    move v5, v6

    goto :goto_ce

    :cond_ff
    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mDirectPenInputPref:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "pen_writing_buddy"

    invoke-static {v10, v11, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-eqz v10, :cond_112

    :goto_10e
    invoke-virtual {v5, v8}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto :goto_d1

    :cond_112
    move v8, v9

    goto :goto_10e

    :cond_114
    const-string/jumbo v10, "pen_air_view"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_207

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iget-object v10, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0b049e

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v11

    if-eqz v4, :cond_181

    :goto_132
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v10, v11, v5}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    if-eqz v4, :cond_198

    const/4 v0, 0x0

    const/4 v2, 0x0

    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string/jumbo v10, "com.sec.feature.overlaymagnifier"

    invoke-virtual {v5, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_168

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v10, "accessibility_magnifier"

    invoke-static {v5, v10, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v7, :cond_183

    const/4 v0, 0x1

    :goto_15a
    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v10, "finger_magnifier"

    invoke-static {v5, v10, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v7, :cond_185

    const/4 v2, 0x1

    :cond_168
    :goto_168
    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_17d

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v10, "accessibility_display_magnification_enabled"

    invoke-static {v5, v10, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v7, :cond_187

    :cond_17d
    invoke-direct {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->showAirViewTalkBackDisableDialog()V

    return v7

    :cond_181
    move v5, v6

    goto :goto_132

    :cond_183
    const/4 v0, 0x0

    goto :goto_15a

    :cond_185
    const/4 v2, 0x0

    goto :goto_168

    :cond_187
    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v10, "accessibility_display_magnification_navbar_enabled"

    invoke-static {v5, v10, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eq v5, v7, :cond_17d

    if-nez v0, :cond_17d

    if-nez v2, :cond_17d

    :cond_198
    invoke-direct {p0, v4}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->setAirviewDB(Z)V

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v5

    if-eqz v5, :cond_1f2

    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenAirViewPref:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "pen_hovering"

    invoke-static {v9, v10, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_1ec

    :goto_1b0
    invoke-virtual {v5, v8}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    iget-object v8, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenAirViewPref:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v9, "pen_hovering"

    invoke-static {v5, v9, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_1f0

    move v5, v7

    :goto_1c3
    invoke-virtual {v8, v5}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    :goto_1c6
    const-string/jumbo v5, "SPenSettingsMenu"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "air view : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "pen_hovering"

    invoke-static {v9, v10, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_1ec
    const v8, 0x7f121440

    goto :goto_1b0

    :cond_1f0
    move v5, v6

    goto :goto_1c3

    :cond_1f2
    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenAirViewPref:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "pen_hovering"

    invoke-static {v10, v11, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-eqz v10, :cond_205

    :goto_201
    invoke-virtual {v5, v8}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto :goto_1c6

    :cond_205
    move v8, v9

    goto :goto_201

    :cond_207
    const-string/jumbo v8, "battery_saving"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_253

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "pen_detect_mode_disabled"

    if-eqz v4, :cond_24f

    move v5, v7

    :goto_220
    invoke-static {v8, v9, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-eqz v4, :cond_251

    move v5, v7

    :goto_226
    invoke-static {v5}, Lcom/samsung/android/hardware/SemHardwareInterface;->setEPenSavingmode(I)Z

    const-string/jumbo v5, "SPenSettingsMenu"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "battery saving : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "pen_detect_mode_disabled"

    invoke-static {v9, v10, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_24f
    move v5, v6

    goto :goto_220

    :cond_251
    move v5, v6

    goto :goto_226

    :cond_253
    const-string/jumbo v8, "key_spen_pointer_switch"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_297

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "pen_hovering_pointer"

    if-eqz v4, :cond_295

    move v5, v7

    :goto_26c
    invoke-static {v8, v9, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v5, "SPenSettingsMenu"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Pointer : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "pen_hovering_pointer"

    invoke-static {v9, v10, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_295
    move v5, v6

    goto :goto_26c

    :cond_297
    const-string/jumbo v8, "loss_prevention_alert"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2de

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "pen_detachment_alert"

    if-eqz v4, :cond_2dc

    move v5, v7

    :goto_2b0
    invoke-static {v8, v9, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-direct {p0, v4}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->sendLossPreventionAlert(Z)V

    const-string/jumbo v5, "SPenSettingsMenu"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Loss prevention alert : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "pen_detachment_alert"

    invoke-static {v9, v10, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_2dc
    move v5, v6

    goto :goto_2b0

    :cond_2de
    const-string/jumbo v8, "action_memo_on_off_screen"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_322

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "action_memo_on_off_screen"

    if-eqz v4, :cond_320

    move v5, v7

    :goto_2f7
    invoke-static {v8, v9, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v5, "SPenSettingsMenu"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Screen off memo : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "action_memo_on_off_screen"

    invoke-static {v9, v10, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_320
    move v5, v6

    goto :goto_2f7

    :cond_322
    const-string/jumbo v8, "screen_off_note"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_366

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "screen_off_memo"

    if-eqz v4, :cond_364

    move v5, v7

    :goto_33b
    invoke-static {v8, v9, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v5, "SPenSettingsMenu"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Screen off note : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "screen_off_memo"

    invoke-static {v9, v10, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_364
    move v5, v6

    goto :goto_33b

    :cond_366
    const-string/jumbo v8, "key_spen_screen_on"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3aa

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "spen_screen_on"

    if-eqz v4, :cond_3a8

    move v5, v7

    :goto_37f
    invoke-static {v8, v9, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v5, "SPenSettingsMenu"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "SPen screen on : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "spen_screen_on"

    invoke-static {v9, v10, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_3a8
    move v5, v6

    goto :goto_37f

    :cond_3aa
    const-string/jumbo v8, "key_additional_feedback_pen_sound"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_400

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "spen_feedback_sound"

    if-eqz v4, :cond_3fb

    move v5, v7

    :goto_3c3
    invoke-static {v8, v9, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "pen_detachment_notification"

    if-eqz v4, :cond_3fd

    const-string/jumbo v5, "/system/media/audio/ui/Pen_att_noti1.ogg,/system/media/audio/ui/Pen_det_noti1.ogg"

    :goto_3d2
    invoke-static {v8, v9, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string/jumbo v5, "SPenSettingsMenu"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "pen additional feedback sound : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "spen_feedback_sound"

    invoke-static {v9, v10, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_3fb
    move v5, v6

    goto :goto_3c3

    :cond_3fd
    sget-object v5, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->PEN_NOTIFICATION_OFF:Ljava/lang/String;

    goto :goto_3d2

    :cond_400
    const-string/jumbo v8, "key_additional_feedback_pen_haptic"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_453

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "spen_feedback_haptic"

    if-eqz v4, :cond_44f

    move v5, v7

    :goto_419
    invoke-static {v8, v9, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "pen_attach_detach_vibration"

    if-eqz v4, :cond_451

    move v5, v7

    :goto_426
    invoke-static {v8, v9, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v5, "SPenSettingsMenu"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "pen additional feedback haptic : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "spen_feedback_haptic"

    invoke-static {v9, v10, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_44f
    move v5, v6

    goto :goto_419

    :cond_451
    move v5, v6

    goto :goto_426

    :cond_453
    const-string/jumbo v8, "pen_detachment_option_list"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_47d

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "pen_detachment_option"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f0b04a0

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    invoke-static {v5, v6}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    return v7

    :cond_47d
    const-string/jumbo v8, "key_air_cmd_use_minimized"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4b4

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "air_cmd_use_minimized"

    if-eqz v4, :cond_4b0

    move v8, v7

    :goto_496
    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v8, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0b049b

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    if-eqz v4, :cond_4b2

    :goto_4a8
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v8, v9, v5}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    return v7

    :cond_4b0
    move v8, v6

    goto :goto_496

    :cond_4b2
    move v5, v6

    goto :goto_4a8

    :cond_4b4
    return v7
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .registers 10

    const v7, 0x7f0b04a6

    const/16 v3, 0x3e8

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v5, "key_air_button"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_23

    iget-object v3, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "com.android.settings"

    const-string/jumbo v5, "SEAC"

    invoke-static {v3, v4, v5}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1e
    :goto_1e
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v3

    return v3

    :cond_23
    const-string/jumbo v5, "battery_saving"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4b

    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b04a8

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    iget-object v7, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mDisablePenDetectionSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v7}, Landroid/support/v14/preference/SecSwitchPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_49

    :goto_41
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v5, v6, v3}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    goto :goto_1e

    :cond_49
    move v3, v4

    goto :goto_41

    :cond_4b
    const-string/jumbo v5, "key_spen_pointer_switch"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_73

    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b04a5

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    iget-object v7, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mSpenPointerSwtichPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v7}, Landroid/support/v14/preference/SecSwitchPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_71

    :goto_69
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v5, v6, v3}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    goto :goto_1e

    :cond_71
    move v3, v4

    goto :goto_69

    :cond_73
    const-string/jumbo v5, "loss_prevention_alert"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9b

    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b04a7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    iget-object v7, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mLossPreventionAlertSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v7}, Landroid/support/v14/preference/SecSwitchPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_99

    :goto_91
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v5, v6, v3}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    goto :goto_1e

    :cond_99
    move v3, v4

    goto :goto_91

    :cond_9b
    const-string/jumbo v5, "action_memo_on_off_screen"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c1

    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    iget-object v7, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mActionMemoOnOffScreenSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v7}, Landroid/support/v14/preference/SecSwitchPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_bf

    :goto_b6
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v5, v6, v3}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    goto/16 :goto_1e

    :cond_bf
    move v3, v4

    goto :goto_b6

    :cond_c1
    const-string/jumbo v5, "screen_off_note"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e7

    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    iget-object v7, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mScreenoffNoteSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v7}, Landroid/support/v14/preference/SecSwitchPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_e5

    :goto_dc
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v5, v6, v3}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    goto/16 :goto_1e

    :cond_e5
    move v3, v4

    goto :goto_dc

    :cond_e7
    const-string/jumbo v5, "key_additional_feedback_pen_sound"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_110

    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b04a9

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    iget-object v7, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenFeedbackSoundSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v7}, Landroid/support/v14/preference/SecSwitchPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_10e

    :goto_105
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v5, v6, v3}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    goto/16 :goto_1e

    :cond_10e
    move v3, v4

    goto :goto_105

    :cond_110
    const-string/jumbo v5, "key_additional_feedback_pen_haptic"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_139

    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b04aa

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    iget-object v7, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenFeedbackHapticSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v7}, Landroid/support/v14/preference/SecSwitchPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_137

    :goto_12e
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v5, v6, v3}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    goto/16 :goto_1e

    :cond_137
    move v3, v4

    goto :goto_12e

    :cond_139
    const-string/jumbo v3, "spen_contact_us"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_174

    iget-object v3, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b049f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    const v3, 0x7f12145a

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->ContactUs_appName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->ContactUs_packageName:Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->ContactUs_appName:Ljava/lang/String;

    iget-object v6, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->ContactUs_appId:Ljava/lang/String;

    invoke-static {v3, v4, v5, v6}, Lcom/android/settings/Utils;->getContactUsIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    :try_start_169
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->startActivity(Landroid/content/Intent;)V
    :try_end_16c
    .catch Landroid/content/ActivityNotFoundException; {:try_start_169 .. :try_end_16c} :catch_16e

    goto/16 :goto_1e

    :catch_16e
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto/16 :goto_1e

    :cond_174
    iget-object v3, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mAppsAndFunctionsPref:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {p1, v3}, Landroid/support/v7/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a7

    iget-object v3, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b049c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    :try_start_18c
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v3, "com.samsung.android.service.aircommand.action.Settings"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->startActivity(Landroid/content/Intent;)V
    :try_end_19f
    .catch Landroid/content/ActivityNotFoundException; {:try_start_18c .. :try_end_19f} :catch_1a1

    goto/16 :goto_1e

    :catch_1a1
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto/16 :goto_1e

    :cond_1a7
    const-string/jumbo v3, "about_spen_features"

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e3

    iget-object v3, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0499

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v4, "com.samsung.android.app.spenhub"

    const-string/jumbo v5, "com.samsung.android.app.spenhub.ui.SpenhubActivity"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v3, 0x80000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_1d8
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->startActivity(Landroid/content/Intent;)V
    :try_end_1db
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1d8 .. :try_end_1db} :catch_1dd

    goto/16 :goto_1e

    :catch_1dd
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto/16 :goto_1e

    :cond_1e3
    const-string/jumbo v3, "learn_about_spen_features"

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    iget-object v3, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b04a4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    new-instance v4, Landroid/content/ComponentName;

    const-string/jumbo v5, "com.samsung.android.service.aircommand"

    const-string/jumbo v6, "com.samsung.android.service.aircommand.settings.SettingsTutorialActivity"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    :try_start_214
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->startActivity(Landroid/content/Intent;)V
    :try_end_217
    .catch Landroid/content/ActivityNotFoundException; {:try_start_214 .. :try_end_217} :catch_219

    goto/16 :goto_1e

    :catch_219
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto/16 :goto_1e
.end method

.method public onResume()V
    .registers 14

    const-string/jumbo v9, "SPenSettingsMenu"

    const-string/jumbo v10, "onResume() "

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getCallingPackage()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v9, "com.samsung.android.service.aircommand"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2a

    const-string/jumbo v9, "pen_detachment_option_list"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->setHighlightPreferenceKey(Ljava/lang/String;)V

    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->setPreferenceHighlighted(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->highlightPreferenceIfNeeded()V

    :cond_2a
    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "pen_hovering"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    const/4 v9, 0x1

    if-ne v4, v9, :cond_48

    iget-boolean v9, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->magnifierWindowEnabled:Z

    if-eqz v9, :cond_48

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "pen_hovering"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_48
    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "air_cmd_apps_and_functions"

    invoke-static {v9, v10}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mShortcutList:Ljava/lang/String;

    iget-object v9, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mShortcutList:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_280

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    const-string/jumbo v10, "from"

    invoke-virtual {v9, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v9, "aircommand"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_272

    iget-boolean v9, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->IntentUpdated:Z

    xor-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_272

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    const-string/jumbo v10, "shortcut_list"

    invoke-virtual {v9, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mShortcutList:Ljava/lang/String;

    invoke-direct {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->appsCountSummaryUpdate()V

    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->IntentUpdated:Z

    :goto_96
    invoke-direct {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->updateEnableState()V

    invoke-direct {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->updateState()V

    invoke-static {}, Lcom/android/settings/Utils;->isDesktopModeSupported()Z

    move-result v9

    if-eqz v9, :cond_285

    iget-object v9, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v5

    :goto_a8
    if-eqz v5, :cond_288

    iget-object v9, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mSpenPointerSwtichPref:Landroid/support/v14/preference/SecSwitchPreference;

    if-eqz v9, :cond_bb

    iget-object v9, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mSpenPointerSwtichPref:Landroid/support/v14/preference/SecSwitchPreference;

    xor-int/lit8 v10, v5, 0x1

    invoke-virtual {v9, v10}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    iget-object v9, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mSpenPointerSwtichPref:Landroid/support/v14/preference/SecSwitchPreference;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    :cond_bb
    iget-object v9, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mScreenoffNoteSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    if-eqz v9, :cond_cc

    iget-object v9, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mScreenoffNoteSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    xor-int/lit8 v10, v5, 0x1

    invoke-virtual {v9, v10}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    iget-object v9, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mScreenoffNoteSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    :cond_cc
    iget-object v9, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mActionMemoOnOffScreenSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    if-eqz v9, :cond_dd

    iget-object v9, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mActionMemoOnOffScreenSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    xor-int/lit8 v10, v5, 0x1

    invoke-virtual {v9, v10}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    iget-object v9, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mActionMemoOnOffScreenSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    :cond_dd
    iget-object v9, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenDetachOptionPref:Lcom/samsung/android/settings/spen/SpenDropDownPreference;

    if-eqz v9, :cond_f6

    iget-object v9, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenDetachOptionPref:Lcom/samsung/android/settings/spen/SpenDropDownPreference;

    xor-int/lit8 v10, v5, 0x1

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/spen/SpenDropDownPreference;->setEnabled(Z)V

    iget-object v9, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenDetachOptionPref:Lcom/samsung/android/settings/spen/SpenDropDownPreference;

    iget-object v10, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenDetachOptionPref:Lcom/samsung/android/settings/spen/SpenDropDownPreference;

    invoke-virtual {v10}, Lcom/samsung/android/settings/spen/SpenDropDownPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v10

    array-length v10, v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/spen/SpenDropDownPreference;->setValueIndex(I)V

    :cond_f6
    iget-object v10, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mDisablePenDetectionSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v11, "pen_detect_mode_disabled"

    const/4 v12, 0x1

    invoke-static {v9, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_2f8

    const/4 v9, 0x1

    :goto_107
    invoke-virtual {v10, v9}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    iget-object v10, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenScreenOnPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v11, "spen_screen_on"

    const/4 v12, 0x0

    invoke-static {v9, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_2fb

    const/4 v9, 0x1

    :goto_11b
    invoke-virtual {v10, v9}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "pen_writing_buddy"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_2fe

    const/4 v8, 0x1

    :goto_12d
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v9

    const-string/jumbo v10, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_NFC_HW_KEYBOARD"

    invoke-virtual {v9, v10}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_14d

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget v9, v9, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_301

    iget-object v9, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mDirectPenInputPref:Lcom/android/settings/SecSettingsSwitchPreference;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/settings/SecSettingsSwitchPreference;->setEnabled(Z)V

    :cond_14d
    :goto_14d
    iget-object v10, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mLossPreventionAlertSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v11, "pen_detachment_alert"

    const/4 v12, 0x1

    invoke-static {v9, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_309

    const/4 v9, 0x1

    :goto_15e
    invoke-virtual {v10, v9}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    iget-object v10, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenFeedbackSoundSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v11, "spen_feedback_sound"

    const/4 v12, 0x1

    invoke-static {v9, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_30c

    const/4 v9, 0x1

    :goto_172
    invoke-virtual {v10, v9}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    iget-object v10, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenFeedbackHapticSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v11, "spen_feedback_haptic"

    const/4 v12, 0x1

    invoke-static {v9, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_30f

    const/4 v9, 0x1

    :goto_186
    invoke-virtual {v10, v9}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    iget-object v9, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    const-string/jumbo v10, "content://com.sec.knox.provider2/KioskMode"

    const-string/jumbo v11, "isAirViewModeAllowed"

    invoke-static {v9, v10, v11}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_312

    iget-object v9, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenAirViewPref:Lcom/android/settings/SecSettingsSwitchPreference;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/settings/SecSettingsSwitchPreference;->setEnabled(Z)V

    :goto_19d
    iget-object v10, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenAirViewPref:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v11, "pen_hovering"

    const/4 v12, 0x0

    invoke-static {v9, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_31a

    const/4 v9, 0x1

    :goto_1ae
    invoke-virtual {v10, v9}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v9

    if-eqz v9, :cond_325

    iget-object v10, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenAirViewPref:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v11, "pen_hovering"

    const/4 v12, 0x0

    invoke-static {v9, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_31d

    const v9, 0x7f121b7e

    :goto_1ca
    invoke-virtual {v10, v9}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    iget-object v10, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenAirViewPref:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v11, "pen_hovering"

    const/4 v12, 0x0

    invoke-static {v9, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_322

    const/4 v9, 0x1

    :goto_1de
    invoke-virtual {v10, v9}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    :goto_1e1
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget v9, v9, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_341

    const/4 v1, 0x0

    iget-object v9, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mDirectPenInputPref:Lcom/android/settings/SecSettingsSwitchPreference;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    :goto_1f6
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v9

    if-eqz v9, :cond_35e

    iget-object v10, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mDirectPenInputPref:Lcom/android/settings/SecSettingsSwitchPreference;

    if-eqz v1, :cond_359

    const v9, 0x7f121b7e

    :goto_203
    invoke-virtual {v10, v9}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    iget-object v9, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mDirectPenInputPref:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v9, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    :goto_20b
    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "enabled_accessibility_services"

    invoke-static {v10}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mVoiceAssistanceObserver:Landroid/database/ContentObserver;

    const/4 v12, 0x1

    invoke-virtual {v9, v10, v12, v11}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "accessibility_display_magnification_enabled"

    invoke-static {v10}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mMagnifierGestureObserver:Landroid/database/ContentObserver;

    const/4 v12, 0x1

    invoke-virtual {v9, v10, v12, v11}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "finger_magnifier"

    invoke-static {v10}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mMagnifierObserver:Landroid/database/ContentObserver;

    const/4 v12, 0x1

    invoke-virtual {v9, v10, v12, v11}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "pen_detached_time"

    invoke-static {v10}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenDetachObserver:Landroid/database/ContentObserver;

    const/4 v12, 0x1

    invoke-virtual {v9, v10, v12, v11}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "pen_writing_buddy"

    invoke-static {v10}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mDirectPenObserver:Landroid/database/ContentObserver;

    const/4 v12, 0x1

    invoke-virtual {v9, v10, v12, v11}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "pen_hovering"

    invoke-static {v10}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mAirViewObserver:Landroid/database/ContentObserver;

    const/4 v12, 0x1

    invoke-virtual {v9, v10, v12, v11}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void

    :cond_272
    iget-boolean v9, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->bUpdated:Z

    if-nez v9, :cond_27b

    invoke-direct {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getShortCutList()V

    goto/16 :goto_96

    :cond_27b
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->bUpdated:Z

    goto/16 :goto_96

    :cond_280
    invoke-direct {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->appsCountSummaryUpdate()V

    goto/16 :goto_96

    :cond_285
    const/4 v5, 0x0

    goto/16 :goto_a8

    :cond_288
    iget-object v10, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mSpenPointerSwtichPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v11, "pen_hovering_pointer"

    const/4 v12, 0x0

    invoke-static {v9, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_2f2

    const/4 v9, 0x1

    :goto_299
    invoke-virtual {v10, v9}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    iget-object v10, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mActionMemoOnOffScreenSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v11, "action_memo_on_off_screen"

    const/4 v12, 0x0

    invoke-static {v9, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_2f4

    const/4 v9, 0x1

    :goto_2ad
    invoke-virtual {v10, v9}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    iget-object v10, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mScreenoffNoteSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v11, "screen_off_memo"

    const/4 v12, 0x0

    invoke-static {v9, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_2f6

    const/4 v9, 0x1

    :goto_2c1
    invoke-virtual {v10, v9}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "pen_detachment_option"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    const/4 v3, 0x0

    :goto_2d1
    iget-object v9, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenDetachOptionPref:Lcom/samsung/android/settings/spen/SpenDropDownPreference;

    invoke-virtual {v9}, Lcom/samsung/android/settings/spen/SpenDropDownPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v9

    array-length v9, v9

    if-ge v3, v9, :cond_f6

    iget-object v9, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenDetachOptionPref:Lcom/samsung/android/settings/spen/SpenDropDownPreference;

    invoke-virtual {v9}, Lcom/samsung/android/settings/spen/SpenDropDownPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v9

    aget-object v9, v9, v3

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    if-ne v6, v9, :cond_2ef

    iget-object v9, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenDetachOptionPref:Lcom/samsung/android/settings/spen/SpenDropDownPreference;

    invoke-virtual {v9, v3}, Lcom/samsung/android/settings/spen/SpenDropDownPreference;->setValueIndex(I)V

    :cond_2ef
    add-int/lit8 v3, v3, 0x1

    goto :goto_2d1

    :cond_2f2
    const/4 v9, 0x0

    goto :goto_299

    :cond_2f4
    const/4 v9, 0x0

    goto :goto_2ad

    :cond_2f6
    const/4 v9, 0x0

    goto :goto_2c1

    :cond_2f8
    const/4 v9, 0x0

    goto/16 :goto_107

    :cond_2fb
    const/4 v9, 0x0

    goto/16 :goto_11b

    :cond_2fe
    const/4 v8, 0x0

    goto/16 :goto_12d

    :cond_301
    iget-object v9, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mDirectPenInputPref:Lcom/android/settings/SecSettingsSwitchPreference;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/android/settings/SecSettingsSwitchPreference;->setEnabled(Z)V

    goto/16 :goto_14d

    :cond_309
    const/4 v9, 0x0

    goto/16 :goto_15e

    :cond_30c
    const/4 v9, 0x0

    goto/16 :goto_172

    :cond_30f
    const/4 v9, 0x0

    goto/16 :goto_186

    :cond_312
    iget-object v9, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenAirViewPref:Lcom/android/settings/SecSettingsSwitchPreference;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/android/settings/SecSettingsSwitchPreference;->setEnabled(Z)V

    goto/16 :goto_19d

    :cond_31a
    const/4 v9, 0x0

    goto/16 :goto_1ae

    :cond_31d
    const v9, 0x7f121440

    goto/16 :goto_1ca

    :cond_322
    const/4 v9, 0x0

    goto/16 :goto_1de

    :cond_325
    iget-object v10, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenAirViewPref:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v11, "pen_hovering"

    const/4 v12, 0x0

    invoke-static {v9, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_33d

    const v9, 0x7f121b7e

    :goto_338
    invoke-virtual {v10, v9}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_1e1

    :cond_33d
    const v9, 0x7f121b7d

    goto :goto_338

    :cond_341
    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "pen_writing_buddy"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_357

    const/4 v1, 0x1

    :goto_350
    iget-object v9, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mDirectPenInputPref:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v9, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    goto/16 :goto_1f6

    :cond_357
    const/4 v1, 0x0

    goto :goto_350

    :cond_359
    const v9, 0x7f121453

    goto/16 :goto_203

    :cond_35e
    iget-object v10, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mDirectPenInputPref:Lcom/android/settings/SecSettingsSwitchPreference;

    if-eqz v1, :cond_36a

    const v9, 0x7f121b7e

    :goto_365
    invoke-virtual {v10, v9}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_20b

    :cond_36a
    const v9, 0x7f121b7d

    goto :goto_365
.end method
