.class public Lcom/android/settings/connecteddevice/UsbModePreferenceController;
.super Lcom/android/settings/core/PreferenceController;
.source "UsbModePreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settings/core/lifecycle/events/OnResume;
.implements Lcom/android/settings/core/lifecycle/events/OnPause;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/connecteddevice/UsbModePreferenceController$UsbConnectionBroadcastReceiver;
    }
.end annotation


# instance fields
.field private mUsbBackend:Lcom/android/settings/deviceinfo/UsbBackend;

.field private mUsbPreference:Landroid/support/v7/preference/Preference;

.field private mUsbReceiver:Lcom/android/settings/connecteddevice/UsbModePreferenceController$UsbConnectionBroadcastReceiver;


# direct methods
.method static synthetic -get0(Lcom/android/settings/connecteddevice/UsbModePreferenceController;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/connecteddevice/UsbModePreferenceController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/connecteddevice/UsbModePreferenceController;)Landroid/support/v7/preference/Preference;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/connecteddevice/UsbModePreferenceController;->mUsbPreference:Landroid/support/v7/preference/Preference;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/settings/connecteddevice/UsbModePreferenceController;Landroid/support/v7/preference/Preference;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/settings/connecteddevice/UsbModePreferenceController;->updataSummary(Landroid/support/v7/preference/Preference;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/deviceinfo/UsbBackend;)V
    .registers 5

    invoke-direct {p0, p1}, Lcom/android/settings/core/PreferenceController;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/connecteddevice/UsbModePreferenceController;->mUsbBackend:Lcom/android/settings/deviceinfo/UsbBackend;

    new-instance v0, Lcom/android/settings/connecteddevice/UsbModePreferenceController$UsbConnectionBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/connecteddevice/UsbModePreferenceController$UsbConnectionBroadcastReceiver;-><init>(Lcom/android/settings/connecteddevice/UsbModePreferenceController;Lcom/android/settings/connecteddevice/UsbModePreferenceController$UsbConnectionBroadcastReceiver;)V

    iput-object v0, p0, Lcom/android/settings/connecteddevice/UsbModePreferenceController;->mUsbReceiver:Lcom/android/settings/connecteddevice/UsbModePreferenceController$UsbConnectionBroadcastReceiver;

    return-void
.end method

.method private updataSummary(Landroid/support/v7/preference/Preference;)V
    .registers 3

    iget-object v0, p0, Lcom/android/settings/connecteddevice/UsbModePreferenceController;->mUsbBackend:Lcom/android/settings/deviceinfo/UsbBackend;

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/UsbBackend;->getCurrentMode()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/connecteddevice/UsbModePreferenceController;->updataSummary(Landroid/support/v7/preference/Preference;I)V

    return-void
.end method

.method private updataSummary(Landroid/support/v7/preference/Preference;I)V
    .registers 4

    if-eqz p1, :cond_15

    iget-object v0, p0, Lcom/android/settings/connecteddevice/UsbModePreferenceController;->mUsbReceiver:Lcom/android/settings/connecteddevice/UsbModePreferenceController$UsbConnectionBroadcastReceiver;

    invoke-virtual {v0}, Lcom/android/settings/connecteddevice/UsbModePreferenceController$UsbConnectionBroadcastReceiver;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    invoke-virtual {p0, p2}, Lcom/android/settings/connecteddevice/UsbModePreferenceController;->getSummary(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    :cond_15
    :goto_15
    return-void

    :cond_16
    const v0, 0x7f120880

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    goto :goto_15
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/android/settings/core/PreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    const-string/jumbo v0, "usb_mode"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/connecteddevice/UsbModePreferenceController;->mUsbPreference:Landroid/support/v7/preference/Preference;

    iget-object v0, p0, Lcom/android/settings/connecteddevice/UsbModePreferenceController;->mUsbPreference:Landroid/support/v7/preference/Preference;

    invoke-direct {p0, v0}, Lcom/android/settings/connecteddevice/UsbModePreferenceController;->updataSummary(Landroid/support/v7/preference/Preference;)V

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "usb_mode"

    return-object v0
.end method

.method getSummary(I)I
    .registers 3
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    packed-switch p1, :pswitch_data_1a

    :pswitch_3
    const/4 v0, 0x0

    return v0

    :pswitch_5
    const v0, 0x7f121d22

    return v0

    :pswitch_9
    const v0, 0x7f121d25

    return v0

    :pswitch_d
    const v0, 0x7f121d23

    return v0

    :pswitch_11
    const v0, 0x7f121d24

    return v0

    :pswitch_15
    const v0, 0x7f121d21

    return v0

    nop

    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_5
        :pswitch_9
        :pswitch_d
        :pswitch_3
        :pswitch_11
        :pswitch_3
        :pswitch_15
    .end packed-switch
.end method

.method public isAvailable()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public onPause()V
    .registers 2

    iget-object v0, p0, Lcom/android/settings/connecteddevice/UsbModePreferenceController;->mUsbReceiver:Lcom/android/settings/connecteddevice/UsbModePreferenceController$UsbConnectionBroadcastReceiver;

    invoke-virtual {v0}, Lcom/android/settings/connecteddevice/UsbModePreferenceController$UsbConnectionBroadcastReceiver;->unregister()V

    return-void
.end method

.method public onResume()V
    .registers 2

    iget-object v0, p0, Lcom/android/settings/connecteddevice/UsbModePreferenceController;->mUsbReceiver:Lcom/android/settings/connecteddevice/UsbModePreferenceController$UsbConnectionBroadcastReceiver;

    invoke-virtual {v0}, Lcom/android/settings/connecteddevice/UsbModePreferenceController$UsbConnectionBroadcastReceiver;->register()V

    return-void
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/settings/connecteddevice/UsbModePreferenceController;->updataSummary(Landroid/support/v7/preference/Preference;)V

    return-void
.end method
