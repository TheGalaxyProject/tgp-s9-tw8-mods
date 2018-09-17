.class public final Lcom/samsung/android/settings/guide/GuideFragment;
.super Landroid/app/Fragment;
.source "GuideFragment.java"

# interfaces
.implements Lcom/samsung/android/settings/guide/GuideFragmentCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/guide/GuideFragment$GuideModes;,
        Lcom/samsung/android/settings/guide/GuideFragment$SettingsHeader;
    }
.end annotation


# static fields
.field private static final synthetic -com-samsung-android-settings-guide-GuideFragment$GuideModesSwitchesValues:[I

.field private static sIsInGuideMode:Z


# instance fields
.field private mGuider:Lcom/samsung/android/settings/guide/GuiderLifecycleListener;

.field private mIsInGuideMode:Z

.field private mMode:Lcom/samsung/android/settings/guide/GuideFragment$GuideModes;

.field private mOpenedHeader:Lcom/samsung/android/settings/guide/GuideFragment$SettingsHeader;


# direct methods
.method private static synthetic -getcom-samsung-android-settings-guide-GuideFragment$GuideModesSwitchesValues()[I
    .registers 3

    sget-object v0, Lcom/samsung/android/settings/guide/GuideFragment;->-com-samsung-android-settings-guide-GuideFragment$GuideModesSwitchesValues:[I

    if-eqz v0, :cond_7

    sget-object v0, Lcom/samsung/android/settings/guide/GuideFragment;->-com-samsung-android-settings-guide-GuideFragment$GuideModesSwitchesValues:[I

    return-object v0

    :cond_7
    invoke-static {}, Lcom/samsung/android/settings/guide/GuideFragment$GuideModes;->values()[Lcom/samsung/android/settings/guide/GuideFragment$GuideModes;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_e
    sget-object v1, Lcom/samsung/android/settings/guide/GuideFragment$GuideModes;->BLUETOOTH:Lcom/samsung/android/settings/guide/GuideFragment$GuideModes;

    invoke-virtual {v1}, Lcom/samsung/android/settings/guide/GuideFragment$GuideModes;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_17} :catch_3b

    :goto_17
    :try_start_17
    sget-object v1, Lcom/samsung/android/settings/guide/GuideFragment$GuideModes;->BLUETOOTH_SETTING:Lcom/samsung/android/settings/guide/GuideFragment$GuideModes;

    invoke-virtual {v1}, Lcom/samsung/android/settings/guide/GuideFragment$GuideModes;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_20} :catch_39

    :goto_20
    :try_start_20
    sget-object v1, Lcom/samsung/android/settings/guide/GuideFragment$GuideModes;->WIFI:Lcom/samsung/android/settings/guide/GuideFragment$GuideModes;

    invoke-virtual {v1}, Lcom/samsung/android/settings/guide/GuideFragment$GuideModes;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_29} :catch_37

    :goto_29
    :try_start_29
    sget-object v1, Lcom/samsung/android/settings/guide/GuideFragment$GuideModes;->WIFI_SETTINGS:Lcom/samsung/android/settings/guide/GuideFragment$GuideModes;

    invoke-virtual {v1}, Lcom/samsung/android/settings/guide/GuideFragment$GuideModes;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_32
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_32} :catch_35

    :goto_32
    sput-object v0, Lcom/samsung/android/settings/guide/GuideFragment;->-com-samsung-android-settings-guide-GuideFragment$GuideModesSwitchesValues:[I

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

.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/settings/guide/GuideFragment;->sIsInGuideMode:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/guide/GuideFragment;->mIsInGuideMode:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/guide/GuideFragment;->mMode:Lcom/samsung/android/settings/guide/GuideFragment$GuideModes;

    sget-object v0, Lcom/samsung/android/settings/guide/GuideFragment$SettingsHeader;->NONE:Lcom/samsung/android/settings/guide/GuideFragment$SettingsHeader;

    iput-object v0, p0, Lcom/samsung/android/settings/guide/GuideFragment;->mOpenedHeader:Lcom/samsung/android/settings/guide/GuideFragment$SettingsHeader;

    return-void
.end method

.method private static completeGuide(Landroid/app/Activity;)V
    .registers 1

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public static deployGuide(Landroid/app/Activity;Landroid/content/Intent;)V
    .registers 16

    const/4 v13, 0x1

    const/4 v12, 0x0

    const v11, 0x7f0a0398

    const/4 v10, 0x0

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v7, "GuideFragment"

    invoke-virtual {v1, v7}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/guide/GuideFragment;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/settings/guide/GuideModeHelper;->getGuideModeFromIntent(Landroid/os/Bundle;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/settings/guide/GuideModeHelper;->isGuideModeBluetooth(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v3}, Lcom/samsung/android/settings/guide/GuideModeHelper;->isGuideModeWiFi(Ljava/lang/String;)Z

    move-result v5

    const-string/jumbo v7, "TAG"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "deployGuide: isBtGuide : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ":isBtGuide:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ":isWifiGuide:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/android/settings/guide/GuideModeHelper;->getGuideModeFromBundle(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_8b

    if-eqz v2, :cond_8b

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    invoke-static {p0}, Lcom/samsung/android/settings/guide/GuideFragment;->findMainView(Landroid/app/Activity;)Landroid/view/ViewGroup;

    move-result-object v6

    if-eqz v6, :cond_7b

    invoke-virtual {v6, v11}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_7b
    sput-boolean v12, Lcom/samsung/android/settings/guide/GuideFragment;->sIsInGuideMode:Z

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/android/settings/guide/GuideModeHelper;->isGuideCompleted(Landroid/os/Bundle;)Z

    move-result v7

    if-eqz v7, :cond_8a

    invoke-static {p0}, Lcom/samsung/android/settings/guide/GuideFragment;->completeGuide(Landroid/app/Activity;)V

    :cond_8a
    :goto_8a
    return-void

    :cond_8b
    if-eqz v2, :cond_91

    if-nez v4, :cond_91

    if-eqz v5, :cond_bc

    :cond_91
    invoke-static {p1}, Lcom/samsung/android/settings/guide/GuideFragment;->newInstance(Landroid/content/Intent;)Lcom/samsung/android/settings/guide/GuideFragment;

    move-result-object v2

    if-eqz v2, :cond_b9

    invoke-static {p0}, Lcom/samsung/android/settings/guide/GuideFragment;->findMainView(Landroid/app/Activity;)Landroid/view/ViewGroup;

    move-result-object v6

    if-eqz v6, :cond_a8

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v11}, Landroid/widget/FrameLayout;->setId(I)V

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_a8
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v7

    const-string/jumbo v8, "GuideFragment"

    invoke-virtual {v7, v11, v2, v8}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    sput-boolean v13, Lcom/samsung/android/settings/guide/GuideFragment;->sIsInGuideMode:Z

    goto :goto_8a

    :cond_b9
    sput-boolean v12, Lcom/samsung/android/settings/guide/GuideFragment;->sIsInGuideMode:Z

    goto :goto_8a

    :cond_bc
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    invoke-direct {v2, v7, v10}, Lcom/samsung/android/settings/guide/GuideFragment;->initFragment(Landroid/os/Bundle;Lcom/samsung/android/settings/guide/GuideFragment$GuideModes;)V

    sput-boolean v13, Lcom/samsung/android/settings/guide/GuideFragment;->sIsInGuideMode:Z

    goto :goto_8a
.end method

.method public static dismissHelpDialog(Landroid/app/Activity;)V
    .registers 5

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v2, "GuideFragment"

    invoke-virtual {v0, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/guide/GuideFragment;

    if-eqz v1, :cond_1c

    const-string/jumbo v2, "GuideFragment"

    const-string/jumbo v3, "dismissGuideHelper: "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {v1}, Lcom/samsung/android/settings/guide/GuideFragment;->dismissHelpDialogOnAdvanceClick()V

    :goto_1b
    return-void

    :cond_1c
    const-string/jumbo v2, "GuideFragment"

    const-string/jumbo v3, "dismissGuideHelper: GuideFragment is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b
.end method

.method private dismissHelpDialogOnAdvanceClick()V
    .registers 4

    const-string/jumbo v0, "GuideFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "dismissHelpDialog: mGuider "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/guide/GuideFragment;->mGuider:Lcom/samsung/android/settings/guide/GuiderLifecycleListener;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/guide/GuideFragment;->mGuider:Lcom/samsung/android/settings/guide/GuiderLifecycleListener;

    if-eqz v0, :cond_2e

    const-string/jumbo v0, "GuideFragment"

    const-string/jumbo v1, "dismissHelpDialog: calling  mGuider::dismissHelpDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/guide/GuideFragment;->mGuider:Lcom/samsung/android/settings/guide/GuiderLifecycleListener;

    invoke-interface {v0}, Lcom/samsung/android/settings/guide/GuiderLifecycleListener;->dismissHelpDialog()V

    :cond_2e
    return-void
.end method

.method public static findGuideFragment(Landroid/app/Activity;)Lcom/samsung/android/settings/guide/GuideFragmentCallback;
    .registers 3

    const/4 v0, 0x0

    if-eqz p0, :cond_10

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v1, "GuideFragment"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/guide/GuideFragmentCallback;

    :cond_10
    return-object v0
.end method

.method private static findMainView(Landroid/app/Activity;)Landroid/view/ViewGroup;
    .registers 4

    const/4 v1, 0x0

    instance-of v2, p0, Landroid/app/ListActivity;

    if-eqz v2, :cond_17

    check-cast p0, Landroid/app/ListActivity;

    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_16

    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    :cond_16
    :goto_16
    return-object v1

    :cond_17
    instance-of v2, p0, Landroid/app/Activity;

    if-eqz v2, :cond_16

    const v2, 0x7f0a04f6

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_16

    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    goto :goto_16
.end method

.method private initFragment(Landroid/os/Bundle;Lcom/samsung/android/settings/guide/GuideFragment$GuideModes;)V
    .registers 9

    const/4 v5, 0x0

    move-object v3, p2

    if-nez p2, :cond_1e

    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/GuideFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/samsung/android/settings/guide/GuideModeHelper;->getGuideModeFromIntent(Landroid/os/Bundle;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/GuideFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/samsung/android/settings/guide/GuideModeHelper;->isInGuideMode(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v2

    invoke-static {v1}, Lcom/samsung/android/settings/guide/GuideModeHelper;->isGuideModeWiFi(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_28

    if-eqz v2, :cond_25

    sget-object v3, Lcom/samsung/android/settings/guide/GuideFragment$GuideModes;->WIFI_SETTINGS:Lcom/samsung/android/settings/guide/GuideFragment$GuideModes;

    :cond_1e
    :goto_1e
    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/GuideFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_36

    return-void

    :cond_25
    sget-object v3, Lcom/samsung/android/settings/guide/GuideFragment$GuideModes;->WIFI:Lcom/samsung/android/settings/guide/GuideFragment$GuideModes;

    goto :goto_1e

    :cond_28
    invoke-static {v1}, Lcom/samsung/android/settings/guide/GuideModeHelper;->isGuideModeBluetooth(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1e

    if-eqz v2, :cond_33

    sget-object v3, Lcom/samsung/android/settings/guide/GuideFragment$GuideModes;->BLUETOOTH_SETTING:Lcom/samsung/android/settings/guide/GuideFragment$GuideModes;

    goto :goto_1e

    :cond_33
    sget-object v3, Lcom/samsung/android/settings/guide/GuideFragment$GuideModes;->BLUETOOTH:Lcom/samsung/android/settings/guide/GuideFragment$GuideModes;

    goto :goto_1e

    :cond_36
    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/GuideFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/settings/guide/GuideModeHelper;->isGuideCompleted(Landroid/os/Bundle;)Z

    move-result v4

    if-eqz v4, :cond_44

    invoke-static {v0}, Lcom/samsung/android/settings/guide/GuideFragment;->completeGuide(Landroid/app/Activity;)V

    return-void

    :cond_44
    iget-object v4, p0, Lcom/samsung/android/settings/guide/GuideFragment;->mMode:Lcom/samsung/android/settings/guide/GuideFragment$GuideModes;

    if-ne v3, v4, :cond_49

    return-void

    :cond_49
    iput-object v3, p0, Lcom/samsung/android/settings/guide/GuideFragment;->mMode:Lcom/samsung/android/settings/guide/GuideFragment$GuideModes;

    iget-object v4, p0, Lcom/samsung/android/settings/guide/GuideFragment;->mGuider:Lcom/samsung/android/settings/guide/GuiderLifecycleListener;

    if-eqz v4, :cond_56

    iget-object v4, p0, Lcom/samsung/android/settings/guide/GuideFragment;->mGuider:Lcom/samsung/android/settings/guide/GuiderLifecycleListener;

    invoke-interface {v4}, Lcom/samsung/android/settings/guide/GuiderLifecycleListener;->onDestroy()V

    iput-object v5, p0, Lcom/samsung/android/settings/guide/GuideFragment;->mGuider:Lcom/samsung/android/settings/guide/GuiderLifecycleListener;

    :cond_56
    iget-object v4, p0, Lcom/samsung/android/settings/guide/GuideFragment;->mMode:Lcom/samsung/android/settings/guide/GuideFragment$GuideModes;

    if-eqz v4, :cond_75

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/samsung/android/settings/guide/GuideFragment;->mIsInGuideMode:Z

    invoke-static {}, Lcom/samsung/android/settings/guide/GuideFragment;->-getcom-samsung-android-settings-guide-GuideFragment$GuideModesSwitchesValues()[I

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/guide/GuideFragment;->mMode:Lcom/samsung/android/settings/guide/GuideFragment$GuideModes;

    invoke-virtual {v5}, Lcom/samsung/android/settings/guide/GuideFragment$GuideModes;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_a0

    :cond_6c
    :goto_6c
    iget-object v4, p0, Lcom/samsung/android/settings/guide/GuideFragment;->mGuider:Lcom/samsung/android/settings/guide/GuiderLifecycleListener;

    if-eqz v4, :cond_75

    iget-object v4, p0, Lcom/samsung/android/settings/guide/GuideFragment;->mGuider:Lcom/samsung/android/settings/guide/GuiderLifecycleListener;

    invoke-interface {v4}, Lcom/samsung/android/settings/guide/GuiderLifecycleListener;->showHelpDialog()V

    :cond_75
    return-void

    :pswitch_76
    invoke-virtual {v0}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "SubSettings"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6c

    new-instance v4, Lcom/samsung/android/settings/guide/BtSettingsGuider;

    invoke-direct {v4, v0}, Lcom/samsung/android/settings/guide/BtSettingsGuider;-><init>(Landroid/app/Activity;)V

    iput-object v4, p0, Lcom/samsung/android/settings/guide/GuideFragment;->mGuider:Lcom/samsung/android/settings/guide/GuiderLifecycleListener;

    goto :goto_6c

    :pswitch_8b
    invoke-virtual {v0}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "SubSettings"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6c

    new-instance v4, Lcom/samsung/android/settings/guide/WifiSettingsGuider;

    invoke-direct {v4, v0}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;-><init>(Landroid/app/Activity;)V

    iput-object v4, p0, Lcom/samsung/android/settings/guide/GuideFragment;->mGuider:Lcom/samsung/android/settings/guide/GuiderLifecycleListener;

    goto :goto_6c

    :pswitch_data_a0
    .packed-switch 0x1
        :pswitch_76
        :pswitch_76
        :pswitch_8b
        :pswitch_8b
    .end packed-switch
.end method

.method public static isInGuideMode()Z
    .registers 1

    sget-boolean v0, Lcom/samsung/android/settings/guide/GuideFragment;->sIsInGuideMode:Z

    return v0
.end method

.method public static isInGuideMode(Landroid/app/Activity;)Z
    .registers 3

    const/4 v0, 0x0

    sget-boolean v1, Lcom/samsung/android/settings/guide/GuideFragment;->sIsInGuideMode:Z

    if-eqz v1, :cond_c

    invoke-static {p0}, Lcom/samsung/android/settings/guide/GuideFragment;->findGuideFragment(Landroid/app/Activity;)Lcom/samsung/android/settings/guide/GuideFragmentCallback;

    move-result-object v1

    if-eqz v1, :cond_c

    const/4 v0, 0x1

    :cond_c
    return v0
.end method

.method public static isTablet()Z
    .registers 1

    invoke-static {}, Lcom/samsung/android/settings/guide/GuideModeHelper;->isTablet()Z

    move-result v0

    return v0
.end method

.method private static newInstance(Landroid/content/Intent;)Lcom/samsung/android/settings/guide/GuideFragment;
    .registers 5

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/settings/guide/GuideModeHelper;->getGuideModeFromBundle(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_c

    return-object v3

    :cond_c
    new-instance v1, Lcom/samsung/android/settings/guide/GuideFragment;

    invoke-direct {v1}, Lcom/samsung/android/settings/guide/GuideFragment;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/guide/GuideFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v1
.end method

.method public static setsIsInGuideMode(Z)V
    .registers 1

    sput-boolean p0, Lcom/samsung/android/settings/guide/GuideFragment;->sIsInGuideMode:Z

    return-void
.end method

.method public static showHelpDialog(Landroid/app/Activity;)V
    .registers 5

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v2, "GuideFragment"

    invoke-virtual {v0, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/guide/GuideFragment;

    if-eqz v1, :cond_1c

    const-string/jumbo v2, "GuideFragment"

    const-string/jumbo v3, "showHelpDialog: "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {v1}, Lcom/samsung/android/settings/guide/GuideFragment;->showHelpDialogOnResume()V

    :goto_1b
    return-void

    :cond_1c
    const-string/jumbo v2, "GuideFragment"

    const-string/jumbo v3, "showHelpDialog: GuideFragment is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b
.end method

.method private showHelpDialogOnResume()V
    .registers 4

    const-string/jumbo v0, "GuideFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showHelpDialogOnResume: mGuider "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/guide/GuideFragment;->mGuider:Lcom/samsung/android/settings/guide/GuiderLifecycleListener;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/guide/GuideFragment;->mGuider:Lcom/samsung/android/settings/guide/GuiderLifecycleListener;

    if-eqz v0, :cond_2f

    const-string/jumbo v0, "GuideFragment"

    const-string/jumbo v1, "showHelpDialogOnResume: calling  mGuider::showHelpDialogOnResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/guide/GuideFragment;->mGuider:Lcom/samsung/android/settings/guide/GuiderLifecycleListener;

    invoke-interface {v0}, Lcom/samsung/android/settings/guide/GuiderLifecycleListener;->onResume()V

    :goto_2e
    return-void

    :cond_2f
    const-string/jumbo v0, "GuideFragment"

    const-string/jumbo v1, "showHelpDialogonAdvanceClick: mGuider is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2e
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 4

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/samsung/android/settings/guide/GuideFragment;->mMode:Lcom/samsung/android/settings/guide/GuideFragment$GuideModes;

    if-nez v0, :cond_14

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/settings/guide/GuideFragment;->initFragment(Landroid/os/Bundle;Lcom/samsung/android/settings/guide/GuideFragment$GuideModes;)V

    iget-object v0, p0, Lcom/samsung/android/settings/guide/GuideFragment;->mGuider:Lcom/samsung/android/settings/guide/GuiderLifecycleListener;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/samsung/android/settings/guide/GuideFragment;->mGuider:Lcom/samsung/android/settings/guide/GuiderLifecycleListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/settings/guide/GuiderLifecycleListener;->onActivityCreated(Landroid/os/Bundle;)V

    :cond_14
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .registers 4

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/samsung/android/settings/guide/GuideFragment;->mMode:Lcom/samsung/android/settings/guide/GuideFragment$GuideModes;

    if-nez v0, :cond_e

    invoke-static {p1}, Lcom/samsung/android/settings/guide/GuideModeHelper;->init(Landroid/content/Context;)V

    invoke-direct {p0, v1, v1}, Lcom/samsung/android/settings/guide/GuideFragment;->initFragment(Landroid/os/Bundle;Lcom/samsung/android/settings/guide/GuideFragment$GuideModes;)V

    :cond_e
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    iget-boolean v0, p0, Lcom/samsung/android/settings/guide/GuideFragment;->mIsInGuideMode:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/samsung/android/settings/guide/GuideFragment;->mGuider:Lcom/samsung/android/settings/guide/GuiderLifecycleListener;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/samsung/android/settings/guide/GuideFragment;->mGuider:Lcom/samsung/android/settings/guide/GuiderLifecycleListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/settings/guide/GuiderLifecycleListener;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_d
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    const/4 v1, 0x1

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/samsung/android/settings/guide/GuideFragment;->mGuider:Lcom/samsung/android/settings/guide/GuiderLifecycleListener;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/samsung/android/settings/guide/GuideFragment;->mGuider:Lcom/samsung/android/settings/guide/GuiderLifecycleListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/settings/guide/GuiderLifecycleListener;->onCreate(Landroid/os/Bundle;)V

    :cond_d
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/guide/GuideFragment;->setHasOptionsMenu(Z)V

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/guide/GuideFragment;->setRetainInstance(Z)V

    return-void
.end method

.method public onDestroy()V
    .registers 5

    iget-object v1, p0, Lcom/samsung/android/settings/guide/GuideFragment;->mGuider:Lcom/samsung/android/settings/guide/GuiderLifecycleListener;

    if-eqz v1, :cond_c

    :try_start_4
    iget-object v1, p0, Lcom/samsung/android/settings/guide/GuideFragment;->mGuider:Lcom/samsung/android/settings/guide/GuiderLifecycleListener;

    invoke-interface {v1}, Lcom/samsung/android/settings/guide/GuiderLifecycleListener;->onDestroy()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/settings/guide/GuideFragment;->mGuider:Lcom/samsung/android/settings/guide/GuiderLifecycleListener;
    :try_end_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_c} :catch_10

    :cond_c
    :goto_c
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    return-void

    :catch_10
    move-exception v0

    const-string/jumbo v1, "GuideFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "IllegalArgumentException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/settings/guide/GuideFragment;->mGuider:Lcom/samsung/android/settings/guide/GuiderLifecycleListener;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/samsung/android/settings/guide/GuideFragment;->mGuider:Lcom/samsung/android/settings/guide/GuiderLifecycleListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/settings/guide/GuiderLifecycleListener;->onOptionsItemSelected(Landroid/view/MenuItem;)V

    :cond_9
    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .registers 2

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    iget-object v0, p0, Lcom/samsung/android/settings/guide/GuideFragment;->mGuider:Lcom/samsung/android/settings/guide/GuiderLifecycleListener;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/samsung/android/settings/guide/GuideFragment;->mGuider:Lcom/samsung/android/settings/guide/GuiderLifecycleListener;

    invoke-interface {v0}, Lcom/samsung/android/settings/guide/GuiderLifecycleListener;->onPause()V

    :cond_c
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .registers 4

    iget-object v1, p0, Lcom/samsung/android/settings/guide/GuideFragment;->mGuider:Lcom/samsung/android/settings/guide/GuiderLifecycleListener;

    if-eqz v1, :cond_15

    const/16 v1, 0xcc

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_10

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_10
    iget-object v1, p0, Lcom/samsung/android/settings/guide/GuideFragment;->mGuider:Lcom/samsung/android/settings/guide/GuiderLifecycleListener;

    invoke-interface {v1, p1}, Lcom/samsung/android/settings/guide/GuiderLifecycleListener;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    :cond_15
    return-void
.end method

.method public onResume()V
    .registers 2

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    iget-object v0, p0, Lcom/samsung/android/settings/guide/GuideFragment;->mGuider:Lcom/samsung/android/settings/guide/GuiderLifecycleListener;

    if-nez v0, :cond_8

    return-void

    :cond_8
    iget-boolean v0, p0, Lcom/samsung/android/settings/guide/GuideFragment;->mIsInGuideMode:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/samsung/android/settings/guide/GuideFragment;->mGuider:Lcom/samsung/android/settings/guide/GuiderLifecycleListener;

    invoke-interface {v0}, Lcom/samsung/android/settings/guide/GuiderLifecycleListener;->onResume()V

    :goto_11
    return-void

    :cond_12
    iget-object v0, p0, Lcom/samsung/android/settings/guide/GuideFragment;->mGuider:Lcom/samsung/android/settings/guide/GuiderLifecycleListener;

    invoke-interface {v0}, Lcom/samsung/android/settings/guide/GuiderLifecycleListener;->finish()V

    goto :goto_11
.end method
