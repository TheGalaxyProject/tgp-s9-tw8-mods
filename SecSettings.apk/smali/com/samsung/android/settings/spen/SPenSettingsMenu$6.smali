.class final Lcom/samsung/android/settings/spen/SPenSettingsMenu$6;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "SPenSettingsMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/spen/SPenSettingsMenu;
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
    .registers 8
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

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v4, "com.samsung.android.service.aircommand"

    invoke-static {p1, v4}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_20

    const-string/jumbo v4, "key_air_cmd_apps_and_functions"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v4, "key_air_cmd_use_minimized"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v4, "pen_air_cmd_settings_menu"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_20
    const-string/jumbo v4, "com.samsung.android.service.aircommand"

    invoke-static {p1, v4}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_31

    invoke-static {p1}, Lcom/android/settings/Utils;->getSPenUSPLevel(Landroid/content/Context;)I

    move-result v4

    const/16 v5, 0xa

    if-gt v4, v5, :cond_37

    :cond_31
    const-string/jumbo v4, "learn_about_spen_features"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_37
    const-string/jumbo v4, "com.sec.android.app.SPenKeeper"

    invoke-static {p1, v4}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_46

    const-string/jumbo v4, "loss_prevention_alert"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_46
    invoke-static {p1}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->-wrap1(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_52

    const-string/jumbo v4, "screen_off_note"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_52
    const-string/jumbo v4, "action_memo_on_off_screen"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p1}, Lcom/android/settings/Utils;->hasHaptic(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_66

    invoke-static {p1}, Lcom/android/settings/Utils;->isEnableIntensity(Landroid/content/Context;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_6c

    :cond_66
    const-string/jumbo v4, "key_additional_feedback_pen_haptic"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6c
    const-string/jumbo v4, "ro.product.name"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "key_spen_screen_on"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p1}, Lcom/android/settings/Utils;->isSupportContactUs(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_85

    const-string/jumbo v4, "spen_contact_us"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_85
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUXGraceView()Z

    move-result v4

    if-eqz v4, :cond_93

    invoke-static {p1}, Lcom/android/settings/Utils;->hasSPenFeature(Landroid/content/Context;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_b1

    :cond_93
    const-string/jumbo v4, "key_writing_buddy"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v4, "key_spen_pointer_switch"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v4, "key_additional_feedback_pen_sound"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v4, "battery_saving"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v4, "screen_off_note"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-eqz v1, :cond_e1

    const-string/jumbo v4, "com.sec.feature.spen_usp"

    invoke-virtual {v1, v4}, Landroid/content/pm/PackageManager;->semGetSystemFeatureLevel(Ljava/lang/String;)I

    move-result v0

    rem-int/lit8 v4, v0, 0xa

    const/4 v5, 0x5

    if-ne v4, v5, :cond_e1

    const-string/jumbo v4, "pen_detachment_category"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v4, "pen_detachment_option_list"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v4, "loss_prevention_alert"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v4, "battery_saving"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v4, "key_additional_feedback_pen_haptic"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e1
    const-string/jumbo v4, "com.samsung.android.app.spenhub"

    invoke-static {p1, v4}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_f0

    const-string/jumbo v4, "about_spen_features"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f0
    return-object v3
.end method

.method public getRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/search/SearchIndexableRaw;",
            ">;"
        }
    .end annotation

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/4 v4, 0x0

    if-eqz v5, :cond_1d

    const-string/jumbo v8, "com.sec.feature.spen_usp"

    invoke-virtual {v5, v8}, Landroid/content/pm/PackageManager;->semGetSystemFeatureLevel(Ljava/lang/String;)I

    move-result v3

    rem-int/lit8 v8, v3, 0xa

    const/4 v9, 0x5

    if-ne v8, v9, :cond_1d

    const/4 v4, 0x1

    :cond_1d
    new-instance v0, Lcom/android/settings/search/SearchIndexableRaw;

    invoke-direct {v0, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    const-string/jumbo v8, "screen_off_note"

    iput-object v8, v0, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    const v8, 0x7f1200c6

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    const v8, 0x7f1200c6

    invoke-static {p1, v8}, Lcom/android/settings/Utils;->getKeywordForSearch(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/android/settings/search/SearchIndexableRaw;->keywords:Ljava/lang/String;

    if-eqz v4, :cond_ee

    const v8, 0x7f12176a

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/android/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    :goto_44
    const v8, 0x7f12145a

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v4, :cond_83

    new-instance v0, Lcom/android/settings/search/SearchIndexableRaw;

    invoke-direct {v0, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    const-string/jumbo v8, "key_additional_feedback_pen_sound"

    iput-object v8, v0, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    const v8, 0x7f12144e

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    const v8, 0x7f12144e

    invoke-static {p1, v8}, Lcom/android/settings/Utils;->getKeywordForSearch(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/android/settings/search/SearchIndexableRaw;->keywords:Ljava/lang/String;

    const v8, 0x7f12144d

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/android/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    const v8, 0x7f12145a

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_83
    new-instance v1, Lcom/android/settings/search/SearchIndexableRaw;

    invoke-direct {v1, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    const-string/jumbo v8, "loss_prevention_alert"

    iput-object v8, v1, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    const v8, 0x7f1210df

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    const v8, 0x7f1210df

    invoke-static {p1, v8}, Lcom/android/settings/Utils;->getKeywordForSearch(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Lcom/android/settings/search/SearchIndexableRaw;->keywords:Ljava/lang/String;

    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v8

    if-eqz v8, :cond_10a

    const v8, 0x7f1210de

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Lcom/android/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    :goto_ae
    const v8, 0x7f12145a

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/android/settings/search/SearchIndexableRaw;

    invoke-direct {v2, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    const-string/jumbo v8, "key_air_cmd_use_minimized"

    iput-object v8, v2, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    const v8, 0x7f120121

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    const v8, 0x7f120121

    invoke-static {p1, v8}, Lcom/android/settings/Utils;->getKeywordForSearch(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lcom/android/settings/search/SearchIndexableRaw;->keywords:Ljava/lang/String;

    if-eqz v4, :cond_114

    const v8, 0x7f120120

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lcom/android/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    :goto_e1
    const v8, 0x7f12145a

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v7

    :cond_ee
    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v8

    if-eqz v8, :cond_ff

    const v8, 0x7f121769

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/android/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    goto/16 :goto_44

    :cond_ff
    const v8, 0x7f121768

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/android/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    goto/16 :goto_44

    :cond_10a
    const v8, 0x7f1210dd

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Lcom/android/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    goto :goto_ae

    :cond_114
    const v8, 0x7f12011f

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lcom/android/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    goto :goto_e1
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

    const-class v2, Lcom/samsung/android/settings/spen/SPenSettingsMenu;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/provider/SearchIndexableResource;->className:Ljava/lang/String;

    const v2, 0x7f1500ab

    iput v2, v1, Landroid/provider/SearchIndexableResource;->xmlResId:I

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
