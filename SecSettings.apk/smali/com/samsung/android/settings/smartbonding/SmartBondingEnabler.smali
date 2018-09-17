.class public final Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;
.super Ljava/lang/Object;
.source "SmartBondingEnabler.java"

# interfaces
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler$1;,
        Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler$2;,
        Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler$3;,
        Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler$4;
    }
.end annotation


# instance fields
.field private mAirPlaneObserver:Landroid/database/ContentObserver;

.field private final mContext:Landroid/content/Context;

.field private mNofiticationDialog:Landroid/app/AlertDialog;

.field private final mSmartBondingObserver:Landroid/database/ContentObserver;

.field private mSwitch:Landroid/widget/Switch;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

.field private mToddlerModeObserver:Landroid/database/ContentObserver;

.field private mWfcObserver:Landroid/database/ContentObserver;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;)Lcom/android/settings/widget/SwitchBar;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;)Landroid/support/v14/preference/SecSwitchPreference;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;)Z
    .registers 2

    invoke-direct {p0}, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->isMenuDIM()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->sendMptcpStartBroadCast(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/support/v14/preference/SecSwitchPreference;)V
    .registers 6

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mSwitch:Landroid/widget/Switch;

    iput-object v2, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iput-object v2, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    iput-object v2, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mNofiticationDialog:Landroid/app/AlertDialog;

    new-instance v0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler$1;-><init>(Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mWfcObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler$2;-><init>(Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mAirPlaneObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler$3;-><init>(Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mSmartBondingObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler$4;-><init>(Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mToddlerModeObserver:Landroid/database/ContentObserver;

    iput-object p1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    iput-object v2, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iput-object v2, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mSwitch:Landroid/widget/Switch;

    iput-object p2, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchBar;)V
    .registers 6

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mSwitch:Landroid/widget/Switch;

    iput-object v2, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iput-object v2, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    iput-object v2, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mNofiticationDialog:Landroid/app/AlertDialog;

    new-instance v0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler$1;-><init>(Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mWfcObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler$2;-><init>(Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mAirPlaneObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler$3;-><init>(Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mSmartBondingObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler$4;-><init>(Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mToddlerModeObserver:Landroid/database/ContentObserver;

    iput-object p1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v0, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->getSwitch()Lcom/android/settings/widget/ToggleSwitch;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mSwitch:Landroid/widget/Switch;

    iput-object v2, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    return-void
.end method

.method private getBtnIdUnderNetworkStatus()I
    .registers 4

    const v0, 0x104000a

    const-string/jumbo v1, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    const v0, 0x7f1219b5

    :cond_13
    :goto_13
    return v0

    :cond_14
    iget-object v1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isMobileNetworkEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2a

    iget-object v1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isWifiEnabled(Landroid/content/Context;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2a

    const v0, 0x7f1219c0

    goto :goto_13

    :cond_2a
    iget-object v1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isMobileNetworkEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_36

    const v0, 0x7f1219b7

    goto :goto_13

    :cond_36
    iget-object v1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isWifiEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_13

    const v0, 0x7f1219be

    goto :goto_13
.end method

.method private getTextIdUnderNetworkStatus()I
    .registers 4

    const v0, 0x7f1219b4

    const-string/jumbo v1, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    const v0, 0x7f1219bc

    :cond_13
    iget-object v1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isRoaming(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1f

    const v0, 0x7f1219bb

    :cond_1e
    :goto_1e
    return v0

    :cond_1f
    iget-object v1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isMobileNetworkEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_46

    iget-object v1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isWifiEnabled(Landroid/content/Context;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_46

    const-string/jumbo v1, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_42

    const v0, 0x7f1219c1

    goto :goto_1e

    :cond_42
    const v0, 0x7f1219bf

    goto :goto_1e

    :cond_46
    iget-object v1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isMobileNetworkEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_63

    const-string/jumbo v1, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5f

    const v0, 0x7f1219b8

    goto :goto_1e

    :cond_5f
    const v0, 0x7f1219b6

    goto :goto_1e

    :cond_63
    iget-object v1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isWifiEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1e

    const-string/jumbo v1, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7c

    const v0, 0x7f1219c2

    goto :goto_1e

    :cond_7c
    const v0, 0x7f1219bd

    goto :goto_1e
.end method

.method private isMenuDIM()Z
    .registers 4

    const/4 v0, 0x0

    const-string/jumbo v1, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    iget-object v1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isEnabledWifiCallingActivity(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-static {}, Lcom/android/settings/Utils;->isSupportEPDG()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1f

    const/4 v0, 0x1

    :cond_1f
    return v0
.end method

.method private isWifiAndMobileNetworkEnabled()Z
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isMobileNetworkEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isWifiEnabled(Landroid/content/Context;)Z

    move-result v0

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method private registerForToddlerStatus()V
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "toddler_mode_switch"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mToddlerModeObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private registerForWfcAndAirPlaneStatus()V
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "airplane_mode_on"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mAirPlaneObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private sendMptcpStartBroadCast(Z)V
    .registers 5

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.samsung.android.mptcp.MPTCP_START"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "mptcp_start"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private showNotificationDialog()Z
    .registers 12

    const v10, 0x7f120126

    const v9, 0x104000a

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mNofiticationDialog:Landroid/app/AlertDialog;

    if-eqz v4, :cond_14

    iget-object v4, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mNofiticationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v5, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mNofiticationDialog:Landroid/app/AlertDialog;

    :cond_14
    iget-object v4, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/Utils;->isAirplaneModeEnabled(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_53

    iget-object v4, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v4, :cond_25

    iget-object v4, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v4, v7}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    :cond_25
    iget-object v4, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f1219c4

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v2, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-static {v4, v3, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    iget-object v4, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    if-eqz v4, :cond_122

    return v7

    :cond_53
    iget-object v4, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/Utils;->isRoaming(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_92

    iget-object v4, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v4, :cond_64

    iget-object v4, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v4, v7}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    :cond_64
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f1219bb

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f1219b0

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler$5;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler$5;-><init>(Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;)V

    invoke-virtual {v4, v9, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mNofiticationDialog:Landroid/app/AlertDialog;

    iget-object v4, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mNofiticationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    iget-object v4, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    if-eqz v4, :cond_122

    return v7

    :cond_92
    iget-object v4, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/Utils;->isNoSIM(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_e3

    iget-object v4, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v4, :cond_a3

    iget-object v4, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v4, v7}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    :cond_a3
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v5, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f1219b9

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/Utils;->replaceSIMString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f1219ba

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler$6;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler$6;-><init>(Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;)V

    invoke-virtual {v4, v9, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mNofiticationDialog:Landroid/app/AlertDialog;

    iget-object v4, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mNofiticationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    iget-object v4, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    if-eqz v4, :cond_122

    return v7

    :cond_e3
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->getTextIdUnderNetworkStatus()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v4, 0x7f1219c3

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-direct {p0}, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->getBtnIdUnderNetworkStatus()I

    move-result v4

    new-instance v5, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler$7;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler$7;-><init>(Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v4, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler$8;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler$8;-><init>(Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;)V

    const/high16 v5, 0x1040000

    invoke-virtual {v0, v5, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mNofiticationDialog:Landroid/app/AlertDialog;

    iget-object v4, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mNofiticationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    iget-object v4, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mNofiticationDialog:Landroid/app/AlertDialog;

    new-instance v5, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler$9;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler$9;-><init>(Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_122
    return v8
.end method

.method private unregisterForToddlerStatus()V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mToddlerModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method private unregisterForWfcAndAirPlaneStatus()V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mAirPlaneObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method


# virtual methods
.method public getmNofiticationDialog()Landroid/app/AlertDialog;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mNofiticationDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .registers 4

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->onWidgetChanged(Z)Z

    move-result v0

    return v0
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .registers 3

    invoke-virtual {p0, p2}, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->onWidgetChanged(Z)Z

    return-void
.end method

.method public onWidgetChanged(Z)Z
    .registers 12

    const v9, 0x7f1219b0

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v6, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v7, 0x7f0b01de

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    iget-object v3, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v8, 0x7f0b01df

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    if-eqz p1, :cond_49

    const/16 v3, 0x3e8

    :goto_25
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v6, v7, v8, v3}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;IILjava/lang/Object;)V

    iget-object v3, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v6, "smart_bonding"

    invoke-static {v3, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_4b

    const/4 v2, 0x1

    :goto_3c
    iget-object v3, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->isNoSIM(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4d

    invoke-direct {p0}, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->showNotificationDialog()Z

    move-result v3

    return v3

    :cond_49
    move v3, v4

    goto :goto_25

    :cond_4b
    const/4 v2, 0x0

    goto :goto_3c

    :cond_4d
    iget-object v3, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v6, "mptcp_value"

    invoke-static {v3, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_ce

    if-eqz p1, :cond_ce

    xor-int/lit8 v3, v2, 0x1

    if-eqz v3, :cond_ce

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v3, 0x7f120c9a

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticSKTModel()Z

    move-result v3

    if-eqz v3, :cond_9a

    const v3, 0x7f120308

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    :cond_7e
    :goto_7e
    new-instance v3, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler$10;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler$10;-><init>(Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;)V

    const v6, 0x104000a

    invoke-virtual {v0, v6, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v3, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler$11;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler$11;-><init>(Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;)V

    const/high16 v6, 0x1040000

    invoke-virtual {v0, v6, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return v5

    :cond_9a
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticLGTModel()Z

    move-result v3

    if-nez v3, :cond_a8

    iget-object v3, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->isAveaSIMValid(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_af

    :cond_a8
    const v3, 0x7f1211ff

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_7e

    :cond_af
    iget-object v3, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->isAisSIMValid(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_7e

    iget-object v3, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    new-array v6, v5, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    const v7, 0x7f120130

    invoke-virtual {v3, v7, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_7e

    :cond_ce
    if-eqz p1, :cond_fe

    xor-int/lit8 v3, v2, 0x1

    if-eqz v3, :cond_fe

    iget-object v3, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->isRoaming(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_ec

    invoke-direct {p0}, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->isWifiAndMobileNetworkEnabled()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_ec

    iget-object v3, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->isAirplaneModeEnabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_f1

    :cond_ec
    invoke-direct {p0}, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->showNotificationDialog()Z

    move-result v3

    return v3

    :cond_f1
    iget-object v3, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "smart_bonding"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_fd
    return v5

    :cond_fe
    iget-object v3, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v6, "smart_bonding"

    if-eqz p1, :cond_10a

    move v4, v5

    :cond_10a
    invoke-static {v3, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_fd
.end method

.method public pause()V
    .registers 4

    const/4 v2, 0x0

    const-string/jumbo v0, "DCM"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    const-string/jumbo v0, "KDI"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    :cond_1b
    invoke-direct {p0}, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->unregisterForToddlerStatus()V

    :cond_1e
    iget-object v0, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mSmartBondingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->unregisterForWfcAndAirPlaneStatus()V

    iget-object v0, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    :cond_35
    iget-object v0, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v0, v2}, Landroid/support/v14/preference/SecSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    :cond_3e
    return-void
.end method

.method public resume()V
    .registers 7

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string/jumbo v1, "DCM"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    const-string/jumbo v1, "KDI"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    :cond_1c
    iget-object v1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "toddler_mode_switch"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v5, :cond_2e

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->updateSmartBondingState(Z)V

    :cond_2e
    invoke-direct {p0}, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->registerForToddlerStatus()V

    :cond_31
    iget-object v1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "smart_bonding"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mSmartBondingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v5, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->registerForWfcAndAirPlaneStatus()V

    iget-object v1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "smart_bonding"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_b2

    const/4 v0, 0x1

    :goto_56
    const-string/jumbo v1, "SmartBondingEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onResume() smartBondingState : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isNoSIM(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_86

    const-string/jumbo v1, "SmartBondingEnabler"

    const-string/jumbo v2, "onResume() No sim status so, disable"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :cond_86
    iget-object v1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v1, :cond_94

    iget-object v1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, v0}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    :cond_94
    iget-object v1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    if-eqz v1, :cond_b1

    iget-object v1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v1, v0}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    if-eqz v0, :cond_b4

    iget-object v1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    const v2, 0x7f121b7e

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SecSwitchPreference;->setSummary(I)V

    :goto_a7
    iget-object v1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v1, p0}, Landroid/support/v14/preference/SecSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v1, v5}, Landroid/support/v14/preference/SecSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_b1
    return-void

    :cond_b2
    const/4 v0, 0x0

    goto :goto_56

    :cond_b4
    iget-object v1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    const v2, 0x7f121b7d

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SecSwitchPreference;->setSummary(I)V

    goto :goto_a7
.end method

.method public updateSmartBondingState(Z)V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    :cond_9
    iget-object v0, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v0, p1}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    :cond_12
    return-void
.end method
