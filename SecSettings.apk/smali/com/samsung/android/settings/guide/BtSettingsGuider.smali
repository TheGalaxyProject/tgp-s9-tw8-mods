.class final Lcom/samsung/android/settings/guide/BtSettingsGuider;
.super Lcom/samsung/android/settings/guide/GuiderBase;
.source "BtSettingsGuider.java"

# interfaces
.implements Lcom/samsung/android/settings/guide/GuiderLifecycleListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/guide/BtSettingsGuider$1;,
        Lcom/samsung/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;,
        Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;,
        Lcom/samsung/android/settings/guide/BtSettingsGuider$OnCloseHelpDialogListener;
    }
.end annotation


# static fields
.field private static final synthetic -com-samsung-android-settings-guide-BtSettingsGuider$BluetoothBroadcastActionsSwitchesValues:[I

.field private static final synthetic -com-samsung-android-settings-guide-BtSettingsGuider$GuideStatesSwitchesValues:[I

.field private static isFinished:Z

.field private static mCreate:Z


# instance fields
.field private mBTEnabled:Z

.field private mBTReceiver:Landroid/content/BroadcastReceiver;

.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mInitialBondedCount:I

.field private mMultiWindowManager:Lcom/samsung/android/app/SemMultiWindowManager;

.field private mShowedDialog:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

.field private mShowedLayout:I

.field private mStateContainerShowed:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

.field private onCloseHelpDialogListener:Lcom/samsung/android/settings/guide/BtSettingsGuider$OnCloseHelpDialogListener;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/guide/BtSettingsGuider;)Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mShowedDialog:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/guide/BtSettingsGuider;)Lcom/samsung/android/settings/guide/BtSettingsGuider$OnCloseHelpDialogListener;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->onCloseHelpDialogListener:Lcom/samsung/android/settings/guide/BtSettingsGuider$OnCloseHelpDialogListener;

    return-object v0
.end method

.method private static synthetic -getcom-samsung-android-settings-guide-BtSettingsGuider$BluetoothBroadcastActionsSwitchesValues()[I
    .registers 3

    sget-object v0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->-com-samsung-android-settings-guide-BtSettingsGuider$BluetoothBroadcastActionsSwitchesValues:[I

    if-eqz v0, :cond_7

    sget-object v0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->-com-samsung-android-settings-guide-BtSettingsGuider$BluetoothBroadcastActionsSwitchesValues:[I

    return-object v0

    :cond_7
    invoke-static {}, Lcom/samsung/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;->values()[Lcom/samsung/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_e
    sget-object v1, Lcom/samsung/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;->BOND_STATE_CHANGED:Lcom/samsung/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;

    invoke-virtual {v1}, Lcom/samsung/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_17} :catch_3b

    :goto_17
    :try_start_17
    sget-object v1, Lcom/samsung/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;->DISCOVERY_FINISHED:Lcom/samsung/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;

    invoke-virtual {v1}, Lcom/samsung/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_20} :catch_39

    :goto_20
    :try_start_20
    sget-object v1, Lcom/samsung/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;->DISCOVERY_STARTED:Lcom/samsung/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;

    invoke-virtual {v1}, Lcom/samsung/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_29} :catch_37

    :goto_29
    :try_start_29
    sget-object v1, Lcom/samsung/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;->STATE_CHANGED:Lcom/samsung/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;

    invoke-virtual {v1}, Lcom/samsung/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_32
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_32} :catch_35

    :goto_32
    sput-object v0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->-com-samsung-android-settings-guide-BtSettingsGuider$BluetoothBroadcastActionsSwitchesValues:[I

    return-object v0

    :catch_35
    move-exception v1

    goto :goto_32

    :catch_37
    move-exception v1

    goto :goto_29

    :catch_39
    move-exception v1

    goto :goto_20

    :catch_3b
    move-exception v1

    goto :goto_17
.end method

.method private static synthetic -getcom-samsung-android-settings-guide-BtSettingsGuider$GuideStatesSwitchesValues()[I
    .registers 3

    sget-object v0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->-com-samsung-android-settings-guide-BtSettingsGuider$GuideStatesSwitchesValues:[I

    if-eqz v0, :cond_7

    sget-object v0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->-com-samsung-android-settings-guide-BtSettingsGuider$GuideStatesSwitchesValues:[I

    return-object v0

    :cond_7
    invoke-static {}, Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;->values()[Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_e
    sget-object v1, Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;->CONNECTED:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    invoke-virtual {v1}, Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_17} :catch_5c

    :goto_17
    :try_start_17
    sget-object v1, Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;->ENABLE:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    invoke-virtual {v1}, Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_20} :catch_5a

    :goto_20
    :try_start_20
    sget-object v1, Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;->FOUND:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    invoke-virtual {v1}, Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_29} :catch_58

    :goto_29
    :try_start_29
    sget-object v1, Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;->NONE:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    invoke-virtual {v1}, Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_32
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_32} :catch_56

    :goto_32
    :try_start_32
    sget-object v1, Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;->NOT_FOUND:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    invoke-virtual {v1}, Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_32 .. :try_end_3b} :catch_54

    :goto_3b
    :try_start_3b
    sget-object v1, Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;->SCAN:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    invoke-virtual {v1}, Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_44
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3b .. :try_end_44} :catch_52

    :goto_44
    :try_start_44
    sget-object v1, Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;->SCANNING:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    invoke-virtual {v1}, Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_4d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_44 .. :try_end_4d} :catch_50

    :goto_4d
    sput-object v0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->-com-samsung-android-settings-guide-BtSettingsGuider$GuideStatesSwitchesValues:[I

    return-object v0

    :catch_50
    move-exception v1

    goto :goto_4d

    :catch_52
    move-exception v1

    goto :goto_44

    :catch_54
    move-exception v1

    goto :goto_3b

    :catch_56
    move-exception v1

    goto :goto_32

    :catch_58
    move-exception v1

    goto :goto_29

    :catch_5a
    move-exception v1

    goto :goto_20

    :catch_5c
    move-exception v1

    goto :goto_17
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/guide/BtSettingsGuider;Lcom/samsung/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;Landroid/content/Intent;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->onReceive(Lcom/samsung/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;Landroid/content/Intent;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mCreate:Z

    sput-boolean v0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->isFinished:Z

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .registers 5

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/guide/GuiderBase;-><init>(Landroid/app/Activity;)V

    sget-object v0, Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;->NONE:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    iput-object v0, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mShowedDialog:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    sget-object v0, Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;->NONE:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    iput-object v0, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mStateContainerShowed:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mShowedLayout:I

    iput-object v2, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->onCloseHelpDialogListener:Lcom/samsung/android/settings/guide/BtSettingsGuider$OnCloseHelpDialogListener;

    iput-object v2, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iput-boolean v1, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mBTEnabled:Z

    iput v1, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mInitialBondedCount:I

    new-instance v0, Lcom/samsung/android/settings/guide/BtSettingsGuider$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/guide/BtSettingsGuider$1;-><init>(Lcom/samsung/android/settings/guide/BtSettingsGuider;)V

    iput-object v0, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mBTReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v1, p1}, Lcom/samsung/android/settings/guide/GuideModeHelper;->setSettingsListFocusEnabled(ZLandroid/app/Activity;)V

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mBTReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Lcom/samsung/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;->sFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private handleDialogChange()V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mShowedDialog:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    sget-object v1, Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;->ENABLE:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    if-ne v0, v1, :cond_e

    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcom/samsung/android/settings/guide/GuideModeHelper;->setSettingsListFocusEnabled(ZLandroid/app/Activity;)V

    :cond_e
    return-void
.end method

.method private initHelpDialogContent(I)V
    .registers 5

    iget-object v2, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mHelpDialog:Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v2}, Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0a0396

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-nez v1, :cond_1e

    const v2, 0x7f0a03d0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    :cond_1e
    if-eqz v1, :cond_23

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(I)V

    :cond_23
    return-void
.end method

.method private initHelpDialogContent(II)V
    .registers 14

    const/4 v10, 0x1

    const/4 v9, 0x0

    const-string/jumbo v7, "BtSettingsGuider"

    const-string/jumbo v8, "initHelpDialogContent :: "

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v7

    invoke-virtual {v7, p2, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v7, 0x7f0a0396

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    if-nez v5, :cond_2b

    const v7, 0x7f0a03d0

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    :cond_2b
    if-eqz v5, :cond_30

    invoke-virtual {v5, p1}, Landroid/widget/TextView;->setText(I)V

    :cond_30
    :try_start_30
    iget-object v7, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mMultiWindowManager:Lcom/samsung/android/app/SemMultiWindowManager;

    if-eqz v7, :cond_a3

    iget-object v7, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mMultiWindowManager:Lcom/samsung/android/app/SemMultiWindowManager;

    invoke-virtual {v7}, Lcom/samsung/android/app/SemMultiWindowManager;->getMode()I

    move-result v3

    const-string/jumbo v7, "BtSettingsGuider"

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

    if-nez v3, :cond_87

    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mHelpDialog:Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v8}, Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/settings/Utils;->applyLandscapeFullScreen(Landroid/content/Context;Landroid/view/Window;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v4, v7, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v10, :cond_87

    iget-object v7, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mHelpDialog:Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v7}, Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/high16 v7, 0x4000000

    invoke-virtual {v6, v7}, Landroid/view/Window;->clearFlags(I)V

    const/high16 v7, -0x80000000

    invoke-virtual {v6, v7}, Landroid/view/Window;->addFlags(I)V

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/Window;->setStatusBarColor(I)V
    :try_end_87
    .catch Ljava/lang/IllegalArgumentException; {:try_start_30 .. :try_end_87} :catch_ad

    :cond_87
    :goto_87
    iget-object v7, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mHelpDialog:Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v7, v1}, Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;->setContentView(Landroid/view/View;)V

    const v7, 0x7f0a03a3

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    if-eqz v0, :cond_a2

    invoke-virtual {v0, v10}, Landroid/widget/ImageButton;->semSetHoverPopupType(I)V

    new-instance v7, Lcom/samsung/android/settings/guide/BtSettingsGuider$3;

    invoke-direct {v7, p0}, Lcom/samsung/android/settings/guide/BtSettingsGuider$3;-><init>(Lcom/samsung/android/settings/guide/BtSettingsGuider;)V

    invoke-virtual {v0, v7}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_a2
    return-void

    :cond_a3
    :try_start_a3
    const-string/jumbo v7, "BtSettingsGuider"

    const-string/jumbo v8, "initHelpDialogContent :: mMultiWindowManager is null"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ac
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a3 .. :try_end_ac} :catch_ad

    goto :goto_87

    :catch_ad
    move-exception v2

    const-string/jumbo v7, "BtSettingsGuider"

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

    goto :goto_87
.end method

.method private invalidateHelpDialog(Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;)V
    .registers 8

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mHelpDialog:Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-nez v2, :cond_6

    return-void

    :cond_6
    const v0, 0x7f0d0131

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->setFocus(Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;)V

    invoke-static {}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->-getcom-samsung-android-settings-guide-BtSettingsGuider$GuideStatesSwitchesValues()[I

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_68

    :cond_19
    :goto_19
    :pswitch_19
    invoke-direct {p0, v1, v0}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->initHelpDialogContent(II)V

    return-void

    :pswitch_1d
    const v1, 0x7f120cbe

    goto :goto_19

    :pswitch_21
    const v1, 0x7f120cb9

    goto :goto_19

    :pswitch_25
    const v1, 0x7f120cb8

    goto :goto_19

    :pswitch_29
    const v1, 0x7f120cbf

    invoke-static {}, Lcom/samsung/android/settings/guide/GuideModeHelper;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_5c

    const v0, 0x7f0d012e

    :goto_35
    invoke-static {}, Lcom/samsung/android/settings/guide/GuideModeHelper;->isTablet()Z

    move-result v2

    if-nez v2, :cond_19

    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_19

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/samsung/android/settings/guide/BtSettingsGuider$2;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/guide/BtSettingsGuider$2;-><init>(Lcom/samsung/android/settings/guide/BtSettingsGuider;)V

    const-wide/16 v4, 0x96

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_19

    :cond_5c
    const v0, 0x7f0d012d

    goto :goto_35

    :pswitch_60
    const v1, 0x7f120cb9

    const v0, 0x7f0d0131

    goto :goto_19

    nop

    :pswitch_data_68
    .packed-switch 0x1
        :pswitch_25
        :pswitch_29
        :pswitch_21
        :pswitch_19
        :pswitch_60
        :pswitch_21
        :pswitch_1d
    .end packed-switch
.end method

.method private onBluetoothStateChanged()V
    .registers 6

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v1, :cond_3a

    iget-object v1, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mBTEnabled:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->getFragment()Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_3a

    invoke-virtual {v0}, Landroid/app/Fragment;->isResumed()Z

    move-result v1

    if-eqz v1, :cond_3a

    iget-object v1, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_2e

    iget-object v1, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_3b

    :cond_2e
    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    sput-boolean v4, Lcom/samsung/android/settings/guide/BtSettingsGuider;->isFinished:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->onDestroy()V

    :cond_3a
    :goto_3a
    return-void

    :cond_3b
    iget-object v1, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mInitialBondedCount:I

    iget v1, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mInitialBondedCount:I

    if-nez v1, :cond_57

    iget-object v1, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v1

    if-eqz v1, :cond_57

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->changeHelpDialogState(Z)V

    goto :goto_3a

    :cond_57
    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->changeHelpDialogState(Z)V

    goto :goto_3a
.end method

.method private onDeviceBondStateChanged(II)V
    .registers 8

    const/16 v4, 0xc

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->getFragment()Landroid/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_16

    invoke-virtual {v1}, Landroid/app/Fragment;->isResumed()Z

    move-result v2

    if-nez v2, :cond_11

    if-ne p1, v4, :cond_16

    :cond_11
    const/4 v0, 0x1

    :goto_12
    packed-switch p1, :pswitch_data_48

    :cond_15
    :goto_15
    return-void

    :cond_16
    const/4 v0, 0x0

    goto :goto_12

    :pswitch_18
    if-eqz v0, :cond_1f

    sget-object v2, Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;->CONNECTED:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->showHelpDialog(Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;)V

    :cond_1f
    iget v2, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mInitialBondedCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mInitialBondedCount:I

    goto :goto_15

    :pswitch_26
    if-ne p2, v4, :cond_15

    iget v2, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mInitialBondedCount:I

    if-lez v2, :cond_3e

    iget v2, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mInitialBondedCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mInitialBondedCount:I

    if-nez v0, :cond_38

    sget-object v2, Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;->NONE:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    iput-object v2, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mShowedDialog:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    :cond_38
    :goto_38
    if-eqz v0, :cond_15

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->changeHelpDialogState(Z)V

    goto :goto_15

    :cond_3e
    iput v3, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mInitialBondedCount:I

    goto :goto_38

    :pswitch_41
    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->dismissHelpDialog()V

    goto :goto_15

    nop

    :pswitch_data_48
    .packed-switch 0xa
        :pswitch_26
        :pswitch_41
        :pswitch_18
    .end packed-switch
.end method

.method private onReceive(Lcom/samsung/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;Landroid/content/Intent;)V
    .registers 6

    const/high16 v2, -0x80000000

    invoke-static {}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->-getcom-samsung-android-settings-guide-BtSettingsGuider$BluetoothBroadcastActionsSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_30

    :goto_f
    return-void

    :pswitch_10
    invoke-direct {p0}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->onBluetoothStateChanged()V

    goto :goto_f

    :pswitch_14
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->onScanningStateChanged(Z)V

    goto :goto_f

    :pswitch_19
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->onScanningStateChanged(Z)V

    goto :goto_f

    :pswitch_1e
    const-string/jumbo v0, "android.bluetooth.device.extra.BOND_STATE"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string/jumbo v1, "android.bluetooth.device.extra.PREVIOUS_BOND_STATE"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->onDeviceBondStateChanged(II)V

    goto :goto_f

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_19
        :pswitch_14
        :pswitch_10
    .end packed-switch
.end method

.method private onScanningStateChanged(Z)V
    .registers 4

    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->getFragment()Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Landroid/app/Fragment;->isResumed()Z

    move-result v1

    if-eqz v1, :cond_1b

    iget-object v1, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mBTEnabled:Z

    :cond_18
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->changeHelpDialogState(Z)V

    :cond_1b
    return-void
.end method

.method private setFocus(Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;)V
    .registers 7

    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->-getcom-samsung-android-settings-guide-BtSettingsGuider$GuideStatesSwitchesValues()[I

    move-result-object v3

    invoke-virtual {p1}, Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_44

    :cond_11
    :goto_11
    :pswitch_11
    return-void

    :pswitch_12
    if-eqz v1, :cond_11

    instance-of v3, v1, Landroid/app/ListActivity;

    if-eqz v3, :cond_22

    check-cast v1, Landroid/app/ListActivity;

    invoke-virtual {v1}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->requestFocus()Z

    goto :goto_11

    :cond_22
    instance-of v3, v1, Landroid/app/Activity;

    if-eqz v3, :cond_11

    const v3, 0x7f0a04f6

    invoke-virtual {v1, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    goto :goto_11

    :pswitch_31
    if-eqz v1, :cond_11

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_11

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    goto :goto_11

    nop

    :pswitch_data_44
    .packed-switch 0x1
        :pswitch_12
        :pswitch_31
        :pswitch_12
        :pswitch_11
        :pswitch_11
        :pswitch_12
        :pswitch_12
    .end packed-switch
.end method

.method private showHelpDialog(IILcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;)V
    .registers 7

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mHelpDialog:Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-nez v1, :cond_23

    new-instance v1, Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mHelpDialog:Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;

    iget-object v1, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mHelpDialog:Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;->setShowWrongInputToast(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mHelpDialog:Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;->setOwnerActivity(Landroid/app/Activity;)V

    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mShowedLayout:I

    const/4 v0, 0x1

    :cond_23
    iget-object v1, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mHelpDialog:Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;

    sget-object v2, Lcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;->TRANSPARENT:Lcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;->setTouchTransparencyMode(Lcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->handleDialogChange()V

    iget v1, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mShowedLayout:I

    if-eq v1, p2, :cond_40

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->initHelpDialogContent(II)V

    :goto_34
    if-eqz v0, :cond_3b

    iget-object v1, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mHelpDialog:Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v1}, Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;->show()V

    :cond_3b
    iput-object p3, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mShowedDialog:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    iput p2, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mShowedLayout:I

    return-void

    :cond_40
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->initHelpDialogContent(I)V

    goto :goto_34
.end method


# virtual methods
.method protected changeHelpDialogState(Z)V
    .registers 5

    iget-boolean v1, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mBTEnabled:Z

    if-eqz v1, :cond_17

    if-nez p1, :cond_12

    iget-object v1, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v1

    if-eqz v1, :cond_18

    :cond_12
    sget-object v1, Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;->SCANNING:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->showHelpDialog(Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;)V

    :cond_17
    :goto_17
    return-void

    :cond_18
    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->getCachedDevicesNumber(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_2c

    sget-object v1, Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;->NOT_FOUND:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->showHelpDialog(Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;)V

    goto :goto_17

    :cond_2c
    iget-object v1, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v1, :cond_44

    iget v1, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mInitialBondedCount:I

    iget-object v2, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-ge v1, v2, :cond_44

    sget-object v1, Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;->CONNECTED:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->showHelpDialog(Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;)V

    goto :goto_17

    :cond_44
    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_17

    invoke-static {}, Lcom/android/settings/bluetooth/BluetoothSettings;->isDeviceProfileShown()Z

    move-result v1

    if-eqz v1, :cond_54

    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->dismissHelpDialog()V

    goto :goto_17

    :cond_54
    iget v1, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mInitialBondedCount:I

    if-le v0, v1, :cond_5e

    sget-object v1, Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;->FOUND:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->showHelpDialog(Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;)V

    goto :goto_17

    :cond_5e
    sget-object v1, Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;->SCAN:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->showHelpDialog(Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;)V

    goto :goto_17
.end method

.method public dismissHelpDialog()V
    .registers 7

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mHelpDialog:Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-eqz v3, :cond_33

    iget-object v3, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mHelpDialog:Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;

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
    iget-object v3, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mHelpDialog:Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v3}, Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;->dismiss()V

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mHelpDialog:Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-direct {p0}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->handleDialogChange()V

    sget-object v3, Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;->NONE:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    iput-object v3, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mShowedDialog:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    const/4 v3, -0x1

    iput v3, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mShowedLayout:I

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->onCloseHelpDialogListener:Lcom/samsung/android/settings/guide/BtSettingsGuider$OnCloseHelpDialogListener;
    :try_end_33
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_33} :catch_34

    :cond_33
    :goto_33
    return-void

    :catch_34
    move-exception v2

    const-string/jumbo v3, "BtSettingsGuider"

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

    goto :goto_33
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 2

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mShowedDialog:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    sget-object v1, Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;->NONE:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    if-eq v0, v1, :cond_b

    iget-object v0, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mShowedDialog:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->invalidateHelpDialog(Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;)V

    :cond_b
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mInitialBondedCount:I

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->isFinished:Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mCreate:Z

    const-string/jumbo v0, "BtSettingsGuider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCreate is called "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/samsung/android/settings/guide/BtSettingsGuider;->isFinished:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_32
    new-instance v0, Lcom/samsung/android/app/SemMultiWindowManager;

    invoke-direct {v0}, Lcom/samsung/android/app/SemMultiWindowManager;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mMultiWindowManager:Lcom/samsung/android/app/SemMultiWindowManager;

    return-void
.end method

.method public onDestroy()V
    .registers 4

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->dismissHelpDialog()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_25

    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Lcom/samsung/android/settings/guide/GuideModeHelper;->setSettingsListEnabled(ZLandroid/app/Activity;)V

    iget-object v0, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mBTReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_25

    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mBTReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v2, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mBTReceiver:Landroid/content/BroadcastReceiver;

    :cond_25
    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->finish()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)V
    .registers 2

    return-void
.end method

.method public onPause()V
    .registers 2

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/android/settings/guide/GuideFragment;->setsIsInGuideMode(Z)V

    invoke-static {}, Lcom/samsung/android/settings/guide/GuideFragment;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mShowedDialog:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    iput-object v0, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mStateContainerShowed:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->dismissHelpDialog()V

    :cond_11
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .registers 8

    :try_start_0
    invoke-static {}, Lcom/samsung/android/settings/guide/GuideModeHelper;->isTablet()Z

    move-result v1

    if-nez v1, :cond_2c

    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2c

    iget-object v1, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mShowedDialog:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    sget-object v2, Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;->ENABLE:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    if-ne v1, v2, :cond_2c

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/samsung/android/settings/guide/BtSettingsGuider$4;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/guide/BtSettingsGuider$4;-><init>(Lcom/samsung/android/settings/guide/BtSettingsGuider;)V

    const-wide/16 v4, 0x96

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_2c
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_2c} :catch_2d

    :cond_2c
    :goto_2c
    return-void

    :catch_2d
    move-exception v0

    const-string/jumbo v1, "BtSettingsGuider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "NullPointerException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_2c
.end method

.method public onResume()V
    .registers 6

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-static {v3}, Lcom/samsung/android/settings/guide/GuideFragment;->setsIsInGuideMode(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mBTEnabled:Z

    iget-object v0, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_2d

    sget-boolean v0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mCreate:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2d

    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    sput-boolean v3, Lcom/samsung/android/settings/guide/BtSettingsGuider;->isFinished:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->onDestroy()V

    :cond_2d
    const-string/jumbo v0, "BtSettingsGuider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onResume is called "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/samsung/android/settings/guide/BtSettingsGuider;->isFinished:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->isFinished:Z

    if-eqz v0, :cond_4e

    return-void

    :cond_4e
    iget-object v0, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_6b

    iget v0, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mInitialBondedCount:I

    iget-object v1, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-ge v0, v1, :cond_6b

    sget-object v0, Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;->CONNECTED:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->showHelpDialog(Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;)V

    :cond_65
    :goto_65
    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->setGuidedActionBarClickable(Z)V

    sput-boolean v4, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mCreate:Z

    return-void

    :cond_6b
    iget-object v0, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mShowedDialog:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    sget-object v1, Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;->SCAN:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    if-eq v0, v1, :cond_8d

    iget-object v0, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mShowedDialog:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    sget-object v1, Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;->CONNECTED:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    if-eq v0, v1, :cond_8d

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->changeHelpDialogState(Z)V

    const-string/jumbo v0, "BtSettingsGuider"

    const-string/jumbo v1, "changeHelpDialogState"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/settings/bluetooth/BluetoothSettings;->isDeviceProfileShown()Z

    move-result v0

    if-eqz v0, :cond_65

    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->dismissHelpDialog()V

    goto :goto_65

    :cond_8d
    invoke-static {}, Lcom/samsung/android/settings/guide/GuideFragment;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_65

    iget-object v0, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mStateContainerShowed:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    sget-object v1, Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;->NONE:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    if-eq v0, v1, :cond_65

    iget-object v0, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mStateContainerShowed:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    iget-object v1, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mShowedDialog:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b3

    iget-object v0, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mShowedDialog:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    sget-object v1, Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;->CONNECTED:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    if-ne v0, v1, :cond_b3

    iget-object v0, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mShowedDialog:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->showHelpDialog(Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;)V

    :goto_ae
    sget-object v0, Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;->NONE:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    iput-object v0, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mStateContainerShowed:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    goto :goto_65

    :cond_b3
    iget-object v0, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mStateContainerShowed:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->showHelpDialog(Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;)V

    goto :goto_ae
.end method

.method protected setGuidedActionBarClickable(Z)V
    .registers 7

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_28

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    :goto_b
    if-eqz v0, :cond_27

    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_27

    invoke-virtual {v2}, Landroid/view/View;->isClickable()Z

    move-result v3

    if-eq v3, p1, :cond_22

    invoke-virtual {v2, v4}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {v2}, Landroid/view/View;->clearFocus()V

    invoke-virtual {v2, v4}, Landroid/view/View;->setClickable(Z)V

    :cond_22
    if-eqz p1, :cond_27

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    :cond_27
    return-void

    :cond_28
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public showHelpDialog()V
    .registers 1

    return-void
.end method

.method public showHelpDialog(Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;)V
    .registers 8

    const v5, 0x7f120cbf

    const/4 v0, 0x1

    const/4 v2, 0x0

    const v4, 0x7f120cb9

    const v3, 0x7f0d0131

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->setFocus(Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;)V

    iget-object v1, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mHelpDialog:Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mShowedDialog:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    if-ne v1, p1, :cond_17

    return-void

    :cond_17
    iput-object v2, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->onCloseHelpDialogListener:Lcom/samsung/android/settings/guide/BtSettingsGuider$OnCloseHelpDialogListener;

    invoke-static {}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->-getcom-samsung-android-settings-guide-BtSettingsGuider$GuideStatesSwitchesValues()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_8c

    :cond_26
    :goto_26
    :pswitch_26
    sget-object v1, Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;->ENABLE:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    if-ne p1, v1, :cond_89

    :goto_2a
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->setGuidedActionBarClickable(Z)V

    return-void

    :pswitch_2e
    const v1, 0x7f120cbe

    invoke-direct {p0, v1, v3, p1}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->showHelpDialog(IILcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;)V

    goto :goto_26

    :pswitch_35
    invoke-direct {p0, v4, v3, p1}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->showHelpDialog(IILcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;)V

    goto :goto_26

    :pswitch_39
    const v1, 0x7f120cb8

    invoke-direct {p0, v1, v3, p1}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->showHelpDialog(IILcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;)V

    goto :goto_26

    :pswitch_40
    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/guide/GuideModeHelper;->setSettingsListEnabled(ZLandroid/app/Activity;)V

    invoke-static {}, Lcom/samsung/android/settings/guide/GuideModeHelper;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_7a

    const v1, 0x7f0d012e

    invoke-direct {p0, v5, v1, p1}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->showHelpDialog(IILcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;)V

    :goto_53
    iget-object v1, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mHelpDialog:Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-eqz v1, :cond_26

    invoke-static {}, Lcom/samsung/android/settings/guide/GuideModeHelper;->isTablet()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_26

    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_26

    iget-object v1, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mHelpDialog:Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/settings/guide/GuideModeHelper;->drawActionPointerForSwitcher(Lcom/samsung/android/settings/helpdialog/TwHelpDialog;Landroid/app/Activity;)V

    goto :goto_26

    :cond_7a
    const v1, 0x7f0d012d

    invoke-direct {p0, v5, v1, p1}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->showHelpDialog(IILcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;)V

    goto :goto_53

    :pswitch_81
    invoke-direct {p0, v4, v3, p1}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->showHelpDialog(IILcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;)V

    goto :goto_26

    :pswitch_85
    invoke-direct {p0, v4, v3, p1}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->showHelpDialog(IILcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;)V

    goto :goto_26

    :cond_89
    const/4 v0, 0x0

    goto :goto_2a

    nop

    :pswitch_data_8c
    .packed-switch 0x1
        :pswitch_39
        :pswitch_40
        :pswitch_35
        :pswitch_26
        :pswitch_85
        :pswitch_81
        :pswitch_2e
    .end packed-switch
.end method
