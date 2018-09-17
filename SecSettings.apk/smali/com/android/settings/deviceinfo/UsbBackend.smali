.class public Lcom/android/settings/deviceinfo/UsbBackend;
.super Ljava/lang/Object;
.source "UsbBackend.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/deviceinfo/UsbBackend$UserRestrictionUtil;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mMidi:Z

.field private mPort:Landroid/hardware/usb/UsbPort;

.field private mPortStatus:Landroid/hardware/usb/UsbPortStatus;

.field private final mRestricted:Z

.field private final mRestrictedBySystem:Z

.field private mUsbManager:Landroid/hardware/usb/UsbManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    new-instance v0, Lcom/android/settings/deviceinfo/UsbBackend$UserRestrictionUtil;

    invoke-direct {v0, p1}, Lcom/android/settings/deviceinfo/UsbBackend$UserRestrictionUtil;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0}, Lcom/android/settings/deviceinfo/UsbBackend;-><init>(Landroid/content/Context;Lcom/android/settings/deviceinfo/UsbBackend$UserRestrictionUtil;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/settings/deviceinfo/UsbBackend$UserRestrictionUtil;)V
    .registers 5
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/deviceinfo/UsbBackend;->mContext:Landroid/content/Context;

    const-class v0, Landroid/hardware/usb/UsbManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/UsbBackend;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {p2}, Lcom/android/settings/deviceinfo/UsbBackend$UserRestrictionUtil;->isUsbFileTransferRestricted()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/deviceinfo/UsbBackend;->mRestricted:Z

    invoke-virtual {p2}, Lcom/android/settings/deviceinfo/UsbBackend$UserRestrictionUtil;->isUsbFileTransferRestrictedBySystem()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/deviceinfo/UsbBackend;->mRestrictedBySystem:Z

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "android.software.midi"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/deviceinfo/UsbBackend;->mMidi:Z

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/UsbBackend;->updateUsbPort()V

    return-void
.end method

.method private modeToPower(I)I
    .registers 4

    const/4 v0, 0x1

    and-int/lit8 v1, p1, 0x1

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x2

    goto :goto_5
.end method

.method private setUsbFunction(I)V
    .registers 6

    const/4 v3, 0x1

    const-string/jumbo v0, "UsbBackend"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "USB connection setUsbFunction : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p1, :pswitch_data_98

    :pswitch_1e
    const-string/jumbo v0, "UsbBackend"

    const-string/jumbo v1, "USB connection setUsbFunction : sec_charging"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbBackend;->mUsbManager:Landroid/hardware/usb/UsbManager;

    const-string/jumbo v1, "sec_charging"

    invoke-virtual {v0, v1, v3}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v0

    if-eqz v0, :cond_42

    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbBackend;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "adb_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_42
    :goto_42
    return-void

    :pswitch_43
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbBackend;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "enable_mtp_settings"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v0, "UsbBackend"

    const-string/jumbo v1, "USB connection setUsbFunction : mtp"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbBackend;->mUsbManager:Landroid/hardware/usb/UsbManager;

    const-string/jumbo v1, "mtp"

    invoke-virtual {v0, v1, v3}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    goto :goto_42

    :pswitch_61
    const-string/jumbo v0, "UsbBackend"

    const-string/jumbo v1, "USB connection setUsbFunction : ptp"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbBackend;->mUsbManager:Landroid/hardware/usb/UsbManager;

    const-string/jumbo v1, "ptp"

    invoke-virtual {v0, v1, v3}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    goto :goto_42

    :pswitch_73
    const-string/jumbo v0, "UsbBackend"

    const-string/jumbo v1, "USB connection setUsbFunction : midi"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbBackend;->mUsbManager:Landroid/hardware/usb/UsbManager;

    const-string/jumbo v1, "midi"

    invoke-virtual {v0, v1, v3}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    goto :goto_42

    :pswitch_85
    const-string/jumbo v0, "UsbBackend"

    const-string/jumbo v1, "USB connection setUsbFunction : mass_storage"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbBackend;->mUsbManager:Landroid/hardware/usb/UsbManager;

    const-string/jumbo v1, "mass_storage"

    invoke-virtual {v0, v1, v3}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    goto :goto_42

    nop

    :pswitch_data_98
    .packed-switch 0x2
        :pswitch_43
        :pswitch_1e
        :pswitch_61
        :pswitch_1e
        :pswitch_73
        :pswitch_1e
        :pswitch_85
    .end packed-switch
.end method


# virtual methods
.method public getCurrentMode()I
    .registers 4

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbBackend;->mPort:Landroid/hardware/usb/UsbPort;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbBackend;->mPortStatus:Landroid/hardware/usb/UsbPortStatus;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbPortStatus;->getCurrentPowerRole()I

    move-result v0

    if-ne v0, v2, :cond_17

    const-string/jumbo v0, "UsbBackend"

    const-string/jumbo v1, "USB connection getCurrentMode : 1"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_17
    const-string/jumbo v0, "UsbBackend"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "USB connection getCurrentMode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/UsbBackend;->getUsbDataMode()I

    move-result v2

    or-int/lit8 v2, v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/UsbBackend;->getUsbDataMode()I

    move-result v0

    or-int/lit8 v0, v0, 0x0

    return v0
.end method

.method public getSupportedPowerRole()I
    .registers 2

    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbBackend;->mPortStatus:Landroid/hardware/usb/UsbPortStatus;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbBackend;->mPortStatus:Landroid/hardware/usb/UsbPortStatus;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbPortStatus;->getCurrentPowerRole()I

    move-result v0

    return v0

    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public getUsbDataMode()I
    .registers 3

    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbBackend;->mUsbManager:Landroid/hardware/usb/UsbManager;

    const-string/jumbo v1, "mtp"

    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbManager;->isFunctionEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string/jumbo v0, "UsbBackend"

    const-string/jumbo v1, "USB connection getUsbDataMode : mtp"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    return v0

    :cond_16
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbBackend;->mUsbManager:Landroid/hardware/usb/UsbManager;

    const-string/jumbo v1, "ptp"

    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbManager;->isFunctionEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    const-string/jumbo v0, "UsbBackend"

    const-string/jumbo v1, "USB connection getUsbDataMode : ptp"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x4

    return v0

    :cond_2c
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbBackend;->mUsbManager:Landroid/hardware/usb/UsbManager;

    const-string/jumbo v1, "midi"

    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbManager;->isFunctionEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_42

    const-string/jumbo v0, "UsbBackend"

    const-string/jumbo v1, "USB connection getUsbDataMode : midi"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x6

    return v0

    :cond_42
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbBackend;->mUsbManager:Landroid/hardware/usb/UsbManager;

    const-string/jumbo v1, "mass_storage"

    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbManager;->isFunctionEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_59

    const-string/jumbo v0, "UsbBackend"

    const-string/jumbo v1, "USB connection getUsbDataMode : mass_storage"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x8

    return v0

    :cond_59
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbBackend;->mUsbManager:Landroid/hardware/usb/UsbManager;

    const-string/jumbo v1, "sec_charging"

    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbManager;->isFunctionEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6d

    const-string/jumbo v0, "UsbBackend"

    const-string/jumbo v1, "USB connection getUsbDataMode : sec_charging"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6d
    const/4 v0, 0x0

    return v0
.end method

.method public isModeDisallowed(I)Z
    .registers 5

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/UsbBackend;->mRestricted:Z

    if-eqz v0, :cond_10

    and-int/lit8 v0, p1, 0xe

    if-eqz v0, :cond_10

    and-int/lit8 v0, p1, 0xe

    const/4 v1, 0x6

    if-eq v0, v1, :cond_10

    const/4 v0, 0x1

    return v0

    :cond_10
    return v2
.end method

.method public isModeDisallowedBySystem(I)Z
    .registers 5

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/UsbBackend;->mRestrictedBySystem:Z

    if-eqz v0, :cond_10

    and-int/lit8 v0, p1, 0xe

    if-eqz v0, :cond_10

    and-int/lit8 v0, p1, 0xe

    const/4 v1, 0x6

    if-eq v0, v1, :cond_10

    const/4 v0, 0x1

    return v0

    :cond_10
    return v2
.end method

.method public isModeSupported(I)Z
    .registers 9

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/android/settings/deviceinfo/UsbBackend;->mMidi:Z

    if-nez v2, :cond_e

    and-int/lit8 v2, p1, 0xe

    const/4 v3, 0x6

    if-ne v2, v3, :cond_e

    return v4

    :cond_e
    iget-object v2, p0, Lcom/android/settings/deviceinfo/UsbBackend;->mPort:Landroid/hardware/usb/UsbPort;

    if-eqz v2, :cond_66

    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/UsbBackend;->modeToPower(I)I

    move-result v0

    and-int/lit8 v2, p1, 0xe

    if-eqz v2, :cond_3b

    iget-object v2, p0, Lcom/android/settings/deviceinfo/UsbBackend;->mPortStatus:Landroid/hardware/usb/UsbPortStatus;

    invoke-virtual {v2, v0, v6}, Landroid/hardware/usb/UsbPortStatus;->isRoleCombinationSupported(II)Z

    move-result v1

    const-string/jumbo v2, "UsbBackend"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "We have a port and data, need to be in device mode :  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_3b
    iget-object v2, p0, Lcom/android/settings/deviceinfo/UsbBackend;->mPortStatus:Landroid/hardware/usb/UsbPortStatus;

    invoke-virtual {v2, v0, v6}, Landroid/hardware/usb/UsbPortStatus;->isRoleCombinationSupported(II)Z

    move-result v2

    if-nez v2, :cond_64

    iget-object v2, p0, Lcom/android/settings/deviceinfo/UsbBackend;->mPortStatus:Landroid/hardware/usb/UsbPortStatus;

    invoke-virtual {v2, v0, v5}, Landroid/hardware/usb/UsbPortStatus;->isRoleCombinationSupported(II)Z

    move-result v1

    :goto_49
    const-string/jumbo v2, "UsbBackend"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "No data needed, we can do this power mode in either device or host. : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_64
    const/4 v1, 0x1

    goto :goto_49

    :cond_66
    and-int/lit8 v2, p1, 0x1

    if-eq v2, v5, :cond_86

    const/4 v1, 0x1

    :goto_6b
    const-string/jumbo v2, "UsbBackend"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "No port, support sink modes only : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_86
    const/4 v1, 0x0

    goto :goto_6b
.end method

.method public isSupportPowerRole()Z
    .registers 3

    const-string/jumbo v0, "true"

    const-string/jumbo v1, "persist.sys.usb.dualrole"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    return v0

    :cond_12
    const/4 v0, 0x0

    return v0
.end method

.method public setMode(I)V
    .registers 9

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/settings/deviceinfo/UsbBackend;->mPort:Landroid/hardware/usb/UsbPort;

    if-eqz v2, :cond_4a

    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/UsbBackend;->modeToPower(I)I

    move-result v1

    and-int/lit8 v2, p1, 0xe

    if-nez v2, :cond_6e

    iget-object v2, p0, Lcom/android/settings/deviceinfo/UsbBackend;->mPortStatus:Landroid/hardware/usb/UsbPortStatus;

    invoke-virtual {v2, v1, v5}, Landroid/hardware/usb/UsbPortStatus;->isRoleCombinationSupported(II)Z

    move-result v2

    if-eqz v2, :cond_6e

    const/4 v0, 0x1

    :goto_19
    const-string/jumbo v2, "UsbBackend"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setMode : powerRole - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " /dataRole - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/settings/deviceinfo/UsbBackend;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v2, v6, v5}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/android/settings/deviceinfo/UsbBackend;->mUsbManager:Landroid/hardware/usb/UsbManager;

    iget-object v3, p0, Lcom/android/settings/deviceinfo/UsbBackend;->mPort:Landroid/hardware/usb/UsbPort;

    invoke-virtual {v2, v3, v1, v0}, Landroid/hardware/usb/UsbManager;->setPortRoles(Landroid/hardware/usb/UsbPort;II)V

    :cond_4a
    if-ne v1, v5, :cond_4e

    if-eq v0, v5, :cond_70

    :cond_4e
    const-string/jumbo v2, "UsbBackend"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "USB connection setMode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    and-int/lit8 v2, p1, 0xe

    invoke-direct {p0, v2}, Lcom/android/settings/deviceinfo/UsbBackend;->setUsbFunction(I)V

    :goto_6d
    return-void

    :cond_6e
    const/4 v0, 0x2

    goto :goto_19

    :cond_70
    const-string/jumbo v2, "UsbBackend"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "USB connection setMode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " - skip!!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6d
.end method

.method public updateUsbPort()V
    .registers 8

    iget-object v4, p0, Lcom/android/settings/deviceinfo/UsbBackend;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v4}, Landroid/hardware/usb/UsbManager;->getPorts()[Landroid/hardware/usb/UsbPort;

    move-result-object v2

    if-eqz v2, :cond_76

    array-length v0, v2

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_76

    iget-object v4, p0, Lcom/android/settings/deviceinfo/UsbBackend;->mUsbManager:Landroid/hardware/usb/UsbManager;

    aget-object v5, v2, v1

    invoke-virtual {v4, v5}, Landroid/hardware/usb/UsbManager;->getPortStatus(Landroid/hardware/usb/UsbPort;)Landroid/hardware/usb/UsbPortStatus;

    move-result-object v3

    const-string/jumbo v4, "UsbBackend"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateUsbPort() status = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_77

    invoke-virtual {v3}, Landroid/hardware/usb/UsbPortStatus;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_77

    aget-object v4, v2, v1

    iput-object v4, p0, Lcom/android/settings/deviceinfo/UsbBackend;->mPort:Landroid/hardware/usb/UsbPort;

    iput-object v3, p0, Lcom/android/settings/deviceinfo/UsbBackend;->mPortStatus:Landroid/hardware/usb/UsbPortStatus;

    const-string/jumbo v4, "UsbBackend"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateUsbPort() status.isConnected() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Landroid/hardware/usb/UsbPortStatus;->isConnected()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "UsbBackend"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateUsbPort() mPort = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/deviceinfo/UsbBackend;->mPort:Landroid/hardware/usb/UsbPort;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_76
    return-void

    :cond_77
    const-string/jumbo v4, "UsbBackend"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateUsbPort() mPort = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/deviceinfo/UsbBackend;->mPort:Landroid/hardware/usb/UsbPort;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_a
.end method
