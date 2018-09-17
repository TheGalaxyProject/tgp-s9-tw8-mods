.class public Lcom/android/settings/ApnEditor;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ApnEditor.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/ApnEditor$1;,
        Lcom/android/settings/ApnEditor$ApnSettingsObserver;,
        Lcom/android/settings/ApnEditor$ErrorDialog;
    }
.end annotation


# static fields
.field public static final MHENG:Z

.field public static final MHSDBG:Z

.field private static final TAG:Ljava/lang/String;

.field private static sNotSet:Ljava/lang/String;

.field private static final sProjection:[Ljava/lang/String;


# instance fields
.field private APN_TYPE_LIST:Ljava/lang/String;

.field private Key:Ljava/lang/String;

.field private SelectKey:Ljava/lang/String;

.field private dunRequired:Z

.field private imsRequired:Z

.field private isInserting:Z

.field private isNoWarning:Z

.field public isVzwHomeApnChanged:Z

.field private mAction:Ljava/lang/String;

.field private mAirplainModeEnabledObserver:Landroid/database/ContentObserver;

.field private mApn:Landroid/support/v7/preference/SecEditTextPreference;

.field private mApnSettingsObserver:Lcom/android/settings/ApnEditor$ApnSettingsObserver;

.field private mApnType:Landroid/support/v7/preference/SecEditTextPreference;

.field private mApnTypeStyle:Z

.field private mApnType_list:Landroid/support/v7/preference/SecListDialogPreference;

.field private mAuthType:Landroid/support/v7/preference/SecListDialogPreference;

.field private mBearerInitialVal:I

.field private mBearerMulti:Landroid/support/v14/preference/MultiSelectListPreference;

.field private mCarrierEnabled:Landroid/support/v14/preference/SwitchPreference;

.field private mCurMcc:Ljava/lang/String;

.field private mCurMnc:Ljava/lang/String;

.field private mCursor:Landroid/database/Cursor;

.field private mEditable:Z

.field private mFirstTime:Z

.field private mHasMdmEditedApn:Z

.field private mHasUserEditedApn:Z

.field private mIsSprDiableAll:Z

.field private mIsSprEditable:Z

.field private mIsVzwEditable:Z

.field private mMcc:Landroid/support/v7/preference/SecEditNumPreference;

.field private mMmsPort:Landroid/support/v7/preference/SecEditNumPreference;

.field private mMmsProxy:Landroid/support/v7/preference/SecEditTextPreference;

.field private mMmsc:Landroid/support/v7/preference/SecEditTextPreference;

.field private mMnc:Landroid/support/v7/preference/SecEditNumPreference;

.field private mMvnoMatchData:Landroid/support/v7/preference/SecEditTextPreference;

.field private mMvnoMatchDataStr:Ljava/lang/String;

.field private mMvnoType:Landroid/support/v7/preference/SecListDialogPreference;

.field private mMvnoTypeStr:Ljava/lang/String;

.field private mName:Landroid/support/v7/preference/SecEditTextPreference;

.field private mNewApn:Z

.field private mPassword:Landroid/support/v7/preference/SecEditTextPreference;

.field private mPort:Landroid/support/v7/preference/SecEditNumPreference;

.field private mPreApn:Z

.field private mProtocol:Landroid/support/v7/preference/SecListDialogPreference;

.field private mProxy:Landroid/support/v7/preference/SecEditTextPreference;

.field private mReadOnlyApn:Z

.field private mReadOnlyApnFields:[Ljava/lang/String;

.field private mReadOnlyApnTypes:[Ljava/lang/String;

.field private mRes:Landroid/content/res/Resources;

.field private mRoamingProtocol:Landroid/support/v7/preference/SecListDialogPreference;

.field private mServer:Landroid/support/v7/preference/SecEditTextPreference;

.field private mSimSlot:I

.field private mSubId:I

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mUri:Landroid/net/Uri;

.field private mUser:Landroid/support/v7/preference/SecEditTextPreference;


# direct methods
.method static synthetic -get0(Lcom/android/settings/ApnEditor;)Landroid/net/Uri;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/settings/ApnEditor;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/settings/ApnEditor;->mHasMdmEditedApn:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/settings/ApnEditor;)Ljava/lang/String;
    .registers 2

    invoke-direct {p0}, Lcom/android/settings/ApnEditor;->getErrorMsg()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 4

    const/4 v1, 0x1

    const-class v0, Lcom/android/settings/ApnEditor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "eng"

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_cb

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    :goto_18
    sput-boolean v0, Lcom/android/settings/ApnEditor;->MHSDBG:Z

    const-string/jumbo v0, "eng"

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/ApnEditor;->MHENG:Z

    const/16 v0, 0x18

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v2, "_id"

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const-string/jumbo v2, "name"

    aput-object v2, v0, v1

    const-string/jumbo v1, "apn"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "proxy"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "port"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "user"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "server"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "password"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "mmsc"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "mcc"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "mnc"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string/jumbo v1, "numeric"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string/jumbo v1, "mmsproxy"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string/jumbo v1, "mmsport"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string/jumbo v1, "authtype"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string/jumbo v1, "type"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const-string/jumbo v1, "protocol"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const-string/jumbo v1, "carrier_enabled"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    const-string/jumbo v1, "bearer"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    const-string/jumbo v1, "bearer_bitmask"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    const-string/jumbo v1, "roaming_protocol"

    const/16 v2, 0x14

    aput-object v1, v0, v2

    const-string/jumbo v1, "mvno_type"

    const/16 v2, 0x15

    aput-object v1, v0, v2

    const-string/jumbo v1, "mvno_match_data"

    const/16 v2, 0x16

    aput-object v1, v0, v2

    const-string/jumbo v1, "edited"

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/settings/ApnEditor;->sProjection:[Ljava/lang/String;

    return-void

    :cond_cb
    move v0, v1

    goto/16 :goto_18
.end method

.method public constructor <init>()V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    iput v0, p0, Lcom/android/settings/ApnEditor;->mBearerInitialVal:I

    iput-boolean v0, p0, Lcom/android/settings/ApnEditor;->isNoWarning:Z

    iput-boolean v0, p0, Lcom/android/settings/ApnEditor;->mPreApn:Z

    iput-boolean v0, p0, Lcom/android/settings/ApnEditor;->dunRequired:Z

    iput-boolean v0, p0, Lcom/android/settings/ApnEditor;->imsRequired:Z

    iput-boolean v0, p0, Lcom/android/settings/ApnEditor;->isInserting:Z

    iput v0, p0, Lcom/android/settings/ApnEditor;->mSimSlot:I

    iput-boolean v0, p0, Lcom/android/settings/ApnEditor;->mHasMdmEditedApn:Z

    iput-boolean v0, p0, Lcom/android/settings/ApnEditor;->mHasUserEditedApn:Z

    new-instance v0, Lcom/android/settings/ApnEditor$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/ApnEditor$1;-><init>(Lcom/android/settings/ApnEditor;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/ApnEditor;->mAirplainModeEnabledObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method private apnTypesMatch([Ljava/lang/String;Ljava/lang/String;)Z
    .registers 11

    const/4 v7, 0x1

    const/4 v4, 0x0

    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    return v4

    :cond_9
    invoke-direct {p0, p1}, Lcom/android/settings/ApnEditor;->hasAllApns([Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_15

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_16

    :cond_15
    return v7

    :cond_16
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {p2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v5, v1

    move v3, v4

    :goto_23
    if-ge v3, v5, :cond_52

    aget-object v0, v1, v3

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4f

    sget-object v3, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "apnTypesMatch: true because match found for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_4f
    add-int/lit8 v3, v3, 0x1

    goto :goto_23

    :cond_52
    sget-object v3, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "apnTypesMatch: false"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4
.end method

.method private bearerMultiDescription(Ljava/util/Set;)Ljava/lang/String;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    iget-object v8, p0, Lcom/android/settings/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v9, 0x7f030029

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_59

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v8, p0, Lcom/android/settings/ApnEditor;->mBearerMulti:Landroid/support/v14/preference/MultiSelectListPreference;

    invoke-virtual {v8, v0}, Landroid/support/v14/preference/MultiSelectListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    :try_start_25
    invoke-static {}, Lcom/android/settings/Utils;->isJapanDCMModel()Z

    move-result v8

    if-nez v8, :cond_31

    invoke-static {}, Lcom/android/settings/Utils;->isJapanKDIModel()Z

    move-result v8

    if-eqz v8, :cond_41

    :cond_31
    const-string/jumbo v8, "LTE"

    aget-object v9, v7, v2

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_41

    const-string/jumbo v8, "4G"

    aput-object v8, v7, v2

    :cond_41
    if-eqz v4, :cond_4a

    aget-object v8, v7, v2

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    goto :goto_13

    :cond_4a
    const-string/jumbo v8, ", "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v7, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_56
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_25 .. :try_end_56} :catch_57

    goto :goto_13

    :catch_57
    move-exception v3

    goto :goto_13

    :cond_59
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_64

    return-object v6

    :cond_64
    const/4 v8, 0x0

    return-object v8
.end method

.method private changeNwkNameQuotesString(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    move-object v0, p1

    const-string/jumbo v1, "\'"

    const-string/jumbo v2, "\'\'"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private checkNotSet(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    if-eqz p1, :cond_a

    sget-object v0, Lcom/android/settings/ApnEditor;->sNotSet:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_a
    const-string/jumbo v0, ""

    return-object v0

    :cond_e
    return-object p1
.end method

.method private checkNotSetApn(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    if-eqz p1, :cond_13

    const-string/jumbo v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    sget-object v0, Lcom/android/settings/ApnEditor;->sNotSet:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    :cond_13
    const-string/jumbo v0, "*"

    return-object v0

    :cond_17
    const-string/jumbo v0, "2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    const-string/jumbo v0, "default"

    return-object v0

    :cond_24
    const-string/jumbo v0, "3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_31

    const-string/jumbo v0, "mms"

    return-object v0

    :cond_31
    const-string/jumbo v0, "4"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3e

    const-string/jumbo v0, "supl"

    return-object v0

    :cond_3e
    return-object p1
.end method

.method private checkNull(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_b

    :cond_8
    sget-object v0, Lcom/android/settings/ApnEditor;->sNotSet:Ljava/lang/String;

    return-object v0

    :cond_b
    return-object p1
.end method

.method private checkNullApn(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    iget-boolean v0, p0, Lcom/android/settings/ApnEditor;->imsRequired:Z

    if-eqz v0, :cond_173

    iget-boolean v0, p0, Lcom/android/settings/ApnEditor;->dunRequired:Z

    if-eqz v0, :cond_173

    if-nez p1, :cond_d

    sget-object v0, Lcom/android/settings/ApnEditor;->sNotSet:Ljava/lang/String;

    return-object v0

    :cond_d
    const-string/jumbo v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_27

    sget-object v0, Lcom/android/settings/ApnEditor;->sNotSet:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    const-string/jumbo v0, "*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    :cond_27
    const-string/jumbo v0, "internet + mms + dun + xcap"

    return-object v0

    :cond_2b
    const-string/jumbo v0, "2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_38

    const-string/jumbo v0, "internet + mms + ia"

    return-object v0

    :cond_38
    const-string/jumbo v0, "3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_45

    const-string/jumbo v0, "internet + mms + dun"

    return-object v0

    :cond_45
    const-string/jumbo v0, "4"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_52

    const-string/jumbo v0, "internet + dun + xcap"

    return-object v0

    :cond_52
    const-string/jumbo v0, "5"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5f

    const-string/jumbo v0, "internet + mms + xcap"

    return-object v0

    :cond_5f
    const-string/jumbo v0, "6"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6c

    const-string/jumbo v0, "internet + mms"

    return-object v0

    :cond_6c
    const-string/jumbo v0, "7"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_79

    const-string/jumbo v0, "internet + dun"

    return-object v0

    :cond_79
    const-string/jumbo v0, "8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_86

    const-string/jumbo v0, "internet + xcap"

    return-object v0

    :cond_86
    const-string/jumbo v0, "9"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_93

    const-string/jumbo v0, "internet"

    return-object v0

    :cond_93
    const-string/jumbo v0, "10"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a0

    const-string/jumbo v0, "mms"

    return-object v0

    :cond_a0
    const-string/jumbo v0, "11"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_ad

    const-string/jumbo v0, "dun"

    return-object v0

    :cond_ad
    const-string/jumbo v0, "12"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_ba

    const-string/jumbo v0, "ims"

    return-object v0

    :cond_ba
    const-string/jumbo v0, "13"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c7

    const-string/jumbo v0, "xcap"

    return-object v0

    :cond_c7
    const-string/jumbo v0, "default"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_172

    const-string/jumbo v0, "mms"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_ef

    const-string/jumbo v0, "dun"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_ef

    const-string/jumbo v0, "xcap"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_ef

    const-string/jumbo v0, "internet + mms + dun + xcap"

    return-object v0

    :cond_ef
    const-string/jumbo v0, "mms"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_105

    const-string/jumbo v0, "dun"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_105

    const-string/jumbo v0, "internet + mms + dun"

    return-object v0

    :cond_105
    const-string/jumbo v0, "mms"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11b

    const-string/jumbo v0, "ia"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11b

    const-string/jumbo v0, "internet + mms + ia"

    return-object v0

    :cond_11b
    const-string/jumbo v0, "dun"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_131

    const-string/jumbo v0, "xcap"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_131

    const-string/jumbo v0, "internet + dun + xcap"

    return-object v0

    :cond_131
    const-string/jumbo v0, "mms"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_147

    const-string/jumbo v0, "xcap"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_147

    const-string/jumbo v0, "internet + mms + xcap"

    return-object v0

    :cond_147
    const-string/jumbo v0, "mms"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_154

    const-string/jumbo v0, "internet + mms"

    return-object v0

    :cond_154
    const-string/jumbo v0, "dun"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_161

    const-string/jumbo v0, "internet + dun"

    return-object v0

    :cond_161
    const-string/jumbo v0, "xcap"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16e

    const-string/jumbo v0, "internet + xcap"

    return-object v0

    :cond_16e
    const-string/jumbo v0, "internet"

    return-object v0

    :cond_172
    return-object p1

    :cond_173
    iget-boolean v0, p0, Lcom/android/settings/ApnEditor;->imsRequired:Z

    if-eqz v0, :cond_22c

    iget-boolean v0, p0, Lcom/android/settings/ApnEditor;->dunRequired:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_22c

    if-nez p1, :cond_182

    sget-object v0, Lcom/android/settings/ApnEditor;->sNotSet:Ljava/lang/String;

    return-object v0

    :cond_182
    const-string/jumbo v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_19c

    sget-object v0, Lcom/android/settings/ApnEditor;->sNotSet:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19c

    const-string/jumbo v0, "*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a0

    :cond_19c
    const-string/jumbo v0, "internet + mms + xcap"

    return-object v0

    :cond_1a0
    const-string/jumbo v0, "2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1ad

    const-string/jumbo v0, "internet + mms"

    return-object v0

    :cond_1ad
    const-string/jumbo v0, "3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1ba

    const-string/jumbo v0, "internet + xcap"

    return-object v0

    :cond_1ba
    const-string/jumbo v0, "4"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c7

    const-string/jumbo v0, "internet"

    return-object v0

    :cond_1c7
    const-string/jumbo v0, "5"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d4

    const-string/jumbo v0, "mms"

    return-object v0

    :cond_1d4
    const-string/jumbo v0, "6"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e1

    const-string/jumbo v0, "ims"

    return-object v0

    :cond_1e1
    const-string/jumbo v0, "7"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1ee

    const-string/jumbo v0, "xcap"

    return-object v0

    :cond_1ee
    const-string/jumbo v0, "default"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_22b

    const-string/jumbo v0, "mms"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_20d

    const-string/jumbo v0, "xcap"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_20d

    const-string/jumbo v0, "internet + mms + xcap"

    return-object v0

    :cond_20d
    const-string/jumbo v0, "mms"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_21a

    const-string/jumbo v0, "internet + mms"

    return-object v0

    :cond_21a
    const-string/jumbo v0, "xcap"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_227

    const-string/jumbo v0, "internet + xcap"

    return-object v0

    :cond_227
    const-string/jumbo v0, "internet"

    return-object v0

    :cond_22b
    return-object p1

    :cond_22c
    iget-boolean v0, p0, Lcom/android/settings/ApnEditor;->dunRequired:Z

    if-eqz v0, :cond_2f5

    if-nez p1, :cond_235

    sget-object v0, Lcom/android/settings/ApnEditor;->sNotSet:Ljava/lang/String;

    return-object v0

    :cond_235
    const-string/jumbo v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_24f

    sget-object v0, Lcom/android/settings/ApnEditor;->sNotSet:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24f

    const-string/jumbo v0, "*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_253

    :cond_24f
    const-string/jumbo v0, "internet + mms + dun"

    return-object v0

    :cond_253
    const-string/jumbo v0, "2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_260

    const-string/jumbo v0, "internet + mms + ia"

    return-object v0

    :cond_260
    const-string/jumbo v0, "3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26d

    const-string/jumbo v0, "internet + mms"

    return-object v0

    :cond_26d
    const-string/jumbo v0, "4"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27a

    const-string/jumbo v0, "internet + dun"

    return-object v0

    :cond_27a
    const-string/jumbo v0, "5"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_287

    const-string/jumbo v0, "internet"

    return-object v0

    :cond_287
    const-string/jumbo v0, "6"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_294

    const-string/jumbo v0, "mms"

    return-object v0

    :cond_294
    const-string/jumbo v0, "7"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2a1

    const-string/jumbo v0, "dun"

    return-object v0

    :cond_2a1
    const-string/jumbo v0, "default"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2f4

    const-string/jumbo v0, "mms"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2c0

    const-string/jumbo v0, "dun"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2c0

    const-string/jumbo v0, "internet + mms + dun"

    return-object v0

    :cond_2c0
    const-string/jumbo v0, "mms"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2d6

    const-string/jumbo v0, "ia"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2d6

    const-string/jumbo v0, "internet + mms + ia"

    return-object v0

    :cond_2d6
    const-string/jumbo v0, "mms"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2e3

    const-string/jumbo v0, "internet + mms"

    return-object v0

    :cond_2e3
    const-string/jumbo v0, "dun"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2f0

    const-string/jumbo v0, "internet + dun"

    return-object v0

    :cond_2f0
    const-string/jumbo v0, "internet"

    return-object v0

    :cond_2f4
    return-object p1

    :cond_2f5
    if-nez p1, :cond_2fa

    sget-object v0, Lcom/android/settings/ApnEditor;->sNotSet:Ljava/lang/String;

    return-object v0

    :cond_2fa
    const-string/jumbo v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_314

    sget-object v0, Lcom/android/settings/ApnEditor;->sNotSet:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_314

    const-string/jumbo v0, "*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_318

    :cond_314
    const-string/jumbo v0, "internet + mms + supl"

    return-object v0

    :cond_318
    const-string/jumbo v0, "2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_325

    const-string/jumbo v0, "internet"

    return-object v0

    :cond_325
    const-string/jumbo v0, "3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_332

    const-string/jumbo v0, "mms"

    return-object v0

    :cond_332
    const-string/jumbo v0, "4"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_33f

    const-string/jumbo v0, "supl"

    return-object v0

    :cond_33f
    const-string/jumbo v0, "default"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_359

    const-string/jumbo v0, "mms"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_355

    const-string/jumbo v0, "internet + mms"

    return-object v0

    :cond_355
    const-string/jumbo v0, "internet"

    return-object v0

    :cond_359
    return-object p1
.end method

.method private deleteApn()V
    .registers 12

    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v0, 0x5

    const/4 v10, 0x0

    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/ApnEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v3, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_d4

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-string/jumbo v4, "ApnEditor"

    const-string/jumbo v5, "Deleting APN  succeeded"

    move v1, v0

    invoke-static/range {v0 .. v5}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    :goto_1e
    invoke-static {}, Lcom/android/settings/Utils;->isJapanKDIModel()Z

    move-result v0

    if-eqz v0, :cond_77

    iget-object v0, p0, Lcom/android/settings/ApnEditor;->SelectKey:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/ApnEditor;->Key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_77

    const-string/jumbo v0, "LTE NET"

    iget-object v1, p0, Lcom/android/settings/ApnEditor;->mName:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v1}, Landroid/support/v7/preference/SecEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_77

    const-string/jumbo v0, "LTE NET for DATA"

    iget-object v1, p0, Lcom/android/settings/ApnEditor;->mName:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v1}, Landroid/support/v7/preference/SecEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_77

    sget-object v0, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "KDDI set default Carrier enable true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v0, "carrier_enabled"

    const-string/jumbo v1, "1"

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v3, "_id=?"

    new-array v4, v2, [Ljava/lang/String;

    const-string/jumbo v5, "1"

    aput-object v5, v4, v10

    invoke-virtual {v0, v1, v9, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_77
    invoke-static {}, Lcom/android/settings/Utils;->isJapanKDIModel()Z

    move-result v0

    if-eqz v0, :cond_d0

    iget-object v0, p0, Lcom/android/settings/ApnEditor;->SelectKey:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/ApnEditor;->Key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d0

    const-string/jumbo v0, "LTE NET"

    iget-object v1, p0, Lcom/android/settings/ApnEditor;->mName:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v1}, Landroid/support/v7/preference/SecEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d0

    const-string/jumbo v0, "LTE NET for DATA"

    iget-object v1, p0, Lcom/android/settings/ApnEditor;->mName:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v1}, Landroid/support/v7/preference/SecEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_d0

    sget-object v0, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "KDDI set default Carrier enable true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v0, "carrier_enabled"

    const-string/jumbo v1, "1"

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v3, "_id=?"

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v4, "1"

    aput-object v4, v2, v10

    invoke-virtual {v0, v1, v9, v3, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_d0
    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->finish()V

    return-void

    :cond_d4
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    const-string/jumbo v7, "ApnEditor"

    const-string/jumbo v8, "Deleting APN  failed"

    move v3, v0

    move v4, v0

    move v5, v10

    invoke-static/range {v3 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1e
.end method

.method private disableAllFields()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mName:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecEditTextPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mApn:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecEditTextPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mProxy:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecEditTextPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mPort:Landroid/support/v7/preference/SecEditNumPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecEditNumPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mUser:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecEditTextPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mServer:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecEditTextPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mPassword:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecEditTextPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mMmsProxy:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecEditTextPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mMmsPort:Landroid/support/v7/preference/SecEditNumPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecEditNumPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mMmsc:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecEditTextPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mMcc:Landroid/support/v7/preference/SecEditNumPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecEditNumPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mMnc:Landroid/support/v7/preference/SecEditNumPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecEditNumPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mApnType:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecEditTextPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mAuthType:Landroid/support/v7/preference/SecListDialogPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecListDialogPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mProtocol:Landroid/support/v7/preference/SecListDialogPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecListDialogPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mRoamingProtocol:Landroid/support/v7/preference/SecListDialogPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecListDialogPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mCarrierEnabled:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mBearerMulti:Landroid/support/v14/preference/MultiSelectListPreference;

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/MultiSelectListPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mMvnoType:Landroid/support/v7/preference/SecListDialogPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecListDialogPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mMvnoMatchData:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecEditTextPreference;->setEnabled(Z)V

    return-void
.end method

.method private disableEditItems()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mName:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecEditTextPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mApn:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecEditTextPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mProxy:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecEditTextPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mPort:Landroid/support/v7/preference/SecEditNumPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecEditNumPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mUser:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecEditTextPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mServer:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecEditTextPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mPassword:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecEditTextPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mMmsProxy:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecEditTextPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mMmsPort:Landroid/support/v7/preference/SecEditNumPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecEditNumPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mMmsc:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecEditTextPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mMcc:Landroid/support/v7/preference/SecEditNumPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecEditNumPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mMnc:Landroid/support/v7/preference/SecEditNumPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecEditNumPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mAuthType:Landroid/support/v7/preference/SecListDialogPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecListDialogPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mApnType:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecEditTextPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mApnType_list:Landroid/support/v7/preference/SecListDialogPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecListDialogPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mProtocol:Landroid/support/v7/preference/SecListDialogPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecListDialogPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mRoamingProtocol:Landroid/support/v7/preference/SecListDialogPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecListDialogPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mCarrierEnabled:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mBearerMulti:Landroid/support/v14/preference/MultiSelectListPreference;

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/MultiSelectListPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mMvnoType:Landroid/support/v7/preference/SecListDialogPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecListDialogPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mMvnoMatchData:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecEditTextPreference;->setEnabled(Z)V

    return-void
.end method

.method private disableFields([Ljava/lang/String;)V
    .registers 7

    const/4 v3, 0x0

    array-length v4, p1

    move v2, v3

    :goto_3
    if-ge v2, v4, :cond_13

    aget-object v0, p1, v2

    invoke-direct {p0, v0}, Lcom/android/settings/ApnEditor;->getPreferenceFromFieldName(Ljava/lang/String;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_10

    invoke-virtual {v1, v3}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_13
    return-void
.end method

.method private fillUi()V
    .registers 34

    sget-object v29, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "fillUi(), isFirstTime? "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ApnEditor;->mFirstTime:Z

    move/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string/jumbo v31, ", newAPN? "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ApnEditor;->mNewApn:Z

    move/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ApnEditor;->mFirstTime:Z

    move/from16 v29, v0

    if-eqz v29, :cond_4e7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Landroid/database/Cursor;->getCount()I

    move-result v29

    if-eqz v29, :cond_4e7

    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/ApnEditor;->mFirstTime:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-interface/range {v29 .. v30}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/ApnEditor;->Key:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mName:Landroid/support/v7/preference/SecEditTextPreference;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v30, v0

    const/16 v31, 0x1

    invoke-interface/range {v30 .. v31}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Landroid/support/v7/preference/SecEditTextPreference;->setText(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mApn:Landroid/support/v7/preference/SecEditTextPreference;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v30, v0

    const/16 v31, 0x2

    invoke-interface/range {v30 .. v31}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Landroid/support/v7/preference/SecEditTextPreference;->setText(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mProxy:Landroid/support/v7/preference/SecEditTextPreference;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v30, v0

    const/16 v31, 0x3

    invoke-interface/range {v30 .. v31}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Landroid/support/v7/preference/SecEditTextPreference;->setText(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mPort:Landroid/support/v7/preference/SecEditNumPreference;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v30, v0

    const/16 v31, 0x4

    invoke-interface/range {v30 .. v31}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Landroid/support/v7/preference/SecEditNumPreference;->setText(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mUser:Landroid/support/v7/preference/SecEditTextPreference;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v30, v0

    const/16 v31, 0x5

    invoke-interface/range {v30 .. v31}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Landroid/support/v7/preference/SecEditTextPreference;->setText(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mServer:Landroid/support/v7/preference/SecEditTextPreference;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v30, v0

    const/16 v31, 0x6

    invoke-interface/range {v30 .. v31}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Landroid/support/v7/preference/SecEditTextPreference;->setText(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mPassword:Landroid/support/v7/preference/SecEditTextPreference;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v30, v0

    const/16 v31, 0x7

    invoke-interface/range {v30 .. v31}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Landroid/support/v7/preference/SecEditTextPreference;->setText(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mPassword:Landroid/support/v7/preference/SecEditTextPreference;

    move-object/from16 v29, v0

    const/16 v30, 0x81

    invoke-virtual/range {v29 .. v30}, Landroid/support/v7/preference/SecEditTextPreference;->setInputType(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mMmsProxy:Landroid/support/v7/preference/SecEditTextPreference;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v30, v0

    const/16 v31, 0xc

    invoke-interface/range {v30 .. v31}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Landroid/support/v7/preference/SecEditTextPreference;->setText(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mMmsPort:Landroid/support/v7/preference/SecEditNumPreference;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v30, v0

    const/16 v31, 0xd

    invoke-interface/range {v30 .. v31}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Landroid/support/v7/preference/SecEditNumPreference;->setText(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mMmsc:Landroid/support/v7/preference/SecEditTextPreference;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v30, v0

    const/16 v31, 0x8

    invoke-interface/range {v30 .. v31}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Landroid/support/v7/preference/SecEditTextPreference;->setText(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mMcc:Landroid/support/v7/preference/SecEditNumPreference;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v30, v0

    const/16 v31, 0x9

    invoke-interface/range {v30 .. v31}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Landroid/support/v7/preference/SecEditNumPreference;->setText(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mMnc:Landroid/support/v7/preference/SecEditNumPreference;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v30, v0

    const/16 v31, 0xa

    invoke-interface/range {v30 .. v31}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Landroid/support/v7/preference/SecEditNumPreference;->setText(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ApnEditor;->mApnTypeStyle:Z

    move/from16 v29, v0

    if-nez v29, :cond_182

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ApnEditor;->mNewApn:Z

    move/from16 v29, v0

    if-eqz v29, :cond_a43

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mApnType:Landroid/support/v7/preference/SecEditTextPreference;

    move-object/from16 v29, v0

    const-string/jumbo v30, "default"

    invoke-virtual/range {v29 .. v30}, Landroid/support/v7/preference/SecEditTextPreference;->setText(Ljava/lang/String;)V

    :cond_182
    :goto_182
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ApnEditor;->mNewApn:Z

    move/from16 v29, v0

    if-eqz v29, :cond_298

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ApnEditor;->mSimSlot:I

    move/from16 v30, v0

    invoke-static/range {v30 .. v30}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v30

    const/16 v31, 0x0

    aget v30, v30, v31

    invoke-virtual/range {v29 .. v30}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v23

    invoke-static {}, Lcom/android/settings/Utils;->isChinaCTCModel()Z

    move-result v29

    if-nez v29, :cond_1b5

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v29

    const-string/jumbo v30, "CscFeature_RIL_Support75Mode"

    invoke-virtual/range {v29 .. v30}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_20f

    :cond_1b5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ApnEditor;->mSimSlot:I

    move/from16 v29, v0

    const-string/jumbo v30, "ril.ICC_TYPE"

    const-string/jumbo v31, ""

    invoke-static/range {v29 .. v31}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ApnEditor;->mSimSlot:I

    move/from16 v29, v0

    const-string/jumbo v30, "gsm.sim.cdmaoperator.numeric"

    const-string/jumbo v31, ""

    invoke-static/range {v29 .. v31}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v29, "3"

    move-object/from16 v0, v29

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_1f7

    const-string/jumbo v29, "4"

    move-object/from16 v0, v29

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_20f

    :cond_1f7
    const-string/jumbo v29, "45502"

    move-object/from16 v0, v29

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_20d

    const-string/jumbo v29, "46003"

    move-object/from16 v0, v29

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_20f

    :cond_20d
    move-object/from16 v23, v11

    :cond_20f
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGlobalRoamingLRA()Z

    move-result v29

    if-nez v29, :cond_21b

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGlobalRoamingACG()Z

    move-result v29

    if-eqz v29, :cond_22f

    :cond_21b
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ApnEditor;->getIntent()Landroid/content/Intent;

    move-result-object v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ApnEditor;->mSimSlot:I

    move/from16 v29, v0

    move-object/from16 v0, v27

    move/from16 v1, v29

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->getNumericString(Landroid/content/Intent;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v23

    :cond_22f
    sget-object v29, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "fillUi(), numeric="

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v23, :cond_298

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v29

    const/16 v30, 0x4

    move/from16 v0, v29

    move/from16 v1, v30

    if-le v0, v1, :cond_298

    const/16 v29, 0x0

    const/16 v30, 0x3

    move-object/from16 v0, v23

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    const/16 v29, 0x3

    move-object/from16 v0, v23

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mMcc:Landroid/support/v7/preference/SecEditNumPreference;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecEditNumPreference;->setText(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mMnc:Landroid/support/v7/preference/SecEditNumPreference;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecEditNumPreference;->setText(Ljava/lang/String;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/ApnEditor;->mCurMnc:Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/ApnEditor;->mCurMcc:Ljava/lang/String;

    :cond_298
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ApnEditor;->mApnTypeStyle:Z

    move/from16 v29, v0

    if-eqz v29, :cond_381

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/ApnEditor;->isDunExist()Z

    move-result v29

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/ApnEditor;->dunRequired:Z

    sget-object v29, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "dunRequired "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ApnEditor;->dunRequired:Z

    move/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/ApnEditor;->isImsExist()Z

    move-result v29

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/ApnEditor;->imsRequired:Z

    sget-object v29, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "imsRequired "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ApnEditor;->imsRequired:Z

    move/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ApnEditor;->imsRequired:Z

    move/from16 v29, v0

    if-eqz v29, :cond_a5a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ApnEditor;->dunRequired:Z

    move/from16 v29, v0

    if-eqz v29, :cond_a5a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mApnType_list:Landroid/support/v7/preference/SecListDialogPreference;

    move-object/from16 v29, v0

    const v30, 0x7f03000b

    invoke-virtual/range {v29 .. v30}, Landroid/support/v7/preference/SecListDialogPreference;->setEntries(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mApnType_list:Landroid/support/v7/preference/SecListDialogPreference;

    move-object/from16 v29, v0

    const v30, 0x7f030011

    invoke-virtual/range {v29 .. v30}, Landroid/support/v7/preference/SecListDialogPreference;->setEntryValues(I)V

    :cond_31a
    :goto_31a
    sget-object v29, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "fillUi(), APN type DB data : "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v31, v0

    const/16 v32, 0xf

    invoke-interface/range {v31 .. v32}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v29, v0

    const/16 v30, 0xf

    invoke-interface/range {v29 .. v30}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mApnType_list:Landroid/support/v7/preference/SecListDialogPreference;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v30, v0

    const/16 v31, 0xf

    invoke-interface/range {v30 .. v31}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Landroid/support/v7/preference/SecListDialogPreference;->setValue(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ApnEditor;->dunRequired:Z

    move/from16 v29, v0

    if-eqz v29, :cond_c1d

    if-eqz v4, :cond_c06

    const-string/jumbo v29, "*"

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_aa8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mApnType_list:Landroid/support/v7/preference/SecListDialogPreference;

    move-object/from16 v29, v0

    const-string/jumbo v30, "default,supl,mms,dun,xcap"

    invoke-virtual/range {v29 .. v30}, Landroid/support/v7/preference/SecListDialogPreference;->setValue(Ljava/lang/String;)V

    :cond_381
    :goto_381
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v29, v0

    const/16 v30, 0xe

    invoke-interface/range {v29 .. v30}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const/16 v29, -0x1

    move/from16 v0, v29

    if-eq v5, v0, :cond_cd5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mAuthType:Landroid/support/v7/preference/SecListDialogPreference;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Landroid/support/v7/preference/SecListDialogPreference;->setValueIndex(I)V

    :cond_39e
    :goto_39e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mProtocol:Landroid/support/v7/preference/SecListDialogPreference;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v30, v0

    const/16 v31, 0x10

    invoke-interface/range {v30 .. v31}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Landroid/support/v7/preference/SecListDialogPreference;->setValue(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mRoamingProtocol:Landroid/support/v7/preference/SecListDialogPreference;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v30, v0

    const/16 v31, 0x14

    invoke-interface/range {v30 .. v31}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Landroid/support/v7/preference/SecListDialogPreference;->setValue(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mCarrierEnabled:Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v29, v0

    const/16 v31, 0x11

    move-object/from16 v0, v29

    move/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    const/16 v31, 0x1

    move/from16 v0, v29

    move/from16 v1, v31

    if-ne v0, v1, :cond_d44

    const/16 v29, 0x1

    :goto_3e8
    move-object/from16 v0, v30

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v29, v0

    const/16 v30, 0x12

    invoke-interface/range {v29 .. v30}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/ApnEditor;->mBearerInitialVal:I

    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v29, v0

    const/16 v30, 0x13

    invoke-interface/range {v29 .. v30}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    if-nez v8, :cond_d48

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ApnEditor;->mBearerInitialVal:I

    move/from16 v29, v0

    if-nez v29, :cond_424

    const-string/jumbo v29, "0"

    move-object/from16 v0, v29

    invoke-virtual {v9, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_424
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ApnEditor;->mBearerInitialVal:I

    move/from16 v29, v0

    if-eqz v29, :cond_46d

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, ""

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ApnEditor;->mBearerInitialVal:I

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v9, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_46d

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, ""

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ApnEditor;->mBearerInitialVal:I

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v9, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_46d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mBearerMulti:Landroid/support/v14/preference/MultiSelectListPreference;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v9}, Landroid/support/v14/preference/MultiSelectListPreference;->setValues(Ljava/util/Set;)V

    invoke-static {}, Lcom/android/settings/Utils;->isJapanDCMModel()Z

    move-result v29

    if-nez v29, :cond_484

    invoke-static {}, Lcom/android/settings/Utils;->isJapanKDIModel()Z

    move-result v29

    if-eqz v29, :cond_d75

    :cond_484
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mBearerMulti:Landroid/support/v14/preference/MultiSelectListPreference;

    move-object/from16 v29, v0

    const v30, 0x7f03002a

    invoke-virtual/range {v29 .. v30}, Landroid/support/v14/preference/MultiSelectListPreference;->setEntries(I)V

    :goto_490
    const-string/jumbo v26, ""

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ApnEditor;->getContext()Landroid/content/Context;

    move-result-object v29

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ApnEditor;->mSimSlot:I

    move/from16 v30, v0

    invoke-static/range {v29 .. v30}, Lcom/android/settings/Utils;->getSpcode(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v13

    invoke-static {}, Lcom/android/settings/Utils;->isSuportSPcode()Z

    move-result v29

    if-eqz v29, :cond_d83

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ApnEditor;->mNewApn:Z

    move/from16 v29, v0

    if-eqz v29, :cond_d83

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v29

    xor-int/lit8 v29, v29, 0x1

    if-eqz v29, :cond_d83

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mMvnoMatchData:Landroid/support/v7/preference/SecEditTextPreference;

    move-object/from16 v29, v0

    const/16 v30, 0x1

    invoke-virtual/range {v29 .. v30}, Landroid/support/v7/preference/SecEditTextPreference;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mMvnoType:Landroid/support/v7/preference/SecListDialogPreference;

    move-object/from16 v29, v0

    const-string/jumbo v30, "gid"

    invoke-virtual/range {v29 .. v30}, Landroid/support/v7/preference/SecListDialogPreference;->setValue(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mMvnoMatchData:Landroid/support/v7/preference/SecEditTextPreference;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecEditTextPreference;->setText(Ljava/lang/String;)V

    :cond_4e7
    :goto_4e7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mName:Landroid/support/v7/preference/SecEditTextPreference;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mName:Landroid/support/v7/preference/SecEditTextPreference;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/support/v7/preference/SecEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Landroid/support/v7/preference/SecEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mApn:Landroid/support/v7/preference/SecEditTextPreference;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mApn:Landroid/support/v7/preference/SecEditTextPreference;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/support/v7/preference/SecEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Landroid/support/v7/preference/SecEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mProxy:Landroid/support/v7/preference/SecEditTextPreference;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mProxy:Landroid/support/v7/preference/SecEditTextPreference;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/support/v7/preference/SecEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Landroid/support/v7/preference/SecEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mPort:Landroid/support/v7/preference/SecEditNumPreference;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mPort:Landroid/support/v7/preference/SecEditNumPreference;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/support/v7/preference/SecEditNumPreference;->getText()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Landroid/support/v7/preference/SecEditNumPreference;->setSummary(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mUser:Landroid/support/v7/preference/SecEditTextPreference;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mUser:Landroid/support/v7/preference/SecEditTextPreference;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/support/v7/preference/SecEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Landroid/support/v7/preference/SecEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mServer:Landroid/support/v7/preference/SecEditTextPreference;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mServer:Landroid/support/v7/preference/SecEditTextPreference;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/support/v7/preference/SecEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Landroid/support/v7/preference/SecEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mPassword:Landroid/support/v7/preference/SecEditTextPreference;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mPassword:Landroid/support/v7/preference/SecEditTextPreference;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/support/v7/preference/SecEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/android/settings/ApnEditor;->starify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Landroid/support/v7/preference/SecEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mMmsProxy:Landroid/support/v7/preference/SecEditTextPreference;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mMmsProxy:Landroid/support/v7/preference/SecEditTextPreference;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/support/v7/preference/SecEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Landroid/support/v7/preference/SecEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mMmsPort:Landroid/support/v7/preference/SecEditNumPreference;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mMmsPort:Landroid/support/v7/preference/SecEditNumPreference;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/support/v7/preference/SecEditNumPreference;->getText()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Landroid/support/v7/preference/SecEditNumPreference;->setSummary(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mMmsc:Landroid/support/v7/preference/SecEditTextPreference;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mMmsc:Landroid/support/v7/preference/SecEditTextPreference;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/support/v7/preference/SecEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Landroid/support/v7/preference/SecEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mMcc:Landroid/support/v7/preference/SecEditNumPreference;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mMcc:Landroid/support/v7/preference/SecEditNumPreference;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/support/v7/preference/SecEditNumPreference;->getText()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Landroid/support/v7/preference/SecEditNumPreference;->setSummary(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mMnc:Landroid/support/v7/preference/SecEditNumPreference;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mMnc:Landroid/support/v7/preference/SecEditNumPreference;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/support/v7/preference/SecEditNumPreference;->getText()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Landroid/support/v7/preference/SecEditNumPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGlobalRoamingLRA()Z

    move-result v29

    if-eqz v29, :cond_6ad

    const-string/jumbo v29, "LTE - Verizon Internet"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mName:Landroid/support/v7/preference/SecEditTextPreference;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/support/v7/preference/SecEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_650

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mName:Landroid/support/v7/preference/SecEditTextPreference;

    move-object/from16 v29, v0

    const-string/jumbo v30, "LTE Internet"

    invoke-virtual/range {v29 .. v30}, Landroid/support/v7/preference/SecEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_650
    const-string/jumbo v29, "VZW Roaming Internet"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mName:Landroid/support/v7/preference/SecEditTextPreference;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/support/v7/preference/SecEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_66f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mName:Landroid/support/v7/preference/SecEditTextPreference;

    move-object/from16 v29, v0

    const-string/jumbo v30, "Roaming Internet"

    invoke-virtual/range {v29 .. v30}, Landroid/support/v7/preference/SecEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_66f
    const-string/jumbo v29, "VZW Roaming FOTA"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mName:Landroid/support/v7/preference/SecEditTextPreference;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/support/v7/preference/SecEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_68e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mName:Landroid/support/v7/preference/SecEditTextPreference;

    move-object/from16 v29, v0

    const-string/jumbo v30, "Roaming FOTA"

    invoke-virtual/range {v29 .. v30}, Landroid/support/v7/preference/SecEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_68e
    const-string/jumbo v29, "VZW Roaming IMS"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mName:Landroid/support/v7/preference/SecEditTextPreference;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/support/v7/preference/SecEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_6ad

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mName:Landroid/support/v7/preference/SecEditTextPreference;

    move-object/from16 v29, v0

    const-string/jumbo v30, "Roaming IMS"

    invoke-virtual/range {v29 .. v30}, Landroid/support/v7/preference/SecEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_6ad
    invoke-static {}, Lcom/android/settings/Utils;->isCctModel()Z

    move-result v29

    if-eqz v29, :cond_6e5

    const-string/jumbo v29, "Verizon Internet"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mName:Landroid/support/v7/preference/SecEditTextPreference;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/support/v7/preference/SecEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_6d9

    const-string/jumbo v29, "VZW Roaming Internet"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mName:Landroid/support/v7/preference/SecEditTextPreference;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/support/v7/preference/SecEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_6e5

    :cond_6d9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mName:Landroid/support/v7/preference/SecEditTextPreference;

    move-object/from16 v29, v0

    const-string/jumbo v30, "XFINITY Mobile"

    invoke-virtual/range {v29 .. v30}, Landroid/support/v7/preference/SecEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_6e5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ApnEditor;->mApnTypeStyle:Z

    move/from16 v29, v0

    if-nez v29, :cond_df0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mApnType:Landroid/support/v7/preference/SecEditTextPreference;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mApnType:Landroid/support/v7/preference/SecEditTextPreference;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/support/v7/preference/SecEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Landroid/support/v7/preference/SecEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_708
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mAuthType:Landroid/support/v7/preference/SecListDialogPreference;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/support/v7/preference/SecListDialogPreference;->getValue()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_e19

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mAuthType:Landroid/support/v7/preference/SecListDialogPreference;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v7}, Landroid/support/v7/preference/SecListDialogPreference;->setValueIndex(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mRes:Landroid/content/res/Resources;

    move-object/from16 v29, v0

    const v30, 0x7f030007

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mAuthType:Landroid/support/v7/preference/SecListDialogPreference;

    move-object/from16 v29, v0

    aget-object v30, v28, v7

    invoke-virtual/range {v29 .. v30}, Landroid/support/v7/preference/SecListDialogPreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_73b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mProtocol:Landroid/support/v7/preference/SecListDialogPreference;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mProtocol:Landroid/support/v7/preference/SecListDialogPreference;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/support/v7/preference/SecListDialogPreference;->getValue()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mProtocol:Landroid/support/v7/preference/SecListDialogPreference;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/android/settings/ApnEditor;->protocolDescription(Ljava/lang/String;Landroid/support/v7/preference/SecListDialogPreference;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Landroid/support/v7/preference/SecListDialogPreference;->setSummary(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mRoamingProtocol:Landroid/support/v7/preference/SecListDialogPreference;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mRoamingProtocol:Landroid/support/v7/preference/SecListDialogPreference;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/support/v7/preference/SecListDialogPreference;->getValue()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mRoamingProtocol:Landroid/support/v7/preference/SecListDialogPreference;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/android/settings/ApnEditor;->protocolDescription(Ljava/lang/String;Landroid/support/v7/preference/SecListDialogPreference;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Landroid/support/v7/preference/SecListDialogPreference;->setSummary(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mBearerMulti:Landroid/support/v14/preference/MultiSelectListPreference;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mBearerMulti:Landroid/support/v14/preference/MultiSelectListPreference;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/support/v14/preference/MultiSelectListPreference;->getValues()Ljava/util/Set;

    move-result-object v30

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/android/settings/ApnEditor;->bearerMultiDescription(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Landroid/support/v14/preference/MultiSelectListPreference;->setSummary(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mMvnoType:Landroid/support/v7/preference/SecListDialogPreference;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mMvnoType:Landroid/support/v7/preference/SecListDialogPreference;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/support/v7/preference/SecListDialogPreference;->getValue()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/android/settings/ApnEditor;->mvnoDescription(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Landroid/support/v7/preference/SecListDialogPreference;->setSummary(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mMvnoMatchData:Landroid/support/v7/preference/SecEditTextPreference;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mMvnoMatchData:Landroid/support/v7/preference/SecEditTextPreference;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/support/v7/preference/SecEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Landroid/support/v7/preference/SecEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v29

    const-string/jumbo v30, "CscFeature_Setting_ConfigEditingIpVersionType"

    invoke-virtual/range {v29 .. v30}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v29

    if-nez v29, :cond_e53

    const-string/jumbo v29, "true"

    move-object/from16 v0, v29

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_e26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mProtocol:Landroid/support/v7/preference/SecListDialogPreference;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-virtual/range {v29 .. v30}, Landroid/support/v7/preference/SecListDialogPreference;->setEnabled(Z)V

    :goto_81b
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v29

    const-string/jumbo v30, "CscFeature_Setting_EnableEditingIpVersionTypeRoaming"

    invoke-virtual/range {v29 .. v30}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v29

    if-nez v29, :cond_e6d

    const-string/jumbo v29, "true"

    move-object/from16 v0, v29

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_e60

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mRoamingProtocol:Landroid/support/v7/preference/SecListDialogPreference;

    move-object/from16 v29, v0

    const/16 v30, 0x1

    invoke-virtual/range {v29 .. v30}, Landroid/support/v7/preference/SecListDialogPreference;->setEnabled(Z)V

    :goto_844
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    const v30, 0x7f050009

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ApnEditor;->mSimSlot:I

    move/from16 v30, v0

    invoke-static/range {v30 .. v30}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v30

    const/16 v31, 0x0

    aget v30, v30, v31

    invoke-virtual/range {v29 .. v30}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v20

    invoke-static {}, Lcom/android/settings/Utils;->isVZWConcept()Z

    move-result v29

    if-eqz v29, :cond_877

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ApnEditor;->mIsVzwEditable:Z

    move/from16 v29, v0

    xor-int/lit8 v29, v29, 0x1

    if-nez v29, :cond_87d

    :cond_877
    invoke-static {}, Lcom/android/settings/Utils;->isLraImsi()Z

    move-result v29

    if-eqz v29, :cond_e7a

    :cond_87d
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/ApnEditor;->disableEditItems()V

    :cond_880
    :goto_880
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/ApnEditor;->isEditable()Z

    move-result v29

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/ApnEditor;->mEditable:Z

    invoke-static {}, Lcom/android/settings/Utils;->isVZWConcept()Z

    move-result v29

    if-nez v29, :cond_8b7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ApnEditor;->mIsVzwEditable:Z

    move/from16 v29, v0

    if-eqz v29, :cond_8ab

    invoke-static/range {v20 .. v20}, Lcom/android/settings/Utils;->isVZWSimInserted(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_8ab

    invoke-static {}, Lcom/android/settings/Utils;->getOmcNWSalesCode()Ljava/lang/String;

    move-result-object v29

    const-string/jumbo v30, "VZW"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_8b7

    :cond_8ab
    invoke-static {}, Lcom/android/settings/Utils;->isUsOpenModel()Z

    move-result v29

    if-eqz v29, :cond_8c7

    invoke-static/range {v20 .. v20}, Lcom/android/settings/Utils;->isVZWSimInserted(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_8c7

    :cond_8b7
    sget-object v29, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    const-string/jumbo v30, "vzw nonevzweditalbe set True"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v29, 0x1

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/ApnEditor;->mEditable:Z

    :cond_8c7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ApnEditor;->mEditable:Z

    move/from16 v29, v0

    if-eqz v29, :cond_908

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v29

    if-eqz v29, :cond_908

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-interface/range {v29 .. v30}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v29, v0

    const/16 v30, 0xb

    invoke-interface/range {v29 .. v30}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    const-string/jumbo v29, "45005"

    move-object/from16 v0, v29

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_f96

    const/16 v29, 0x3e8

    move/from16 v0, v29

    if-ne v0, v15, :cond_f96

    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/ApnEditor;->mEditable:Z

    :cond_908
    :goto_908
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ApnEditor;->mEditable:Z

    move/from16 v29, v0

    if-eqz v29, :cond_937

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v29

    if-eqz v29, :cond_937

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v29, v0

    const/16 v30, 0xb

    invoke-interface/range {v29 .. v30}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    const-string/jumbo v29, "45407"

    move-object/from16 v0, v29

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_937

    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/ApnEditor;->mEditable:Z

    :cond_937
    invoke-static {}, Lcom/android/settings/Utils;->isSprModel()Z

    move-result v29

    if-eqz v29, :cond_95f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ApnEditor;->mIsSprDiableAll:Z

    move/from16 v29, v0

    if-eqz v29, :cond_95f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ApnEditor;->mIsSprEditable:Z

    move/from16 v29, v0

    xor-int/lit8 v29, v29, 0x1

    if-eqz v29, :cond_95f

    sget-object v29, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    const-string/jumbo v30, "spr disable all = true"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/ApnEditor;->mEditable:Z

    :cond_95f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ApnEditor;->mEditable:Z

    move/from16 v29, v0

    if-nez v29, :cond_977

    const-string/jumbo v29, "apn_edit"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v29

    const/16 v30, 0x0

    invoke-virtual/range {v29 .. v30}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    :cond_977
    invoke-static {}, Lcom/android/settings/Utils;->isVZWConcept()Z

    move-result v29

    if-nez v29, :cond_983

    invoke-static {}, Lcom/android/settings/Utils;->isLraImsi()Z

    move-result v29

    if-eqz v29, :cond_ff0

    :cond_983
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ApnEditor;->mIsVzwEditable:Z

    move/from16 v29, v0

    if-eqz v29, :cond_fe3

    sget-object v29, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    const-string/jumbo v30, "isVzwEditable = true"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v29, "apn_edit"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v29

    const/16 v30, 0x1

    invoke-virtual/range {v29 .. v30}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    :cond_9a3
    :goto_9a3
    invoke-static {}, Lcom/android/settings/Utils;->isJapanDCMModel()Z

    move-result v29

    if-eqz v29, :cond_1238

    sget-object v29, Lcom/android/settings/ApnEditor;->sNotSet:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mApnType:Landroid/support/v7/preference/SecEditTextPreference;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/support/v7/preference/SecEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_9db

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mApnType:Landroid/support/v7/preference/SecEditTextPreference;

    move-object/from16 v29, v0

    const-string/jumbo v30, "default,supl"

    invoke-virtual/range {v29 .. v30}, Landroid/support/v7/preference/SecEditTextPreference;->setText(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mApnType:Landroid/support/v7/preference/SecEditTextPreference;

    move-object/from16 v29, v0

    const-string/jumbo v30, "default,supl"

    invoke-virtual/range {v29 .. v30}, Landroid/support/v7/preference/SecEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_9db
    :goto_9db
    invoke-static {}, Lcom/android/settings/Utils;->isSupport3LM()Z

    move-result v29

    if-eqz v29, :cond_a1c

    invoke-static {}, Lcom/android/settings/Utils;->isJapanDCMModel()Z

    move-result v29

    if-eqz v29, :cond_a1c

    const/4 v3, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v29

    const-string/jumbo v30, "apn_locked"

    const/16 v31, 0x0

    invoke-static/range {v29 .. v31}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v29

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_12cf

    const/4 v3, 0x1

    :goto_9fe
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v29

    const-string/jumbo v30, "apn_lock_mode"

    const/16 v31, 0x0

    invoke-static/range {v29 .. v31}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v29

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_12d2

    const/16 v18, 0x1

    :goto_a15
    if-nez v3, :cond_a19

    if-eqz v18, :cond_a1c

    :cond_a19
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/ApnEditor;->disableEditItems()V

    :cond_a1c
    if-eqz v12, :cond_12d6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mCarrierEnabled:Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v29, v0

    const/16 v30, 0x1

    invoke-virtual/range {v29 .. v30}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    :goto_a29
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ApnEditor;->mNewApn:Z

    move/from16 v29, v0

    if-nez v29, :cond_12e3

    const-string/jumbo v29, "CSC"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/android/settings/ApnEditor;->isDefinedApn(Ljava/lang/String;)Z

    move-result v29

    :goto_a3c
    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/ApnEditor;->isNoWarning:Z

    return-void

    :cond_a43
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mApnType:Landroid/support/v7/preference/SecEditTextPreference;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v30, v0

    const/16 v31, 0xf

    invoke-interface/range {v30 .. v31}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Landroid/support/v7/preference/SecEditTextPreference;->setText(Ljava/lang/String;)V

    goto/16 :goto_182

    :cond_a5a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ApnEditor;->imsRequired:Z

    move/from16 v29, v0

    if-eqz v29, :cond_a86

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ApnEditor;->dunRequired:Z

    move/from16 v29, v0

    xor-int/lit8 v29, v29, 0x1

    if-eqz v29, :cond_a86

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mApnType_list:Landroid/support/v7/preference/SecListDialogPreference;

    move-object/from16 v29, v0

    const v30, 0x7f03000c

    invoke-virtual/range {v29 .. v30}, Landroid/support/v7/preference/SecListDialogPreference;->setEntries(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mApnType_list:Landroid/support/v7/preference/SecListDialogPreference;

    move-object/from16 v29, v0

    const v30, 0x7f030012

    invoke-virtual/range {v29 .. v30}, Landroid/support/v7/preference/SecListDialogPreference;->setEntryValues(I)V

    goto/16 :goto_31a

    :cond_a86
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ApnEditor;->dunRequired:Z

    move/from16 v29, v0

    if-eqz v29, :cond_31a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mApnType_list:Landroid/support/v7/preference/SecListDialogPreference;

    move-object/from16 v29, v0

    const v30, 0x7f03000a

    invoke-virtual/range {v29 .. v30}, Landroid/support/v7/preference/SecListDialogPreference;->setEntries(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mApnType_list:Landroid/support/v7/preference/SecListDialogPreference;

    move-object/from16 v29, v0

    const v30, 0x7f030010

    invoke-virtual/range {v29 .. v30}, Landroid/support/v7/preference/SecListDialogPreference;->setEntryValues(I)V

    goto/16 :goto_31a

    :cond_aa8
    const-string/jumbo v29, "default"

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v29

    if-eqz v29, :cond_bef

    const-string/jumbo v29, "mms"

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v29

    if-eqz v29, :cond_ae2

    const-string/jumbo v29, "dun"

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v29

    if-eqz v29, :cond_ae2

    const-string/jumbo v29, "xcap"

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v29

    if-eqz v29, :cond_ae2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mApnType_list:Landroid/support/v7/preference/SecListDialogPreference;

    move-object/from16 v29, v0

    const-string/jumbo v30, "default,supl,mms,dun,xcap"

    invoke-virtual/range {v29 .. v30}, Landroid/support/v7/preference/SecListDialogPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_381

    :cond_ae2
    const-string/jumbo v29, "mms"

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v29

    if-eqz v29, :cond_b06

    const-string/jumbo v29, "ia"

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v29

    if-eqz v29, :cond_b06

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mApnType_list:Landroid/support/v7/preference/SecListDialogPreference;

    move-object/from16 v29, v0

    const-string/jumbo v30, "default,supl,mms,ia"

    invoke-virtual/range {v29 .. v30}, Landroid/support/v7/preference/SecListDialogPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_381

    :cond_b06
    const-string/jumbo v29, "mms"

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v29

    if-eqz v29, :cond_b2a

    const-string/jumbo v29, "dun"

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v29

    if-eqz v29, :cond_b2a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mApnType_list:Landroid/support/v7/preference/SecListDialogPreference;

    move-object/from16 v29, v0

    const-string/jumbo v30, "default,supl,mms,dun"

    invoke-virtual/range {v29 .. v30}, Landroid/support/v7/preference/SecListDialogPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_381

    :cond_b2a
    const-string/jumbo v29, "dun"

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v29

    if-eqz v29, :cond_b4e

    const-string/jumbo v29, "xcap"

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v29

    if-eqz v29, :cond_b4e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mApnType_list:Landroid/support/v7/preference/SecListDialogPreference;

    move-object/from16 v29, v0

    const-string/jumbo v30, "default,supl,dun,xcap"

    invoke-virtual/range {v29 .. v30}, Landroid/support/v7/preference/SecListDialogPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_381

    :cond_b4e
    const-string/jumbo v29, "mms"

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v29

    if-eqz v29, :cond_b72

    const-string/jumbo v29, "xcap"

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v29

    if-eqz v29, :cond_b72

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mApnType_list:Landroid/support/v7/preference/SecListDialogPreference;

    move-object/from16 v29, v0

    const-string/jumbo v30, "default,supl,mms,xcap"

    invoke-virtual/range {v29 .. v30}, Landroid/support/v7/preference/SecListDialogPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_381

    :cond_b72
    const-string/jumbo v29, "mms"

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v29

    if-eqz v29, :cond_b96

    const-string/jumbo v29, "supl"

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v29

    if-eqz v29, :cond_b96

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mApnType_list:Landroid/support/v7/preference/SecListDialogPreference;

    move-object/from16 v29, v0

    const-string/jumbo v30, "default,supl,mms"

    invoke-virtual/range {v29 .. v30}, Landroid/support/v7/preference/SecListDialogPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_381

    :cond_b96
    const-string/jumbo v29, "mms"

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v29

    if-eqz v29, :cond_baf

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mApnType_list:Landroid/support/v7/preference/SecListDialogPreference;

    move-object/from16 v29, v0

    const-string/jumbo v30, "default,mms"

    invoke-virtual/range {v29 .. v30}, Landroid/support/v7/preference/SecListDialogPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_381

    :cond_baf
    const-string/jumbo v29, "dun"

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v29

    if-eqz v29, :cond_bc8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mApnType_list:Landroid/support/v7/preference/SecListDialogPreference;

    move-object/from16 v29, v0

    const-string/jumbo v30, "default,supl,dun"

    invoke-virtual/range {v29 .. v30}, Landroid/support/v7/preference/SecListDialogPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_381

    :cond_bc8
    const-string/jumbo v29, "xcap"

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v29

    if-eqz v29, :cond_be1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mApnType_list:Landroid/support/v7/preference/SecListDialogPreference;

    move-object/from16 v29, v0

    const-string/jumbo v30, "default,supl,xcap"

    invoke-virtual/range {v29 .. v30}, Landroid/support/v7/preference/SecListDialogPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_381

    :cond_be1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mApnType_list:Landroid/support/v7/preference/SecListDialogPreference;

    move-object/from16 v29, v0

    const-string/jumbo v30, "default,supl"

    invoke-virtual/range {v29 .. v30}, Landroid/support/v7/preference/SecListDialogPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_381

    :cond_bef
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mApnType_list:Landroid/support/v7/preference/SecListDialogPreference;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v30, v0

    const/16 v31, 0xf

    invoke-interface/range {v30 .. v31}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Landroid/support/v7/preference/SecListDialogPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_381

    :cond_c06
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mApnType_list:Landroid/support/v7/preference/SecListDialogPreference;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v30, v0

    const/16 v31, 0xf

    invoke-interface/range {v30 .. v31}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Landroid/support/v7/preference/SecListDialogPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_381

    :cond_c1d
    if-eqz v4, :cond_cbe

    const-string/jumbo v29, "*"

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_c38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mApnType_list:Landroid/support/v7/preference/SecListDialogPreference;

    move-object/from16 v29, v0

    const-string/jumbo v30, "default,supl,mms,xcap"

    invoke-virtual/range {v29 .. v30}, Landroid/support/v7/preference/SecListDialogPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_381

    :cond_c38
    const-string/jumbo v29, "default"

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v29

    if-eqz v29, :cond_ca7

    const-string/jumbo v29, "mms"

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v29

    if-eqz v29, :cond_c67

    const-string/jumbo v29, "xcap"

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v29

    if-eqz v29, :cond_c67

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mApnType_list:Landroid/support/v7/preference/SecListDialogPreference;

    move-object/from16 v29, v0

    const-string/jumbo v30, "default,supl,mms,xcap"

    invoke-virtual/range {v29 .. v30}, Landroid/support/v7/preference/SecListDialogPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_381

    :cond_c67
    const-string/jumbo v29, "mms"

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v29

    if-eqz v29, :cond_c80

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mApnType_list:Landroid/support/v7/preference/SecListDialogPreference;

    move-object/from16 v29, v0

    const-string/jumbo v30, "default,supl,mms"

    invoke-virtual/range {v29 .. v30}, Landroid/support/v7/preference/SecListDialogPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_381

    :cond_c80
    const-string/jumbo v29, "xcap"

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v29

    if-eqz v29, :cond_c99

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mApnType_list:Landroid/support/v7/preference/SecListDialogPreference;

    move-object/from16 v29, v0

    const-string/jumbo v30, "default,supl,xcap"

    invoke-virtual/range {v29 .. v30}, Landroid/support/v7/preference/SecListDialogPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_381

    :cond_c99
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mApnType_list:Landroid/support/v7/preference/SecListDialogPreference;

    move-object/from16 v29, v0

    const-string/jumbo v30, "default,supl"

    invoke-virtual/range {v29 .. v30}, Landroid/support/v7/preference/SecListDialogPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_381

    :cond_ca7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mApnType_list:Landroid/support/v7/preference/SecListDialogPreference;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v30, v0

    const/16 v31, 0xf

    invoke-interface/range {v30 .. v31}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Landroid/support/v7/preference/SecListDialogPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_381

    :cond_cbe
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mApnType_list:Landroid/support/v7/preference/SecListDialogPreference;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v30, v0

    const/16 v31, 0xf

    invoke-interface/range {v30 .. v31}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Landroid/support/v7/preference/SecListDialogPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_381

    :cond_cd5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ApnEditor;->mNewApn:Z

    move/from16 v29, v0

    if-eqz v29, :cond_d37

    invoke-static {}, Lcom/android/settings/Utils;->isChinaCTCModel()Z

    move-result v29

    if-nez v29, :cond_ce9

    invoke-static {}, Lcom/android/settings/Utils;->isChinaOpen()Z

    move-result v29

    if-eqz v29, :cond_d37

    :cond_ce9
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v29

    const-string/jumbo v30, "IS_CTC"

    const/16 v31, 0x0

    invoke-static/range {v29 .. v31}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v16

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v29

    const-string/jumbo v30, "IS_CTC2"

    const/16 v31, 0x0

    invoke-static/range {v29 .. v31}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ApnEditor;->mSimSlot:I

    move/from16 v29, v0

    if-nez v29, :cond_d20

    const/16 v29, 0x1

    move/from16 v0, v16

    move/from16 v1, v29

    if-ne v0, v1, :cond_d20

    :goto_d13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mAuthType:Landroid/support/v7/preference/SecListDialogPreference;

    move-object/from16 v29, v0

    const/16 v30, 0x3

    invoke-virtual/range {v29 .. v30}, Landroid/support/v7/preference/SecListDialogPreference;->setValueIndex(I)V

    goto/16 :goto_39e

    :cond_d20
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ApnEditor;->mSimSlot:I

    move/from16 v29, v0

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_39e

    const/16 v29, 0x1

    move/from16 v0, v17

    move/from16 v1, v29

    if-ne v0, v1, :cond_39e

    goto :goto_d13

    :cond_d37
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mAuthType:Landroid/support/v7/preference/SecListDialogPreference;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-virtual/range {v29 .. v30}, Landroid/support/v7/preference/SecListDialogPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_39e

    :cond_d44
    const/16 v29, 0x0

    goto/16 :goto_3e8

    :cond_d48
    const/4 v14, 0x1

    :goto_d49
    if-eqz v8, :cond_424

    and-int/lit8 v29, v8, 0x1

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_d70

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, ""

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v9, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_d70
    shr-int/lit8 v8, v8, 0x1

    add-int/lit8 v14, v14, 0x1

    goto :goto_d49

    :cond_d75
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mBearerMulti:Landroid/support/v14/preference/MultiSelectListPreference;

    move-object/from16 v29, v0

    const v30, 0x7f030029

    invoke-virtual/range {v29 .. v30}, Landroid/support/v14/preference/MultiSelectListPreference;->setEntries(I)V

    goto/16 :goto_490

    :cond_d83
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mMvnoType:Landroid/support/v7/preference/SecListDialogPreference;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v30, v0

    const/16 v31, 0x15

    invoke-interface/range {v30 .. v31}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Landroid/support/v7/preference/SecListDialogPreference;->setValue(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mMvnoMatchData:Landroid/support/v7/preference/SecEditTextPreference;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-virtual/range {v29 .. v30}, Landroid/support/v7/preference/SecEditTextPreference;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mMvnoMatchData:Landroid/support/v7/preference/SecEditTextPreference;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v30, v0

    const/16 v31, 0x16

    invoke-interface/range {v30 .. v31}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Landroid/support/v7/preference/SecEditTextPreference;->setText(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ApnEditor;->mNewApn:Z

    move/from16 v29, v0

    if-eqz v29, :cond_4e7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mMvnoTypeStr:Ljava/lang/String;

    move-object/from16 v29, v0

    if-eqz v29, :cond_4e7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mMvnoMatchDataStr:Ljava/lang/String;

    move-object/from16 v29, v0

    if-eqz v29, :cond_4e7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mMvnoType:Landroid/support/v7/preference/SecListDialogPreference;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mMvnoTypeStr:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Landroid/support/v7/preference/SecListDialogPreference;->setValue(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mMvnoMatchData:Landroid/support/v7/preference/SecEditTextPreference;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mMvnoMatchDataStr:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Landroid/support/v7/preference/SecEditTextPreference;->setText(Ljava/lang/String;)V

    goto/16 :goto_4e7

    :cond_df0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mApnType_list:Landroid/support/v7/preference/SecListDialogPreference;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/support/v7/preference/SecListDialogPreference;->getValue()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/android/settings/ApnEditor;->checkNullApn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/ApnEditor;->APN_TYPE_LIST:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mApnType_list:Landroid/support/v7/preference/SecListDialogPreference;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->APN_TYPE_LIST:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Landroid/support/v7/preference/SecListDialogPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_708

    :cond_e19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mAuthType:Landroid/support/v7/preference/SecListDialogPreference;

    move-object/from16 v29, v0

    sget-object v30, Lcom/android/settings/ApnEditor;->sNotSet:Ljava/lang/String;

    invoke-virtual/range {v29 .. v30}, Landroid/support/v7/preference/SecListDialogPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_73b

    :cond_e26
    const-string/jumbo v29, "Predefined"

    move-object/from16 v0, v29

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_e46

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/ApnEditor;->isPredefined()Z

    move-result v29

    if-eqz v29, :cond_e46

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mProtocol:Landroid/support/v7/preference/SecListDialogPreference;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-virtual/range {v29 .. v30}, Landroid/support/v7/preference/SecListDialogPreference;->setEnabled(Z)V

    goto/16 :goto_81b

    :cond_e46
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mProtocol:Landroid/support/v7/preference/SecListDialogPreference;

    move-object/from16 v29, v0

    const/16 v30, 0x1

    invoke-virtual/range {v29 .. v30}, Landroid/support/v7/preference/SecListDialogPreference;->setEnabled(Z)V

    goto/16 :goto_81b

    :cond_e53
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mProtocol:Landroid/support/v7/preference/SecListDialogPreference;

    move-object/from16 v29, v0

    const/16 v30, 0x1

    invoke-virtual/range {v29 .. v30}, Landroid/support/v7/preference/SecListDialogPreference;->setEnabled(Z)V

    goto/16 :goto_81b

    :cond_e60
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mRoamingProtocol:Landroid/support/v7/preference/SecListDialogPreference;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-virtual/range {v29 .. v30}, Landroid/support/v7/preference/SecListDialogPreference;->setEnabled(Z)V

    goto/16 :goto_844

    :cond_e6d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mRoamingProtocol:Landroid/support/v7/preference/SecListDialogPreference;

    move-object/from16 v29, v0

    const/16 v30, 0x1

    invoke-virtual/range {v29 .. v30}, Landroid/support/v7/preference/SecListDialogPreference;->setEnabled(Z)V

    goto/16 :goto_844

    :cond_e7a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ApnEditor;->mNewApn:Z

    move/from16 v29, v0

    if-nez v29, :cond_ea5

    const-string/jumbo v29, "USC"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_ea5

    invoke-static/range {v20 .. v20}, Lcom/android/settings/Utils;->isUSCSimInserted(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_ea5

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/ApnEditor;->disableEditItems()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mName:Landroid/support/v7/preference/SecEditTextPreference;

    move-object/from16 v29, v0

    const/16 v30, 0x1

    invoke-virtual/range {v29 .. v30}, Landroid/support/v7/preference/SecEditTextPreference;->setEnabled(Z)V

    goto/16 :goto_880

    :cond_ea5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ApnEditor;->mNewApn:Z

    move/from16 v29, v0

    if-nez v29, :cond_f08

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ApnEditor;->mIsSprEditable:Z

    move/from16 v29, v0

    if-eqz v29, :cond_f08

    invoke-static {}, Lcom/android/settings/Utils;->isSprModel()Z

    move-result v29

    if-eqz v29, :cond_f08

    invoke-static/range {v20 .. v20}, Lcom/android/settings/Utils;->isSPRSimInserted(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_f08

    sget-boolean v29, Lcom/android/settings/ApnEditor;->MHSDBG:Z

    xor-int/lit8 v29, v29, 0x1

    if-eqz v29, :cond_f08

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/ApnEditor;->disableEditItems()V

    const-string/jumbo v29, "APN2 EHRPD internet"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mName:Landroid/support/v7/preference/SecEditTextPreference;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/support/v7/preference/SecEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_ef0

    const-string/jumbo v29, "APN2 LTE internet"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mName:Landroid/support/v7/preference/SecEditTextPreference;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/support/v7/preference/SecEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_880

    :cond_ef0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mApn:Landroid/support/v7/preference/SecEditTextPreference;

    move-object/from16 v29, v0

    const/16 v30, 0x1

    invoke-virtual/range {v29 .. v30}, Landroid/support/v7/preference/SecEditTextPreference;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mProtocol:Landroid/support/v7/preference/SecListDialogPreference;

    move-object/from16 v29, v0

    const/16 v30, 0x1

    invoke-virtual/range {v29 .. v30}, Landroid/support/v7/preference/SecListDialogPreference;->setEnabled(Z)V

    goto/16 :goto_880

    :cond_f08
    invoke-static {}, Lcom/android/settings/Utils;->isUsOpenModel()Z

    move-result v29

    if-eqz v29, :cond_880

    invoke-static/range {v20 .. v20}, Lcom/android/settings/Utils;->isVZWSimInserted(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_f21

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ApnEditor;->mIsVzwEditable:Z

    move/from16 v29, v0

    if-nez v29, :cond_880

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/ApnEditor;->disableEditItems()V

    goto/16 :goto_880

    :cond_f21
    invoke-static/range {v20 .. v20}, Lcom/android/settings/Utils;->isUSCSimInserted(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_f3f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ApnEditor;->mNewApn:Z

    move/from16 v29, v0

    if-nez v29, :cond_880

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/ApnEditor;->disableEditItems()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mName:Landroid/support/v7/preference/SecEditTextPreference;

    move-object/from16 v29, v0

    const/16 v30, 0x1

    invoke-virtual/range {v29 .. v30}, Landroid/support/v7/preference/SecEditTextPreference;->setEnabled(Z)V

    goto/16 :goto_880

    :cond_f3f
    invoke-static/range {v20 .. v20}, Lcom/android/settings/Utils;->isSPRSimInserted(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_880

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ApnEditor;->mNewApn:Z

    move/from16 v29, v0

    if-nez v29, :cond_880

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ApnEditor;->mIsSprEditable:Z

    move/from16 v29, v0

    if-eqz v29, :cond_880

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/ApnEditor;->disableEditItems()V

    const-string/jumbo v29, "APN2 EHRPD internet"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mName:Landroid/support/v7/preference/SecEditTextPreference;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/support/v7/preference/SecEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_f7e

    const-string/jumbo v29, "APN2 LTE internet"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mName:Landroid/support/v7/preference/SecEditTextPreference;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/support/v7/preference/SecEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_880

    :cond_f7e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mApn:Landroid/support/v7/preference/SecEditTextPreference;

    move-object/from16 v29, v0

    const/16 v30, 0x1

    invoke-virtual/range {v29 .. v30}, Landroid/support/v7/preference/SecEditTextPreference;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mProtocol:Landroid/support/v7/preference/SecListDialogPreference;

    move-object/from16 v29, v0

    const/16 v30, 0x1

    invoke-virtual/range {v29 .. v30}, Landroid/support/v7/preference/SecListDialogPreference;->setEnabled(Z)V

    goto/16 :goto_880

    :cond_f96
    const-string/jumbo v29, "45008"

    move-object/from16 v0, v29

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_fb0

    const-string/jumbo v29, "45002"

    move-object/from16 v0, v29

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_fc6

    :cond_fb0
    const/16 v29, 0x3e9

    move/from16 v0, v29

    if-eq v0, v15, :cond_fbc

    const/16 v29, 0x3ea

    move/from16 v0, v29

    if-ne v0, v15, :cond_fc6

    :cond_fbc
    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/ApnEditor;->mEditable:Z

    goto/16 :goto_908

    :cond_fc6
    const-string/jumbo v29, "45006"

    move-object/from16 v0, v29

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_908

    const/16 v29, 0x3eb

    move/from16 v0, v29

    if-ne v0, v15, :cond_908

    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/ApnEditor;->mEditable:Z

    goto/16 :goto_908

    :cond_fe3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mApn:Landroid/support/v7/preference/SecEditTextPreference;

    move-object/from16 v29, v0

    const/16 v30, 0x1

    invoke-virtual/range {v29 .. v30}, Landroid/support/v7/preference/SecEditTextPreference;->setEnabled(Z)V

    goto/16 :goto_9a3

    :cond_ff0
    invoke-static {}, Lcom/android/settings/Utils;->isSprModel()Z

    move-result v29

    if-eqz v29, :cond_1044

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ApnEditor;->mIsSprEditable:Z

    move/from16 v29, v0

    if-eqz v29, :cond_101e

    invoke-static/range {v20 .. v20}, Lcom/android/settings/Utils;->isSPRSimInserted(Ljava/lang/String;)Z

    move-result v29

    xor-int/lit8 v29, v29, 0x1

    if-eqz v29, :cond_101e

    sget-object v29, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    const-string/jumbo v30, "isSprEditable = true"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v29, "apn_edit"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v29

    const/16 v30, 0x1

    invoke-virtual/range {v29 .. v30}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    :cond_101e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ApnEditor;->mIsSprEditable:Z

    move/from16 v29, v0

    if-eqz v29, :cond_9a3

    sget-boolean v29, Lcom/android/settings/ApnEditor;->MHSDBG:Z

    if-eqz v29, :cond_9a3

    sget-object v29, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    const-string/jumbo v30, "eng/noship editable open all item"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v29, "apn_edit"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v29

    const/16 v30, 0x1

    invoke-virtual/range {v29 .. v30}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_9a3

    :cond_1044
    invoke-static {}, Lcom/android/settings/Utils;->isUsOpenModel()Z

    move-result v29

    if-eqz v29, :cond_10a6

    invoke-static/range {v20 .. v20}, Lcom/android/settings/Utils;->isVZWSimInserted(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_1070

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ApnEditor;->mIsVzwEditable:Z

    move/from16 v29, v0

    if-eqz v29, :cond_109a

    sget-object v29, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    const-string/jumbo v30, "isVzwEditable = true"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v29, "apn_edit"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v29

    const/16 v30, 0x1

    invoke-virtual/range {v29 .. v30}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    :cond_1070
    :goto_1070
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ApnEditor;->mIsSprEditable:Z

    move/from16 v29, v0

    if-eqz v29, :cond_9a3

    invoke-static/range {v20 .. v20}, Lcom/android/settings/Utils;->isSPRSimInserted(Ljava/lang/String;)Z

    move-result v29

    xor-int/lit8 v29, v29, 0x1

    if-eqz v29, :cond_9a3

    sget-object v29, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    const-string/jumbo v30, "isSprEditable = true"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v29, "apn_edit"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v29

    const/16 v30, 0x1

    invoke-virtual/range {v29 .. v30}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_9a3

    :cond_109a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mApn:Landroid/support/v7/preference/SecEditTextPreference;

    move-object/from16 v29, v0

    const/16 v30, 0x1

    invoke-virtual/range {v29 .. v30}, Landroid/support/v7/preference/SecEditTextPreference;->setEnabled(Z)V

    goto :goto_1070

    :cond_10a6
    const-string/jumbo v29, "XSA"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_11f1

    sget-boolean v29, Lcom/android/settings/ApnEditor;->MHENG:Z

    if-eqz v29, :cond_10d1

    sget-object v29, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    const-string/jumbo v30, "XSA eng/noship editable open all item"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v29, "apn_edit"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v29

    const/16 v30, 0x1

    invoke-virtual/range {v29 .. v30}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_9a3

    :cond_10d1
    const-string/jumbo v29, "50501"

    move-object/from16 v0, v29

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_1144

    const-string/jumbo v29, "ims"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mApn:Landroid/support/v7/preference/SecEditTextPreference;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/support/v7/preference/SecEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_112a

    const-string/jumbo v29, "hos"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mApn:Landroid/support/v7/preference/SecEditTextPreference;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/support/v7/preference/SecEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_112a

    const-string/jumbo v29, "telstra.wap"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mApn:Landroid/support/v7/preference/SecEditTextPreference;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/support/v7/preference/SecEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_112a

    const-string/jumbo v29, "telstra.mms"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mApn:Landroid/support/v7/preference/SecEditTextPreference;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/support/v7/preference/SecEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_9a3

    :cond_112a
    sget-object v29, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    const-string/jumbo v30, "XSA telstra make noneEditable"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v29, "apn_edit"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v29

    const/16 v30, 0x0

    invoke-virtual/range {v29 .. v30}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_9a3

    :cond_1144
    const-string/jumbo v29, "50502"

    move-object/from16 v0, v29

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_11a4

    const-string/jumbo v29, "yesbusiness"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mApn:Landroid/support/v7/preference/SecEditTextPreference;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/support/v7/preference/SecEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_118a

    const-string/jumbo v29, "yesinternet"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mApn:Landroid/support/v7/preference/SecEditTextPreference;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/support/v7/preference/SecEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_118a

    const-string/jumbo v29, "mms"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mApn:Landroid/support/v7/preference/SecEditTextPreference;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/support/v7/preference/SecEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_9a3

    :cond_118a
    sget-object v29, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    const-string/jumbo v30, "XSA optus make noneEditable"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v29, "apn_edit"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v29

    const/16 v30, 0x0

    invoke-virtual/range {v29 .. v30}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_9a3

    :cond_11a4
    const-string/jumbo v29, "50503"

    move-object/from16 v0, v29

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_9a3

    const-string/jumbo v29, "ims"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mApn:Landroid/support/v7/preference/SecEditTextPreference;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/support/v7/preference/SecEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_11d7

    const-string/jumbo v29, "live.vodafone.com"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mApn:Landroid/support/v7/preference/SecEditTextPreference;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/support/v7/preference/SecEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_9a3

    :cond_11d7
    sget-object v29, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    const-string/jumbo v30, "XSA vodafone make noneEditable"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v29, "apn_edit"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v29

    const/16 v30, 0x0

    invoke-virtual/range {v29 .. v30}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_9a3

    :cond_11f1
    const-string/jumbo v29, "ATT"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_9a3

    const-string/jumbo v29, "310150"

    move-object/from16 v0, v29

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_9a3

    const-string/jumbo v29, "ndo"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mApn:Landroid/support/v7/preference/SecEditTextPreference;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/support/v7/preference/SecEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_9a3

    sget-object v29, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    const-string/jumbo v30, "ATT nod make noneEditable"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v29, "apn_edit"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v29

    const/16 v30, 0x0

    invoke-virtual/range {v29 .. v30}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_9a3

    :cond_1238
    invoke-static {}, Lcom/android/settings/Utils;->isJapanKDIModel()Z

    move-result v29

    if-eqz v29, :cond_1272

    sget-object v29, Lcom/android/settings/ApnEditor;->sNotSet:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mApnType:Landroid/support/v7/preference/SecEditTextPreference;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/support/v7/preference/SecEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_9db

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mApnType:Landroid/support/v7/preference/SecEditTextPreference;

    move-object/from16 v29, v0

    const-string/jumbo v30, "default,supl,hipri"

    invoke-virtual/range {v29 .. v30}, Landroid/support/v7/preference/SecEditTextPreference;->setText(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mApnType:Landroid/support/v7/preference/SecEditTextPreference;

    move-object/from16 v29, v0

    const-string/jumbo v30, "default,supl,hipri"

    invoke-virtual/range {v29 .. v30}, Landroid/support/v7/preference/SecEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_9db

    :cond_1272
    const-string/jumbo v29, "ATT"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_12a1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ApnEditor;->isInserting:Z

    move/from16 v29, v0

    if-eqz v29, :cond_9db

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mApnType:Landroid/support/v7/preference/SecEditTextPreference;

    move-object/from16 v29, v0

    const-string/jumbo v30, "default,hipri"

    invoke-virtual/range {v29 .. v30}, Landroid/support/v7/preference/SecEditTextPreference;->setText(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mApnType:Landroid/support/v7/preference/SecEditTextPreference;

    move-object/from16 v29, v0

    const-string/jumbo v30, "default,hipri"

    invoke-virtual/range {v29 .. v30}, Landroid/support/v7/preference/SecEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_9db

    :cond_12a1
    invoke-static {}, Lcom/android/settings/Utils;->isUsOpenModel()Z

    move-result v29

    if-eqz v29, :cond_9db

    invoke-static/range {v20 .. v20}, Lcom/android/settings/Utils;->isATTSimInserted(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_9db

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ApnEditor;->isInserting:Z

    move/from16 v29, v0

    if-eqz v29, :cond_9db

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mApnType:Landroid/support/v7/preference/SecEditTextPreference;

    move-object/from16 v29, v0

    const-string/jumbo v30, "default,hipri"

    invoke-virtual/range {v29 .. v30}, Landroid/support/v7/preference/SecEditTextPreference;->setText(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mApnType:Landroid/support/v7/preference/SecEditTextPreference;

    move-object/from16 v29, v0

    const-string/jumbo v30, "default,hipri"

    invoke-virtual/range {v29 .. v30}, Landroid/support/v7/preference/SecEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_9db

    :cond_12cf
    const/4 v3, 0x0

    goto/16 :goto_9fe

    :cond_12d2
    const/16 v18, 0x0

    goto/16 :goto_a15

    :cond_12d6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mCarrierEnabled:Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-virtual/range {v29 .. v30}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    goto/16 :goto_a29

    :cond_12e3
    const/16 v29, 0x0

    goto/16 :goto_a3c
.end method

.method private getErrorMsg()Ljava/lang/String;
    .registers 15

    const v13, 0xffff

    const/4 v12, 0x2

    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v1, 0x0

    iget-object v8, p0, Lcom/android/settings/ApnEditor;->mName:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v8}, Landroid/support/v7/preference/SecEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v8, p0, Lcom/android/settings/ApnEditor;->mApn:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v8}, Landroid/support/v7/preference/SecEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v8, p0, Lcom/android/settings/ApnEditor;->mMcc:Landroid/support/v7/preference/SecEditNumPreference;

    invoke-virtual {v8}, Landroid/support/v7/preference/SecEditNumPreference;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v8, p0, Lcom/android/settings/ApnEditor;->mMnc:Landroid/support/v7/preference/SecEditNumPreference;

    invoke-virtual {v8}, Landroid/support/v7/preference/SecEditNumPreference;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v8, p0, Lcom/android/settings/ApnEditor;->mPort:Landroid/support/v7/preference/SecEditNumPreference;

    invoke-virtual {v8}, Landroid/support/v7/preference/SecEditNumPreference;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-lt v8, v10, :cond_44

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    :cond_44
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v8, v10, :cond_54

    iget-object v8, p0, Lcom/android/settings/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v9, 0x7f1209ad

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_53
    :goto_53
    return-object v1

    :cond_54
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v8, v10, :cond_64

    iget-object v8, p0, Lcom/android/settings/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v9, 0x7f1209a8

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_53

    :cond_64
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x3

    if-eq v8, v9, :cond_75

    iget-object v8, p0, Lcom/android/settings/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v9, 0x7f1209aa

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_53

    :cond_75
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    const v9, 0xfffe

    and-int/2addr v8, v9

    if-eq v8, v12, :cond_89

    iget-object v8, p0, Lcom/android/settings/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v9, 0x7f1209ac

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_53

    :cond_89
    if-le v7, v13, :cond_a7

    iget-object v8, p0, Lcom/android/settings/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v9, 0x7f1209ab

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v8, v12, [Ljava/lang/Object;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v2, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_53

    :cond_a7
    const-string/jumbo v8, "CSC"

    invoke-direct {p0, v8}, Lcom/android/settings/ApnEditor;->isDefinedApn(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_53

    iget-boolean v8, p0, Lcom/android/settings/ApnEditor;->mNewApn:Z

    if-nez v8, :cond_c1

    iget-boolean v8, p0, Lcom/android/settings/ApnEditor;->isNoWarning:Z

    if-nez v8, :cond_53

    const-string/jumbo v8, "Telephony"

    invoke-direct {p0, v8}, Lcom/android/settings/ApnEditor;->isDefinedApn(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_53

    :cond_c1
    iget-object v8, p0, Lcom/android/settings/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v9, 0x7f1201a2

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_53
.end method

.method private getPreferenceFromFieldName(Ljava/lang/String;)Landroid/support/v7/preference/Preference;
    .registers 3

    const-string/jumbo v0, "name"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mName:Landroid/support/v7/preference/SecEditTextPreference;

    return-object v0

    :cond_c
    const-string/jumbo v0, "apn"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mApn:Landroid/support/v7/preference/SecEditTextPreference;

    return-object v0

    :cond_18
    const-string/jumbo v0, "proxy"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mProxy:Landroid/support/v7/preference/SecEditTextPreference;

    return-object v0

    :cond_24
    const-string/jumbo v0, "port"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mPort:Landroid/support/v7/preference/SecEditNumPreference;

    return-object v0

    :cond_30
    const-string/jumbo v0, "user"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mUser:Landroid/support/v7/preference/SecEditTextPreference;

    return-object v0

    :cond_3c
    const-string/jumbo v0, "server"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mServer:Landroid/support/v7/preference/SecEditTextPreference;

    return-object v0

    :cond_48
    const-string/jumbo v0, "password"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_54

    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mPassword:Landroid/support/v7/preference/SecEditTextPreference;

    return-object v0

    :cond_54
    const-string/jumbo v0, "mmsproxy"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_60

    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mMmsProxy:Landroid/support/v7/preference/SecEditTextPreference;

    return-object v0

    :cond_60
    const-string/jumbo v0, "mmsport"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6c

    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mMmsPort:Landroid/support/v7/preference/SecEditNumPreference;

    return-object v0

    :cond_6c
    const-string/jumbo v0, "mmsc"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_78

    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mMmsc:Landroid/support/v7/preference/SecEditTextPreference;

    return-object v0

    :cond_78
    const-string/jumbo v0, "mcc"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_84

    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mMcc:Landroid/support/v7/preference/SecEditNumPreference;

    return-object v0

    :cond_84
    const-string/jumbo v0, "mnc"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_90

    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mMnc:Landroid/support/v7/preference/SecEditNumPreference;

    return-object v0

    :cond_90
    const-string/jumbo v0, "type"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9c

    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mApnType:Landroid/support/v7/preference/SecEditTextPreference;

    return-object v0

    :cond_9c
    const-string/jumbo v0, "authtype"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a8

    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mAuthType:Landroid/support/v7/preference/SecListDialogPreference;

    return-object v0

    :cond_a8
    const-string/jumbo v0, "protocol"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b4

    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mProtocol:Landroid/support/v7/preference/SecListDialogPreference;

    return-object v0

    :cond_b4
    const-string/jumbo v0, "roaming_protocol"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c0

    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mRoamingProtocol:Landroid/support/v7/preference/SecListDialogPreference;

    return-object v0

    :cond_c0
    const-string/jumbo v0, "carrier_enabled"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cc

    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mCarrierEnabled:Landroid/support/v14/preference/SwitchPreference;

    return-object v0

    :cond_cc
    const-string/jumbo v0, "bearer"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d8

    :cond_d5
    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mBearerMulti:Landroid/support/v14/preference/MultiSelectListPreference;

    return-object v0

    :cond_d8
    const-string/jumbo v0, "bearer_bitmask"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d5

    const-string/jumbo v0, "mvno_type"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ed

    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mMvnoType:Landroid/support/v7/preference/SecListDialogPreference;

    return-object v0

    :cond_ed
    const-string/jumbo v0, "mvno_match_data"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f9

    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mMvnoMatchData:Landroid/support/v7/preference/SecEditTextPreference;

    return-object v0

    :cond_f9
    const/4 v0, 0x0

    return-object v0
.end method

.method private getSelectedApnKey()Ljava/lang/String;
    .registers 9

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x0

    iget v4, p0, Lcom/android/settings/ApnEditor;->mSimSlot:I

    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v4

    aget v4, v4, v6

    int-to-long v2, v4

    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getContext()Landroid/content/Context;

    move-result-object v4

    iget v5, p0, Lcom/android/settings/ApnEditor;->mSimSlot:I

    invoke-direct {p0, v4, v5, v2, v3}, Lcom/android/settings/ApnEditor;->getSelectedApnKeyCursor(Landroid/content/Context;IJ)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_19

    return-object v7

    :cond_19
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_26

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_26
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object v1
.end method

.method private getSelectedApnKeyCursor(Landroid/content/Context;IJ)Landroid/database/Cursor;
    .registers 12

    const/4 v3, 0x0

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/settings/ApnSettings;->PREFERAPN_URI_USING_SUBID:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v4, "_id"

    const/4 v5, 0x0

    aput-object v4, v2, v5

    const-string/jumbo v5, "name ASC"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    return-object v6
.end method

.method private hasAllApns([Ljava/lang/String;)Z
    .registers 6

    const/4 v3, 0x1

    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v1, 0x0

    return v1

    :cond_9
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string/jumbo v1, "*"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    sget-object v1, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "hasAllApns: true because apnList.contains(PhoneConstants.APN_TYPE_ALL)"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1f
    sget-object v1, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "hasAllApns: true"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method private isDefinedApn(Ljava/lang/String;)Z
    .registers 13

    const/4 v10, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/settings/ApnEditor;->mMcc:Landroid/support/v7/preference/SecEditNumPreference;

    invoke-virtual {v1}, Landroid/support/v7/preference/SecEditNumPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ApnEditor;->mMnc:Landroid/support/v7/preference/SecEditNumPreference;

    invoke-virtual {v1}, Landroid/support/v7/preference/SecEditNumPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v6, 0x0

    new-instance v3, Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "numeric = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\' AND name = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ApnEditor;->mName:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v1}, Landroid/support/v7/preference/SecEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\' AND apn = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ApnEditor;->mApn:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v1}, Landroid/support/v7/preference/SecEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\' AND proxy = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ApnEditor;->mProxy:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v1}, Landroid/support/v7/preference/SecEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\' AND mmsproxy = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ApnEditor;->mMmsProxy:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v1}, Landroid/support/v7/preference/SecEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\' AND port = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ApnEditor;->mPort:Landroid/support/v7/preference/SecEditNumPreference;

    invoke-virtual {v1}, Landroid/support/v7/preference/SecEditNumPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\' AND mmsport = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ApnEditor;->mMmsPort:Landroid/support/v7/preference/SecEditNumPreference;

    invoke-virtual {v1}, Landroid/support/v7/preference/SecEditNumPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\' AND mmsc = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ApnEditor;->mMmsc:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v1}, Landroid/support/v7/preference/SecEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\' AND type = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ApnEditor;->mApnType:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v1}, Landroid/support/v7/preference/SecEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\' AND protocol = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ApnEditor;->mProtocol:Landroid/support/v7/preference/SecListDialogPreference;

    invoke-virtual {v1}, Landroid/support/v7/preference/SecListDialogPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\' AND roaming_protocol  = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ApnEditor;->mRoamingProtocol:Landroid/support/v7/preference/SecListDialogPreference;

    invoke-virtual {v1}, Landroid/support/v7/preference/SecListDialogPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :try_start_ea
    const-string/jumbo v0, "Telephony"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17f

    invoke-static {}, Lcom/android/settings/Utils;->isMultisimModel()Z

    move-result v0

    if-eqz v0, :cond_111

    iget v0, p0, Lcom/android/settings/ApnEditor;->mSimSlot:I

    if-ne v0, v10, :cond_16a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " AND current1 = 1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_111
    :goto_111
    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    :cond_11e
    :goto_11e
    sget-object v0, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isDefinedApn() selection : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v6, :cond_140

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_13c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_ea .. :try_end_13c} :catch_19b
    .catchall {:try_start_ea .. :try_end_13c} :catchall_1bb

    move-result v0

    if-lt v0, v10, :cond_140

    const/4 v9, 0x1

    :cond_140
    if-eqz v6, :cond_145

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_145
    :goto_145
    sget-object v0, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isDefinedApn : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " result : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v9

    :cond_16a
    :try_start_16a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " AND current = 1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_111

    :cond_17f
    const-string/jumbo v0, "CSC"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11e

    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "content://nwkinfo/nwkinfo/carriers"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_199
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_16a .. :try_end_199} :catch_19b
    .catchall {:try_start_16a .. :try_end_199} :catchall_1bb

    move-result-object v6

    goto :goto_11e

    :catch_19b
    move-exception v7

    :try_start_19c
    sget-object v0, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Exception caught  : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b5
    .catchall {:try_start_19c .. :try_end_1b5} :catchall_1bb

    if-eqz v6, :cond_145

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_145

    :catchall_1bb
    move-exception v0

    if-eqz v6, :cond_1c1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1c1
    throw v0
.end method

.method private isDunExist()Z
    .registers 13

    sget-object v0, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "isDunExist"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_RIL_ConfigNetworkTypeCapability"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/settings/ApnEditor;->mMcc:Landroid/support/v7/preference/SecEditNumPreference;

    invoke-virtual {v1}, Landroid/support/v7/preference/SecEditNumPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ApnEditor;->mMnc:Landroid/support/v7/preference/SecEditNumPreference;

    invoke-virtual {v1}, Landroid/support/v7/preference/SecEditNumPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v8, 0x0

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_40

    sget-object v0, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "No numeric data"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    :cond_40
    const/4 v6, 0x0

    new-instance v3, Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "numeric = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :try_start_61
    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "content://nwkinfo/nwkinfo/carriers"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_cb

    sget-object v0, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Query databases to find dun type"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_cb

    :cond_83
    const-string/jumbo v0, "type"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c5

    const-string/jumbo v0, "dun"

    invoke-virtual {v11, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c5

    const-string/jumbo v0, "default"

    invoke-virtual {v11, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_bc

    const-string/jumbo v0, "TGY"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_bc

    const-string/jumbo v0, "CAN"

    invoke-virtual {v9, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c5

    :cond_bc
    sget-object v0, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Dun type is exist"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x1

    :cond_c5
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_c8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_61 .. :try_end_c8} :catch_d1
    .catchall {:try_start_61 .. :try_end_c8} :catchall_f1

    move-result v0

    if-nez v0, :cond_83

    :cond_cb
    if-eqz v6, :cond_d0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_d0
    return v8

    :catch_d1
    move-exception v7

    :try_start_d2
    sget-object v0, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Exception caught to query databases : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_eb
    .catchall {:try_start_d2 .. :try_end_eb} :catchall_f1

    if-eqz v6, :cond_f0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_f0
    return v8

    :catchall_f1
    move-exception v0

    if-eqz v6, :cond_f7

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_f7
    throw v0
.end method

.method private isEditable()Z
    .registers 11

    const/4 v8, 0x1

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mName:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v0}, Landroid/support/v7/preference/SecEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_e

    invoke-direct {p0, v9}, Lcom/android/settings/ApnEditor;->changeNwkNameQuotesString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    :cond_e
    new-instance v3, Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "(name = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\' AND numeric = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ApnEditor;->mMcc:Landroid/support/v7/preference/SecEditNumPreference;

    invoke-virtual {v1}, Landroid/support/v7/preference/SecEditNumPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ApnEditor;->mMnc:Landroid/support/v7/preference/SecEditNumPreference;

    invoke-virtual {v1}, Landroid/support/v7/preference/SecEditNumPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\' AND apn = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ApnEditor;->mApn:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v1}, Landroid/support/v7/preference/SecEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "selection="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_73
    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "content://nwkinfo/nwkinfo/carriers"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_e3

    sget-object v0, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "No carriers in nwkinfo provider"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isEditable count of cursor : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_d1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_d1

    :cond_b9
    const-string/jumbo v0, "1"

    const-string/jumbo v1, "editable"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_b9

    :cond_d1
    sget-boolean v0, Lcom/android/settings/ApnEditor;->MHENG:Z

    if-eqz v0, :cond_e3

    const-string/jumbo v0, "TEL"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_df
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_73 .. :try_end_df} :catch_102
    .catchall {:try_start_73 .. :try_end_df} :catchall_122

    move-result v0

    if-eqz v0, :cond_e3

    const/4 v8, 0x1

    :cond_e3
    if-eqz v6, :cond_e8

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_e8
    :goto_e8
    sget-object v0, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isEditable  : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    :catch_102
    move-exception v7

    :try_start_103
    sget-object v0, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Exception caught  : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11c
    .catchall {:try_start_103 .. :try_end_11c} :catchall_122

    if-eqz v6, :cond_e8

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_e8

    :catchall_122
    move-exception v0

    if-eqz v6, :cond_128

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_128
    throw v0
.end method

.method private isImsExist()Z
    .registers 12

    sget-object v0, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "isImsExist()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/settings/ApnEditor;->mMcc:Landroid/support/v7/preference/SecEditNumPreference;

    invoke-virtual {v1}, Landroid/support/v7/preference/SecEditNumPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ApnEditor;->mMnc:Landroid/support/v7/preference/SecEditNumPreference;

    invoke-virtual {v1}, Landroid/support/v7/preference/SecEditNumPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v8, 0x0

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_35

    sget-object v0, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "No numeric data"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    :cond_35
    const/4 v6, 0x0

    new-instance v3, Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "numeric = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :try_start_56
    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "content://nwkinfo/nwkinfo/carriers"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_a1

    sget-object v0, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Query databases to find ims type"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_a1

    :cond_78
    const-string/jumbo v0, "type"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9b

    const-string/jumbo v0, "ims"

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9b

    sget-object v0, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "IMS type is exist"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x1

    :cond_9b
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_9e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_56 .. :try_end_9e} :catch_a7
    .catchall {:try_start_56 .. :try_end_9e} :catchall_c7

    move-result v0

    if-nez v0, :cond_78

    :cond_a1
    if-eqz v6, :cond_a6

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_a6
    return v8

    :catch_a7
    move-exception v7

    :try_start_a8
    sget-object v0, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Exception caught to query databases : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c1
    .catchall {:try_start_a8 .. :try_end_c1} :catchall_c7

    if-eqz v6, :cond_c6

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_c6
    return v8

    :catchall_c7
    move-exception v0

    if-eqz v6, :cond_cd

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_cd
    throw v0
.end method

.method private isPredefined()Z
    .registers 12

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/settings/ApnEditor;->mMcc:Landroid/support/v7/preference/SecEditNumPreference;

    invoke-virtual {v1}, Landroid/support/v7/preference/SecEditNumPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ApnEditor;->mMnc:Landroid/support/v7/preference/SecEditNumPreference;

    invoke-virtual {v1}, Landroid/support/v7/preference/SecEditNumPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mName:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v0}, Landroid/support/v7/preference/SecEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_2b

    invoke-direct {p0, v8}, Lcom/android/settings/ApnEditor;->changeNwkNameQuotesString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    :cond_2b
    new-instance v3, Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "(name = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\' AND numeric = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\' AND apn = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ApnEditor;->mApn:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v1}, Landroid/support/v7/preference/SecEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isPredefined() selection="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_80
    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "content://nwkinfo/nwkinfo/carriers"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_9c

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_97
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_80 .. :try_end_97} :catch_bb
    .catchall {:try_start_80 .. :try_end_97} :catchall_db

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_9c

    const/4 v10, 0x1

    :cond_9c
    if-eqz v6, :cond_a1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_a1
    :goto_a1
    sget-object v0, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isPredefined : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v10

    :catch_bb
    move-exception v7

    :try_start_bc
    sget-object v0, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Exception caught  : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d5
    .catchall {:try_start_bc .. :try_end_d5} :catchall_db

    if-eqz v6, :cond_a1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_a1

    :catchall_db
    move-exception v0

    if-eqz v6, :cond_e1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_e1
    throw v0
.end method

.method private mvnoDescription(Ljava/lang/String;)Ljava/lang/String;
    .registers 14

    const/4 v11, 0x0

    const/4 v8, 0x0

    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mMvnoType:Landroid/support/v7/preference/SecListDialogPreference;

    invoke-virtual {v7, p1}, Landroid/support/v7/preference/SecListDialogPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mMvnoType:Landroid/support/v7/preference/SecListDialogPreference;

    invoke-virtual {v7}, Landroid/support/v7/preference/SecListDialogPreference;->getValue()Ljava/lang/String;

    move-result-object v5

    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v9, p0, Lcom/android/settings/ApnEditor;->mSimSlot:I

    invoke-static {v9}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v9

    aget v9, v9, v8

    invoke-virtual {v7, v9}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v4

    const/4 v7, -0x1

    if-ne v2, v7, :cond_20

    return-object v11

    :cond_20
    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v9, 0x7f0300e5

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    iget-object v9, p0, Lcom/android/settings/ApnEditor;->mMvnoMatchData:Landroid/support/v7/preference/SecEditTextPreference;

    if-eqz v2, :cond_51

    const/4 v7, 0x1

    :goto_2e
    invoke-virtual {v9, v7}, Landroid/support/v7/preference/SecEditTextPreference;->setEnabled(Z)V

    if-eqz p1, :cond_4e

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4e

    aget-object v7, v6, v2

    const-string/jumbo v9, "SPN"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_53

    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mMvnoMatchData:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v7, v4}, Landroid/support/v7/preference/SecEditTextPreference;->setText(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mMvnoMatchData:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v7, v4}, Landroid/support/v7/preference/SecEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_4e
    :goto_4e
    :try_start_4e
    aget-object v7, v6, v2
    :try_end_50
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_4e .. :try_end_50} :catch_dc

    return-object v7

    :cond_51
    move v7, v8

    goto :goto_2e

    :cond_53
    aget-object v7, v6, v2

    const-string/jumbo v9, "IMSI"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a9

    const-string/jumbo v3, ""

    :try_start_61
    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v8, 0x16

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_68
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_61 .. :try_end_68} :catch_8e

    move-result-object v3

    :goto_69
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_83

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_83
    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mMvnoMatchData:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v7, v3}, Landroid/support/v7/preference/SecEditTextPreference;->setText(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mMvnoMatchData:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v7, v3}, Landroid/support/v7/preference/SecEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_4e

    :catch_8e
    move-exception v0

    sget-object v7, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "mvnoDescription Exception caught : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_69

    :cond_a9
    aget-object v7, v6, v2

    const-string/jumbo v9, "GID"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4e

    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mMvnoMatchData:Landroid/support/v7/preference/SecEditTextPreference;

    iget-object v9, p0, Lcom/android/settings/ApnEditor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v10, p0, Lcom/android/settings/ApnEditor;->mSimSlot:I

    invoke-static {v10}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v10

    aget v10, v10, v8

    invoke-virtual {v9, v10}, Landroid/telephony/TelephonyManager;->getGroupIdLevel1(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/support/v7/preference/SecEditTextPreference;->setText(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mMvnoMatchData:Landroid/support/v7/preference/SecEditTextPreference;

    iget-object v9, p0, Lcom/android/settings/ApnEditor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v10, p0, Lcom/android/settings/ApnEditor;->mSimSlot:I

    invoke-static {v10}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v10

    aget v8, v10, v8

    invoke-virtual {v9, v8}, Landroid/telephony/TelephonyManager;->getGroupIdLevel1(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/support/v7/preference/SecEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_4e

    :catch_dc
    move-exception v1

    return-object v11
.end method

.method private protocolDescription(Ljava/lang/String;Landroid/support/v7/preference/SecListDialogPreference;)Ljava/lang/String;
    .registers 10

    const/4 v6, 0x0

    const-string/jumbo v3, "IPV4"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-static {}, Lcom/android/settings/Utils;->isSprModel()Z

    move-result v3

    if-eqz v3, :cond_13

    const-string/jumbo p1, "IP"

    :cond_13
    invoke-virtual {p2, p1}, Landroid/support/v7/preference/SecListDialogPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_1b

    return-object v6

    :cond_1b
    iget-object v3, p0, Lcom/android/settings/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f03000d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    :try_start_24
    sget-object v3, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "protocolDescription raw : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "protocolIndex : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "protocolDescription value : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v2, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    aget-object v3, v2, v1
    :try_end_65
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_24 .. :try_end_65} :catch_66

    return-object v3

    :catch_66
    move-exception v0

    return-object v6
.end method

.method private starify(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_b

    :cond_8
    sget-object v2, Lcom/android/settings/ApnEditor;->sNotSet:Ljava/lang/String;

    return-object v2

    :cond_b
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    new-array v1, v2, [C

    const/4 v0, 0x0

    :goto_12
    array-length v2, v1

    if-ge v0, v2, :cond_1c

    const/16 v2, 0x2a

    aput-char v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_1c
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    return-object v2
.end method

.method private validateAndSave(Z)Z
    .registers 29

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ApnEditor;->mHasUserEditedApn:Z

    if-nez v2, :cond_8

    const/4 v2, 0x1

    return v2

    :cond_8
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ApnEditor;->mHasMdmEditedApn:Z

    if-eqz v2, :cond_18

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ApnEditor;->mHasUserEditedApn:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_18

    const/4 v2, 0x1

    return v2

    :cond_18
    invoke-static {}, Lcom/android/settings/Utils;->isSprModel()Z

    move-result v2

    if-eqz v2, :cond_36

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ApnEditor;->mIsSprDiableAll:Z

    if-eqz v2, :cond_36

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ApnEditor;->mIsSprEditable:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_36

    sget-object v2, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "carrier edit 4, do not update apn!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    return v2

    :cond_36
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnEditor;->mName:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v2}, Landroid/support/v7/preference/SecEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnEditor;->mApn:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v2}, Landroid/support/v7/preference/SecEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnEditor;->mMcc:Landroid/support/v7/preference/SecEditNumPreference;

    invoke-virtual {v2}, Landroid/support/v7/preference/SecEditNumPreference;->getText()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnEditor;->mMnc:Landroid/support/v7/preference/SecEditNumPreference;

    invoke-virtual {v2}, Landroid/support/v7/preference/SecEditNumPreference;->getText()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnEditor;->mPort:Landroid/support/v7/preference/SecEditNumPreference;

    invoke-virtual {v2}, Landroid/support/v7/preference/SecEditNumPreference;->getText()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_89

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v24

    :cond_89
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnEditor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/ApnEditor;->mSimSlot:I

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v3

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/ApnEditor;->getErrorMsg()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_be

    xor-int/lit8 v2, p1, 0x1

    if-eqz v2, :cond_be

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/settings/ApnEditor$ErrorDialog;->showError(Lcom/android/settings/ApnEditor;I)V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-string/jumbo v6, "ApnEditor"

    const-string/jumbo v7, "Saving APN  failed"

    const/4 v2, 0x5

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    return v2

    :cond_be
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_e2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-string/jumbo v6, "ApnEditor"

    const-string/jumbo v7, "Saving APN  failed"

    const/4 v2, 0x5

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Could not go to the first row in the Cursor when saving data."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return v2

    :cond_e2
    const-string/jumbo v2, "ATT"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_102

    const-string/jumbo v2, "AIO"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_125

    invoke-static {}, Lcom/android/settings/Utils;->isSupportDunTypeBlockAIO()Z

    move-result v2

    if-eqz v2, :cond_125

    :cond_102
    const-string/jumbo v9, ""

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnEditor;->mApnType:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v2}, Landroid/support/v7/preference/SecEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v2, "dun"

    invoke-virtual {v9, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_125

    const/16 v2, 0xa

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/settings/ApnEditor$ErrorDialog;->showError(Lcom/android/settings/ApnEditor;I)V

    const/4 v2, 0x0

    return v2

    :cond_125
    if-eqz p1, :cond_154

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ApnEditor;->mNewApn:Z

    if-eqz v2, :cond_154

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_13b

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_14d

    :cond_13b
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-string/jumbo v6, "ApnEditor"

    const-string/jumbo v7, "Saving APN  failed - invalid input fields"

    const/4 v2, 0x5

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    return v2

    :cond_14d
    const v2, 0xffff

    move/from16 v0, v24

    if-gt v0, v2, :cond_13b

    :cond_154
    new-instance v26, Landroid/content/ContentValues;

    invoke-direct/range {v26 .. v26}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v3, "name"

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x1

    if-ge v2, v4, :cond_4bd

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f121ce8

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_16e
    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "apn"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "proxy"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/ApnEditor;->mProxy:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v3}, Landroid/support/v7/preference/SecEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "port"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/ApnEditor;->mPort:Landroid/support/v7/preference/SecEditNumPreference;

    invoke-virtual {v3}, Landroid/support/v7/preference/SecEditNumPreference;->getText()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "mmsproxy"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/ApnEditor;->mMmsProxy:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v3}, Landroid/support/v7/preference/SecEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "mmsport"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/ApnEditor;->mMmsPort:Landroid/support/v7/preference/SecEditNumPreference;

    invoke-virtual {v3}, Landroid/support/v7/preference/SecEditNumPreference;->getText()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "user"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/ApnEditor;->mUser:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v3}, Landroid/support/v7/preference/SecEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "server"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/ApnEditor;->mServer:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v3}, Landroid/support/v7/preference/SecEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "password"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/ApnEditor;->mPassword:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v3}, Landroid/support/v7/preference/SecEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "mmsc"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/ApnEditor;->mMmsc:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v3}, Landroid/support/v7/preference/SecEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnEditor;->mAuthType:Landroid/support/v7/preference/SecListDialogPreference;

    invoke-virtual {v2}, Landroid/support/v7/preference/SecListDialogPreference;->getValue()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_245

    const-string/jumbo v2, "authtype"

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_245
    const-string/jumbo v2, "protocol"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/ApnEditor;->mProtocol:Landroid/support/v7/preference/SecListDialogPreference;

    invoke-virtual {v3}, Landroid/support/v7/preference/SecListDialogPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "roaming_protocol"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/ApnEditor;->mRoamingProtocol:Landroid/support/v7/preference/SecListDialogPreference;

    invoke-virtual {v3}, Landroid/support/v7/preference/SecListDialogPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "type"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/ApnEditor;->mApnType:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v3}, Landroid/support/v7/preference/SecEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v10, ""

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ApnEditor;->mApnTypeStyle:Z

    if-nez v2, :cond_524

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnEditor;->mApnType:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v2}, Landroid/support/v7/preference/SecEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticKTTModel()Z

    move-result v2

    if-eqz v2, :cond_4c1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnEditor;->mApnType:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v2}, Landroid/support/v7/preference/SecEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4c1

    const-string/jumbo v2, "type"

    const-string/jumbo v3, "default,mms,supl"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2bd
    const-string/jumbo v2, "mcc"

    move-object/from16 v0, v26

    move-object/from16 v1, v19

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "mnc"

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "numeric"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_316

    const-string/jumbo v2, "311"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_316

    const-string/jumbo v2, "480"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_316

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/ApnEditor;->isVzwHomeApnChanged:Z

    :cond_316
    invoke-static {}, Lcom/android/settings/Utils;->isUsOpenModel()Z

    move-result v2

    if-eqz v2, :cond_33d

    invoke-static/range {v20 .. v20}, Lcom/android/settings/Utils;->isVZWSimInserted(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_33d

    const-string/jumbo v2, "311"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33d

    const-string/jumbo v2, "480"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33d

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/ApnEditor;->isVzwHomeApnChanged:Z

    :cond_33d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnEditor;->mCurMnc:Ljava/lang/String;

    if-eqz v2, :cond_388

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnEditor;->mCurMcc:Ljava/lang/String;

    if-eqz v2, :cond_388

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnEditor;->mCurMnc:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_388

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnEditor;->mCurMcc:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_388

    invoke-static {}, Lcom/android/settings/Utils;->isMultisimModel()Z

    move-result v2

    if-eqz v2, :cond_59c

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/ApnEditor;->mSimSlot:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_59c

    const-string/jumbo v2, "current1"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v2, "sim_slot"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_388
    :goto_388
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnEditor;->mBearerMulti:Landroid/support/v14/preference/MultiSelectListPreference;

    invoke-virtual {v2}, Landroid/support/v14/preference/MultiSelectListPreference;->getValues()Ljava/util/Set;

    move-result-object v15

    const/4 v14, 0x0

    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_395
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3a8

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_5b8

    const/4 v14, 0x0

    :cond_3a8
    const-string/jumbo v2, "bearer_bitmask"

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-eqz v14, :cond_3bc

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/ApnEditor;->mBearerInitialVal:I

    if-nez v2, :cond_5c3

    :cond_3bc
    const/16 v16, 0x0

    :goto_3be
    const-string/jumbo v2, "bearer"

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v2, "mvno_type"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/ApnEditor;->mMvnoType:Landroid/support/v7/preference/SecListDialogPreference;

    invoke-virtual {v3}, Landroid/support/v7/preference/SecListDialogPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "mvno_match_data"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/ApnEditor;->mMvnoMatchData:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v3}, Landroid/support/v7/preference/SecEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v2

    if-eqz v2, :cond_439

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v3, 0x17

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    sget-object v2, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "edited : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "0"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_439

    const-string/jumbo v2, "edited"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_439
    invoke-static {}, Lcom/android/settings/Utils;->isMultisimModel()Z

    move-result v2

    if-eqz v2, :cond_463

    const-string/jumbo v2, "android.intent.action.INSERT"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/ApnEditor;->mAction:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_463

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/ApnEditor;->mSimSlot:I

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v25

    const-string/jumbo v2, "sub_id"

    const/4 v3, 0x0

    aget v3, v25, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_463
    const-string/jumbo v3, "carrier_enabled"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnEditor;->mCarrierEnabled:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_5d9

    const/4 v2, 0x1

    :goto_471
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v2, "CSC"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings/ApnEditor;->isDefinedApn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5dc

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ApnEditor;->mNewApn:Z

    if-eqz v2, :cond_496

    const-string/jumbo v2, "Telephony"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings/ApnEditor;->isDefinedApn(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4a7

    :cond_496
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ApnEditor;->isNoWarning:Z

    if-nez v2, :cond_5dc

    const-string/jumbo v2, "Telephony"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings/ApnEditor;->isDefinedApn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5dc

    :cond_4a7
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/ApnEditor;->getErrorMsg()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4b3

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/settings/ApnEditor$ErrorDialog;->showError(Lcom/android/settings/ApnEditor;I)V

    :cond_4b3
    sget-object v2, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "KKK show ERROR_DIALOG_ID"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return v2

    :cond_4bd
    move-object/from16 v2, v22

    goto/16 :goto_16e

    :cond_4c1
    invoke-static {}, Lcom/android/settings/Utils;->isJapanSBMModel()Z

    move-result v2

    if-eqz v2, :cond_4e2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnEditor;->mApnType:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v2}, Landroid/support/v7/preference/SecEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4e2

    const-string/jumbo v2, "type"

    const-string/jumbo v3, "default,mms,supl,xcap"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2bd

    :cond_4e2
    invoke-static {}, Lcom/android/settings/Utils;->isJapanSBMModel()Z

    move-result v2

    if-eqz v2, :cond_51a

    const-string/jumbo v2, "default"

    invoke-virtual {v10, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_51a

    const-string/jumbo v2, "xcap"

    invoke-virtual {v10, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_51a

    const-string/jumbo v2, "type"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",xcap"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2bd

    :cond_51a
    const-string/jumbo v2, "type"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2bd

    :cond_524
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnEditor;->mApnType_list:Landroid/support/v7/preference/SecListDialogPreference;

    invoke-virtual {v2}, Landroid/support/v7/preference/SecListDialogPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings/ApnEditor;->checkNotSetApn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    sget-object v2, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "validateAndSave() checkNotSetApn("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/ApnEditor;->mApnType_list:Landroid/support/v7/preference/SecListDialogPreference;

    invoke-virtual {v4}, Landroid/support/v7/preference/SecListDialogPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/settings/Utils;->isJapanSBMModel()Z

    move-result v2

    if-eqz v2, :cond_592

    const-string/jumbo v2, "default"

    invoke-virtual {v10, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_592

    const-string/jumbo v2, "xcap"

    invoke-virtual {v10, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_592

    const-string/jumbo v2, "type"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",xcap"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2bd

    :cond_592
    const-string/jumbo v2, "type"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2bd

    :cond_59c
    const-string/jumbo v2, "current"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v2, "sim_slot"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_388

    :cond_5b8
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Landroid/telephony/ServiceState;->getBitmaskForTech(I)I

    move-result v2

    or-int/2addr v14, v2

    goto/16 :goto_395

    :cond_5c3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/ApnEditor;->mBearerInitialVal:I

    invoke-static {v14, v2}, Landroid/telephony/ServiceState;->bitmaskHasTech(II)Z

    move-result v2

    if-eqz v2, :cond_5d5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ApnEditor;->mBearerInitialVal:I

    move/from16 v16, v0

    goto/16 :goto_3be

    :cond_5d5
    const/16 v16, 0x0

    goto/16 :goto_3be

    :cond_5d9
    const/4 v2, 0x0

    goto/16 :goto_471

    :cond_5dc
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/ApnEditor;->mUri:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    sget-object v2, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "KKK validateAndSave update : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/ApnEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " and name : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v18, 0x0

    const-string/jumbo v2, "311480"

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_62d

    const-string/jumbo v2, "20404"

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_62f

    :cond_62d
    const/16 v18, 0x1

    :cond_62f
    const-string/jumbo v2, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_642

    invoke-static {}, Lcom/android/settings/Utils;->isUsOpenModel()Z

    move-result v2

    if-eqz v2, :cond_66c

    :cond_642
    if-eqz v18, :cond_66c

    sget-object v2, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "inside if changeVzwHomeAndRoamingApn"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnEditor;->mApnType:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v2}, Landroid/support/v7/preference/SecEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_66c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnEditor;->mApnType:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v2}, Landroid/support/v7/preference/SecEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "default"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_66c

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/settings/ApnEditor;->changeVzwHomeAndRoamingApn(Ljava/lang/String;)V

    :cond_66c
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-string/jumbo v6, "ApnEditor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Saving APN "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ge v3, v4, :cond_691

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f121ce8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    :cond_691
    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " succeeded"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v2, 0x5

    const/4 v3, 0x5

    const/4 v4, 0x1

    invoke-static/range {v2 .. v7}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ApnEditor;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0022

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    const/4 v2, 0x1

    return v2
.end method


# virtual methods
.method public changeVzwHomeAndRoamingApn(Ljava/lang/String;)V
    .registers 9

    const/4 v0, 0x0

    const-string/jumbo v1, "numeric=\'311480\' and type like \'%default%\'"

    const-string/jumbo v2, "numeric=\'20404\' and type like \'%default%\'"

    sget-object v4, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "HomeAndRoaming isVzwHomeApnChanged = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/settings/ApnEditor;->isVzwHomeApnChanged:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v4, p0, Lcom/android/settings/ApnEditor;->isVzwHomeApnChanged:Z

    if-eqz v4, :cond_6f

    move-object v0, v2

    :goto_27
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    sget-object v4, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "value of apn - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "apn"

    invoke-virtual {v3, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "HomeAndRoaming selection : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v3, v0, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void

    :cond_6f
    move-object v0, v1

    goto :goto_27
.end method

.method public customOnKeyDown(ILandroid/view/KeyEvent;)V
    .registers 4

    packed-switch p1, :pswitch_data_10

    :cond_3
    :goto_3
    return-void

    :pswitch_4
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/ApnEditor;->validateAndSave(Z)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->finish()V

    goto :goto_3

    nop

    :pswitch_data_10
    .packed-switch 0x4
        :pswitch_4
    .end packed-switch
.end method

.method public getMetricsCategory()I
    .registers 3

    iget-boolean v0, p0, Lcom/android/settings/ApnEditor;->mNewApn:Z

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    :goto_f
    return v0

    :cond_10
    const/16 v0, 0xd

    goto :goto_f
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/ApnEditor;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->applyLandscapeFullScreen(Landroid/content/Context;Landroid/view/Window;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 19

    invoke-super/range {p0 .. p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v12, 0x7f150013

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/settings/ApnEditor;->addPreferencesFromResource(I)V

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/settings/ApnEditor;->isVzwHomeApnChanged:Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ApnEditor;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f1201b2

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    sput-object v12, Lcom/android/settings/ApnEditor;->sNotSet:Ljava/lang/String;

    const-string/jumbo v12, "apn_name"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/support/v7/preference/SecEditTextPreference;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/settings/ApnEditor;->mName:Landroid/support/v7/preference/SecEditTextPreference;

    const-string/jumbo v12, "apn_apn"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/support/v7/preference/SecEditTextPreference;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/settings/ApnEditor;->mApn:Landroid/support/v7/preference/SecEditTextPreference;

    const-string/jumbo v12, "ATT"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5b

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v12

    if-eqz v12, :cond_5b

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/ApnEditor;->mApn:Landroid/support/v7/preference/SecEditTextPreference;

    move-object/from16 v0, p0

    invoke-virtual {v12, v0}, Landroid/support/v7/preference/SecEditTextPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    :cond_5b
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v12

    if-eqz v12, :cond_7d

    const-string/jumbo v12, "ril.simtype"

    const-string/jumbo v13, ""

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "2"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7d

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/ApnEditor;->mApn:Landroid/support/v7/preference/SecEditTextPreference;

    move-object/from16 v0, p0

    invoke-virtual {v12, v0}, Landroid/support/v7/preference/SecEditTextPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    :cond_7d
    const-string/jumbo v12, "apn_http_proxy"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/support/v7/preference/SecEditTextPreference;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/settings/ApnEditor;->mProxy:Landroid/support/v7/preference/SecEditTextPreference;

    const-string/jumbo v12, "apn_http_port"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/support/v7/preference/SecEditNumPreference;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/settings/ApnEditor;->mPort:Landroid/support/v7/preference/SecEditNumPreference;

    const-string/jumbo v12, "apn_user"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/support/v7/preference/SecEditTextPreference;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/settings/ApnEditor;->mUser:Landroid/support/v7/preference/SecEditTextPreference;

    const-string/jumbo v12, "apn_server"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/support/v7/preference/SecEditTextPreference;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/settings/ApnEditor;->mServer:Landroid/support/v7/preference/SecEditTextPreference;

    const-string/jumbo v12, "apn_password"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/support/v7/preference/SecEditTextPreference;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/settings/ApnEditor;->mPassword:Landroid/support/v7/preference/SecEditTextPreference;

    const-string/jumbo v12, "apn_mms_proxy"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/support/v7/preference/SecEditTextPreference;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/settings/ApnEditor;->mMmsProxy:Landroid/support/v7/preference/SecEditTextPreference;

    const-string/jumbo v12, "apn_mms_port"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/support/v7/preference/SecEditNumPreference;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/settings/ApnEditor;->mMmsPort:Landroid/support/v7/preference/SecEditNumPreference;

    const-string/jumbo v12, "apn_mmsc"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/support/v7/preference/SecEditTextPreference;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/settings/ApnEditor;->mMmsc:Landroid/support/v7/preference/SecEditTextPreference;

    const-string/jumbo v12, "apn_mcc"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/support/v7/preference/SecEditNumPreference;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/settings/ApnEditor;->mMcc:Landroid/support/v7/preference/SecEditNumPreference;

    const-string/jumbo v12, "apn_mnc"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/support/v7/preference/SecEditNumPreference;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/settings/ApnEditor;->mMnc:Landroid/support/v7/preference/SecEditNumPreference;

    const-string/jumbo v12, "apn_type"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/support/v7/preference/SecEditTextPreference;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/settings/ApnEditor;->mApnType:Landroid/support/v7/preference/SecEditTextPreference;

    const-string/jumbo v12, "apn_type_list"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/support/v7/preference/SecListDialogPreference;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/settings/ApnEditor;->mApnType_list:Landroid/support/v7/preference/SecListDialogPreference;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/ApnEditor;->mApnType_list:Landroid/support/v7/preference/SecListDialogPreference;

    move-object/from16 v0, p0

    invoke-virtual {v12, v0}, Landroid/support/v7/preference/SecListDialogPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    const-string/jumbo v12, "List"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v13

    const-string/jumbo v14, "CscFeature_Setting_EditOption4ApnType"

    invoke-virtual {v13, v14}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_330

    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/settings/ApnEditor;->mApnTypeStyle:Z

    :goto_153
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/settings/ApnEditor;->mApnTypeStyle:Z

    if-nez v12, :cond_337

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/ApnEditor;->mApnType_list:Landroid/support/v7/preference/SecListDialogPreference;

    invoke-virtual {v7, v12}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :goto_160
    const-string/jumbo v12, "auth_type"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/support/v7/preference/SecListDialogPreference;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/settings/ApnEditor;->mAuthType:Landroid/support/v7/preference/SecListDialogPreference;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/ApnEditor;->mAuthType:Landroid/support/v7/preference/SecListDialogPreference;

    move-object/from16 v0, p0

    invoke-virtual {v12, v0}, Landroid/support/v7/preference/SecListDialogPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    const-string/jumbo v12, "apn_protocol"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/support/v7/preference/SecListDialogPreference;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/settings/ApnEditor;->mProtocol:Landroid/support/v7/preference/SecListDialogPreference;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/ApnEditor;->mProtocol:Landroid/support/v7/preference/SecListDialogPreference;

    move-object/from16 v0, p0

    invoke-virtual {v12, v0}, Landroid/support/v7/preference/SecListDialogPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    const-string/jumbo v12, "apn_roaming_protocol"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/support/v7/preference/SecListDialogPreference;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/settings/ApnEditor;->mRoamingProtocol:Landroid/support/v7/preference/SecListDialogPreference;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/ApnEditor;->mRoamingProtocol:Landroid/support/v7/preference/SecListDialogPreference;

    move-object/from16 v0, p0

    invoke-virtual {v12, v0}, Landroid/support/v7/preference/SecListDialogPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    const-string/jumbo v12, "carrier_enabled"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/settings/ApnEditor;->mCarrierEnabled:Landroid/support/v14/preference/SwitchPreference;

    const-string/jumbo v12, "bearer_multi"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/support/v14/preference/MultiSelectListPreference;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/settings/ApnEditor;->mBearerMulti:Landroid/support/v14/preference/MultiSelectListPreference;

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v12

    const-string/jumbo v13, "CscFeature_Setting_DisableMenuBearerInApnEdit"

    invoke-virtual {v12, v13}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_340

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/ApnEditor;->mBearerMulti:Landroid/support/v14/preference/MultiSelectListPreference;

    move-object/from16 v0, p0

    invoke-virtual {v12, v0}, Landroid/support/v14/preference/MultiSelectListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    :goto_1dc
    const-string/jumbo v12, "mvno_type"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/support/v7/preference/SecListDialogPreference;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/settings/ApnEditor;->mMvnoType:Landroid/support/v7/preference/SecListDialogPreference;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/ApnEditor;->mMvnoType:Landroid/support/v7/preference/SecListDialogPreference;

    move-object/from16 v0, p0

    invoke-virtual {v12, v0}, Landroid/support/v7/preference/SecListDialogPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    const-string/jumbo v12, "mvno_match_data"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/support/v7/preference/SecEditTextPreference;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/settings/ApnEditor;->mMvnoMatchData:Landroid/support/v7/preference/SecEditTextPreference;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/ApnEditor;->mAuthType:Landroid/support/v7/preference/SecListDialogPreference;

    const v13, 0x7f12055d

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings/ApnEditor;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/support/v7/preference/SecListDialogPreference;->setNegativeButtonText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/ApnEditor;->mProtocol:Landroid/support/v7/preference/SecListDialogPreference;

    const v13, 0x7f12055d

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings/ApnEditor;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/support/v7/preference/SecListDialogPreference;->setNegativeButtonText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/ApnEditor;->mRoamingProtocol:Landroid/support/v7/preference/SecListDialogPreference;

    const v13, 0x7f12055d

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings/ApnEditor;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/support/v7/preference/SecListDialogPreference;->setNegativeButtonText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/ApnEditor;->mBearerMulti:Landroid/support/v14/preference/MultiSelectListPreference;

    const v13, 0x104000a

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings/ApnEditor;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/support/v14/preference/MultiSelectListPreference;->setPositiveButtonText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/ApnEditor;->mBearerMulti:Landroid/support/v14/preference/MultiSelectListPreference;

    const v13, 0x7f12055d

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings/ApnEditor;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/support/v14/preference/MultiSelectListPreference;->setNegativeButtonText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/ApnEditor;->mMvnoMatchData:Landroid/support/v7/preference/SecEditTextPreference;

    const v13, 0x7f12055d

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings/ApnEditor;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/support/v7/preference/SecEditTextPreference;->setNegativeButtonText(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ApnEditor;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string/jumbo v12, "simSlot"

    const/4 v13, 0x0

    invoke-virtual {v6, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/settings/ApnEditor;->mSimSlot:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/settings/ApnEditor;->mSimSlot:I

    invoke-static {v12}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v12

    const/4 v13, 0x0

    aget v12, v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/settings/ApnEditor;->mSubId:I

    sget-object v12, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "mSimSlot : ["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/settings/ApnEditor;->mSimSlot:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "]"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v12, "vzw"

    invoke-virtual {v6, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {}, Lcom/android/settings/Utils;->isJapanKDIModel()Z

    move-result v12

    if-eqz v12, :cond_2bb

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/ApnEditor;->getSelectedApnKey()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/settings/ApnEditor;->SelectKey:Ljava/lang/String;

    :cond_2bb
    if-nez v10, :cond_34d

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/settings/ApnEditor;->mIsVzwEditable:Z

    :goto_2c2
    const-string/jumbo v12, "keyString"

    invoke-virtual {v6, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_354

    const-string/jumbo v12, "hidden"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_354

    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/settings/ApnEditor;->mIsSprEditable:Z

    :goto_2d9
    const-string/jumbo v12, "sprdisable"

    invoke-virtual {v6, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Lcom/android/settings/Utils;->isSprModel()Z

    move-result v12

    if-eqz v12, :cond_35a

    const-string/jumbo v12, "yes"

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_35a

    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/settings/ApnEditor;->mIsSprDiableAll:Z

    :goto_2f4
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/settings/ApnEditor;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v12, "sub_id"

    const/4 v13, -0x1

    invoke-virtual {v6, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/settings/ApnEditor;->mSubId:I

    if-nez p1, :cond_360

    const/4 v12, 0x1

    :goto_30f
    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/settings/ApnEditor;->mFirstTime:Z

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/settings/ApnEditor;->mReadOnlyApn:Z

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/settings/ApnEditor;->mReadOnlyApnTypes:[Ljava/lang/String;

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/settings/ApnEditor;->mReadOnlyApnFields:[Ljava/lang/String;

    if-nez v2, :cond_362

    sget-object v12, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    const-string/jumbo v13, "onCreate no action error!"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ApnEditor;->finish()V

    return-void

    :cond_330
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/settings/ApnEditor;->mApnTypeStyle:Z

    goto/16 :goto_153

    :cond_337
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/ApnEditor;->mApnType:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v7, v12}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto/16 :goto_160

    :cond_340
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ApnEditor;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/ApnEditor;->mBearerMulti:Landroid/support/v14/preference/MultiSelectListPreference;

    invoke-virtual {v12, v13}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto/16 :goto_1dc

    :cond_34d
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/settings/ApnEditor;->mIsVzwEditable:Z

    goto/16 :goto_2c2

    :cond_354
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/settings/ApnEditor;->mIsSprEditable:Z

    goto :goto_2d9

    :cond_35a
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/settings/ApnEditor;->mIsSprDiableAll:Z

    goto :goto_2f4

    :cond_360
    const/4 v12, 0x0

    goto :goto_30f

    :cond_362
    const-string/jumbo v12, "android.intent.action.EDIT"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_445

    invoke-virtual {v6}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v11

    sget-object v12, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v11, v12}, Landroid/net/Uri;->isPathPrefixMatch(Landroid/net/Uri;)Z

    move-result v12

    if-nez v12, :cond_394

    sget-object v12, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Edit request not for carrier table. Uri: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ApnEditor;->finish()V

    return-void

    :cond_394
    const-string/jumbo v12, "carrier_config"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/settings/ApnEditor;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/CarrierConfigManager;

    if-eqz v4, :cond_3a5

    invoke-virtual {v4}, Landroid/telephony/CarrierConfigManager;->getConfig()Landroid/os/PersistableBundle;

    move-result-object v3

    :cond_3a5
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/settings/ApnEditor;->mUri:Landroid/net/Uri;

    :cond_3a9
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ApnEditor;->getActivity()Landroid/app/Activity;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/ApnEditor;->mUri:Landroid/net/Uri;

    sget-object v14, Lcom/android/settings/ApnEditor;->sProjection:[Ljava/lang/String;

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v12 .. v16}, Landroid/app/Activity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    const-string/jumbo v12, "phone"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/settings/ApnEditor;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/telephony/TelephonyManager;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/settings/ApnEditor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    sget-object v12, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "onCreate: EDITED "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v15, 0x17

    invoke-interface {v14, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v13, 0x17

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    const/4 v13, 0x1

    if-eq v12, v13, :cond_55a

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/ApnEditor;->mReadOnlyApnTypes:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v14, 0xf

    invoke-interface {v13, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/android/settings/ApnEditor;->apnTypesMatch([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_55a

    sget-object v12, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    const-string/jumbo v13, "onCreate: apnTypesMatch; read-only APN"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/settings/ApnEditor;->mReadOnlyApn:Z

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/ApnEditor;->disableAllFields()V

    :cond_42a
    :goto_42a
    const/4 v5, 0x0

    :goto_42b
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ApnEditor;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v12

    invoke-virtual {v12}, Landroid/support/v7/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v12

    if-ge v5, v12, :cond_56f

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ApnEditor;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v12

    invoke-virtual {v12, v5}, Landroid/support/v7/preference/PreferenceScreen;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v12, v0}, Landroid/support/v7/preference/Preference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_42b

    :cond_445
    const-string/jumbo v12, "android.intent.action.INSERT"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_556

    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/settings/ApnEditor;->isInserting:Z

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/settings/ApnEditor;->mFirstTime:Z

    if-nez v12, :cond_464

    const-string/jumbo v12, "pos"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    if-nez v12, :cond_51e

    :cond_464
    sget-object v12, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "onCreate mFirstTime : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/settings/ApnEditor;->mFirstTime:Z

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v11

    sget-object v12, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v11, v12}, Landroid/net/Uri;->isPathPrefixMatch(Landroid/net/Uri;)Z

    move-result v12

    if-nez v12, :cond_4aa

    sget-object v12, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Insert request not for carrier table. Uri: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ApnEditor;->finish()V

    return-void

    :cond_4aa
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v12, v11, v13}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/settings/ApnEditor;->mUri:Landroid/net/Uri;

    :goto_4bb
    sget-object v12, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "onCreate INSERT "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/ApnEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/settings/ApnEditor;->mNewApn:Z

    const-string/jumbo v12, "mvno_type"

    invoke-virtual {v6, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/settings/ApnEditor;->mMvnoTypeStr:Ljava/lang/String;

    const-string/jumbo v12, "mvno_match_data"

    invoke-virtual {v6, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/settings/ApnEditor;->mMvnoMatchDataStr:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/ApnEditor;->mUri:Landroid/net/Uri;

    if-nez v12, :cond_3a9

    sget-object v12, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Failed to insert new telephony provider into "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ApnEditor;->getIntent()Landroid/content/Intent;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ApnEditor;->finish()V

    return-void

    :cond_51e
    sget-object v12, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "onCreate SAVED_POS : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "pos"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v12, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v13, "pos"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v13

    int-to-long v14, v13

    invoke-static {v12, v14, v15}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/settings/ApnEditor;->mUri:Landroid/net/Uri;

    goto/16 :goto_4bb

    :cond_556
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ApnEditor;->finish()V

    return-void

    :cond_55a
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/ApnEditor;->mReadOnlyApnFields:[Ljava/lang/String;

    invoke-static {v12}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_42a

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/ApnEditor;->mReadOnlyApnFields:[Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/settings/ApnEditor;->disableFields([Ljava/lang/String;)V

    goto/16 :goto_42a

    :cond_56f
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/ApnEditor;->fillUi()V

    new-instance v12, Lcom/android/settings/ApnEditor$ApnSettingsObserver;

    new-instance v13, Landroid/os/Handler;

    invoke-direct {v13}, Landroid/os/Handler;-><init>()V

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v13}, Lcom/android/settings/ApnEditor$ApnSettingsObserver;-><init>(Lcom/android/settings/ApnEditor;Landroid/os/Handler;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/settings/ApnEditor;->mApnSettingsObserver:Lcom/android/settings/ApnEditor$ApnSettingsObserver;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ApnEditor;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ApnEditor;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/settings/Utils;->applyLandscapeFullScreen(Landroid/content/Context;Landroid/view/Window;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 14

    const v10, 0x7f12117c

    const/4 v9, 0x2

    const v8, 0x7f12116d

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "apn_locked"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v7, :cond_72

    const/4 v0, 0x1

    :goto_1a
    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "apn_lock_mode"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v7, :cond_74

    const/4 v2, 0x1

    :goto_28
    iget-object v4, p0, Lcom/android/settings/ApnEditor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v5, p0, Lcom/android/settings/ApnEditor;->mSimSlot:I

    invoke-static {v5}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v5

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/settings/ApnEditor;->mEditable:Z

    if-eqz v4, :cond_6a

    invoke-static {}, Lcom/android/settings/Utils;->isSupport3LM()Z

    move-result v4

    if-eqz v4, :cond_76

    invoke-static {}, Lcom/android/settings/Utils;->isJapanDCMModel()Z

    move-result v4

    if-eqz v4, :cond_76

    iget-boolean v4, p0, Lcom/android/settings/ApnEditor;->mNewApn:Z

    if-nez v4, :cond_55

    xor-int/lit8 v4, v0, 0x1

    if-eqz v4, :cond_55

    xor-int/lit8 v4, v2, 0x1

    if-eqz v4, :cond_55

    invoke-interface {p1, v6, v7, v6, v8}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    :cond_55
    :goto_55
    invoke-static {}, Lcom/android/settings/Utils;->isSupport3LM()Z

    move-result v4

    if-eqz v4, :cond_146

    invoke-static {}, Lcom/android/settings/Utils;->isJapanDCMModel()Z

    move-result v4

    if-eqz v4, :cond_146

    if-nez v0, :cond_6a

    xor-int/lit8 v4, v2, 0x1

    if-eqz v4, :cond_6a

    invoke-interface {p1, v6, v9, v6, v10}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    :cond_6a
    :goto_6a
    const/4 v4, 0x3

    const v5, 0x7f12116c

    invoke-interface {p1, v6, v4, v6, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    return-void

    :cond_72
    const/4 v0, 0x0

    goto :goto_1a

    :cond_74
    const/4 v2, 0x0

    goto :goto_28

    :cond_76
    iget-boolean v4, p0, Lcom/android/settings/ApnEditor;->mNewApn:Z

    if-nez v4, :cond_55

    invoke-static {}, Lcom/android/settings/Utils;->isVZWConcept()Z

    move-result v4

    if-nez v4, :cond_99

    invoke-static {}, Lcom/android/settings/Utils;->isLraImsi()Z

    move-result v4

    if-nez v4, :cond_99

    invoke-static {v3}, Lcom/android/settings/Utils;->isVZWSimInserted(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a1

    invoke-static {}, Lcom/android/settings/Utils;->getOmcNWSalesCode()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "VZW"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a1

    :cond_99
    iget-boolean v4, p0, Lcom/android/settings/ApnEditor;->mIsVzwEditable:Z

    if-eqz v4, :cond_55

    invoke-interface {p1, v6, v7, v6, v8}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_55

    :cond_a1
    invoke-static {}, Lcom/android/settings/Utils;->isSprModel()Z

    move-result v4

    if-eqz v4, :cond_ce

    iget-boolean v4, p0, Lcom/android/settings/ApnEditor;->mIsSprEditable:Z

    if-eqz v4, :cond_b7

    invoke-static {v3}, Lcom/android/settings/Utils;->isSPRSimInserted(Ljava/lang/String;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_b7

    invoke-interface {p1, v6, v7, v6, v8}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_55

    :cond_b7
    const-string/jumbo v4, "CSC"

    invoke-direct {p0, v4}, Lcom/android/settings/ApnEditor;->isDefinedApn(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_55

    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->isSPRNetworkUnLocked(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_55

    invoke-interface {p1, v6, v7, v6, v8}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_55

    :cond_ce
    invoke-static {}, Lcom/android/settings/Utils;->isUsOpenModel()Z

    move-result v4

    if-eqz v4, :cond_ff

    iget-boolean v4, p0, Lcom/android/settings/ApnEditor;->mIsVzwEditable:Z

    if-eqz v4, :cond_dd

    invoke-interface {p1, v6, v7, v6, v8}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto/16 :goto_55

    :cond_dd
    iget-boolean v4, p0, Lcom/android/settings/ApnEditor;->mIsSprEditable:Z

    if-eqz v4, :cond_ec

    invoke-static {v3}, Lcom/android/settings/Utils;->isSPRSimInserted(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_55

    invoke-interface {p1, v6, v7, v6, v8}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto/16 :goto_55

    :cond_ec
    invoke-static {v3}, Lcom/android/settings/Utils;->isVZWSimInserted(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_55

    invoke-static {v3}, Lcom/android/settings/Utils;->isSPRSimInserted(Ljava/lang/String;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_55

    invoke-interface {p1, v6, v7, v6, v8}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto/16 :goto_55

    :cond_ff
    invoke-static {}, Lcom/android/settings/Utils;->isLraImsi()Z

    move-result v4

    if-nez v4, :cond_55

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v4

    if-eqz v4, :cond_141

    const-string/jumbo v1, ""

    iget-object v4, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v5, 0x17

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/android/settings/ApnEditor;->mApn:Landroid/support/v7/preference/SecEditTextPreference;

    if-eqz v4, :cond_13c

    const-string/jumbo v4, "ctnet"

    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mApn:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v5}, Landroid/support/v7/preference/SecEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13c

    const-string/jumbo v4, "0"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13c

    sget-object v4, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "do not add delete for china open CTNET(CTC) by CTC requirement: "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_55

    :cond_13c
    invoke-interface {p1, v6, v7, v6, v8}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto/16 :goto_55

    :cond_141
    invoke-interface {p1, v6, v7, v6, v8}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto/16 :goto_55

    :cond_146
    invoke-interface {p1, v6, v9, v6, v10}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto/16 :goto_6a
.end method

.method public onDestroy()V
    .registers 3

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mApnSettingsObserver:Lcom/android/settings/ApnEditor$ApnSettingsObserver;

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ApnEditor;->mApnSettingsObserver:Lcom/android/settings/ApnEditor$ApnSettingsObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_10
    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_19
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 6

    const/4 v1, 0x0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    packed-switch p2, :pswitch_data_18

    return v1

    :pswitch_c
    invoke-direct {p0, v1}, Lcom/android/settings/ApnEditor;->validateAndSave(Z)Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->finish()V

    :cond_15
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_18
    .packed-switch 0x4
        :pswitch_c
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_10

    return v0

    :pswitch_5
    invoke-direct {p0, v0}, Lcom/android/settings/ApnEditor;->validateAndSave(Z)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->finish()V

    :cond_e
    const/4 v0, 0x1

    return v0

    :pswitch_data_10
    .packed-switch 0x4
        :pswitch_5
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 6

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_52

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :sswitch_e
    invoke-direct {p0}, Lcom/android/settings/ApnEditor;->deleteApn()V

    return v3

    :sswitch_12
    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0022

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/ApnEditor;->validateAndSave(Z)Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->finish()V

    :cond_2e
    return v3

    :sswitch_2f
    iget-boolean v0, p0, Lcom/android/settings/ApnEditor;->mNewApn:Z

    if-eqz v0, :cond_3c

    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ApnEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_3c
    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0023

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->finish()V

    return v3

    :sswitch_data_52
    .sparse-switch
        0x1 -> :sswitch_e
        0x2 -> :sswitch_12
        0x3 -> :sswitch_2f
        0x102002c -> :sswitch_12
    .end sparse-switch
.end method

.method public onPause()V
    .registers 3

    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ApnEditor;->mAirplainModeEnabledObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .registers 17

    const/4 v13, 0x1

    const/4 v10, 0x0

    const/4 v12, 0x0

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v9, "auth_type"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_48

    :try_start_10
    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v9, v0

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iget-object v9, p0, Lcom/android/settings/ApnEditor;->mAuthType:Landroid/support/v7/preference/SecListDialogPreference;

    invoke-virtual {v9, v4}, Landroid/support/v7/preference/SecListDialogPreference;->setValueIndex(I)V

    iget-object v9, p0, Lcom/android/settings/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v11, 0x7f030007

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/ApnEditor;->mAuthType:Landroid/support/v7/preference/SecListDialogPreference;

    aget-object v11, v8, v4

    invoke-virtual {v9, v11}, Landroid/support/v7/preference/SecListDialogPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_2e
    .catch Ljava/lang/NumberFormatException; {:try_start_10 .. :try_end_2e} :catch_46

    :cond_2e
    :goto_2e
    iget-object v9, p0, Lcom/android/settings/ApnEditor;->mPassword:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {p1, v9}, Landroid/support/v7/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_19b

    if-eqz p2, :cond_196

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    :goto_3c
    invoke-direct {p0, v9}, Lcom/android/settings/ApnEditor;->starify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_43
    :goto_43
    iput-boolean v13, p0, Lcom/android/settings/ApnEditor;->mHasUserEditedApn:Z

    return v13

    :catch_46
    move-exception v3

    return v12

    :cond_48
    const-string/jumbo v9, "apn_protocol"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6d

    move-object/from16 v9, p2

    check-cast v9, Ljava/lang/String;

    iget-object v11, p0, Lcom/android/settings/ApnEditor;->mProtocol:Landroid/support/v7/preference/SecListDialogPreference;

    invoke-direct {p0, v9, v11}, Lcom/android/settings/ApnEditor;->protocolDescription(Ljava/lang/String;Landroid/support/v7/preference/SecListDialogPreference;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_5e

    return v12

    :cond_5e
    iget-object v9, p0, Lcom/android/settings/ApnEditor;->mProtocol:Landroid/support/v7/preference/SecListDialogPreference;

    invoke-virtual {v9, v7}, Landroid/support/v7/preference/SecListDialogPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v11, p0, Lcom/android/settings/ApnEditor;->mProtocol:Landroid/support/v7/preference/SecListDialogPreference;

    move-object/from16 v9, p2

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v11, v9}, Landroid/support/v7/preference/SecListDialogPreference;->setValue(Ljava/lang/String;)V

    goto :goto_2e

    :cond_6d
    const-string/jumbo v9, "apn_roaming_protocol"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_92

    move-object/from16 v9, p2

    check-cast v9, Ljava/lang/String;

    iget-object v11, p0, Lcom/android/settings/ApnEditor;->mRoamingProtocol:Landroid/support/v7/preference/SecListDialogPreference;

    invoke-direct {p0, v9, v11}, Lcom/android/settings/ApnEditor;->protocolDescription(Ljava/lang/String;Landroid/support/v7/preference/SecListDialogPreference;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_83

    return v12

    :cond_83
    iget-object v9, p0, Lcom/android/settings/ApnEditor;->mRoamingProtocol:Landroid/support/v7/preference/SecListDialogPreference;

    invoke-virtual {v9, v7}, Landroid/support/v7/preference/SecListDialogPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v11, p0, Lcom/android/settings/ApnEditor;->mRoamingProtocol:Landroid/support/v7/preference/SecListDialogPreference;

    move-object/from16 v9, p2

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v11, v9}, Landroid/support/v7/preference/SecListDialogPreference;->setValue(Ljava/lang/String;)V

    goto :goto_2e

    :cond_92
    const-string/jumbo v9, "bearer_multi"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b6

    move-object/from16 v9, p2

    check-cast v9, Ljava/util/Set;

    invoke-direct {p0, v9}, Lcom/android/settings/ApnEditor;->bearerMultiDescription(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_a6

    return v12

    :cond_a6
    iget-object v11, p0, Lcom/android/settings/ApnEditor;->mBearerMulti:Landroid/support/v14/preference/MultiSelectListPreference;

    move-object/from16 v9, p2

    check-cast v9, Ljava/util/Set;

    invoke-virtual {v11, v9}, Landroid/support/v14/preference/MultiSelectListPreference;->setValues(Ljava/util/Set;)V

    iget-object v9, p0, Lcom/android/settings/ApnEditor;->mBearerMulti:Landroid/support/v14/preference/MultiSelectListPreference;

    invoke-virtual {v9, v2}, Landroid/support/v14/preference/MultiSelectListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_2e

    :cond_b6
    const-string/jumbo v9, "mvno_type"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_da

    move-object/from16 v9, p2

    check-cast v9, Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/android/settings/ApnEditor;->mvnoDescription(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_ca

    return v12

    :cond_ca
    iget-object v11, p0, Lcom/android/settings/ApnEditor;->mMvnoType:Landroid/support/v7/preference/SecListDialogPreference;

    move-object/from16 v9, p2

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v11, v9}, Landroid/support/v7/preference/SecListDialogPreference;->setValue(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settings/ApnEditor;->mMvnoType:Landroid/support/v7/preference/SecListDialogPreference;

    invoke-virtual {v9, v6}, Landroid/support/v7/preference/SecListDialogPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_2e

    :cond_da
    const-string/jumbo v9, "apn_apn"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2e

    const-string/jumbo v9, "ATT"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_142

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v9

    if-eqz v9, :cond_142

    sget-object v9, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "apn_apn"

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v9, p2

    check-cast v9, Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v9, "phone"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_13c

    const-string/jumbo v9, "wap.cingular"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_13c

    const-string/jumbo v9, "pta"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_13c

    const-string/jumbo v9, "nxtgenphone"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_13c

    const-string/jumbo v9, "ims"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_13c

    const-string/jumbo v9, "IMS"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_142

    :cond_13c
    const/16 v9, 0xa

    invoke-static {p0, v9}, Lcom/android/settings/ApnEditor$ErrorDialog;->showError(Lcom/android/settings/ApnEditor;I)V

    return v12

    :cond_142
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v9

    if-eqz v9, :cond_2e

    const-string/jumbo v9, "ril.simtype"

    const-string/jumbo v11, ""

    invoke-static {v9, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v11, "2"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2e

    move-object/from16 v9, p2

    check-cast v9, Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v9, "ims.ktfwing.com"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_190

    const-string/jumbo v9, "tethering.ktfwing.com"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_190

    const-string/jumbo v9, "lte.ktfwing.com"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_190

    const-string/jumbo v9, "lte150.ktfwing.com"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_190

    const-string/jumbo v9, "IMS"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2e

    :cond_190
    const/16 v9, 0x14

    invoke-static {p0, v9}, Lcom/android/settings/ApnEditor$ErrorDialog;->showError(Lcom/android/settings/ApnEditor;I)V

    return v12

    :cond_196
    const-string/jumbo v9, ""

    goto/16 :goto_3c

    :cond_19b
    iget-object v9, p0, Lcom/android/settings/ApnEditor;->mCarrierEnabled:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p1, v9}, Landroid/support/v7/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_43

    iget-object v9, p0, Lcom/android/settings/ApnEditor;->mBearerMulti:Landroid/support/v14/preference/MultiSelectListPreference;

    invoke-virtual {p1, v9}, Landroid/support/v7/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_43

    iget-object v9, p0, Lcom/android/settings/ApnEditor;->mAuthType:Landroid/support/v7/preference/SecListDialogPreference;

    invoke-virtual {p1, v9}, Landroid/support/v7/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_43

    iget-object v9, p0, Lcom/android/settings/ApnEditor;->mProtocol:Landroid/support/v7/preference/SecListDialogPreference;

    invoke-virtual {p1, v9}, Landroid/support/v7/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_43

    iget-object v9, p0, Lcom/android/settings/ApnEditor;->mRoamingProtocol:Landroid/support/v7/preference/SecListDialogPreference;

    invoke-virtual {p1, v9}, Landroid/support/v7/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_43

    iget-object v9, p0, Lcom/android/settings/ApnEditor;->mApnType_list:Landroid/support/v7/preference/SecListDialogPreference;

    invoke-virtual {p1, v9}, Landroid/support/v7/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1e9

    iget-object v9, p0, Lcom/android/settings/ApnEditor;->mApnType_list:Landroid/support/v7/preference/SecListDialogPreference;

    check-cast p2, Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v9, v0}, Landroid/support/v7/preference/SecListDialogPreference;->setValue(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settings/ApnEditor;->mApnType_list:Landroid/support/v7/preference/SecListDialogPreference;

    invoke-virtual {v9}, Landroid/support/v7/preference/SecListDialogPreference;->getValue()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/settings/ApnEditor;->checkNullApn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/ApnEditor;->APN_TYPE_LIST:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/settings/ApnEditor;->mApnType_list:Landroid/support/v7/preference/SecListDialogPreference;

    iget-object v10, p0, Lcom/android/settings/ApnEditor;->APN_TYPE_LIST:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/SecListDialogPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_43

    :cond_1e9
    if-eqz p2, :cond_1f8

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    :goto_1ef
    invoke-direct {p0, v9}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_43

    :cond_1f8
    move-object v9, v10

    goto :goto_1ef
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .registers 6

    const v3, 0x7f0b001b

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "apn_name"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0024

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    :cond_22
    :goto_22
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v1

    return v1

    :cond_27
    const-string/jumbo v1, "apn_apn"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_43

    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0018

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    goto :goto_22

    :cond_43
    const-string/jumbo v1, "apn_http_proxy"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5f

    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0029

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    goto :goto_22

    :cond_5f
    const-string/jumbo v1, "apn_http_port"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7b

    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0028

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    goto :goto_22

    :cond_7b
    const-string/jumbo v1, "apn_user"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_97

    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b002c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    goto :goto_22

    :cond_97
    const-string/jumbo v1, "apn_password"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b4

    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0027

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    goto/16 :goto_22

    :cond_b4
    const-string/jumbo v1, "apn_server"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d1

    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b002a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    goto/16 :goto_22

    :cond_d1
    const-string/jumbo v1, "apn_mmsc"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ee

    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0020

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    goto/16 :goto_22

    :cond_ee
    const-string/jumbo v1, "apn_mms_proxy"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10b

    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b001f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    goto/16 :goto_22

    :cond_10b
    const-string/jumbo v1, "apn_mms_port"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_128

    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b002e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    goto/16 :goto_22

    :cond_128
    const-string/jumbo v1, "apn_mcc"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_145

    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b001e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    goto/16 :goto_22

    :cond_145
    const-string/jumbo v1, "apn_mnc"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_162

    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0021

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    goto/16 :goto_22

    :cond_162
    const-string/jumbo v1, "apn_type_list"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17c

    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    goto/16 :goto_22

    :cond_17c
    const-string/jumbo v1, "apn_type"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_196

    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    goto/16 :goto_22

    :cond_196
    const-string/jumbo v1, "auth_type"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b3

    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b001c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    goto/16 :goto_22

    :cond_1b3
    const-string/jumbo v1, "apn_protocol"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d0

    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0019

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    goto/16 :goto_22

    :cond_1d0
    const-string/jumbo v1, "apn_roaming_protocol"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1ed

    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b001a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    goto/16 :goto_22

    :cond_1ed
    const-string/jumbo v1, "carrier_enabled"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20a

    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b002b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    goto/16 :goto_22

    :cond_20a
    const-string/jumbo v1, "bearer_multi"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_227

    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b001d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    goto/16 :goto_22

    :cond_227
    const-string/jumbo v1, "mvno_type"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_244

    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0025

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    goto/16 :goto_22

    :cond_244
    const-string/jumbo v1, "mvno_match_data"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0026

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    goto/16 :goto_22
.end method

.method public onResume()V
    .registers 6

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "airplane_mode_on"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/ApnEditor;->mAirplainModeEnabledObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-boolean v0, p0, Lcom/android/settings/ApnEditor;->mHasMdmEditedApn:Z

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_37

    iput-boolean v4, p0, Lcom/android/settings/ApnEditor;->mFirstTime:Z

    invoke-direct {p0}, Lcom/android/settings/ApnEditor;->fillUi()V

    iput-boolean v3, p0, Lcom/android/settings/ApnEditor;->mHasMdmEditedApn:Z

    :cond_37
    iput-boolean v3, p0, Lcom/android/settings/ApnEditor;->mHasUserEditedApn:Z

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 6

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/settings/ApnEditor;->validateAndSave(Z)Z

    move-result v1

    if-eqz v1, :cond_17

    :try_start_a
    const-string/jumbo v1, "pos"

    iget-object v2, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_17
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_a .. :try_end_17} :catch_18

    :cond_17
    :goto_17
    return-void

    :catch_18
    move-exception v0

    sget-object v1, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Exception caught  : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 8

    invoke-virtual {p0, p2}, Lcom/android/settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    const-string/jumbo v2, "apn_type_list"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9d

    const-string/jumbo v2, ""

    invoke-interface {p1, p2, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/ApnEditor;->checkNullApn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Item1 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-interface {p1, p2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Item2 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Item3 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/lang/String;->codePointAt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, ""

    invoke-interface {p1, p2, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/ApnEditor;->checkNullApn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/ApnEditor;->APN_TYPE_LIST:Ljava/lang/String;

    sget-object v2, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Item4 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/ApnEditor;->APN_TYPE_LIST:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/settings/ApnEditor;->APN_TYPE_LIST:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    :cond_9d
    if-eqz v0, :cond_b5

    iget-object v2, p0, Lcom/android/settings/ApnEditor;->mPassword:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b9

    const-string/jumbo v2, ""

    invoke-interface {p1, p2, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/ApnEditor;->starify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_b5
    :goto_b5
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/settings/ApnEditor;->mHasUserEditedApn:Z

    return-void

    :cond_b9
    iget-object v2, p0, Lcom/android/settings/ApnEditor;->mCarrierEnabled:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c9

    iget-object v2, p0, Lcom/android/settings/ApnEditor;->mBearerMulti:Landroid/support/v14/preference/MultiSelectListPreference;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e3

    :cond_c9
    sget-object v2, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onSharedPreferenceChanged "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b5

    :cond_e3
    const-string/jumbo v2, ""

    invoke-interface {p1, p2, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_b5
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void
.end method
