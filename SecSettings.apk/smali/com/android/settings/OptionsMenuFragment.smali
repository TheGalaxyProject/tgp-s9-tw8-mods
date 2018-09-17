.class public abstract Lcom/android/settings/OptionsMenuFragment;
.super Lcom/android/settings/core/InstrumentedPreferenceFragment;
.source "OptionsMenuFragment.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/OptionsMenuFragment;->setHasOptionsMenu(Z)V

    return-void
.end method
