.class public Lcom/android/settings/display/AutoRotatePreferenceController;
.super Lcom/android/settings/core/PreferenceController;
.source "AutoRotatePreferenceController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private final mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/settings/core/PreferenceController;-><init>(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/display/AutoRotatePreferenceController;->mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;

    return-void
.end method

.method private allowAllRotations()Z
    .registers 3

    iget-object v0, p0, Lcom/android/settings/display/AutoRotatePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x112000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "auto_rotate"

    return-object v0
.end method

.method public isAvailable()Z
    .registers 2

    iget-object v0, p0, Lcom/android/settings/display/AutoRotatePreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationLockToggleVisible(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .registers 7

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_19

    const/4 v0, 0x1

    :goto_9
    iget-object v1, p0, Lcom/android/settings/display/AutoRotatePreferenceController;->mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;

    iget-object v2, p0, Lcom/android/settings/display/AutoRotatePreferenceController;->mContext:Landroid/content/Context;

    const/16 v3, 0xcb

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;IZ)V

    iget-object v1, p0, Lcom/android/settings/display/AutoRotatePreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/internal/view/RotationPolicy;->setRotationLock(Landroid/content/Context;Z)V

    const/4 v1, 0x1

    return v1

    :cond_19
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .registers 10

    const/4 v7, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    move-object v1, p1

    check-cast v1, Landroid/support/v7/preference/DropDownPreference;

    const-string/jumbo v4, "%s"

    invoke-virtual {p1, v4}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/android/settings/display/AutoRotatePreferenceController;->allowAllRotations()Z

    move-result v4

    if-eqz v4, :cond_48

    const v0, 0x7f120884

    :goto_15
    new-array v4, v7, [Ljava/lang/CharSequence;

    iget-object v5, p0, Lcom/android/settings/display/AutoRotatePreferenceController;->mContext:Landroid/content/Context;

    const v6, 0x7f120883

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    iget-object v5, p0, Lcom/android/settings/display/AutoRotatePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {v1, v4}, Landroid/support/v7/preference/DropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    new-array v4, v7, [Ljava/lang/CharSequence;

    const-string/jumbo v5, "0"

    aput-object v5, v4, v3

    const-string/jumbo v5, "1"

    aput-object v5, v4, v2

    invoke-virtual {v1, v4}, Landroid/support/v7/preference/DropDownPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/settings/display/AutoRotatePreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/internal/view/RotationPolicy;->isRotationLocked(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_58

    :goto_44
    invoke-virtual {v1, v2}, Landroid/support/v7/preference/DropDownPreference;->setValueIndex(I)V

    return-void

    :cond_48
    iget-object v4, p0, Lcom/android/settings/display/AutoRotatePreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/internal/view/RotationPolicy;->getRotationLockOrientation(Landroid/content/Context;)I

    move-result v4

    if-ne v4, v2, :cond_54

    const v0, 0x7f120886

    goto :goto_15

    :cond_54
    const v0, 0x7f120885

    goto :goto_15

    :cond_58
    move v2, v3

    goto :goto_44
.end method
