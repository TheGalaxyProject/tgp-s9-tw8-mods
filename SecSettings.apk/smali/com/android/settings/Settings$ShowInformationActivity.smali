.class public Lcom/android/settings/Settings$ShowInformationActivity;
.super Lcom/samsung/android/settings/SettingsActivityWrapper;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShowInformationActivity"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/settings/SettingsActivityWrapper;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SettingsActivityWrapper;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/android/settings/Utils;->isSupportClockPackageSetting(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_10

    const v0, 0x7f1205cb

    invoke-virtual {p0, v0}, Lcom/android/settings/Settings$ShowInformationActivity;->setTitle(I)V

    :goto_f
    return-void

    :cond_10
    const v0, 0x7f120de4

    invoke-virtual {p0, v0}, Lcom/android/settings/Settings$ShowInformationActivity;->setTitle(I)V

    goto :goto_f
.end method
