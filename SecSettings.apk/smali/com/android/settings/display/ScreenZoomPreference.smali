.class public Lcom/android/settings/display/ScreenZoomPreference;
.super Landroid/support/v7/preference/Preference;
.source "ScreenZoomPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 10

    const/4 v6, 0x0

    const v4, 0x7f040156

    const v5, 0x101008e

    invoke-static {p1, v4, v5}, Landroid/support/v4/content/res/TypedArrayUtils;->getAttr(Landroid/content/Context;II)I

    move-result v4

    invoke-direct {p0, p1, p2, v4}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Lcom/android/settings/display/ScreenZoomPreference;->getFragment()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1e

    const-string/jumbo v4, "com.android.settings.display.ScreenZoomSettings"

    invoke-virtual {p0, v4}, Lcom/android/settings/display/ScreenZoomPreference;->setFragment(Ljava/lang/String;)V

    :cond_1e
    new-instance v2, Lcom/android/settingslib/display/DisplayDensityUtils;

    invoke-direct {v2, p1}, Lcom/android/settingslib/display/DisplayDensityUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/android/settingslib/display/DisplayDensityUtils;->getCurrentIndex()I

    move-result v1

    if-gez v1, :cond_30

    invoke-virtual {p0, v6}, Lcom/android/settings/display/ScreenZoomPreference;->setVisible(Z)V

    invoke-virtual {p0, v6}, Lcom/android/settings/display/ScreenZoomPreference;->setEnabled(Z)V

    :cond_2f
    :goto_2f
    return-void

    :cond_30
    invoke-virtual {p0}, Lcom/android/settings/display/ScreenZoomPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2f

    invoke-virtual {v2}, Lcom/android/settingslib/display/DisplayDensityUtils;->getEntries()[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/settingslib/display/DisplayDensityUtils;->getCurrentIndex()I

    move-result v0

    aget-object v4, v3, v0

    invoke-virtual {p0, v4}, Lcom/android/settings/display/ScreenZoomPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2f
.end method
