.class public Lcom/android/settings/datausage/DataSaverPreference;
.super Landroid/support/v7/preference/SecPreference;
.source "DataSaverPreference.java"

# interfaces
.implements Lcom/android/settings/datausage/DataSaverBackend$Listener;


# instance fields
.field private final mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/SecPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/android/settings/datausage/DataSaverBackend;

    invoke-direct {v0, p1}, Lcom/android/settings/datausage/DataSaverBackend;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/datausage/DataSaverPreference;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    return-void
.end method


# virtual methods
.method public onAttached()V
    .registers 2

    invoke-super {p0}, Landroid/support/v7/preference/SecPreference;->onAttached()V

    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverPreference;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual {v0, p0}, Lcom/android/settings/datausage/DataSaverBackend;->addListener(Lcom/android/settings/datausage/DataSaverBackend$Listener;)V

    return-void
.end method

.method public onBlacklistStatusChanged(IZ)V
    .registers 3

    return-void
.end method

.method public onDataSaverChanged(Z)V
    .registers 3

    if-eqz p1, :cond_d

    const v0, 0x7f121b7e

    :goto_5
    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/DataSaverPreference;->setSummary(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/DataSaverPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    return-void

    :cond_d
    const v0, 0x7f121b7d

    goto :goto_5
.end method

.method public onDetached()V
    .registers 2

    invoke-super {p0}, Landroid/support/v7/preference/SecPreference;->onDetached()V

    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverPreference;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual {v0, p0}, Lcom/android/settings/datausage/DataSaverBackend;->remListener(Lcom/android/settings/datausage/DataSaverBackend$Listener;)V

    return-void
.end method

.method public onWhitelistStatusChanged(IZ)V
    .registers 3

    return-void
.end method
