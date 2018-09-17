.class public abstract Lcom/android/settings/core/PreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "PreferenceController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public executeBixbyAction(Lcom/samsung/android/settings/bixby/EmSettingsManager;Landroid/support/v7/preference/PreferenceScreen;Ljava/lang/String;)V
    .registers 4

    return-void
.end method

.method public getBixbyStateId()[Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getResultPayload()Lcom/android/settings/search2/ResultPayload;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public updateRawDataToIndex(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/search/SearchIndexableRaw;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
