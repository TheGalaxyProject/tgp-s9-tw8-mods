.class public Lcom/samsung/android/settings/mirrorlink/MirrorLink;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "MirrorLink.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/search/Indexable;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/mirrorlink/MirrorLink$1;,
        Lcom/samsung/android/settings/mirrorlink/MirrorLink$2;,
        Lcom/samsung/android/settings/mirrorlink/MirrorLink$TetherChangeReceiver;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private activity:Landroid/app/Activity;

.field private mContext:Landroid/content/Context;

.field private mIsBound:Z

.field private mIsNcmConnected:Z

.field private mListDevices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;",
            ">;"
        }
    .end annotation
.end field

.field private mMLUeventStarted:Z

.field private mMassStorageActive:Z

.field mMenuMore:Landroid/view/MenuItem;

.field private mMirrorLinkAppCategory:Landroid/support/v7/preference/PreferenceCategory;

.field private mMirrorLinkAppPreference:Lcom/samsung/android/settings/mirrorlink/MirrorLinkApplicationsPreference;

.field private mPkgMngr:Landroid/content/pm/PackageManager;

.field private mServiceCon:Landroid/content/ServiceConnection;

.field private mSwitchNotSet:Z

.field private mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mTetherChoice:I

.field private mThread:Ljava/lang/Thread;

.field private mUEventObserver:Landroid/os/UEventObserver;

.field private mUsbConfigured:Z

.field private mUsbConnected:Z

.field private mUsbRegexs:[Ljava/lang/String;

.field private mUsbTether:Landroid/support/v14/preference/SwitchPreference;

.field private mservice:Lcom/mirrorlink/android/service/IMirrorlinkManager;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/mirrorlink/MirrorLink;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mIsNcmConnected:Z

    return v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/mirrorlink/MirrorLink;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mListDevices:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/mirrorlink/MirrorLink;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mMLUeventStarted:Z

    return v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/mirrorlink/MirrorLink;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mUsbConfigured:Z

    return v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/mirrorlink/MirrorLink;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mUsbConnected:Z

    return v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/mirrorlink/MirrorLink;)Lcom/mirrorlink/android/service/IMirrorlinkManager;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mservice:Lcom/mirrorlink/android/service/IMirrorlinkManager;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/mirrorlink/MirrorLink;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mIsNcmConnected:Z

    return p1
.end method

.method static synthetic -set1(Lcom/samsung/android/settings/mirrorlink/MirrorLink;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mMLUeventStarted:Z

    return p1
.end method

.method static synthetic -set2(Lcom/samsung/android/settings/mirrorlink/MirrorLink;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mMassStorageActive:Z

    return p1
.end method

.method static synthetic -set3(Lcom/samsung/android/settings/mirrorlink/MirrorLink;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mUsbConfigured:Z

    return p1
.end method

.method static synthetic -set4(Lcom/samsung/android/settings/mirrorlink/MirrorLink;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mUsbConnected:Z

    return p1
.end method

.method static synthetic -set5(Lcom/samsung/android/settings/mirrorlink/MirrorLink;Lcom/mirrorlink/android/service/IMirrorlinkManager;)Lcom/mirrorlink/android/service/IMirrorlinkManager;
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mservice:Lcom/mirrorlink/android/service/IMirrorlinkManager;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/mirrorlink/MirrorLink;)Landroid/content/ContentResolver;
    .registers 2

    invoke-virtual {p0}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/mirrorlink/MirrorLink;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->updateMirrorLinkApplications()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/mirrorlink/MirrorLink;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->updateState()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/samsung/android/settings/mirrorlink/MirrorLink$2;

    invoke-direct {v0}, Lcom/samsung/android/settings/mirrorlink/MirrorLink$2;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mMirrorLinkAppCategory:Landroid/support/v7/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mThread:Ljava/lang/Thread;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mSwitchNotSet:Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mMLUeventStarted:Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mUsbConnected:Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mUsbConfigured:Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mIsNcmConnected:Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mMassStorageActive:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mTetherChoice:I

    iput-boolean v1, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mIsBound:Z

    new-instance v0, Lcom/samsung/android/settings/mirrorlink/MirrorLink$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/mirrorlink/MirrorLink$1;-><init>(Lcom/samsung/android/settings/mirrorlink/MirrorLink;)V

    iput-object v0, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mUEventObserver:Landroid/os/UEventObserver;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mListDevices:Ljava/util/List;

    return-void
.end method

.method private BindToMLService()Z
    .registers 7

    const/4 v5, 0x0

    const/4 v4, 0x1

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.MIRRORLINK_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.samsung.android.app.mirrorlink"

    const-string/jumbo v3, "com.samsung.android.mirrorlink.service.TmsService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0, v5}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-nez v1, :cond_2c

    const-string/jumbo v1, "MirrorLink"

    const-string/jumbo v2, "Unable to resolve MIRRORLINK_MANAGER_SERVICE service."

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_2c
    iget-boolean v1, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mIsBound:Z

    if-nez v1, :cond_39

    iget-object v1, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mServiceCon:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v0, v2, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    iput-boolean v4, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mIsBound:Z

    :cond_39
    return v4
.end method

.method private doUnbindFromService()V
    .registers 4

    const/4 v2, 0x0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, "MirrorLink: doUnbindFromService"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mIsBound:Z

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mServiceCon:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mIsBound:Z

    :cond_17
    iget-object v0, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mservice:Lcom/mirrorlink/android/service/IMirrorlinkManager;

    if-eqz v0, :cond_1d

    iput-object v2, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mservice:Lcom/mirrorlink/android/service/IMirrorlinkManager;

    :cond_1d
    return-void
.end method

.method public static isUsbSideSyncModeEnabled(Landroid/hardware/usb/UsbManager;)Z
    .registers 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/hardware/usb/UsbManager;->getCurrentFunctions()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    const-string/jumbo v2, "conn_gadget"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_12

    const/4 v1, 0x0

    :cond_11
    :goto_11
    return v1

    :cond_12
    const/4 v1, 0x1

    goto :goto_11
.end method

.method private setNcmTethering(Z)V
    .registers 11

    const/4 v5, 0x0

    const-string/jumbo v6, "usb"

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/usb/UsbManager;

    invoke-virtual {v4}, Landroid/hardware/usb/UsbManager;->isUsb30Available()Z

    move-result v6

    if-eqz v6, :cond_1b

    if-eqz p1, :cond_1b

    invoke-virtual {v4}, Landroid/hardware/usb/UsbManager;->isUsb30Enabled()Z

    move-result v6

    if-eqz v6, :cond_1b

    invoke-virtual {v4, v5}, Landroid/hardware/usb/UsbManager;->setUsb30Mode(Z)V

    :cond_1b
    const-string/jumbo v6, "connectivity"

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    :try_start_24
    new-instance v2, Ljava/io/FileOutputStream;

    const-string/jumbo v6, "/sys/class/android_usb/android0/terminal_version"

    invoke-direct {v2, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/PrintWriter;

    new-instance v6, Ljava/io/OutputStreamWriter;

    invoke-direct {v6, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v3, v6}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    if-eqz p1, :cond_52

    const-string/jumbo v6, "1"

    invoke-virtual {v3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_3e
    if-eqz v3, :cond_43

    invoke-virtual {v3}, Ljava/io/PrintWriter;->close()V
    :try_end_43
    .catch Ljava/io/FileNotFoundException; {:try_start_24 .. :try_end_43} :catch_59

    :cond_43
    :goto_43
    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->semSetNcmTethering(Z)I

    move-result v6

    if-eqz v6, :cond_63

    iget-object v5, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/support/v14/preference/SwitchPreference;

    const v6, 0x7f121d30

    invoke-virtual {v5, v6}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    return-void

    :cond_52
    :try_start_52
    const-string/jumbo v6, "0"

    invoke-virtual {v3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_58
    .catch Ljava/io/FileNotFoundException; {:try_start_52 .. :try_end_58} :catch_59

    goto :goto_3e

    :catch_59
    move-exception v1

    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v7, "MirrorLink FileNotFoundException"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_43

    :cond_63
    invoke-virtual {p0}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "usb_tethering_enabled"

    iget-object v8, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v8}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_73

    const/4 v5, 0x1

    :cond_73
    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private startTethering()V
    .registers 2

    iget v0, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mTetherChoice:I

    packed-switch v0, :pswitch_data_c

    :goto_5
    return-void

    :pswitch_6
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->setNcmTethering(Z)V

    goto :goto_5

    nop

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method

.method private updateMirrorLinkApplications()V
    .registers 21

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    const/4 v11, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->getActivity()Landroid/app/Activity;

    move-result-object v7

    if-eqz v7, :cond_1c

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    if-nez v11, :cond_26

    const-string/jumbo v16, "MirrorLink"

    const-string/jumbo v17, "updateMirrorLinkApplications() getPackageManager returns null"

    invoke-static/range {v16 .. v17}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1c
    const-string/jumbo v16, "MirrorLink"

    const-string/jumbo v17, "updateMirrorLinkApplications() getActivity() returns null"

    invoke-static/range {v16 .. v17}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_26
    const/4 v5, 0x0

    :try_start_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mservice:Lcom/mirrorlink/android/service/IMirrorlinkManager;

    move-object/from16 v16, v0

    if-eqz v16, :cond_39

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mservice:Lcom/mirrorlink/android/service/IMirrorlinkManager;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/mirrorlink/android/service/IMirrorlinkManager;->getAllAppList()Ljava/util/List;
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_38} :catch_5a

    move-result-object v5

    :cond_39
    :goto_39
    if-nez v5, :cond_68

    const-string/jumbo v16, "MirrorLink"

    const-string/jumbo v17, "AppList is null"

    invoke-static/range {v16 .. v17}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mMirrorLinkAppCategory:Landroid/support/v7/preference/PreferenceCategory;

    move-object/from16 v16, v0

    if-eqz v16, :cond_59

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mMirrorLinkAppCategory:Landroid/support/v7/preference/PreferenceCategory;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_59
    return-void

    :catch_5a
    move-exception v9

    const-string/jumbo v16, "MirrorLink"

    const-string/jumbo v17, "Exception while receiving all Application List through AIDl"

    invoke-static/range {v16 .. v17}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v9}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_39

    :cond_68
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mMirrorLinkAppCategory:Landroid/support/v7/preference/PreferenceCategory;

    move-object/from16 v16, v0

    if-nez v16, :cond_1ab

    new-instance v16, Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Landroid/support/v7/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mMirrorLinkAppCategory:Landroid/support/v7/preference/PreferenceCategory;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mMirrorLinkAppCategory:Landroid/support/v7/preference/PreferenceCategory;

    move-object/from16 v16, v0

    const-string/jumbo v17, "mirror_link_applications"

    invoke-virtual/range {v16 .. v17}, Landroid/support/v7/preference/PreferenceCategory;->setKey(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mMirrorLinkAppCategory:Landroid/support/v7/preference/PreferenceCategory;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const v18, 0x7f121198

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->getString(I)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    aput-object v18, v17, v19

    const v18, 0x7f12118e

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/support/v7/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mMirrorLinkAppCategory:Landroid/support/v7/preference/PreferenceCategory;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    :goto_c5
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mListDevices:Ljava/util/List;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->clear()V

    const-string/jumbo v16, "MirrorLink"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "No of apps: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v16

    if-nez v16, :cond_124

    new-instance v15, Landroid/support/v7/preference/Preference;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->getActivity()Landroid/app/Activity;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/support/v7/preference/Preference;->setPersistent(Z)V

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/support/v7/preference/Preference;->setSelectable(Z)V

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    const v16, 0x7f121195

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mMirrorLinkAppCategory:Landroid/support/v7/preference/PreferenceCategory;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    :cond_124
    const/4 v10, 0x0

    :goto_125
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v16

    move/from16 v0, v16

    if-ge v10, v0, :cond_2c1

    const-string/jumbo v16, "MirrorLink"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "In For Loop: With tthe Index [i] as :"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    const-string/jumbo v16, "MirrorLink"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "In For Loop : Package name for the index ["

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, "] is :"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_178
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mservice:Lcom/mirrorlink/android/service/IMirrorlinkManager;

    move-object/from16 v16, v0

    if-eqz v16, :cond_291

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mservice:Lcom/mirrorlink/android/service/IMirrorlinkManager;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v0, v14}, Lcom/mirrorlink/android/service/IMirrorlinkManager;->getApplicationElements(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    const-string/jumbo v16, "MirrorLink"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "In For Loop: Bundle Received for the package Name"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a8
    .catch Landroid/os/RemoteException; {:try_start_178 .. :try_end_1a8} :catch_2b3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_178 .. :try_end_1a8} :catch_295

    if-nez v6, :cond_1b6

    return-void

    :cond_1ab
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mMirrorLinkAppCategory:Landroid/support/v7/preference/PreferenceCategory;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/support/v7/preference/PreferenceCategory;->removeAll()V

    goto/16 :goto_c5

    :cond_1b6
    :try_start_1b6
    new-instance v13, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;

    const-string/jumbo v16, "pkgName"

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v13, v0}, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;-><init>(Ljava/lang/String;)V

    const-string/jumbo v16, "EntitiesName"

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v13, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;->mEntityName:Ljava/lang/String;

    const-string/jumbo v16, "AppStatus"

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v13, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;->mStatus:Ljava/lang/String;

    const-string/jumbo v16, "VALID_DATE"

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v13, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;->mValidDate:Ljava/lang/String;

    const-string/jumbo v16, "RESTRICTED"

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v13, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;->mRestricted:Ljava/lang/String;

    const-string/jumbo v16, "NONRESTRICTED"

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v13, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;->mNonRestricted:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mListDevices:Ljava/util/List;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v16, Lcom/samsung/android/settings/mirrorlink/MirrorLinkApplicationsPreference;

    move-object/from16 v0, v16

    invoke-direct {v0, v7}, Lcom/samsung/android/settings/mirrorlink/MirrorLinkApplicationsPreference;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mMirrorLinkAppPreference:Lcom/samsung/android/settings/mirrorlink/MirrorLinkApplicationsPreference;

    invoke-virtual {v11, v14}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mMirrorLinkAppPreference:Lcom/samsung/android/settings/mirrorlink/MirrorLinkApplicationsPreference;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Lcom/samsung/android/settings/mirrorlink/MirrorLinkApplicationsPreference;->setIndex(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mMirrorLinkAppPreference:Lcom/samsung/android/settings/mirrorlink/MirrorLinkApplicationsPreference;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/samsung/android/settings/mirrorlink/MirrorLinkApplicationsPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v11, v14, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mMirrorLinkAppPreference:Lcom/samsung/android/settings/mirrorlink/MirrorLinkApplicationsPreference;

    move-object/from16 v16, v0

    invoke-virtual {v11, v3}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lcom/samsung/android/settings/mirrorlink/MirrorLinkApplicationsPreference;->setTitle(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mMirrorLinkAppPreference:Lcom/samsung/android/settings/mirrorlink/MirrorLinkApplicationsPreference;

    move-object/from16 v16, v0

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lcom/samsung/android/settings/mirrorlink/MirrorLinkApplicationsPreference;->setKey(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mMirrorLinkAppPreference:Lcom/samsung/android/settings/mirrorlink/MirrorLinkApplicationsPreference;

    move-object/from16 v16, v0

    iget-object v0, v13, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;->mStatus:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lcom/samsung/android/settings/mirrorlink/MirrorLinkApplicationsPreference;->setValidCheck(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mMirrorLinkAppPreference:Lcom/samsung/android/settings/mirrorlink/MirrorLinkApplicationsPreference;

    move-object/from16 v16, v0

    new-instance v17, Lcom/samsung/android/settings/mirrorlink/MirrorLink$4;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/mirrorlink/MirrorLink$4;-><init>(Lcom/samsung/android/settings/mirrorlink/MirrorLink;)V

    invoke-virtual/range {v16 .. v17}, Lcom/samsung/android/settings/mirrorlink/MirrorLinkApplicationsPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mMirrorLinkAppCategory:Landroid/support/v7/preference/PreferenceCategory;

    move-object/from16 v16, v0

    if-eqz v16, :cond_291

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mMirrorLinkAppCategory:Landroid/support/v7/preference/PreferenceCategory;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mMirrorLinkAppPreference:Lcom/samsung/android/settings/mirrorlink/MirrorLinkApplicationsPreference;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z
    :try_end_291
    .catch Landroid/os/RemoteException; {:try_start_1b6 .. :try_end_291} :catch_2b3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1b6 .. :try_end_291} :catch_295

    :cond_291
    :goto_291
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_125

    :catch_295
    move-exception v8

    const-string/jumbo v16, "MirrorLink"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "loadAppIcon : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_291

    :catch_2b3
    move-exception v9

    const-string/jumbo v16, "MirrorLink"

    const-string/jumbo v17, "Exception while receiving the information of the Given PackagName through AIDl"

    invoke-static/range {v16 .. v17}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v9}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_291

    :cond_2c1
    return-void
.end method

.method private updateState()V
    .registers 6

    const-string/jumbo v4, "connectivity"

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetherableIfaces()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetheringErroredIfaces()[Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v3, v2}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->updateUsbState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method private updateUsbState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .registers 18

    iget-boolean v8, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mUsbConnected:Z

    if-eqz v8, :cond_28

    iget-boolean v8, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mMassStorageActive:Z

    xor-int/lit8 v5, v8, 0x1

    :goto_8
    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p3

    array-length v10, v0

    move v9, v8

    :goto_f
    if-ge v9, v10, :cond_2e

    aget-object v2, p3, v9

    iget-object v11, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mUsbRegexs:[Ljava/lang/String;

    const/4 v8, 0x0

    array-length v12, v11

    :goto_17
    if-ge v8, v12, :cond_2a

    aget-object v1, v11, v8

    invoke-virtual {v2, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_25

    const/4 v6, 0x1

    const/4 v13, 0x0

    iput-boolean v13, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mMLUeventStarted:Z

    :cond_25
    add-int/lit8 v8, v8, 0x1

    goto :goto_17

    :cond_28
    const/4 v5, 0x0

    goto :goto_8

    :cond_2a
    add-int/lit8 v8, v9, 0x1

    move v9, v8

    goto :goto_f

    :cond_2e
    if-nez v5, :cond_80

    if-eqz v6, :cond_47

    iget-object v8, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/support/v14/preference/SwitchPreference;

    const v9, 0x7f121d30

    invoke-virtual {v8, v9}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    :goto_3a
    iget-object v8, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/support/v14/preference/SwitchPreference;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v8, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/support/v14/preference/SwitchPreference;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    :cond_46
    :goto_46
    return-void

    :cond_47
    iget-boolean v8, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mMassStorageActive:Z

    if-eqz v8, :cond_54

    iget-object v8, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/support/v14/preference/SwitchPreference;

    const v9, 0x7f121d31

    invoke-virtual {v8, v9}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    goto :goto_3a

    :cond_54
    const-string/jumbo v8, "TMB"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6e

    const-string/jumbo v8, "TMK"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_77

    :cond_6e
    iget-object v8, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/support/v14/preference/SwitchPreference;

    const v9, 0x7f121d34

    invoke-virtual {v8, v9}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    goto :goto_3a

    :cond_77
    iget-object v8, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/support/v14/preference/SwitchPreference;

    const v9, 0x7f121d33

    invoke-virtual {v8, v9}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    goto :goto_3a

    :cond_80
    iget-boolean v8, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mMLUeventStarted:Z

    if-eqz v8, :cond_fe

    const-string/jumbo v8, "TMB"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9e

    const-string/jumbo v8, "TMK"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c3

    :cond_9e
    const-string/jumbo v8, "phone"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v8

    const/4 v9, 0x5

    if-ne v8, v9, :cond_46

    iget-object v8, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/support/v14/preference/SwitchPreference;

    const v9, 0x7f121196

    invoke-virtual {v8, v9}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    iget-object v8, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/support/v14/preference/SwitchPreference;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v8, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/support/v14/preference/SwitchPreference;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_46

    :cond_c3
    const-string/jumbo v8, "usb"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/usb/UsbManager;

    invoke-static {v8}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->isUsbSideSyncModeEnabled(Landroid/hardware/usb/UsbManager;)Z

    move-result v3

    if-eqz v3, :cond_e8

    iget-object v8, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/support/v14/preference/SwitchPreference;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v8, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/support/v14/preference/SwitchPreference;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    iget-object v8, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/support/v14/preference/SwitchPreference;

    const v9, 0x7f121d29

    invoke-virtual {v8, v9}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    goto/16 :goto_46

    :cond_e8
    iget-object v8, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/support/v14/preference/SwitchPreference;

    const v9, 0x7f121196

    invoke-virtual {v8, v9}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    iget-object v8, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/support/v14/preference/SwitchPreference;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v8, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/support/v14/preference/SwitchPreference;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_46

    :cond_fe
    if-eqz v5, :cond_148

    iget-boolean v8, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mIsNcmConnected:Z

    if-eqz v8, :cond_11a

    iget-object v8, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/support/v14/preference/SwitchPreference;

    const v9, 0x7f121196

    invoke-virtual {v8, v9}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    iget-object v8, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/support/v14/preference/SwitchPreference;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v8, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/support/v14/preference/SwitchPreference;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_46

    :cond_11a
    if-eqz v6, :cond_132

    iget-object v8, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/support/v14/preference/SwitchPreference;

    const v9, 0x7f121d30

    invoke-virtual {v8, v9}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    iget-object v8, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/support/v14/preference/SwitchPreference;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v8, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/support/v14/preference/SwitchPreference;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_46

    :cond_132
    iget-object v8, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/support/v14/preference/SwitchPreference;

    const v9, 0x7f121d29

    invoke-virtual {v8, v9}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    iget-object v8, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/support/v14/preference/SwitchPreference;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v8, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/support/v14/preference/SwitchPreference;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_46

    :cond_148
    const-string/jumbo v8, "MirrorLink"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Unreachable point! "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mMLUeventStarted:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_46
.end method


# virtual methods
.method public getMetricsCategory()I
    .registers 2

    const/16 v0, 0xe7e

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->setHasOptionsMenu(Z)V

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 7

    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    if-nez p1, :cond_c

    if-ne p2, v1, :cond_d

    invoke-direct {p0}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->startTethering()V

    :cond_c
    :goto_c
    return-void

    :cond_d
    iget-object v0, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    iput v1, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mTetherChoice:I

    goto :goto_c
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v2, 0x7f150090

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mPkgMngr:Landroid/content/pm/PackageManager;

    const-string/jumbo v2, "ncm_usb_tether_settings"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/support/v14/preference/SwitchPreference;

    iput-object v2, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/support/v14/preference/SwitchPreference;

    iget-object v2, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    const-string/jumbo v2, "connectivity"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mUsbRegexs:[Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mUsbRegexs:[Ljava/lang/String;

    array-length v2, v2

    if-eqz v2, :cond_63

    const/4 v1, 0x1

    :goto_44
    if-eqz v1, :cond_4c

    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v2

    if-eqz v2, :cond_55

    :cond_4c
    invoke-virtual {p0}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_55
    new-instance v2, Lcom/samsung/android/settings/mirrorlink/MirrorLink$3;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/mirrorlink/MirrorLink$3;-><init>(Lcom/samsung/android/settings/mirrorlink/MirrorLink;)V

    iput-object v2, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mServiceCon:Landroid/content/ServiceConnection;

    invoke-direct {p0}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->BindToMLService()Z

    move-result v2

    if-nez v2, :cond_65

    return-void

    :cond_63
    const/4 v1, 0x0

    goto :goto_44

    :cond_65
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    const v0, 0x7f121191

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mMenuMore:Landroid/view/MenuItem;

    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onDestroy()V
    .registers 3

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, "MirrorLink Settings: onDestroy"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->doUnbindFromService()V

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 10

    const/4 v3, 0x0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_26

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    :pswitch_d
    invoke-virtual {p0}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SubSettings;

    const-class v1, Lcom/samsung/android/settings/mirrorlink/MirrorLinkDeviceUID;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const v4, 0x7f121191

    const/4 v7, 0x0

    move-object v1, p0

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v7}, Lcom/android/settings/SubSettings;->startPreferencePanel(Landroid/app/Fragment;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    const/4 v1, 0x1

    return v1

    nop

    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_d
    .end packed-switch
.end method

.method public onPause()V
    .registers 3

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mThread:Ljava/lang/Thread;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    iput-object v1, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mThread:Ljava/lang/Thread;

    :cond_f
    invoke-direct {p0}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->doUnbindFromService()V

    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .registers 9

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v3, :cond_59

    iget-boolean v3, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mSwitchNotSet:Z

    if-eqz v3, :cond_59

    iget-object v3, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mThread:Ljava/lang/Thread;

    if-nez v3, :cond_15

    new-instance v3, Ljava/lang/Thread;

    invoke-direct {v3, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v3, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mThread:Ljava/lang/Thread;

    :cond_15
    iget-object v3, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mThread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_1e

    return v2

    :cond_1e
    iget-object v3, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mThread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    iget-object v3, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0355

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3f

    iput v1, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mTetherChoice:I

    :cond_3f
    iget-object v3, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v3, v0}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->setNcmTethering(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "usb_tethering_enabled"

    iget-object v5, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v5}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_5a

    :goto_56
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_59
    return v2

    :cond_5a
    move v1, v2

    goto :goto_56
.end method

.method public onResume()V
    .registers 4

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    iget-object v0, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mservice:Lcom/mirrorlink/android/service/IMirrorlinkManager;

    if-nez v0, :cond_16

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, "MirrorLink : Binding to Tms"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->BindToMLService()Z

    move-result v0

    if-nez v0, :cond_16

    return-void

    :cond_16
    invoke-direct {p0}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->updateState()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "usb_tethering_enabled"

    iget-object v0, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2d

    const/4 v0, 0x1

    :goto_29
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_2d
    const/4 v0, 0x0

    goto :goto_29
.end method

.method public onStart()V
    .registers 7

    const/4 v5, 0x0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStart()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v3, "shared"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mMassStorageActive:Z

    iget-object v3, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mUEventObserver:Landroid/os/UEventObserver;

    const-string/jumbo v4, "DEVPATH=/devices/virtual/misc/usb_ncm"

    invoke-virtual {v3, v4}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    new-instance v3, Lcom/samsung/android/settings/mirrorlink/MirrorLink$TetherChangeReceiver;

    invoke-direct {v3, p0, v5}, Lcom/samsung/android/settings/mirrorlink/MirrorLink$TetherChangeReceiver;-><init>(Lcom/samsung/android/settings/mirrorlink/MirrorLink;Lcom/samsung/android/settings/mirrorlink/MirrorLink$TetherChangeReceiver;)V

    iput-object v3, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v3, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v3, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v2

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v3, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v3, "android.intent.action.MEDIA_UNSHARED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v3, "file"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v3, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    if-eqz v2, :cond_58

    iget-object v3, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v0, v2}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_58
    invoke-direct {p0}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->updateState()V

    return-void
.end method

.method public onStop()V
    .registers 4

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mUEventObserver:Landroid/os/UEventObserver;

    invoke-virtual {v0}, Landroid/os/UEventObserver;->stopObserving()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "usb_tethering_enabled"

    iget-object v0, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_28

    const/4 v0, 0x1

    :goto_24
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_28
    const/4 v0, 0x0

    goto :goto_24
.end method

.method public run()V
    .registers 7

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v2, 0x0

    :try_start_3
    iput-boolean v2, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mSwitchNotSet:Z

    const-wide/16 v2, 0x3e8

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_a} :catch_16
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_a} :catch_f
    .catchall {:try_start_3 .. :try_end_a} :catchall_23

    iput-boolean v4, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mSwitchNotSet:Z

    :goto_c
    iput-object v5, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mThread:Ljava/lang/Thread;

    return-void

    :catch_f
    move-exception v0

    :try_start_10
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_23

    iput-boolean v4, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mSwitchNotSet:Z

    goto :goto_c

    :catch_16
    move-exception v1

    :try_start_17
    const-string/jumbo v2, "MirrorLink"

    const-string/jumbo v3, "switch pending is interrupted"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20
    .catchall {:try_start_17 .. :try_end_20} :catchall_23

    iput-boolean v4, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mSwitchNotSet:Z

    goto :goto_c

    :catchall_23
    move-exception v2

    iput-boolean v4, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mSwitchNotSet:Z

    iput-object v5, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mThread:Ljava/lang/Thread;

    throw v2
.end method
