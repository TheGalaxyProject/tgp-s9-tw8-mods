.class public Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$AppIconSwitchPreference;
.super Landroid/support/v14/preference/SecSwitchPreference;
.source "LockNotificationChannelList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppIconSwitchPreference"
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/support/v14/preference/SecSwitchPreference;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0d0215

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$AppIconSwitchPreference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/support/v14/preference/SecSwitchPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    return-void
.end method
