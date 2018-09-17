.class public Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "SoftwareInfoSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$1;,
        Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static sSalesCode:Ljava/lang/String;


# instance fields
.field mContext:Landroid/content/Context;

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field mHits:[J

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mUm:Landroid/os/UserManager;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->sSalesCode:Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$1;

    invoke-direct {v0}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$1;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->mHits:[J

    new-instance v0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;-><init>(Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    return-void
.end method

.method private static buildPreferenceControllers(Landroid/content/Context;Landroid/app/Activity;Landroid/app/Fragment;Lcom/android/settings/core/lifecycle/Lifecycle;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/app/Activity;",
            "Landroid/app/Fragment;",
            "Lcom/android/settings/core/lifecycle/Lifecycle;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/core/PreferenceController;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;-><init>(Landroid/content/Context;Landroid/app/Activity;Landroid/app/Fragment;Lcom/android/settings/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/settings/deviceinfo/FirmwareVersionPreferenceController;

    invoke-direct {v1, p0, p3}, Lcom/android/settings/deviceinfo/FirmwareVersionPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/settings/deviceinfo/SecurityPatchPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/deviceinfo/SecurityPatchPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/settings/deviceinfo/SELinuxStatusPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/deviceinfo/SELinuxStatusPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/settings/deviceinfo/ConfigurationPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/deviceinfo/ConfigurationPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private setStringSummary(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_7} :catch_8

    :goto_7
    return-void

    :catch_8
    move-exception v0

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1207f5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_7
.end method

.method private setValueSummary(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1207f5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_16
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_16} :catch_17

    :goto_16
    return-void

    :catch_17
    move-exception v0

    goto :goto_16
.end method

.method private showKnoxVersion()V
    .registers 16

    const-string/jumbo v5, ""

    const-string/jumbo v4, ""

    :try_start_6
    invoke-static {}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager;->getInstance()Lcom/sec/enterprise/knox/EnterpriseKnoxManager;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager;->getVersion()Lcom/sec/enterprise/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->getInternalVersion()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_6c

    invoke-static {}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager;->getInstance()Lcom/sec/enterprise/knox/EnterpriseKnoxManager;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager;->getVersion()Lcom/sec/enterprise/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->getInternalVersion()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v11, v12}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-lez v7, :cond_136

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f120f23

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_5b
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6b} :catch_166

    move-result-object v5

    :cond_6c
    :goto_6c
    :try_start_6c
    const-string/jumbo v12, "enterprise_policy_new"

    invoke-virtual {p0, v12}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/EnterpriseDeviceManager;

    invoke-virtual {v2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getEnterpriseSdkVer()Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseSdkVersion;

    move-result-object v12

    invoke-virtual {v12}, Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseSdkVersion;->getInternalVersion()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_be

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f120eeb

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getAPILevel()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_bd
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_bd} :catch_18a

    move-result-object v5

    :cond_be
    :goto_be
    :try_start_be
    const-string/jumbo v12, ""

    const-string/jumbo v13, "ro.config.timaversion"

    const-string/jumbo v14, "No Policy Version"

    invoke-static {v13, v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_129

    const-string/jumbo v12, "3.0"

    const-string/jumbo v13, "ro.config.timaversion"

    const-string/jumbo v14, "No Policy Version"

    invoke-static {v13, v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1ae

    const-string/jumbo v9, "4.0"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f120f4a

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ".0"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    :goto_111
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_128
    .catch Ljava/lang/Exception; {:try_start_be .. :try_end_128} :catch_1dd

    move-result-object v5

    :cond_129
    :goto_129
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_135

    const-string/jumbo v12, "knox_version"

    invoke-direct {p0, v12, v5}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    :cond_135
    return-void

    :cond_136
    const/16 v12, 0x2e

    :try_start_138
    invoke-virtual {v11, v12}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    const/4 v12, 0x0

    invoke-virtual {v11, v12, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f120f23

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_163
    .catch Ljava/lang/Exception; {:try_start_138 .. :try_end_163} :catch_166

    move-result-object v4

    goto/16 :goto_5b

    :catch_166
    move-exception v1

    const-string/jumbo v12, "SoftwareInfoSettings"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "KnoxVersion Exception : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_6c

    :catch_18a
    move-exception v1

    const-string/jumbo v12, "SoftwareInfoSettings"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "KnoxVersion Exception : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_be

    :cond_1ae
    :try_start_1ae
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f120f4a

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "ro.config.timaversion"

    const-string/jumbo v14, "No Policy Version"

    invoke-static {v13, v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1da
    .catch Ljava/lang/Exception; {:try_start_1ae .. :try_end_1da} :catch_1dd

    move-result-object v10

    goto/16 :goto_111

    :catch_1dd
    move-exception v1

    const-string/jumbo v12, "SoftwareInfoSettings"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "KnoxVersion Exception : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_129
.end method


# virtual methods
.method public getLogTag()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "SoftwareInfoSettings"

    return-object v0
.end method

.method public getMetricsCategory()I
    .registers 2

    const/16 v0, 0x28

    return v0
.end method

.method protected getPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/core/PreferenceController;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->getLifecycle()Lcom/android/settings/core/lifecycle/Lifecycle;

    move-result-object v1

    invoke-static {p1, v0, p0, v1}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->buildPreferenceControllers(Landroid/content/Context;Landroid/app/Activity;Landroid/app/Fragment;Lcom/android/settings/core/lifecycle/Lifecycle;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected getPreferenceScreenResId()I
    .registers 2

    const v0, 0x7f150109

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 6

    const-class v1, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->getPreferenceController(Ljava/lang/Class;)Lcom/android/settings/core/PreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->onActivityResult(IILandroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_f

    return-void

    :cond_f
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/dashboard/DashboardFragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 16

    const/4 v13, 0x0

    const/4 v12, 0x1

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v9

    iput-object v9, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->mUm:Landroid/os/UserManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v9

    iput-object v9, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v9

    sput-object v9, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->sSalesCode:Ljava/lang/String;

    const-string/jumbo v7, ""

    const-string/jumbo v9, "Enabled"

    const-string/jumbo v10, "ro.security.mdf.ux"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_208

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Lcom/android/settings/Utils;->showSecuritySWVersion()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_47
    const-string/jumbo v9, "Enabled"

    const-string/jumbo v10, "ro.security.fips.ux"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_75

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v9, ""

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_21f

    invoke-static {}, Lcom/android/settings/Utils;->getFIPSVersion()Ljava/lang/String;

    move-result-object v9

    :goto_6d
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :cond_75
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v9, ""

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_239

    invoke-static {}, Lcom/android/settings/Utils;->getSPLVersion()Ljava/lang/String;

    move-result-object v9

    :goto_8b
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v9, "security_sw_version"

    invoke-direct {p0, v9, v7}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v9, "security_sw_version"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v9

    invoke-virtual {v9, v12}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    iget-object v9, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v10, "com.sec.knox.kccagent"

    invoke-static {v9, v10}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_be

    iget-object v9, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v10, "com.sec.knox.kccagent"

    const-string/jumbo v11, "com.sec.knox.kccc.agent.activities.KCCCSettings"

    invoke-static {v9, v10, v11}, Lcom/android/settings/Utils;->isActivityExists(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    xor-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_253

    :cond_be
    const-string/jumbo v9, "knox_custom_configurator"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v9, "knox_configurator"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->removePreference(Ljava/lang/String;)V

    :goto_ca
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxContainerVersion()Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    move-result-object v1

    sget-object v9, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_2_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    invoke-virtual {v1, v9}, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->compareTo(Ljava/lang/Enum;)I

    move-result v9

    if-ltz v9, :cond_286

    const-string/jumbo v9, "knox_version"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v9

    invoke-virtual {v9, v12}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->showKnoxVersion()V

    :goto_e3
    const-string/jumbo v9, "firmware_version"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v9

    sget-object v10, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const-string/jumbo v9, "firmware_version"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v9

    invoke-virtual {v9, v12}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    invoke-static {}, Lcom/android/settingslib/DeviceInfoUtils;->getSecurityPatch()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_28e

    const-string/jumbo v9, "security_patch"

    invoke-direct {p0, v9, v6}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    :goto_109
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v9

    const-string/jumbo v10, "CscFeature_Setting_ChangeApprovedModemVersion"

    invoke-virtual {v9, v10}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_296

    const-string/jumbo v9, "none"

    const-string/jumbo v10, "ril.approved_modemver"

    const-string/jumbo v11, "none"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    xor-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_296

    const-string/jumbo v0, "ril.approved_modemver"

    :goto_12e
    const-string/jumbo v9, "baseband_version"

    invoke-direct {p0, v9, v0}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->setValueSummary(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_144

    const-string/jumbo v9, "baseband_version"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->removePreference(Ljava/lang/String;)V

    :cond_144
    const-string/jumbo v9, "VZW"

    sget-object v10, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_29b

    const-string/jumbo v9, "kernel_version"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v9

    invoke-static {}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils;->getFormattedKernelVersionVZW()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_15d
    invoke-static {}, Lcom/android/settings/Utils;->isChinaCMCCModel()Z

    move-result v9

    if-eqz v9, :cond_2ab

    const-string/jumbo v9, "build_number"

    iget-object v10, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->mContext:Landroid/content/Context;

    sget-object v11, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-static {v10, v11}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils;->getCMCCBuildNumberSummary(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v9, v10}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    :goto_171
    const-string/jumbo v9, "build_number"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v9

    invoke-virtual {v9, v12}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    iget-object v9, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v10, "com.samsung.android.app.omcagent"

    invoke-static {v9, v10}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_18e

    sget-object v9, Lcom/samsung/android/settings/deviceinfo/OmcUtils;->instance:Lcom/samsung/android/settings/deviceinfo/OmcUtils;

    invoke-virtual {v9}, Lcom/samsung/android/settings/deviceinfo/OmcUtils;->isOMCVersionSupport()Z

    move-result v9

    if-eqz v9, :cond_2b5

    :cond_18e
    sget-object v9, Lcom/samsung/android/settings/deviceinfo/OmcUtils;->instance:Lcom/samsung/android/settings/deviceinfo/OmcUtils;

    iget-object v10, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/deviceinfo/OmcUtils;->getOmcSummary(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v9, "omc_version"

    invoke-direct {p0, v9, v5}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    :goto_19c
    const-string/jumbo v9, "persist.sys.iss.flag_altermodel"

    invoke-static {v9, v13}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v12, :cond_1bd

    const-string/jumbo v9, "baseband_version"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v9, "kernel_version"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v9, "build_number"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v9, "selinux_status"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->removePreference(Ljava/lang/String;)V

    :cond_1bd
    iget-object v9, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/settings/Utils;->isSemAvailable(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2bd

    sget v9, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    const v10, 0x138e4

    if-lt v9, v10, :cond_2bd

    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v9

    if-eqz v9, :cond_1e3

    const-string/jumbo v9, "samsung_experience_version"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v9

    const v10, 0x7f120c7e

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    :cond_1e3
    const-string/jumbo v9, "samsung_experience_version"

    iget-object v10, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/settings/Utils;->getSepPlatformVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v9, v10}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1ef
    new-instance v9, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v9, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v9, "TMB"

    sget-object v10, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2c5

    const-string/jumbo v9, "config"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->removePreference(Ljava/lang/String;)V

    :cond_207
    :goto_207
    return-void

    :cond_208
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Lcom/android/settings/Utils;->getASKSVersion()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_47

    :cond_21f
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "\n"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Lcom/android/settings/Utils;->getFIPSVersion()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_6d

    :cond_239
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "\n"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Lcom/android/settings/Utils;->getSPLVersion()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_8b

    :cond_253
    iget-object v9, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v10, "com.sec.knox.kccagent"

    invoke-static {v9, v10}, Lcom/android/settings/Utils;->getVersionName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_27a

    :goto_25e
    const-string/jumbo v9, "-DS"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_272

    iget-object v9, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v10, "com.sec.enterprise.knox.cloudmdm.smdms.agent.kc"

    invoke-static {v9, v10}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_27e

    :cond_272
    const-string/jumbo v9, "knox_custom_configurator"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_ca

    :cond_27a
    const-string/jumbo v8, ""

    goto :goto_25e

    :cond_27e
    const-string/jumbo v9, "knox_configurator"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_ca

    :cond_286
    const-string/jumbo v9, "knox_version"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_e3

    :cond_28e
    const-string/jumbo v9, "security_patch"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_109

    :cond_296
    const-string/jumbo v0, "gsm.version.baseband"

    goto/16 :goto_12e

    :cond_29b
    const-string/jumbo v9, "kernel_version"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v9

    invoke-static {}, Lcom/android/settingslib/DeviceInfoUtils;->getFormattedKernelVersion()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_15d

    :cond_2ab
    const-string/jumbo v9, "build_number"

    sget-object v10, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-direct {p0, v9, v10}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_171

    :cond_2b5
    const-string/jumbo v9, "omc_version"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_19c

    :cond_2bd
    const-string/jumbo v9, "samsung_experience_version"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_1ef

    :cond_2c5
    const-string/jumbo v9, "config"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    if-eqz v4, :cond_207

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v9, "com.samsung.nsds.action.DEVICE_CONFIG_UPDATED"

    invoke-direct {v2, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    new-instance v9, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$3;

    invoke-direct {v9, p0, v4}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$3;-><init>(Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;Landroid/support/v7/preference/Preference;)V

    iput-object v9, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v9, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v9, v10, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto/16 :goto_207
.end method

.method public onDestroy()V
    .registers 4

    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onDestroy()V

    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_a} :catch_b

    :goto_a
    return-void

    :catch_b
    move-exception v0

    goto :goto_a
.end method

.method public onPause()V
    .registers 3

    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onPause()V

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "SoftwareInfo"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    return-void
.end method

.method public onResume()V
    .registers 5

    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v3, "SoftwareInfo"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    return-void
.end method
