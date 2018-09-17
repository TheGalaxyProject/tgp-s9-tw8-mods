.class final Lcom/samsung/android/settings/TRoamingSettings$7;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "TRoamingSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/TRoamingSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v1, "key_roaming_current"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "key_roaming_guide"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "key_roaming_join_cancel"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/settings/Utils;->isSupportLTERoaming()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-static {}, Lcom/android/settings/Utils;->isExceptionalUSIM()Z

    move-result v1

    if-eqz v1, :cond_29

    :cond_23
    const-string/jumbo v1, "key_roaming_use_lte_roaming"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_29
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticKTTModel()Z

    move-result v1

    if-nez v1, :cond_43

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticSKTModel()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_43

    const-string/jumbo v1, "key_roaming_customer_service"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "key_roaming_background_data"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_43
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticKTTModel()Z

    move-result v1

    if-nez v1, :cond_4f

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticOPENModel()Z

    move-result v1

    if-eqz v1, :cond_5b

    :cond_4f
    const-string/jumbo v1, "key_roaming_auto_dial"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "key_roaming_mobile_t"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5b
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string/jumbo v2, "CscFeature_IMS_SupportVolteDuringRoaming"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6e

    invoke-static {}, Lcom/android/settings/Utils;->isExceptionalUSIM()Z

    move-result v1

    if-eqz v1, :cond_74

    :cond_6e
    const-string/jumbo v1, "key_roaming_hd_voice_roaming"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_74
    return-object v0
.end method

.method public getXmlResourcesToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Landroid/provider/SearchIndexableResource;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Landroid/provider/SearchIndexableResource;

    invoke-direct {v1, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    const-string/jumbo v2, "com.samsung.android.settings.TRoamingSettings"

    iput-object v2, v1, Landroid/provider/SearchIndexableResource;->className:Ljava/lang/String;

    const v2, 0x7f150117

    iput v2, v1, Landroid/provider/SearchIndexableResource;->xmlResId:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
