.class public abstract Lcom/android/settingslib/core/AbstractPreferenceController;
.super Ljava/lang/Object;
.source "AbstractPreferenceController.java"


# instance fields
.field protected final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-void
.end method

.method private findAndRemovePreference(Landroid/support/v7/preference/PreferenceGroup;Ljava/lang/String;)Z
    .registers 8

    invoke-virtual {p1}, Landroid/support/v7/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v3

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v3, :cond_2d

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceGroup;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1c

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/PreferenceGroup;->removePreference(Landroid/support/v7/preference/Preference;)Z

    move-result v4

    return v4

    :cond_1c
    instance-of v4, v2, Landroid/support/v7/preference/PreferenceGroup;

    if-eqz v4, :cond_2a

    check-cast v2, Landroid/support/v7/preference/PreferenceGroup;

    invoke-direct {p0, v2, p2}, Lcom/android/settingslib/core/AbstractPreferenceController;->findAndRemovePreference(Landroid/support/v7/preference/PreferenceGroup;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2a

    const/4 v4, 0x1

    return v4

    :cond_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_2d
    const/4 v4, 0x0

    return v4
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .registers 4

    invoke-virtual {p0}, Lcom/android/settingslib/core/AbstractPreferenceController;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_18

    instance-of v1, p0, Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;

    if-eqz v1, :cond_17

    invoke-virtual {p0}, Lcom/android/settingslib/core/AbstractPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast p0, Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v0, p0}, Landroid/support/v7/preference/Preference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    :cond_17
    :goto_17
    return-void

    :cond_18
    invoke-virtual {p0}, Lcom/android/settingslib/core/AbstractPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/android/settingslib/core/AbstractPreferenceController;->removePreference(Landroid/support/v7/preference/PreferenceScreen;Ljava/lang/String;)V

    goto :goto_17
.end method

.method public abstract getPreferenceKey()Ljava/lang/String;
.end method

.method public handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public abstract isAvailable()Z
.end method

.method protected final removePreference(Landroid/support/v7/preference/PreferenceScreen;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/core/AbstractPreferenceController;->findAndRemovePreference(Landroid/support/v7/preference/PreferenceGroup;Ljava/lang/String;)Z

    return-void
.end method

.method public updateNonIndexableKeys(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/settingslib/core/AbstractPreferenceController;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {p0}, Lcom/android/settingslib/core/AbstractPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d
    return-void
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .registers 2

    return-void
.end method
