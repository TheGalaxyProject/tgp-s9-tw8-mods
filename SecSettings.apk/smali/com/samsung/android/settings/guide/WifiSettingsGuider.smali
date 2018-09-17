.class public final Lcom/samsung/android/settings/guide/WifiSettingsGuider;
.super Lcom/samsung/android/settings/guide/GuiderBase;
.source "WifiSettingsGuider.java"

# interfaces
.implements Lcom/samsung/android/settings/guide/GuiderLifecycleListener;
.implements Landroid/content/DialogInterface$OnShowListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/DialogInterface$OnKeyListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/guide/WifiSettingsGuider$1;,
        Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;,
        Lcom/samsung/android/settings/guide/WifiSettingsGuider$OnCloseHelpDialogListener;
    }
.end annotation


# static fields
.field private static final synthetic -com-samsung-android-settings-guide-WifiSettingsGuider$GuideStatesSwitchesValues:[I

.field public static isWifiGuideOn:Z

.field private static mShowedDialog:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;


# instance fields
.field private builderstartDialog:Landroid/app/AlertDialog;

.field private count:I

.field private mActivity:Landroid/app/Activity;

.field private mClosed:Z

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mCreate:Z

.field private mEnableScanMenuItem:Z

.field private mFirstCheck:Z

.field private mFirstStart:Z

.field public mHandler:Landroid/os/Handler;

.field private mHelpDialogC:Lcom/samsung/android/settings/helpdialog/TwHelpDialog;

.field private mMultiWindowManager:Lcom/samsung/android/app/SemMultiWindowManager;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRestorePrevDialog:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

.field private mScreenOnCheck:I

.field private mSecurityDialogRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/AlertDialog;",
            ">;"
        }
    .end annotation
.end field

.field private mStateContainerRestored:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

.field private mStateContainerShowed:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

.field private final mWiFiIntentFilter:Landroid/content/IntentFilter;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;

.field private onCloseHelpDialogListener:Lcom/samsung/android/settings/guide/WifiSettingsGuider$OnCloseHelpDialogListener;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/guide/WifiSettingsGuider;)Landroid/app/Activity;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic -get1()Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;
    .registers 1

    sget-object v0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/guide/WifiSettingsGuider;)Lcom/samsung/android/settings/guide/WifiSettingsGuider$OnCloseHelpDialogListener;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->onCloseHelpDialogListener:Lcom/samsung/android/settings/guide/WifiSettingsGuider$OnCloseHelpDialogListener;

    return-object v0
.end method

.method private static synthetic -getcom-samsung-android-settings-guide-WifiSettingsGuider$GuideStatesSwitchesValues()[I
    .registers 3

    sget-object v0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->-com-samsung-android-settings-guide-WifiSettingsGuider$GuideStatesSwitchesValues:[I

    if-eqz v0, :cond_7

    sget-object v0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->-com-samsung-android-settings-guide-WifiSettingsGuider$GuideStatesSwitchesValues:[I

    return-object v0

    :cond_7
    invoke-static {}, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->values()[Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_e
    sget-object v1, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->CONNECTED_AUTOMATICALLY:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {v1}, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_17} :catch_68

    :goto_17
    :try_start_17
    sget-object v1, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->CONNECTED_SUCCESSFULLY:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {v1}, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_20} :catch_66

    :goto_20
    :try_start_20
    sget-object v1, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->ENABLE:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {v1}, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_29} :catch_64

    :goto_29
    :try_start_29
    sget-object v1, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->FOUND_NETWORK:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {v1}, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_32
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_32} :catch_62

    :goto_32
    :try_start_32
    sget-object v1, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->NONE:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {v1}, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_32 .. :try_end_3b} :catch_60

    :goto_3b
    :try_start_3b
    sget-object v1, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->NO_NETWORK:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {v1}, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_44
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3b .. :try_end_44} :catch_5e

    :goto_44
    :try_start_44
    sget-object v1, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->SCAN:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {v1}, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_4d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_44 .. :try_end_4d} :catch_5c

    :goto_4d
    :try_start_4d
    sget-object v1, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->SECURITY:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {v1}, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_57
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4d .. :try_end_57} :catch_5a

    :goto_57
    sput-object v0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->-com-samsung-android-settings-guide-WifiSettingsGuider$GuideStatesSwitchesValues:[I

    return-object v0

    :catch_5a
    move-exception v1

    goto :goto_57

    :catch_5c
    move-exception v1

    goto :goto_4d

    :catch_5e
    move-exception v1

    goto :goto_44

    :catch_60
    move-exception v1

    goto :goto_3b

    :catch_62
    move-exception v1

    goto :goto_32

    :catch_64
    move-exception v1

    goto :goto_29

    :catch_66
    move-exception v1

    goto :goto_20

    :catch_68
    move-exception v1

    goto :goto_17
.end method

.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->NONE:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    sput-object v0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->isWifiGuideOn:Z

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .registers 5

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/guide/GuiderBase;-><init>(Landroid/app/Activity;)V

    sget-object v0, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->NONE:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    iput-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mRestorePrevDialog:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    sget-object v0, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->NONE:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    iput-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mStateContainerShowed:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    sget-object v0, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->NONE:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    iput-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mStateContainerRestored:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    iput-boolean v1, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mClosed:Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mCreate:Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mFirstStart:Z

    iput-object v2, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->onCloseHelpDialogListener:Lcom/samsung/android/settings/guide/WifiSettingsGuider$OnCloseHelpDialogListener;

    iput-object v2, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mHelpDialogC:Lcom/samsung/android/settings/helpdialog/TwHelpDialog;

    iput-object v2, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iput-object v2, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mReceiver:Landroid/content/BroadcastReceiver;

    iput-boolean v1, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mEnableScanMenuItem:Z

    iput-object v2, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mActivity:Landroid/app/Activity;

    iput-object v2, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mSecurityDialogRef:Ljava/lang/ref/WeakReference;

    iput v1, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mScreenOnCheck:I

    iput v1, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->count:I

    iput-boolean v1, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mFirstCheck:Z

    new-instance v0, Lcom/samsung/android/settings/guide/WifiSettingsGuider$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/guide/WifiSettingsGuider$1;-><init>(Lcom/samsung/android/settings/guide/WifiSettingsGuider;)V

    iput-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mActivity:Landroid/app/Activity;

    new-instance v0, Lcom/samsung/android/settings/guide/WifiSettingsGuider$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/guide/WifiSettingsGuider$2;-><init>(Lcom/samsung/android/settings/guide/WifiSettingsGuider;)V

    iput-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mWiFiIntentFilter:Landroid/content/IntentFilter;

    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mWiFiIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mWiFiIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mWiFiIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mWiFiIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.samsung.android.net.wifi.WIFI_DIALOG_CANCEL_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mWiFiIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.android.settings.guide.DISMISS_HELP_DIALOG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mWiFiIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private initHelpDialogContent(II)V
    .registers 14

    const/4 v10, 0x1

    const/4 v8, 0x0

    iget-object v7, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v7

    invoke-virtual {v7, p2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v7, 0x7f0a0396

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    if-nez v5, :cond_20

    const v7, 0x7f0a03d0

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    :cond_20
    if-eqz v5, :cond_25

    invoke-virtual {v5, p1}, Landroid/widget/TextView;->setText(I)V

    :cond_25
    :try_start_25
    iget-object v7, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mMultiWindowManager:Lcom/samsung/android/app/SemMultiWindowManager;

    if-eqz v7, :cond_96

    iget-object v7, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mMultiWindowManager:Lcom/samsung/android/app/SemMultiWindowManager;

    invoke-virtual {v7}, Lcom/samsung/android/app/SemMultiWindowManager;->getMode()I

    move-result v3

    const-string/jumbo v7, "WifiSettingsGuider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "initHelpDialogContent :: multi window mode = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v3, :cond_7a

    iget-object v7, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mActivity:Landroid/app/Activity;

    iget-object v8, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mHelpDialog:Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v8}, Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/settings/Utils;->applyLandscapeFullScreen(Landroid/content/Context;Landroid/view/Window;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v4, v7, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v10, :cond_7a

    iget-object v7, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mHelpDialog:Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v7}, Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/high16 v7, 0x4000000

    invoke-virtual {v6, v7}, Landroid/view/Window;->clearFlags(I)V

    const/high16 v7, -0x80000000

    invoke-virtual {v6, v7}, Landroid/view/Window;->addFlags(I)V

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/Window;->setStatusBarColor(I)V
    :try_end_7a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_25 .. :try_end_7a} :catch_a0

    :cond_7a
    :goto_7a
    iget-object v7, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mHelpDialog:Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v7, v1}, Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;->setContentView(Landroid/view/View;)V

    const v7, 0x7f0a03a3

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    if-eqz v0, :cond_95

    invoke-virtual {v0, v10}, Landroid/widget/ImageButton;->semSetHoverPopupType(I)V

    new-instance v7, Lcom/samsung/android/settings/guide/WifiSettingsGuider$7;

    invoke-direct {v7, p0}, Lcom/samsung/android/settings/guide/WifiSettingsGuider$7;-><init>(Lcom/samsung/android/settings/guide/WifiSettingsGuider;)V

    invoke-virtual {v0, v7}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_95
    return-void

    :cond_96
    :try_start_96
    const-string/jumbo v7, "WifiSettingsGuider"

    const-string/jumbo v8, "initHelpDialogContent :: mMultiWindowManager is null"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_96 .. :try_end_9f} :catch_a0

    goto :goto_7a

    :catch_a0
    move-exception v2

    const-string/jumbo v7, "WifiSettingsGuider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "IllegalArgumentException "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_7a
.end method

.method private invalidateHelpDialog(Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;)V
    .registers 10

    const/4 v1, -0x1

    const/4 v2, -0x1

    iget-object v3, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mHelpDialog:Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-nez v3, :cond_7

    return-void

    :cond_7
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->setFocus(Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;)V

    invoke-static {}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->-getcom-samsung-android-settings-guide-WifiSettingsGuider$GuideStatesSwitchesValues()[I

    move-result-object v3

    invoke-virtual {p1}, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_88

    :cond_17
    :goto_17
    :pswitch_17
    invoke-direct {p0, v2, v1}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->initHelpDialogContent(II)V

    return-void

    :pswitch_1b
    const v2, 0x7f120cc0

    const v1, 0x7f0d013c

    goto :goto_17

    :pswitch_22
    const v2, 0x7f120cc2

    const v1, 0x7f0d013c

    goto :goto_17

    :pswitch_29
    const v2, 0x7f120cc3

    const v1, 0x7f0d013c

    goto :goto_17

    :pswitch_30
    const v2, 0x7f120cc4

    const v1, 0x7f0d0139

    goto :goto_17

    :pswitch_37
    const v2, 0x7f120cc1

    const v1, 0x7f0d013c

    goto :goto_17

    :pswitch_3e
    const v2, 0x7f120cbf

    const v1, 0x7f0d0138

    :try_start_44
    invoke-static {}, Lcom/samsung/android/settings/guide/GuideModeHelper;->isTablet()Z

    move-result v3

    if-nez v3, :cond_17

    iget-object v3, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_17

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    new-instance v4, Lcom/samsung/android/settings/guide/WifiSettingsGuider$6;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/guide/WifiSettingsGuider$6;-><init>(Lcom/samsung/android/settings/guide/WifiSettingsGuider;)V

    const-wide/16 v6, 0x96

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_68
    .catch Ljava/lang/NullPointerException; {:try_start_44 .. :try_end_68} :catch_69

    goto :goto_17

    :catch_69
    move-exception v0

    const-string/jumbo v3, "WifiSettingsGuider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "NullPointerException "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_17

    :pswitch_data_88
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_37
        :pswitch_3e
        :pswitch_29
        :pswitch_17
        :pswitch_22
        :pswitch_30
        :pswitch_17
    .end packed-switch
.end method

.method private setFocus(Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;)V
    .registers 6

    invoke-static {}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->-getcom-samsung-android-settings-guide-WifiSettingsGuider$GuideStatesSwitchesValues()[I

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_24

    :cond_d
    :goto_d
    return-void

    :pswitch_e
    iget-object v2, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mActivity:Landroid/app/Activity;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    goto :goto_d

    :pswitch_data_24
    .packed-switch 0x3
        :pswitch_e
    .end packed-switch
.end method

.method private setGuidedActionBarClickable(Z)V
    .registers 6

    iget-object v1, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mActivity:Landroid/app/Activity;

    if-eqz v1, :cond_22

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    :goto_8
    if-eqz v0, :cond_21

    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_21

    invoke-virtual {v2}, Landroid/view/View;->isClickable()Z

    move-result v3

    if-eq v3, p1, :cond_1c

    invoke-virtual {v2, p1}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {v2, p1}, Landroid/view/View;->setFocusable(Z)V

    :cond_1c
    if-eqz p1, :cond_21

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    :cond_21
    return-void

    :cond_22
    const/4 v0, 0x0

    goto :goto_8
.end method

.method private setScanOptionEnable(Z)V
    .registers 3

    iput-boolean p1, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mEnableScanMenuItem:Z

    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    :cond_9
    return-void
.end method

.method private showHelpDialog(IILcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;Z)V
    .registers 8

    sget-boolean v0, Lcom/android/settings/wifi/WifiDialog;->mIsShow:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;

    iget-object v1, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mHelpDialog:Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;

    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mHelpDialog:Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v0, p3}, Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;->setTouchTransparencyMode(Lcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;)V

    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mHelpDialog:Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v0, p5}, Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;->setShowWrongInputToast(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mHelpDialog:Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;

    iget-object v1, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;->setOwnerActivity(Landroid/app/Activity;)V

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->initHelpDialogContent(II)V

    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mHelpDialog:Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v0}, Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;->show()V

    sput-object p4, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    return-void
.end method


# virtual methods
.method public dismissCompleteDialog()V
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->builderstartDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->builderstartDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->builderstartDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_19
    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mHelpDialogC:Lcom/samsung/android/settings/helpdialog/TwHelpDialog;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mHelpDialogC:Lcom/samsung/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v0}, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mHelpDialogC:Lcom/samsung/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v0}, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->dismiss()V

    :cond_2a
    return-void
.end method

.method public dismissHelpDialog()V
    .registers 7

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mHelpDialog:Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-eqz v3, :cond_3c

    iget-object v3, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mHelpDialog:Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v3}, Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const v3, 0x7f0a0395

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1e

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_1e
    iget-object v3, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mHelpDialog:Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v3}, Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;->dismiss()V

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mHelpDialog:Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-static {}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->-getcom-samsung-android-settings-guide-WifiSettingsGuider$GuideStatesSwitchesValues()[I

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {v4}, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_6a

    :goto_35
    :pswitch_35
    sget-object v3, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->NONE:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    sput-object v3, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->onCloseHelpDialogListener:Lcom/samsung/android/settings/guide/WifiSettingsGuider$OnCloseHelpDialogListener;

    :cond_3c
    :goto_3c
    return-void

    :pswitch_3d
    iget-object v3, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mActivity:Landroid/app/Activity;

    const/4 v4, 0x0

    invoke-static {v4, v3}, Lcom/samsung/android/settings/guide/GuideModeHelper;->setSettingsListEnabled(ZLandroid/app/Activity;)V

    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->setGuidedActionBarClickable(Z)V
    :try_end_47
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_47} :catch_48

    goto :goto_35

    :catch_48
    move-exception v2

    const-string/jumbo v3, "WifiSettingsGuider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "IllegalArgumentException "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3c

    :pswitch_64
    const/4 v3, 0x0

    :try_start_65
    invoke-direct {p0, v3}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->setScanOptionEnable(Z)V
    :try_end_68
    .catch Ljava/lang/IllegalArgumentException; {:try_start_65 .. :try_end_68} :catch_48

    goto :goto_35

    nop

    :pswitch_data_6a
    .packed-switch 0x3
        :pswitch_3d
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_64
        :pswitch_35
    .end packed-switch
.end method

.method public dismissHelpDialog(Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;)V
    .registers 5

    const/4 v2, 0x0

    sget-object v0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    if-ne v0, p1, :cond_19

    invoke-static {}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->-getcom-samsung-android-settings-guide-WifiSettingsGuider$GuideStatesSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->ordinal()I

    move-result v1

    aget v0, v0, v1

    sparse-switch v0, :sswitch_data_28

    :goto_12
    sget-object v0, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->NONE:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    sput-object v0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->dismissHelpDialog()V

    :cond_19
    return-void

    :sswitch_1a
    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mActivity:Landroid/app/Activity;

    invoke-static {v2, v0}, Lcom/samsung/android/settings/guide/GuideModeHelper;->setSettingsListEnabled(ZLandroid/app/Activity;)V

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->setGuidedActionBarClickable(Z)V

    goto :goto_12

    :sswitch_23
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->setScanOptionEnable(Z)V

    goto :goto_12

    nop

    :sswitch_data_28
    .sparse-switch
        0x3 -> :sswitch_1a
        0x7 -> :sswitch_23
    .end sparse-switch
.end method

.method public bridge synthetic finish()V
    .registers 1

    invoke-super {p0}, Lcom/samsung/android/settings/guide/GuiderBase;->finish()V

    return-void
.end method

.method protected handleEvent(Landroid/content/Intent;)V
    .registers 11

    const/4 v8, 0x0

    const/4 v7, 0x1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "WifiSettingsGuider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "handleEvent  action : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7c

    iget-object v4, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v4

    if-eqz v4, :cond_6b

    iget-object v4, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v4, :cond_42

    iget-object v4, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mActivity:Landroid/app/Activity;

    const-string/jumbo v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ConnectivityManager;

    iput-object v4, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mConnectivityManager:Landroid/net/ConnectivityManager;

    :cond_42
    iget-object v4, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v4, v7}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v4, :cond_6c

    iget-object v4, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_60

    iget-object v4, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_6c

    :cond_60
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-nez v4, :cond_6c

    sget-object v4, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->NO_NETWORK:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->showHelpDialog(Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;)V

    :cond_6b
    :goto_6b
    return-void

    :cond_6c
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v4

    if-nez v4, :cond_6b

    iget-boolean v4, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mClosed:Z

    if-nez v4, :cond_6b

    sget-object v4, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->FOUND_NETWORK:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->showHelpDialog(Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;)V

    goto :goto_6b

    :cond_7c
    const-string/jumbo v4, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_119

    const-string/jumbo v4, "networkInfo"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_a8

    iget-boolean v4, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mFirstStart:Z

    if-nez v4, :cond_a2

    sget-object v4, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->CONNECTED_AUTOMATICALLY:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->showHelpDialog(Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;)V

    iput-boolean v7, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mFirstStart:Z

    :cond_9f
    :goto_9f
    iput-boolean v7, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mFirstStart:Z

    goto :goto_6b

    :cond_a2
    sget-object v4, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->CONNECTED_SUCCESSFULLY:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->showHelpDialog(Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;)V

    goto :goto_9f

    :cond_a8
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-nez v4, :cond_9f

    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->dismissHelpDialog()V

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v4, v5, :cond_9f

    sget-object v4, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    sget-object v5, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->CONNECTED_AUTOMATICALLY:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    if-eq v4, v5, :cond_c5

    sget-object v4, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    sget-object v5, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->CONNECTED_SUCCESSFULLY:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    if-ne v4, v5, :cond_9f

    :cond_c5
    iget-object v4, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v4, :cond_e3

    iget-object v4, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_e3

    iget-object v4, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_e3

    sget-object v4, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->FOUND_NETWORK:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->showHelpDialog(Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;)V

    goto :goto_9f

    :cond_e3
    iget-object v4, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v4, :cond_9f

    iget-object v4, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v4

    if-eqz v4, :cond_9f

    iget-object v4, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v4, v7}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v4, :cond_9f

    iget-object v4, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_10d

    iget-object v4, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_9f

    :cond_10d
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-nez v4, :cond_9f

    sget-object v4, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->NO_NETWORK:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->showHelpDialog(Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;)V

    goto :goto_9f

    :cond_119
    const-string/jumbo v4, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_174

    iget v4, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->count:I

    const/4 v5, 0x3

    if-ge v4, v5, :cond_12d

    iget v4, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->count:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->count:I

    :cond_12d
    iget v4, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->count:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_134

    iput-boolean v7, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mFirstCheck:Z

    :cond_134
    const-string/jumbo v4, "wifi_state"

    const/4 v5, 0x4

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->getFragment()Landroid/app/Fragment;

    move-result-object v4

    if-eqz v4, :cond_16d

    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->getFragment()Landroid/app/Fragment;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Fragment;->isResumed()Z

    move-result v4

    if-eqz v4, :cond_16d

    iget-boolean v4, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mFirstCheck:Z

    if-eqz v4, :cond_16d

    if-eq v3, v7, :cond_154

    if-nez v3, :cond_6b

    :cond_154
    iget-object v4, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v4, :cond_6b

    iget-object v4, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v4

    if-nez v4, :cond_6b

    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->dismissCompleteDialog()V

    iget-object v4, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->finish()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->onDestroy()V

    goto/16 :goto_6b

    :cond_16d
    sget-object v4, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->ENABLE:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->dismissHelpDialog(Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;)V

    goto/16 :goto_6b

    :cond_174
    const-string/jumbo v4, "com.samsung.android.net.wifi.WIFI_DIALOG_CANCEL_ACTION"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1ac

    const-string/jumbo v4, "called_dialog"

    invoke-virtual {p1, v4, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v7, :cond_6b

    const-string/jumbo v4, "WifiWarningDialog"

    const-string/jumbo v5, "from"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6b

    const-string/jumbo v4, "WifiSettingsGuider"

    const-string/jumbo v5, "Hotspot is ON or Wifi is off"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->dismissCompleteDialog()V

    iget-object v4, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->finish()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->onDestroy()V

    goto/16 :goto_6b

    :cond_1ac
    const-string/jumbo v4, "com.android.settings.guide.DISMISS_HELP_DIALOG"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6b

    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->dismissHelpDialog()V

    goto/16 :goto_6b
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 2

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    const/4 v0, -0x2

    if-ne p2, v0, :cond_6

    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->showCompleteDialog()V

    :cond_6
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4

    sget-object v0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    sget-object v1, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->NONE:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    if-eq v0, v1, :cond_b

    sget-object v0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->invalidateHelpDialog(Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;)V

    :cond_b
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string/jumbo v0, "WifiSettingsGuider"

    const-string/jumbo v1, "onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v3}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    :cond_1c
    iput-boolean v2, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mFirstCheck:Z

    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_2f

    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mActivity:Landroid/app/Activity;

    const-string/jumbo v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mConnectivityManager:Landroid/net/ConnectivityManager;

    :cond_2f
    new-instance v0, Lcom/samsung/android/app/SemMultiWindowManager;

    invoke-direct {v0}, Lcom/samsung/android/app/SemMultiWindowManager;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mMultiWindowManager:Lcom/samsung/android/app/SemMultiWindowManager;

    iput-boolean v2, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mClosed:Z

    iput-boolean v3, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mCreate:Z

    return-void
.end method

.method public onDestroy()V
    .registers 4

    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->dismissHelpDialog()V

    iget-object v1, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->builderstartDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->builderstartDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->builderstartDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    :cond_14
    iget-object v1, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mHelpDialogC:Lcom/samsung/android/settings/helpdialog/TwHelpDialog;

    if-eqz v1, :cond_25

    iget-object v1, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mHelpDialogC:Lcom/samsung/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v1}, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_25

    iget-object v1, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mHelpDialogC:Lcom/samsung/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v1}, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->dismiss()V

    :cond_25
    iget-object v1, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mActivity:Landroid/app/Activity;

    if-eqz v1, :cond_41

    iget-object v1, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x1

    invoke-static {v2, v1}, Lcom/samsung/android/settings/guide/GuideModeHelper;->setSettingsListEnabled(ZLandroid/app/Activity;)V

    iget-object v1, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_41

    :try_start_33
    iget-object v1, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mReceiver:Landroid/content/BroadcastReceiver;
    :try_end_41
    .catch Ljava/lang/IllegalArgumentException; {:try_start_33 .. :try_end_41} :catch_45

    :cond_41
    :goto_41
    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->finish()V

    return-void

    :catch_45
    move-exception v0

    const-string/jumbo v1, "WifiSettingsGuider"

    const-string/jumbo v2, "IllegalArgumentException : mReceiver is not registered."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_41
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 2

    return-void
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 5

    const/4 v0, 0x0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)V
    .registers 4

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_11

    sget-object v0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    sget-object v1, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->SCAN:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    if-ne v0, v1, :cond_11

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->setScanOptionEnable(Z)V

    :cond_11
    return-void
.end method

.method public onPause()V
    .registers 7

    const/4 v5, 0x0

    invoke-static {v5}, Lcom/samsung/android/settings/guide/GuideFragment;->setsIsInGuideMode(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mActivity:Landroid/app/Activity;

    const-string/jumbo v3, "power"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mHelpDialogC:Lcom/samsung/android/settings/helpdialog/TwHelpDialog;

    if-eqz v2, :cond_24

    iget-object v2, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mHelpDialogC:Lcom/samsung/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v2}, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_24

    iget-object v2, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mHelpDialogC:Lcom/samsung/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v2}, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->dismiss()V

    :cond_24
    if-eqz v0, :cond_37

    invoke-static {}, Lcom/samsung/android/settings/guide/GuideFragment;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_37

    sget-object v2, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    iput-object v2, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mStateContainerShowed:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    iget-object v2, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mRestorePrevDialog:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    iput-object v2, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mStateContainerRestored:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->dismissHelpDialog()V

    :cond_37
    if-nez v0, :cond_3c

    const/4 v2, 0x1

    iput v2, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mScreenOnCheck:I

    :cond_3c
    const-string/jumbo v2, "WifiSettingsGuider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onPause :: mScreenOnCheck"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mScreenOnCheck:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v5, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->isWifiGuideOn:Z

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .registers 4

    const/4 v1, 0x6

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_c

    iget-boolean v1, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mEnableScanMenuItem:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_c
    return-void
.end method

.method public onResume()V
    .registers 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string/jumbo v0, "WifiSettingsGuider"

    const-string/jumbo v3, "onResume()"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Lcom/samsung/android/settings/guide/GuideFragment;->setsIsInGuideMode(Z)V

    invoke-static {}, Lcom/samsung/android/settings/guide/GuideFragment;->isInGuideMode()Z

    move-result v0

    if-nez v0, :cond_16

    sput-boolean v1, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->isWifiGuideOn:Z

    :cond_16
    sget-object v0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    sget-object v3, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->ENABLE:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    if-ne v0, v3, :cond_bc

    move v0, v1

    :goto_1d
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->setGuidedActionBarClickable(Z)V

    sget-object v0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    sget-object v3, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->SCAN:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    if-ne v0, v3, :cond_bf

    move v0, v1

    :goto_27
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->setScanOptionEnable(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_c2

    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_c2

    :cond_36
    :goto_36
    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_76

    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_76

    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mHelpDialog:Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-nez v0, :cond_76

    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_76

    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_76

    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v0

    if-nez v0, :cond_76

    iget-boolean v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mClosed:Z

    if-nez v0, :cond_76

    iget v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mScreenOnCheck:I

    if-nez v0, :cond_76

    const-string/jumbo v0, "WifiSettingsGuider"

    const-string/jumbo v1, "onResume :: showHelpDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->FOUND_NETWORK:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->showHelpDialog(Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;)V

    iput v2, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mScreenOnCheck:I

    :cond_76
    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_b9

    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_b9

    iget-boolean v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mCreate:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_b9

    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    const/4 v1, 0x2

    if-eq v1, v0, :cond_b9

    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v1, v0, :cond_b9

    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    const/16 v1, 0xa

    if-eq v1, v0, :cond_b9

    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    const/16 v1, 0xb

    if-eq v1, v0, :cond_b9

    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->dismissCompleteDialog()V

    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->onDestroy()V

    :cond_b9
    iput-boolean v2, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mCreate:Z

    return-void

    :cond_bc
    move v0, v2

    goto/16 :goto_1d

    :cond_bf
    move v0, v2

    goto/16 :goto_27

    :cond_c2
    invoke-static {}, Lcom/samsung/android/settings/guide/GuideFragment;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mStateContainerShowed:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    sget-object v3, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->NONE:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    if-eq v0, v3, :cond_36

    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mStateContainerShowed:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->showHelpDialog(Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;)V

    sget-object v0, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->NONE:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    iput-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mStateContainerShowed:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mStateContainerRestored:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    iput-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mRestorePrevDialog:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    goto/16 :goto_36
.end method

.method public onShow(Landroid/content/DialogInterface;)V
    .registers 2

    return-void
.end method

.method public showCompleteDialog()V
    .registers 5

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mHelpDialog:Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-eqz v1, :cond_e

    sget-object v1, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->dismissHelpDialog(Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;)V

    sget-object v1, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->NONE:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    iput-object v1, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mRestorePrevDialog:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    :cond_e
    iget-object v1, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mHelpDialogC:Lcom/samsung/android/settings/helpdialog/TwHelpDialog;

    if-nez v1, :cond_46

    iget-object v1, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d0140

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;

    iget-object v2, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mHelpDialogC:Lcom/samsung/android/settings/helpdialog/TwHelpDialog;

    iget-object v1, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mHelpDialogC:Lcom/samsung/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->setContentView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mHelpDialogC:Lcom/samsung/android/settings/helpdialog/TwHelpDialog;

    sget-object v2, Lcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;->TRANSPARENT:Lcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->setTouchTransparencyMode(Lcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;)V

    iget-object v1, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mHelpDialogC:Lcom/samsung/android/settings/helpdialog/TwHelpDialog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->setShowWrongInputToast(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mHelpDialogC:Lcom/samsung/android/settings/helpdialog/TwHelpDialog;

    iget-object v2, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->setOwnerActivity(Landroid/app/Activity;)V

    iget-object v1, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mHelpDialogC:Lcom/samsung/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v1}, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->show()V

    :cond_46
    return-void
.end method

.method public showHelpDialog()V
    .registers 1

    return-void
.end method

.method public showHelpDialog(Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;)V
    .registers 8

    const v2, 0x7f0d013c

    const/4 v1, 0x0

    const/4 v5, 0x1

    sget-object v0, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->SCAN:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    if-ne p1, v0, :cond_16

    move v0, v5

    :goto_a
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->setScanOptionEnable(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mHelpDialog:Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-eqz v0, :cond_18

    sget-object v0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    if-ne v0, p1, :cond_18

    return-void

    :cond_16
    move v0, v1

    goto :goto_a

    :cond_18
    sget-object v0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->dismissHelpDialog(Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;)V

    sget-object v0, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->NONE:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    iput-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mRestorePrevDialog:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->setFocus(Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;)V

    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mActivity:Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/samsung/android/settings/guide/GuideModeHelper;->setSettingsListEnabled(ZLandroid/app/Activity;)V

    invoke-static {}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->-getcom-samsung-android-settings-guide-WifiSettingsGuider$GuideStatesSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_d8

    :goto_36
    :pswitch_36
    iput-boolean v1, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mClosed:Z

    sget-object v0, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->ENABLE:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    if-ne p1, v0, :cond_3d

    move v1, v5

    :cond_3d
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->setGuidedActionBarClickable(Z)V

    invoke-static {}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->-getcom-samsung-android-settings-guide-WifiSettingsGuider$GuideStatesSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_ec

    :cond_4d
    :goto_4d
    :pswitch_4d
    return-void

    :pswitch_4e
    new-instance v0, Lcom/samsung/android/settings/guide/WifiSettingsGuider$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/guide/WifiSettingsGuider$3;-><init>(Lcom/samsung/android/settings/guide/WifiSettingsGuider;)V

    iput-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->onCloseHelpDialogListener:Lcom/samsung/android/settings/guide/WifiSettingsGuider$OnCloseHelpDialogListener;

    goto :goto_36

    :pswitch_56
    new-instance v0, Lcom/samsung/android/settings/guide/WifiSettingsGuider$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/guide/WifiSettingsGuider$4;-><init>(Lcom/samsung/android/settings/guide/WifiSettingsGuider;)V

    iput-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->onCloseHelpDialogListener:Lcom/samsung/android/settings/guide/WifiSettingsGuider$OnCloseHelpDialogListener;

    goto :goto_36

    :pswitch_5e
    new-instance v0, Lcom/samsung/android/settings/guide/WifiSettingsGuider$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/guide/WifiSettingsGuider$5;-><init>(Lcom/samsung/android/settings/guide/WifiSettingsGuider;)V

    iput-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->onCloseHelpDialogListener:Lcom/samsung/android/settings/guide/WifiSettingsGuider$OnCloseHelpDialogListener;

    goto :goto_36

    :pswitch_66
    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mActivity:Landroid/app/Activity;

    invoke-static {v5, v0}, Lcom/samsung/android/settings/guide/GuideModeHelper;->setSettingsListEnabled(ZLandroid/app/Activity;)V

    goto :goto_36

    :pswitch_6c
    sget-object v3, Lcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;->OPAQUE:Lcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;

    const v1, 0x7f120cc0

    move-object v0, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->showHelpDialog(IILcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;Z)V

    goto :goto_4d

    :pswitch_77
    sget-object v3, Lcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;->OPAQUE:Lcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;

    const v1, 0x7f120cc2

    move-object v0, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->showHelpDialog(IILcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;Z)V

    goto :goto_4d

    :pswitch_82
    sget-object v3, Lcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;->OPAQUE:Lcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;

    const v1, 0x7f120cc3

    move-object v0, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->showHelpDialog(IILcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;Z)V

    goto :goto_4d

    :pswitch_8d
    sget-object v3, Lcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;->OPAQUE:Lcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;

    const v1, 0x7f120cc4

    const v2, 0x7f0d0139

    move-object v0, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->showHelpDialog(IILcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;Z)V

    goto :goto_4d

    :pswitch_9b
    sget-object v3, Lcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;->OPAQUE:Lcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;

    const v1, 0x7f120cc1

    move-object v0, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->showHelpDialog(IILcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;Z)V

    goto :goto_4d

    :pswitch_a6
    sget-object v3, Lcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;->OPAQUE_NO_MOVE:Lcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;

    const v1, 0x7f120cbf

    const v2, 0x7f0d0138

    move-object v0, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->showHelpDialog(IILcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mHelpDialog:Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-eqz v0, :cond_4d

    invoke-static {}, Lcom/samsung/android/settings/guide/GuideModeHelper;->isTablet()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4d

    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4d

    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mHelpDialog:Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;

    iget-object v1, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mActivity:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/samsung/android/settings/guide/GuideModeHelper;->drawActionPointerForSwitcher(Lcom/samsung/android/settings/helpdialog/TwHelpDialog;Landroid/app/Activity;)V

    goto/16 :goto_4d

    nop

    :pswitch_data_d8
    .packed-switch 0x1
        :pswitch_4e
        :pswitch_56
        :pswitch_66
        :pswitch_5e
        :pswitch_36
        :pswitch_4e
        :pswitch_36
        :pswitch_36
    .end packed-switch

    :pswitch_data_ec
    .packed-switch 0x1
        :pswitch_6c
        :pswitch_9b
        :pswitch_a6
        :pswitch_82
        :pswitch_4d
        :pswitch_77
        :pswitch_8d
        :pswitch_4d
    .end packed-switch
.end method
