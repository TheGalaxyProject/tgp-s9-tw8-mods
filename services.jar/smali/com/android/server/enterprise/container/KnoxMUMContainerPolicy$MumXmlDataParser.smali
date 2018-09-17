.class public Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;
.super Ljava/lang/Object;
.source "KnoxMUMContainerPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MumXmlDataParser"
.end annotation


# static fields
.field private static final APPLICATION:Ljava/lang/String; = "application"

.field private static final APPLICATIONONLY:Ljava/lang/String; = "applicationonly"

.field private static final ATTR_ALLOW:Ljava/lang/String; = "allow"

.field private static final ATTR_DISALLOW:Ljava/lang/String; = "disallow"

.field private static final ATTR_ID:Ljava/lang/String; = "id"

.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_REENABLE:Ljava/lang/String; = "reenable"

.field private static final ATTR_REMOVE:Ljava/lang/String; = "remove"

.field private static final ATTR_TYPE:Ljava/lang/String; = "type"

.field private static final ATTR_VALUE:Ljava/lang/String; = "value"

.field private static final BADGEPOLICY:Ljava/lang/String; = "BadgePolicy"

.field private static final CLONE_APPLICATION:Ljava/lang/String; = "cloneapplication"

.field private static final CLONE_DISABLE_PKG:Ljava/lang/String; = "clonedisablePkg"

.field private static final COLUMN:Ljava/lang/String; = "column"

.field private static final DISABLE_PKG:Ljava/lang/String; = "disablePkg"

.field private static final DISALLOW:Ljava/lang/String; = "disallow"

.field private static final FORBIDDEN_STRING:Ljava/lang/String; = "forbiddenString"

.field private static final FOTA_DISABLE_PKG:Ljava/lang/String; = "fotadisablePkg"

.field private static final GROUPPKG:Ljava/lang/String; = "groupPkg"

.field private static final GROUPPREFIX:Ljava/lang/String; = "group_"

.field private static final KNOXCORE:Ljava/lang/String; = "knoxCore"

.field private static final PACKAGE:Ljava/lang/String; = "package"

.field private static final PERSONA:Ljava/lang/String; = "persona"

.field private static final POLICY:Ljava/lang/String; = "policy"

.field private static final PROPERTY:Ljava/lang/String; = "property"

.field private static final PROTECTED_PKG:Ljava/lang/String; = "protectedPkg"

.field private static final PROVIDER_TAG:Ljava/lang/String; = "provider"

.field private static final REPLACE:Ljava/lang/String; = "replace"

.field private static final ROW:Ljava/lang/String; = "row"

.field private static final TABLE:Ljava/lang/String; = "table"

.field private static final TAG:Ljava/lang/String; = "MumXmlDataParser"


# instance fields
.field private final DEBUG:Z

.field private browserInstalled:Z

.field fotaCloneAppDisableList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field fotaCloneAppInstallList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field fotaCloneAppReenableList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field fotaCloneAppRemoveList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private isAlreadyChecked:Z

.field private final mParser:Lorg/xmlpull/v1/XmlPullParser;

.field private mTypeListLocal:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/knox/container/KnoxConfigurationType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 4

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->DEBUG:Z

    iput-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->fotaCloneAppInstallList:Ljava/util/List;

    iput-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->fotaCloneAppDisableList:Ljava/util/List;

    iput-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->fotaCloneAppRemoveList:Ljava/util/List;

    iput-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->fotaCloneAppReenableList:Ljava/util/List;

    iput-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mTypeListLocal:Ljava/util/List;

    iput-boolean v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->isAlreadyChecked:Z

    iput-boolean v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->browserInstalled:Z

    iput-object p1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mTypeListLocal:Ljava/util/List;

    return-void
.end method

.method private containsProductName(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9

    const/4 v3, 0x0

    if-eqz p2, :cond_5

    if-nez p1, :cond_6

    :cond_5
    return v3

    :cond_6
    const-string/jumbo v2, " "

    const-string/jumbo v4, ""

    invoke-virtual {p2, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v4, v1

    move v2, v3

    :goto_19
    if-ge v2, v4, :cond_28

    aget-object v0, v1, v2

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_25

    const/4 v2, 0x1

    return v2

    :cond_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    :cond_28
    return v3
.end method

.method private getCalendarPackageName()Ljava/lang/String;
    .registers 7

    const-string/jumbo v1, "com.android.calendar"

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v3

    const-string/jumbo v4, "SEC_FLOATING_FEATURE_CALENDAR_CONFIG_PACKAGE_NAME"

    const-string/jumbo v5, "com.android.calendar"

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_23

    :try_start_17
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-get5()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_23
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_17 .. :try_end_23} :catch_24

    :cond_23
    :goto_23
    return-object v2

    :catch_24
    move-exception v0

    move-object v2, v1

    goto :goto_23
.end method

.method private getContactsPackageName()Ljava/lang/String;
    .registers 8

    const-string/jumbo v1, "com.android.contacts"

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v4

    const-string/jumbo v5, "SEC_FLOATING_FEATURE_CONTACTS_CONFIG_PACKAGE_NAME"

    const-string/jumbo v6, "com.android.contacts"

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2a

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v4

    const-string/jumbo v5, "CscFeature_Contact_ReplacePackageAs"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_29

    return-object v3

    :cond_29
    return-object v1

    :cond_2a
    :try_start_2a
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-get5()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_36
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2a .. :try_end_36} :catch_37

    :goto_36
    return-object v3

    :catch_37
    move-exception v0

    move-object v3, v1

    goto :goto_36
.end method

.method private isBrowserInstalled()Z
    .registers 8

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-boolean v4, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->isAlreadyChecked:Z

    if-eqz v4, :cond_9

    iget-boolean v4, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->browserInstalled:Z

    return v4

    :cond_9
    const-string/jumbo v4, "package"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v3, v5, v5}, Lcom/android/server/pm/PackageManagerService;->getInstalledPackages(II)Landroid/content/pm/ParceledListSlice;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_46

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    if-eqz v4, :cond_1e

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v5, "com.sec.android.app.sbrowser"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_44

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v5, "com.android.browser"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    :cond_44
    iput-boolean v6, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->browserInstalled:Z

    :cond_46
    iput-boolean v6, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->isAlreadyChecked:Z

    iget-boolean v4, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->browserInstalled:Z

    return v4
.end method

.method private isLwcContainerType(Lcom/samsung/android/knox/container/KnoxConfigurationType;)Z
    .registers 3

    instance-of v0, p1, Lcom/samsung/android/knox/container/LightweightConfigurationType;

    return v0
.end method


# virtual methods
.method public getFotaCloneDisableApps()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->fotaCloneAppDisableList:Ljava/util/List;

    return-object v0
.end method

.method public getFotaCloneInstallApps()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->fotaCloneAppInstallList:Ljava/util/List;

    return-object v0
.end method

.method public getFotaCloneReenableApps()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->fotaCloneAppReenableList:Ljava/util/List;

    return-object v0
.end method

.method public getFotaCloneRemoveApps()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->fotaCloneAppRemoveList:Ljava/util/List;

    return-object v0
.end method

.method public getTypeList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/knox/container/KnoxConfigurationType;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mTypeListLocal:Ljava/util/List;

    return-object v0
.end method

.method public isDefaultLWCModel()Z
    .registers 6

    const/4 v2, 0x0

    :try_start_1
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxContainerVersion()Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_4_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    invoke-virtual {v3, v4}, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->compareTo(Ljava/lang/Enum;)I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_a} :catch_14

    move-result v4

    if-ltz v4, :cond_12

    const/4 v1, 0x1

    :goto_e
    if-eqz v1, :cond_11

    const/4 v2, 0x1

    :cond_11
    :goto_11
    return v2

    :cond_12
    const/4 v1, 0x0

    goto :goto_e

    :catch_14
    move-exception v0

    goto :goto_11
.end method

.method public mergeKnoxConfigurationTypes(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/knox/container/KnoxConfigurationType;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/knox/container/KnoxConfigurationType;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/knox/container/KnoxConfigurationType;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v2, 0x0

    if-eqz p2, :cond_a

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_25

    :cond_a
    const-string/jumbo v6, "MumXmlDataParser"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "mergeKnoxConfigurationTypes: customTypeList == null or empty: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    :cond_25
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_29
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_bc

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/knox/container/KnoxConfigurationType;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_39
    :goto_39
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/container/KnoxConfigurationType;

    invoke-virtual {v4}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v3, :cond_39

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-nez v6, :cond_39

    invoke-virtual {v4}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getAppInstallationList()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_78

    invoke-virtual {v0}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getAppInstallationList()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_78

    invoke-virtual {v0}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getAppInstallationList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_78

    invoke-virtual {v4}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getAppInstallationList()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v0}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getAppInstallationList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_78
    invoke-virtual {v4}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getProtectedPackageList()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_99

    invoke-virtual {v0}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getProtectedPackageList()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_99

    invoke-virtual {v0}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getProtectedPackageList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_99

    invoke-virtual {v4}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getProtectedPackageList()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v0}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getProtectedPackageList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_99
    invoke-virtual {v4}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getGoogleAppsList()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_39

    invoke-virtual {v0}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getGoogleAppsList()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_39

    invoke-virtual {v0}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getGoogleAppsList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_39

    invoke-virtual {v4}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getGoogleAppsList()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v0}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getGoogleAppsList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_39

    :cond_bc
    return-object p1
.end method

.method public readFromCustomXml()Ljava/util/List;
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/knox/container/KnoxConfigurationType;",
            ">;"
        }
    .end annotation

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    :try_start_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    const/4 v10, 0x0

    const/4 v13, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const-string/jumbo v14, "ro.product.name"

    const-string/jumbo v15, "NONE"

    invoke-static {v14, v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    :goto_1e
    const/4 v14, 0x1

    if-eq v4, v14, :cond_99

    packed-switch v4, :pswitch_data_216

    :cond_24
    :goto_24
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    goto :goto_1e

    :pswitch_2d
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v14, "row"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_44

    new-instance v10, Lcom/samsung/android/knox/container/KnoxConfigurationType;

    invoke-direct {v10}, Lcom/samsung/android/knox/container/KnoxConfigurationType;-><init>()V

    goto :goto_24

    :cond_44
    const-string/jumbo v14, "column"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_ca

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const-string/jumbo v15, "value"

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-interface {v14, v0, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const-string/jumbo v15, "name"

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-interface {v14, v0, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v14, "Name"

    invoke-virtual {v14, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_9a

    if-eqz v10, :cond_9a

    invoke-virtual {v10, v13}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setName(Ljava/lang/String;)V
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_79} :catch_7a

    goto :goto_24

    :catch_7a
    move-exception v3

    const-string/jumbo v14, "MumXmlDataParser"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "readFromCustomXml EX:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_99
    return-object v11

    :cond_9a
    :try_start_9a
    const-string/jumbo v14, "AppInstallList"

    invoke-virtual {v14, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_aa

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto/16 :goto_24

    :cond_aa
    const-string/jumbo v14, "ProtectedPkgList"

    invoke-virtual {v14, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_ba

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    goto/16 :goto_24

    :cond_ba
    const-string/jumbo v14, "GoogleAppsPkgList"

    invoke-virtual {v14, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_24

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    goto/16 :goto_24

    :cond_ca
    const-string/jumbo v14, "application"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_104

    if-eqz v1, :cond_24

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const-string/jumbo v15, "name"

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-interface {v14, v0, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "DCM"

    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->readOMCSalesCode()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_fd

    const-string/jumbo v14, "com.android.contacts"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_fd

    const-string/jumbo v13, "com.samsung.contacts"

    :cond_fd
    if-eqz v13, :cond_24

    invoke-interface {v1, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    :cond_104
    const-string/jumbo v14, "protectedPkg"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_125

    if-eqz v9, :cond_24

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const-string/jumbo v15, "name"

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-interface {v14, v0, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_24

    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    :cond_125
    const-string/jumbo v14, "disablePkg"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_146

    if-eqz v5, :cond_24

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const-string/jumbo v15, "name"

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-interface {v14, v0, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_24

    invoke-interface {v5, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    :cond_146
    const-string/jumbo v14, "knoxCore"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_156

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    goto/16 :goto_24

    :cond_156
    const-string/jumbo v14, "package"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_24

    if-eqz v7, :cond_24

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const-string/jumbo v15, "name"

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-interface {v14, v0, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_24

    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    xor-int/lit8 v14, v14, 0x1

    if-eqz v14, :cond_24

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const-string/jumbo v15, "allow"

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-interface {v14, v0, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_193

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->containsProductName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_24

    :cond_193
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const-string/jumbo v15, "disallow"

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-interface {v14, v0, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1ae

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->containsProductName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14

    xor-int/lit8 v14, v14, 0x1

    if-eqz v14, :cond_24

    :cond_1ae
    invoke-interface {v7, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    :pswitch_1b3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v14, "row"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1f8

    if-eqz v10, :cond_1f8

    if-eqz v1, :cond_1d3

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v14

    xor-int/lit8 v14, v14, 0x1

    if-eqz v14, :cond_1d3

    invoke-virtual {v10, v1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setAppInstallationList(Ljava/util/List;)V

    :cond_1d3
    if-eqz v9, :cond_1e0

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v14

    xor-int/lit8 v14, v14, 0x1

    if-eqz v14, :cond_1e0

    invoke-virtual {v10, v9}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setProtectedPackageList(Ljava/util/List;)V

    :cond_1e0
    if-eqz v5, :cond_1ed

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v14

    xor-int/lit8 v14, v14, 0x1

    if-eqz v14, :cond_1ed

    invoke-virtual {v10, v5}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setGoogleAppsList(Ljava/util/List;)V

    :cond_1ed
    invoke-virtual {v10}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->dumpState()V

    const/4 v1, 0x0

    const/4 v9, 0x0

    const/4 v5, 0x0

    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    :cond_1f8
    const-string/jumbo v14, "knoxCore"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_24

    if-eqz v7, :cond_212

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v14

    xor-int/lit8 v14, v14, 0x1

    if-eqz v14, :cond_212

    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-get7()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_212
    .catch Ljava/lang/Exception; {:try_start_9a .. :try_end_212} :catch_7a

    :cond_212
    const/4 v7, 0x0

    goto/16 :goto_24

    nop

    :pswitch_data_216
    .packed-switch 0x2
        :pswitch_2d
        :pswitch_1b3
    .end packed-switch
.end method

.method public readFromXml()V
    .registers 46

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    invoke-interface/range {v40 .. v40}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v12

    const/16 v34, 0x0

    const/16 v18, 0x0

    const/4 v9, 0x0

    const/16 v20, 0x0

    const/16 v39, 0x0

    const/16 v22, 0x0

    const/16 v27, 0x0

    const/4 v13, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v21, 0x0

    const/16 v31, 0x0

    const/4 v14, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v26, 0x0

    const/16 v28, 0x0

    const/4 v8, 0x0

    const-string/jumbo v40, "ro.product.name"

    const-string/jumbo v41, "NONE"

    invoke-static/range {v40 .. v41}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    :goto_30
    const/16 v40, 0x1

    move/from16 v0, v40

    if-eq v12, v0, :cond_13e

    packed-switch v12, :pswitch_data_1048

    :cond_39
    :goto_39
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    invoke-interface/range {v40 .. v40}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v12

    goto :goto_30

    :pswitch_44
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    invoke-interface/range {v40 .. v40}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v35

    const-string/jumbo v40, "row"

    move-object/from16 v0, v40

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_d0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    const-string/jumbo v41, "type"

    const/16 v42, 0x0

    move-object/from16 v0, v40

    move-object/from16 v1, v42

    move-object/from16 v2, v41

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    sget-object v40, Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;->LIGHTWEIGHT:Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;

    invoke-virtual/range {v40 .. v40}, Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_86

    new-instance v34, Lcom/samsung/android/knox/container/LightweightConfigurationType;

    invoke-direct/range {v34 .. v34}, Lcom/samsung/android/knox/container/LightweightConfigurationType;-><init>()V

    goto :goto_39

    :cond_86
    sget-object v40, Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;->KIOSK:Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;

    invoke-virtual/range {v40 .. v40}, Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_9c

    new-instance v34, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;

    invoke-direct/range {v34 .. v34}, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;-><init>()V

    goto :goto_39

    :cond_9c
    sget-object v40, Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;->BBC:Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;

    invoke-virtual/range {v40 .. v40}, Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_b2

    new-instance v34, Lcom/samsung/android/knox/container/BBCConfigurationType;

    invoke-direct/range {v34 .. v34}, Lcom/samsung/android/knox/container/BBCConfigurationType;-><init>()V

    goto :goto_39

    :cond_b2
    sget-object v40, Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;->SECUREFOLDER:Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;

    invoke-virtual/range {v40 .. v40}, Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_c9

    new-instance v34, Lcom/samsung/android/knox/container/SecureFolderConfigurationType;

    invoke-direct/range {v34 .. v34}, Lcom/samsung/android/knox/container/SecureFolderConfigurationType;-><init>()V

    goto/16 :goto_39

    :cond_c9
    new-instance v34, Lcom/samsung/android/knox/container/KnoxConfigurationType;

    invoke-direct/range {v34 .. v34}, Lcom/samsung/android/knox/container/KnoxConfigurationType;-><init>()V

    goto/16 :goto_39

    :cond_d0
    const-string/jumbo v40, "column"

    move-object/from16 v0, v40

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_868

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    const-string/jumbo v41, "value"

    const/16 v42, 0x0

    move-object/from16 v0, v40

    move-object/from16 v1, v42

    move-object/from16 v2, v41

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    const-string/jumbo v41, "name"

    const/16 v42, 0x0

    move-object/from16 v0, v40

    move-object/from16 v1, v42

    move-object/from16 v2, v41

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const-string/jumbo v40, "Name"

    move-object/from16 v0, v40

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_13f

    if-eqz v34, :cond_13f

    move-object/from16 v0, v34

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setName(Ljava/lang/String;)V
    :try_end_11d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11d} :catch_11f

    goto/16 :goto_39

    :catch_11f
    move-exception v11

    const-string/jumbo v40, "MumXmlDataParser"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v42, "readFromXml EX:"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-static {v11}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13e
    return-void

    :cond_13f
    :try_start_13f
    const-string/jumbo v40, "UID"

    move-object/from16 v0, v40

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_15d

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    if-ltz v18, :cond_39

    if-eqz v34, :cond_39

    move-object/from16 v0, v34

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setAdminUid(I)V

    goto/16 :goto_39

    :cond_15d
    const-string/jumbo v40, "UserID"

    move-object/from16 v0, v40

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_181

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    const/16 v40, -0x1

    move/from16 v0, v18

    move/from16 v1, v40

    if-lt v0, v1, :cond_39

    if-eqz v34, :cond_39

    move-object/from16 v0, v34

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setUserId(I)V

    goto/16 :goto_39

    :cond_181
    const-string/jumbo v40, "PersonaIDs"

    move-object/from16 v0, v40

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_195

    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    goto/16 :goto_39

    :cond_195
    const-string/jumbo v40, "Version"

    move-object/from16 v0, v40

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_1ad

    if-eqz v34, :cond_39

    move-object/from16 v0, v34

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setVersion(Ljava/lang/String;)V

    goto/16 :goto_39

    :cond_1ad
    const-string/jumbo v40, "MaximumTimeToLock"

    move-object/from16 v0, v40

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_1cb

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    if-lez v18, :cond_39

    if-eqz v34, :cond_39

    move-object/from16 v0, v34

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setMaximumTimeToLock(I)V

    goto/16 :goto_39

    :cond_1cb
    const-string/jumbo v40, "KeyguardDisabledFeatures"

    move-object/from16 v0, v40

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_1e9

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    if-ltz v18, :cond_39

    if-eqz v34, :cond_39

    move-object/from16 v0, v34

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setKeyguardDisabledFeatures(I)V

    goto/16 :goto_39

    :cond_1e9
    const-string/jumbo v40, "DefaultContainerLayout"

    move-object/from16 v0, v40

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_207

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    if-lez v18, :cond_39

    if-eqz v34, :cond_39

    move-object/from16 v0, v34

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setContainerLayout(I)V

    goto/16 :goto_39

    :cond_207
    const-string/jumbo v40, "LayoutSwitchingAllowed"

    move-object/from16 v0, v40

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_221

    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    if-eqz v34, :cond_39

    move-object/from16 v0, v34

    invoke-virtual {v0, v9}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->allowLayoutSwitching(Z)V

    goto/16 :goto_39

    :cond_221
    const-string/jumbo v40, "DefaultConfigType"

    move-object/from16 v0, v40

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_23b

    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    if-eqz v34, :cond_39

    move-object/from16 v0, v34

    invoke-virtual {v0, v9}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setDefaultConfigType(Z)V

    goto/16 :goto_39

    :cond_23b
    const-string/jumbo v40, "PasswordMinimumLength"

    move-object/from16 v0, v40

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_259

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    if-lez v18, :cond_39

    if-eqz v34, :cond_39

    move-object/from16 v0, v34

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setPasswordMinimumLength(I)V

    goto/16 :goto_39

    :cond_259
    const-string/jumbo v40, "PasswordMinimumNonLetters"

    move-object/from16 v0, v40

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_277

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    if-lez v18, :cond_39

    if-eqz v34, :cond_39

    move-object/from16 v0, v34

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setPasswordMinimumNonLetters(I)V

    goto/16 :goto_39

    :cond_277
    const-string/jumbo v40, "PasswordMinimumLetters"

    move-object/from16 v0, v40

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_295

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    if-lez v18, :cond_39

    if-eqz v34, :cond_39

    move-object/from16 v0, v34

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setPasswordMinimumLetters(I)V

    goto/16 :goto_39

    :cond_295
    const-string/jumbo v40, "PasswordMinimumNumeric"

    move-object/from16 v0, v40

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_2b3

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    if-lez v18, :cond_39

    if-eqz v34, :cond_39

    move-object/from16 v0, v34

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setPasswordMinimumNumeric(I)V

    goto/16 :goto_39

    :cond_2b3
    const-string/jumbo v40, "PasswordMinimumUpperCase"

    move-object/from16 v0, v40

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_2d1

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    if-lez v18, :cond_39

    if-eqz v34, :cond_39

    move-object/from16 v0, v34

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setPasswordMinimumUpperCase(I)V

    goto/16 :goto_39

    :cond_2d1
    const-string/jumbo v40, "PasswordMinimumLowerCase"

    move-object/from16 v0, v40

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_2ef

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    if-lez v18, :cond_39

    if-eqz v34, :cond_39

    move-object/from16 v0, v34

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setPasswordMinimumLowerCase(I)V

    goto/16 :goto_39

    :cond_2ef
    const-string/jumbo v40, "PasswordMinimumSymbols"

    move-object/from16 v0, v40

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_30d

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    if-lez v18, :cond_39

    if-eqz v34, :cond_39

    move-object/from16 v0, v34

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setPasswordMinimumSymbols(I)V

    goto/16 :goto_39

    :cond_30d
    const-string/jumbo v40, "PasswordQuality"

    move-object/from16 v0, v40

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_32b

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    if-ltz v18, :cond_39

    if-eqz v34, :cond_39

    move-object/from16 v0, v34

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setPasswordQuality(I)V

    goto/16 :goto_39

    :cond_32b
    const-string/jumbo v40, "MaximumFailedPasswordsForWipe"

    move-object/from16 v0, v40

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_349

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    if-lez v18, :cond_39

    if-eqz v34, :cond_39

    move-object/from16 v0, v34

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setMaximumFailedPasswordsForWipe(I)V

    goto/16 :goto_39

    :cond_349
    const-string/jumbo v40, "MaximumCharacterOccurences"

    move-object/from16 v0, v40

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_367

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    if-lez v18, :cond_39

    if-eqz v34, :cond_39

    move-object/from16 v0, v34

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setMaximumCharacterOccurences(I)V

    goto/16 :goto_39

    :cond_367
    const-string/jumbo v40, "MaximumCharacterSequenceLength"

    move-object/from16 v0, v40

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_385

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    if-lez v18, :cond_39

    if-eqz v34, :cond_39

    move-object/from16 v0, v34

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setMaximumCharacterSequenceLength(I)V

    goto/16 :goto_39

    :cond_385
    const-string/jumbo v40, "MaximumNumericSequenceLength"

    move-object/from16 v0, v40

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_3a3

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    if-lez v18, :cond_39

    if-eqz v34, :cond_39

    move-object/from16 v0, v34

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setMaximumNumericSequenceLength(I)V

    goto/16 :goto_39

    :cond_3a3
    const-string/jumbo v40, "SimplePasswordEnabled"

    move-object/from16 v0, v40

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_3bd

    if-eqz v34, :cond_3bd

    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    move-object/from16 v0, v34

    invoke-virtual {v0, v9}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setSimplePasswordEnabled(Z)V

    goto/16 :goto_39

    :cond_3bd
    const-string/jumbo v40, "MultifactorAuthEnabled"

    move-object/from16 v0, v40

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_3d7

    if-eqz v34, :cond_3d7

    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    move-object/from16 v0, v34

    invoke-virtual {v0, v9}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->enforceMultifactorAuthentication(Z)V

    goto/16 :goto_39

    :cond_3d7
    const-string/jumbo v40, "UserManaged"

    move-object/from16 v0, v40

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_3f1

    if-eqz v34, :cond_3f1

    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    move-object/from16 v0, v34

    invoke-virtual {v0, v9}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setManagedType(Z)V

    goto/16 :goto_39

    :cond_3f1
    const-string/jumbo v40, "ForbiddenStrings"

    move-object/from16 v0, v40

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_405

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    goto/16 :goto_39

    :cond_405
    const-string/jumbo v40, "AppInstallList"

    move-object/from16 v0, v40

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_41e

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    goto/16 :goto_39

    :cond_41e
    const-string/jumbo v40, "ProtectedPkgList"

    move-object/from16 v0, v40

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_432

    new-instance v31, Ljava/util/ArrayList;

    invoke-direct/range {v31 .. v31}, Ljava/util/ArrayList;-><init>()V

    goto/16 :goto_39

    :cond_432
    const-string/jumbo v40, "GoogleAppsPkgList"

    move-object/from16 v0, v40

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_446

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    goto/16 :goto_39

    :cond_446
    const-string/jumbo v40, "FOTADisableAppsPkgList"

    move-object/from16 v0, v40

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_45f

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    goto/16 :goto_39

    :cond_45f
    const-string/jumbo v40, "AppInstallListForFotaClone"

    move-object/from16 v0, v40

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_484

    new-instance v40, Ljava/util/ArrayList;

    invoke-direct/range {v40 .. v40}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->fotaCloneAppInstallList:Ljava/util/List;

    new-instance v40, Ljava/util/ArrayList;

    invoke-direct/range {v40 .. v40}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->fotaCloneAppRemoveList:Ljava/util/List;

    goto/16 :goto_39

    :cond_484
    const-string/jumbo v40, "AppDisableListForFotaClone"

    move-object/from16 v0, v40

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_4a9

    new-instance v40, Ljava/util/ArrayList;

    invoke-direct/range {v40 .. v40}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->fotaCloneAppDisableList:Ljava/util/List;

    new-instance v40, Ljava/util/ArrayList;

    invoke-direct/range {v40 .. v40}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->fotaCloneAppReenableList:Ljava/util/List;

    goto/16 :goto_39

    :cond_4a9
    const-string/jumbo v40, "PatternRestriction"

    move-object/from16 v0, v40

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_4cb

    if-eqz v34, :cond_4cb

    if-eqz v39, :cond_4c0

    invoke-virtual/range {v39 .. v39}, Ljava/lang/String;->isEmpty()Z

    move-result v40

    if-eqz v40, :cond_4c2

    :cond_4c0
    const/16 v39, 0x0

    :cond_4c2
    move-object/from16 v0, v34

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setRequiredPasswordPattern(Ljava/lang/String;)V

    goto/16 :goto_39

    :cond_4cb
    const-string/jumbo v40, "CustomBadgeIcon"

    move-object/from16 v0, v40

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_4ed

    if-eqz v34, :cond_4ed

    if-eqz v39, :cond_4e2

    invoke-virtual/range {v39 .. v39}, Ljava/lang/String;->isEmpty()Z

    move-result v40

    if-eqz v40, :cond_4e4

    :cond_4e2
    const/16 v39, 0x0

    :cond_4e4
    move-object/from16 v0, v34

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setCustomBadgeIcon(Ljava/lang/String;)V

    goto/16 :goto_39

    :cond_4ed
    const-string/jumbo v40, "CustomHomeScreenWallpaper"

    move-object/from16 v0, v40

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_50f

    if-eqz v34, :cond_50f

    if-eqz v39, :cond_504

    invoke-virtual/range {v39 .. v39}, Ljava/lang/String;->isEmpty()Z

    move-result v40

    if-eqz v40, :cond_506

    :cond_504
    const/16 v39, 0x0

    :cond_506
    move-object/from16 v0, v34

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setCustomHomeScreenWallpaper(Ljava/lang/String;)V

    goto/16 :goto_39

    :cond_50f
    const-string/jumbo v40, "EC"

    move-object/from16 v0, v40

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_529

    if-eqz v34, :cond_529

    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    move-object/from16 v0, v34

    invoke-virtual {v0, v9}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setCustomizedContainerEnabled(Z)V

    goto/16 :goto_39

    :cond_529
    const-string/jumbo v40, "NameIcon"

    move-object/from16 v0, v40

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_54b

    if-eqz v34, :cond_54b

    if-eqz v39, :cond_540

    invoke-virtual/range {v39 .. v39}, Ljava/lang/String;->isEmpty()Z

    move-result v40

    if-eqz v40, :cond_542

    :cond_540
    const/16 v39, 0x0

    :cond_542
    move-object/from16 v0, v34

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setCustomizedContainerNameIcon(Ljava/lang/String;)V

    goto/16 :goto_39

    :cond_54b
    const-string/jumbo v40, "ECName"

    move-object/from16 v0, v40

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_56d

    if-eqz v34, :cond_56d

    if-eqz v39, :cond_562

    invoke-virtual/range {v39 .. v39}, Ljava/lang/String;->isEmpty()Z

    move-result v40

    if-eqz v40, :cond_564

    :cond_562
    const/16 v39, 0x0

    :cond_564
    move-object/from16 v0, v34

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setCustomizedContainerName(Ljava/lang/String;)V

    goto/16 :goto_39

    :cond_56d
    const-string/jumbo v40, "ECIcon"

    move-object/from16 v0, v40

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_58f

    if-eqz v34, :cond_58f

    if-eqz v39, :cond_584

    invoke-virtual/range {v39 .. v39}, Ljava/lang/String;->isEmpty()Z

    move-result v40

    if-eqz v40, :cond_586

    :cond_584
    const/16 v39, 0x0

    :cond_586
    move-object/from16 v0, v34

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setCustomizedContainerIcon(Ljava/lang/String;)V

    goto/16 :goto_39

    :cond_58f
    const-string/jumbo v40, "ECBadge"

    move-object/from16 v0, v40

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_5b1

    if-eqz v34, :cond_5b1

    if-eqz v39, :cond_5a6

    invoke-virtual/range {v39 .. v39}, Ljava/lang/String;->isEmpty()Z

    move-result v40

    if-eqz v40, :cond_5a8

    :cond_5a6
    const/16 v39, 0x0

    :cond_5a8
    move-object/from16 v0, v34

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setCustomizedContainerBadge(Ljava/lang/String;)V

    goto/16 :goto_39

    :cond_5b1
    const-string/jumbo v40, "CustomLockScreenWallpaper"

    move-object/from16 v0, v40

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_5d3

    if-eqz v34, :cond_5d3

    if-eqz v39, :cond_5c8

    invoke-virtual/range {v39 .. v39}, Ljava/lang/String;->isEmpty()Z

    move-result v40

    if-eqz v40, :cond_5ca

    :cond_5c8
    const/16 v39, 0x0

    :cond_5ca
    move-object/from16 v0, v34

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setCustomLockScreenWallpaper(Ljava/lang/String;)V

    goto/16 :goto_39

    :cond_5d3
    const-string/jumbo v40, "CustomStatusLabel"

    move-object/from16 v0, v40

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_5f5

    if-eqz v34, :cond_5f5

    if-eqz v39, :cond_5ea

    invoke-virtual/range {v39 .. v39}, Ljava/lang/String;->isEmpty()Z

    move-result v40

    if-eqz v40, :cond_5ec

    :cond_5ea
    const/16 v39, 0x0

    :cond_5ec
    move-object/from16 v0, v34

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setCustomStatusLabel(Ljava/lang/String;)V

    goto/16 :goto_39

    :cond_5f5
    const-string/jumbo v40, "CustomStatusIcon"

    move-object/from16 v0, v40

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_617

    if-eqz v34, :cond_617

    if-eqz v39, :cond_60c

    invoke-virtual/range {v39 .. v39}, Ljava/lang/String;->isEmpty()Z

    move-result v40

    if-eqz v40, :cond_60e

    :cond_60c
    const/16 v39, 0x0

    :cond_60e
    move-object/from16 v0, v34

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setCustomStatusIcon(Ljava/lang/String;)V

    goto/16 :goto_39

    :cond_617
    const-string/jumbo v40, "FolderHeaderTitle"

    move-object/from16 v0, v40

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_647

    if-eqz v34, :cond_647

    if-eqz v39, :cond_62e

    invoke-virtual/range {v39 .. v39}, Ljava/lang/String;->isEmpty()Z

    move-result v40

    if-eqz v40, :cond_630

    :cond_62e
    const/16 v39, 0x0

    :cond_630
    move-object/from16 v0, v34

    instance-of v0, v0, Lcom/samsung/android/knox/container/LightweightConfigurationType;

    move/from16 v40, v0

    if-eqz v40, :cond_39

    move-object/from16 v0, v34

    check-cast v0, Lcom/samsung/android/knox/container/LightweightConfigurationType;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/container/LightweightConfigurationType;->setFolderHeaderTitle(Ljava/lang/String;)V

    goto/16 :goto_39

    :cond_647
    const-string/jumbo v40, "FolderHeaderIcon"

    move-object/from16 v0, v40

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_677

    if-eqz v34, :cond_677

    if-eqz v39, :cond_65e

    invoke-virtual/range {v39 .. v39}, Ljava/lang/String;->isEmpty()Z

    move-result v40

    if-eqz v40, :cond_660

    :cond_65e
    const/16 v39, 0x0

    :cond_660
    move-object/from16 v0, v34

    instance-of v0, v0, Lcom/samsung/android/knox/container/LightweightConfigurationType;

    move/from16 v40, v0

    if-eqz v40, :cond_39

    move-object/from16 v0, v34

    check-cast v0, Lcom/samsung/android/knox/container/LightweightConfigurationType;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/container/LightweightConfigurationType;->setFolderHeaderIcon(Ljava/lang/String;)V

    goto/16 :goto_39

    :cond_677
    const-string/jumbo v40, "FolderDisabledChangeLayout"

    move-object/from16 v0, v40

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_6a7

    if-eqz v34, :cond_6a7

    if-eqz v39, :cond_68e

    invoke-virtual/range {v39 .. v39}, Ljava/lang/String;->isEmpty()Z

    move-result v40

    if-eqz v40, :cond_690

    :cond_68e
    const/16 v39, 0x0

    :cond_690
    move-object/from16 v0, v34

    instance-of v0, v0, Lcom/samsung/android/knox/container/LightweightConfigurationType;

    move/from16 v40, v0

    if-eqz v40, :cond_39

    move-object/from16 v0, v34

    check-cast v0, Lcom/samsung/android/knox/container/LightweightConfigurationType;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/container/LightweightConfigurationType;->setFolderDisabledChangeLayout(Ljava/lang/String;)V

    goto/16 :goto_39

    :cond_6a7
    const-string/jumbo v40, "RCPDataSettings"

    move-object/from16 v0, v40

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_6bf

    const/16 v20, 0x1

    if-nez v21, :cond_39

    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    goto/16 :goto_39

    :cond_6bf
    const-string/jumbo v40, "RCPAllowChangeDataSettings"

    move-object/from16 v0, v40

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_6d7

    const/16 v20, 0x0

    if-nez v21, :cond_39

    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    goto/16 :goto_39

    :cond_6d7
    const-string/jumbo v40, "RCPNotifSettings"

    move-object/from16 v0, v40

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_6ed

    if-nez v21, :cond_39

    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    goto/16 :goto_39

    :cond_6ed
    const-string/jumbo v40, "AllowMultiwindowMode"

    move-object/from16 v0, v40

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_707

    if-eqz v34, :cond_707

    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    move-object/from16 v0, v34

    invoke-virtual {v0, v9}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->allowMultiwindowMode(Z)V

    goto/16 :goto_39

    :cond_707
    const-string/jumbo v40, "AllowTaskManager"

    move-object/from16 v0, v40

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_721

    if-eqz v34, :cond_721

    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    move-object/from16 v0, v34

    invoke-virtual {v0, v9}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->allowTaskManager(Z)V

    goto/16 :goto_39

    :cond_721
    const-string/jumbo v40, "AllowSettingsChanges"

    move-object/from16 v0, v40

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_749

    if-eqz v34, :cond_749

    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    move-object/from16 v0, v34

    instance-of v0, v0, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;

    move/from16 v40, v0

    if-eqz v40, :cond_39

    move-object/from16 v0, v34

    check-cast v0, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    invoke-virtual {v0, v9}, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;->allowSettingsChanges(Z)V

    goto/16 :goto_39

    :cond_749
    const-string/jumbo v40, "AllowStatusBarExpansion"

    move-object/from16 v0, v40

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_771

    if-eqz v34, :cond_771

    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    move-object/from16 v0, v34

    instance-of v0, v0, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;

    move/from16 v40, v0

    if-eqz v40, :cond_39

    move-object/from16 v0, v34

    check-cast v0, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    invoke-virtual {v0, v9}, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;->allowStatusBarExpansion(Z)V

    goto/16 :goto_39

    :cond_771
    const-string/jumbo v40, "AllowHomeKey"

    move-object/from16 v0, v40

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_799

    if-eqz v34, :cond_799

    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    move-object/from16 v0, v34

    instance-of v0, v0, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;

    move/from16 v40, v0

    if-eqz v40, :cond_39

    move-object/from16 v0, v34

    check-cast v0, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    invoke-virtual {v0, v9}, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;->allowHomeKey(Z)V

    goto/16 :goto_39

    :cond_799
    const-string/jumbo v40, "AllowClearAllNotification"

    move-object/from16 v0, v40

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_7c1

    if-eqz v34, :cond_7c1

    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    move-object/from16 v0, v34

    instance-of v0, v0, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;

    move/from16 v40, v0

    if-eqz v40, :cond_39

    move-object/from16 v0, v34

    check-cast v0, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    invoke-virtual {v0, v9}, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;->allowClearAllNotification(Z)V

    goto/16 :goto_39

    :cond_7c1
    const-string/jumbo v40, "HideSystemBar"

    move-object/from16 v0, v40

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_7e9

    if-eqz v34, :cond_7e9

    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    move-object/from16 v0, v34

    instance-of v0, v0, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;

    move/from16 v40, v0

    if-eqz v40, :cond_39

    move-object/from16 v0, v34

    check-cast v0, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    invoke-virtual {v0, v9}, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;->setHideSystemBar(Z)V

    goto/16 :goto_39

    :cond_7e9
    const-string/jumbo v40, "WipeRecentTasks"

    move-object/from16 v0, v40

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_811

    if-eqz v34, :cond_811

    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    move-object/from16 v0, v34

    instance-of v0, v0, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;

    move/from16 v40, v0

    if-eqz v40, :cond_39

    move-object/from16 v0, v34

    check-cast v0, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    invoke-virtual {v0, v9}, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;->setWipeRecentTasks(Z)V

    goto/16 :goto_39

    :cond_811
    const-string/jumbo v40, "BiometricAuthEnabled"

    move-object/from16 v0, v40

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_84e

    if-eqz v34, :cond_84e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    const-string/jumbo v41, "type"

    const/16 v42, 0x0

    move-object/from16 v0, v40

    move-object/from16 v1, v42

    move-object/from16 v2, v41

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v40 .. v40}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_39

    if-lez v18, :cond_39

    const/16 v40, 0x1

    move-object/from16 v0, v34

    move/from16 v1, v18

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setBiometricAuthenticationEnabled(IZ)V

    goto/16 :goto_39

    :cond_84e
    const-string/jumbo v40, "USBDebuggingAllowed"

    move-object/from16 v0, v40

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_39

    if-eqz v34, :cond_39

    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    move-object/from16 v0, v34

    invoke-virtual {v0, v9}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->allowUSBDebugging(Z)V

    goto/16 :goto_39

    :cond_868
    const-string/jumbo v40, "persona"

    move-object/from16 v0, v40

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_89f

    if-eqz v27, :cond_39

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    const-string/jumbo v41, "id"

    const/16 v42, 0x0

    move-object/from16 v0, v40

    move-object/from16 v1, v42

    move-object/from16 v2, v41

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    if-lez v18, :cond_39

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    move-object/from16 v0, v27

    move-object/from16 v1, v40

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_39

    :cond_89f
    const-string/jumbo v40, "forbiddenString"

    move-object/from16 v0, v40

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_8cc

    if-eqz v13, :cond_39

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    const-string/jumbo v41, "value"

    const/16 v42, 0x0

    move-object/from16 v0, v40

    move-object/from16 v1, v42

    move-object/from16 v2, v41

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    if-eqz v39, :cond_39

    move-object/from16 v0, v39

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_39

    :cond_8cc
    const-string/jumbo v40, "cloneapplication"

    move-object/from16 v0, v40

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_942

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->fotaCloneAppInstallList:Ljava/util/List;

    move-object/from16 v40, v0

    if-eqz v40, :cond_39

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    const-string/jumbo v41, "name"

    const/16 v42, 0x0

    move-object/from16 v0, v40

    move-object/from16 v1, v42

    move-object/from16 v2, v41

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    if-eqz v39, :cond_39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/String;->isEmpty()Z

    move-result v40

    xor-int/lit8 v40, v40, 0x1

    if-eqz v40, :cond_39

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    const-string/jumbo v41, "remove"

    const/16 v42, 0x0

    move-object/from16 v0, v40

    move-object/from16 v1, v42

    move-object/from16 v2, v41

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    if-eqz v33, :cond_933

    const-string/jumbo v40, "true"

    move-object/from16 v0, v33

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_933

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->fotaCloneAppRemoveList:Ljava/util/List;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v39

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_39

    :cond_933
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->fotaCloneAppInstallList:Ljava/util/List;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v39

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_39

    :cond_942
    const-string/jumbo v40, "clonedisablePkg"

    move-object/from16 v0, v40

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_9b8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->fotaCloneAppDisableList:Ljava/util/List;

    move-object/from16 v40, v0

    if-eqz v40, :cond_39

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    const-string/jumbo v41, "name"

    const/16 v42, 0x0

    move-object/from16 v0, v40

    move-object/from16 v1, v42

    move-object/from16 v2, v41

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    if-eqz v39, :cond_39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/String;->isEmpty()Z

    move-result v40

    xor-int/lit8 v40, v40, 0x1

    if-eqz v40, :cond_39

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    const-string/jumbo v41, "reenable"

    const/16 v42, 0x0

    move-object/from16 v0, v40

    move-object/from16 v1, v42

    move-object/from16 v2, v41

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    if-eqz v32, :cond_9a9

    const-string/jumbo v40, "true"

    move-object/from16 v0, v32

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_9a9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->fotaCloneAppReenableList:Ljava/util/List;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v39

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_39

    :cond_9a9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->fotaCloneAppDisableList:Ljava/util/List;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v39

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_39

    :cond_9b8
    const-string/jumbo v40, "application"

    move-object/from16 v0, v40

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_a8e

    if-eqz v6, :cond_39

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    const-string/jumbo v41, "name"

    const/16 v42, 0x0

    move-object/from16 v0, v40

    move-object/from16 v1, v42

    move-object/from16 v2, v41

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    const-string/jumbo v40, "com.android.contacts"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_9e9

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->getContactsPackageName()Ljava/lang/String;

    move-result-object v39

    :cond_9e9
    const-string/jumbo v40, "com.android.calendar"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_9f6

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->getCalendarPackageName()Ljava/lang/String;

    move-result-object v39

    :cond_9f6
    if-eqz v39, :cond_39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/String;->isEmpty()Z

    move-result v40

    xor-int/lit8 v40, v40, 0x1

    if-eqz v40, :cond_39

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    const-string/jumbo v41, "remove"

    const/16 v42, 0x0

    move-object/from16 v0, v40

    move-object/from16 v1, v42

    move-object/from16 v2, v41

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    if-eqz v33, :cond_a2b

    const-string/jumbo v40, "true"

    move-object/from16 v0, v33

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_a2b

    move-object/from16 v0, v39

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_39

    :cond_a2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    const-string/jumbo v41, "allow"

    const/16 v42, 0x0

    move-object/from16 v0, v40

    move-object/from16 v1, v42

    move-object/from16 v2, v41

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_a4c

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1, v10}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->containsProductName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_a76

    :cond_a4c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    const-string/jumbo v41, "disallow"

    const/16 v42, 0x0

    move-object/from16 v0, v40

    move-object/from16 v1, v42

    move-object/from16 v2, v41

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_a6f

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1, v10}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->containsProductName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v40

    xor-int/lit8 v40, v40, 0x1

    if-eqz v40, :cond_39

    :cond_a6f
    move-object/from16 v0, v39

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_39

    :cond_a76
    const-string/jumbo v40, "systemAppOnly"

    move-object/from16 v0, v40

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_39

    invoke-static/range {v39 .. v39}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-wrap5(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_39

    move-object/from16 v0, v39

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_39

    :cond_a8e
    const-string/jumbo v40, "replace"

    move-object/from16 v0, v40

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_b01

    if-eqz v6, :cond_39

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    const-string/jumbo v41, "value"

    const/16 v42, 0x0

    move-object/from16 v0, v40

    move-object/from16 v1, v42

    move-object/from16 v2, v41

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    const-string/jumbo v40, " "

    const-string/jumbo v41, ""

    invoke-virtual/range {v39 .. v41}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v40

    const-string/jumbo v41, ","

    invoke-virtual/range {v40 .. v41}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v36

    const/16 v40, 0x0

    move-object/from16 v0, v36

    array-length v0, v0

    move/from16 v41, v0

    :goto_aca
    move/from16 v0, v40

    move/from16 v1, v41

    if-ge v0, v1, :cond_39

    aget-object v23, v36, v40

    move-object/from16 v0, v29

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v42

    if-eqz v42, :cond_afe

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v42, v0

    const-string/jumbo v43, "name"

    const/16 v44, 0x0

    move-object/from16 v0, v42

    move-object/from16 v1, v44

    move-object/from16 v2, v43

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v42

    add-int/lit8 v42, v42, -0x1

    move/from16 v0, v42

    move-object/from16 v1, v39

    invoke-interface {v6, v0, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_afe
    add-int/lit8 v40, v40, 0x1

    goto :goto_aca

    :cond_b01
    const-string/jumbo v40, "groupPkg"

    move-object/from16 v0, v40

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_b5b

    if-eqz v6, :cond_39

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    const-string/jumbo v41, "value"

    const/16 v42, 0x0

    move-object/from16 v0, v40

    move-object/from16 v1, v42

    move-object/from16 v2, v41

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_b29
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v40

    if-eqz v40, :cond_39

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    move-object/from16 v0, v16

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_b29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    const-string/jumbo v41, "name"

    const/16 v42, 0x0

    move-object/from16 v0, v40

    move-object/from16 v1, v42

    move-object/from16 v2, v41

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_39

    :cond_b5b
    const-string/jumbo v40, "provider"

    move-object/from16 v0, v40

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_b97

    if-eqz v21, :cond_39

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    const-string/jumbo v41, "name"

    const/16 v42, 0x0

    move-object/from16 v0, v40

    move-object/from16 v1, v42

    move-object/from16 v2, v41

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    if-eqz v39, :cond_b90

    invoke-virtual/range {v39 .. v39}, Ljava/lang/String;->isEmpty()Z

    move-result v40

    xor-int/lit8 v40, v40, 0x1

    if-eqz v40, :cond_b90

    move-object/from16 v0, v21

    move-object/from16 v1, v39

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b90
    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    goto/16 :goto_39

    :cond_b97
    const-string/jumbo v40, "package"

    move-object/from16 v0, v40

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_c41

    if-eqz v28, :cond_c12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    const-string/jumbo v41, "name"

    const/16 v42, 0x0

    move-object/from16 v0, v40

    move-object/from16 v1, v42

    move-object/from16 v2, v41

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    if-eqz v39, :cond_39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/String;->isEmpty()Z

    move-result v40

    xor-int/lit8 v40, v40, 0x1

    if-eqz v40, :cond_39

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    const-string/jumbo v41, "allow"

    const/16 v42, 0x0

    move-object/from16 v0, v40

    move-object/from16 v1, v42

    move-object/from16 v2, v41

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_be6

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1, v10}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->containsProductName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_39

    :cond_be6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    const-string/jumbo v41, "disallow"

    const/16 v42, 0x0

    move-object/from16 v0, v40

    move-object/from16 v1, v42

    move-object/from16 v2, v41

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_c09

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1, v10}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->containsProductName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v40

    xor-int/lit8 v40, v40, 0x1

    if-eqz v40, :cond_39

    :cond_c09
    move-object/from16 v0, v28

    move-object/from16 v1, v39

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_39

    :cond_c12
    if-eqz v21, :cond_39

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    const-string/jumbo v41, "name"

    const/16 v42, 0x0

    move-object/from16 v0, v40

    move-object/from16 v1, v42

    move-object/from16 v2, v41

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    if-eqz v39, :cond_c3a

    invoke-virtual/range {v39 .. v39}, Ljava/lang/String;->isEmpty()Z

    move-result v40

    xor-int/lit8 v40, v40, 0x1

    if-eqz v40, :cond_c3a

    move-object/from16 v0, v21

    move-object/from16 v1, v39

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c3a
    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    goto/16 :goto_39

    :cond_c41
    const-string/jumbo v40, "policy"

    move-object/from16 v0, v40

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_cae

    if-nez v8, :cond_c55

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    :cond_c55
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    const-string/jumbo v41, "name"

    const/16 v42, 0x0

    move-object/from16 v0, v40

    move-object/from16 v1, v42

    move-object/from16 v2, v41

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    if-eqz v39, :cond_39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/String;->isEmpty()Z

    move-result v40

    xor-int/lit8 v40, v40, 0x1

    if-eqz v40, :cond_39

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    const-string/jumbo v41, "value"

    const/16 v42, 0x0

    move-object/from16 v0, v40

    move-object/from16 v1, v42

    move-object/from16 v2, v41

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v40

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string/jumbo v41, "/"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_39

    :cond_cae
    const-string/jumbo v40, "property"

    move-object/from16 v0, v40

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_d0f

    if-eqz v26, :cond_39

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    const-string/jumbo v41, "name"

    const/16 v42, 0x0

    move-object/from16 v0, v40

    move-object/from16 v1, v42

    move-object/from16 v2, v41

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    const-string/jumbo v41, "value"

    const/16 v42, 0x0

    move-object/from16 v0, v40

    move-object/from16 v1, v42

    move-object/from16 v2, v41

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    if-eqz v30, :cond_39

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->isEmpty()Z

    move-result v40

    xor-int/lit8 v40, v40, 0x1

    if-eqz v40, :cond_39

    if-eqz v39, :cond_39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/String;->isEmpty()Z

    move-result v40

    xor-int/lit8 v40, v40, 0x1

    if-eqz v40, :cond_39

    new-instance v40, Landroid/util/Pair;

    move-object/from16 v0, v40

    move-object/from16 v1, v30

    move-object/from16 v2, v39

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, v26

    move-object/from16 v1, v40

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_39

    :cond_d0f
    const-string/jumbo v40, "protectedPkg"

    move-object/from16 v0, v40

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_d3e

    if-eqz v31, :cond_39

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    const-string/jumbo v41, "name"

    const/16 v42, 0x0

    move-object/from16 v0, v40

    move-object/from16 v1, v42

    move-object/from16 v2, v41

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    if-eqz v39, :cond_39

    move-object/from16 v0, v31

    move-object/from16 v1, v39

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_39

    :cond_d3e
    const-string/jumbo v40, "disablePkg"

    move-object/from16 v0, v40

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_dde

    if-eqz v14, :cond_39

    const/16 v19, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    const-string/jumbo v41, "value"

    const/16 v42, 0x0

    move-object/from16 v0, v40

    move-object/from16 v1, v42

    move-object/from16 v2, v41

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    if-eqz v39, :cond_d95

    const-string/jumbo v40, " "

    const-string/jumbo v41, ""

    invoke-virtual/range {v39 .. v41}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v40

    const-string/jumbo v41, ","

    invoke-virtual/range {v40 .. v41}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v36

    const/16 v40, 0x0

    move-object/from16 v0, v36

    array-length v0, v0

    move/from16 v41, v0

    :goto_d7e
    move/from16 v0, v40

    move/from16 v1, v41

    if-ge v0, v1, :cond_d95

    aget-object v23, v36, v40

    move-object/from16 v0, v29

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v42

    if-eqz v42, :cond_d92

    const/16 v19, 0x0

    :cond_d92
    add-int/lit8 v40, v40, 0x1

    goto :goto_d7e

    :cond_d95
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    const-string/jumbo v41, "name"

    const/16 v42, 0x0

    move-object/from16 v0, v40

    move-object/from16 v1, v42

    move-object/from16 v2, v41

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    if-eqz v39, :cond_39

    const-string/jumbo v40, "com.android.chrome"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_dd5

    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-wrap4()Z

    move-result v40

    if-eqz v40, :cond_dbd

    const/16 v19, 0x1

    :cond_dbd
    if-eqz v19, :cond_dd5

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->isBrowserInstalled()Z

    move-result v40

    xor-int/lit8 v40, v40, 0x1

    if-eqz v40, :cond_dd5

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->isLwcContainerType(Lcom/samsung/android/knox/container/KnoxConfigurationType;)Z

    move-result v40

    xor-int/lit8 v40, v40, 0x1

    if-eqz v40, :cond_dd5

    const/16 v19, 0x0

    :cond_dd5
    if-eqz v19, :cond_39

    move-object/from16 v0, v39

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_39

    :cond_dde
    const-string/jumbo v40, "fotadisablePkg"

    move-object/from16 v0, v40

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_e3e

    if-eqz v4, :cond_39

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    const-string/jumbo v41, "name"

    const/16 v42, 0x0

    move-object/from16 v0, v40

    move-object/from16 v1, v42

    move-object/from16 v2, v41

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    if-eqz v39, :cond_39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/String;->isEmpty()Z

    move-result v40

    xor-int/lit8 v40, v40, 0x1

    if-eqz v40, :cond_39

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    const-string/jumbo v41, "reenable"

    const/16 v42, 0x0

    move-object/from16 v0, v40

    move-object/from16 v1, v42

    move-object/from16 v2, v41

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    if-eqz v32, :cond_e37

    const-string/jumbo v40, "true"

    move-object/from16 v0, v32

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_e37

    move-object/from16 v0, v39

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_39

    :cond_e37
    move-object/from16 v0, v39

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_39

    :cond_e3e
    const-string/jumbo v40, "knoxCore"

    move-object/from16 v0, v40

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_39

    new-instance v28, Ljava/util/ArrayList;

    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    goto/16 :goto_39

    :pswitch_e52
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    invoke-interface/range {v40 .. v40}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v35

    const-string/jumbo v40, "row"

    move-object/from16 v0, v40

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_f27

    if-eqz v34, :cond_f27

    if-eqz v6, :cond_e8b

    const/4 v15, 0x0

    :goto_e6e
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v40

    move/from16 v0, v40

    if-ge v15, v0, :cond_e8b

    invoke-interface {v6, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Ljava/lang/String;

    const-string/jumbo v41, "group_"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_e88

    invoke-interface {v6, v15}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_e88
    add-int/lit8 v15, v15, 0x1

    goto :goto_e6e

    :cond_e8b
    if-eqz v27, :cond_e9c

    invoke-interface/range {v27 .. v27}, Ljava/util/List;->isEmpty()Z

    move-result v40

    xor-int/lit8 v40, v40, 0x1

    if-eqz v40, :cond_e9c

    move-object/from16 v0, v34

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setPersonaList(Ljava/util/List;)V

    :cond_e9c
    if-eqz v13, :cond_eab

    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v40

    xor-int/lit8 v40, v40, 0x1

    if-eqz v40, :cond_eab

    move-object/from16 v0, v34

    invoke-virtual {v0, v13}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setForbiddenStrings(Ljava/util/List;)V

    :cond_eab
    if-eqz v6, :cond_eba

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v40

    xor-int/lit8 v40, v40, 0x1

    if-eqz v40, :cond_eba

    move-object/from16 v0, v34

    invoke-virtual {v0, v6}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setAppInstallationList(Ljava/util/List;)V

    :cond_eba
    if-eqz v7, :cond_ec9

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v40

    xor-int/lit8 v40, v40, 0x1

    if-eqz v40, :cond_ec9

    move-object/from16 v0, v34

    invoke-virtual {v0, v7}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setAppRemoveList(Ljava/util/List;)V

    :cond_ec9
    if-eqz v31, :cond_eda

    invoke-interface/range {v31 .. v31}, Ljava/util/List;->isEmpty()Z

    move-result v40

    xor-int/lit8 v40, v40, 0x1

    if-eqz v40, :cond_eda

    move-object/from16 v0, v34

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setProtectedPackageList(Ljava/util/List;)V

    :cond_eda
    if-eqz v14, :cond_ee9

    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v40

    xor-int/lit8 v40, v40, 0x1

    if-eqz v40, :cond_ee9

    move-object/from16 v0, v34

    invoke-virtual {v0, v14}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setGoogleAppsList(Ljava/util/List;)V

    :cond_ee9
    if-eqz v4, :cond_ef8

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v40

    xor-int/lit8 v40, v40, 0x1

    if-eqz v40, :cond_ef8

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setFOTADisableList(Ljava/util/List;)V

    :cond_ef8
    if-eqz v5, :cond_f07

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v40

    xor-int/lit8 v40, v40, 0x1

    if-eqz v40, :cond_f07

    move-object/from16 v0, v34

    invoke-virtual {v0, v5}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setFOTAReenableList(Ljava/util/List;)V

    :cond_f07
    invoke-virtual/range {v34 .. v34}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->dumpState()V

    const/16 v27, 0x0

    const/4 v13, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v31, 0x0

    const/4 v14, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v21, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mTypeListLocal:Ljava/util/List;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_39

    :cond_f27
    const-string/jumbo v40, "provider"

    move-object/from16 v0, v40

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_f9b

    if-eqz v21, :cond_39

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->isEmpty()Z

    move-result v40

    xor-int/lit8 v40, v40, 0x1

    if-eqz v40, :cond_39

    if-eqz v26, :cond_39

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->isEmpty()Z

    move-result v40

    xor-int/lit8 v40, v40, 0x1

    if-eqz v40, :cond_39

    invoke-interface/range {v26 .. v26}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v25

    :goto_f4c
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v40

    if-eqz v40, :cond_f94

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/util/Pair;

    if-eqz v20, :cond_f76

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v40, v0

    check-cast v40, Ljava/lang/String;

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v41, v0

    check-cast v41, Ljava/lang/String;

    move-object/from16 v0, v34

    move-object/from16 v1, v21

    move-object/from16 v2, v40

    move-object/from16 v3, v41

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setDataSyncPolicy(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f4c

    :cond_f76
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v40, v0

    check-cast v40, Ljava/lang/String;

    invoke-static/range {v40 .. v40}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v40, v0

    check-cast v40, Ljava/lang/String;

    move-object/from16 v0, v34

    move-object/from16 v1, v21

    move-object/from16 v2, v40

    invoke-virtual {v0, v1, v2, v9}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setAllowChangeDataSyncPolicy(Ljava/util/List;Ljava/lang/String;Z)V

    goto :goto_f4c

    :cond_f94
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->clear()V

    const/16 v26, 0x0

    goto/16 :goto_39

    :cond_f9b
    const-string/jumbo v40, "package"

    move-object/from16 v0, v40

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_fef

    if-eqz v21, :cond_39

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->isEmpty()Z

    move-result v40

    xor-int/lit8 v40, v40, 0x1

    if-eqz v40, :cond_39

    if-eqz v26, :cond_39

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->isEmpty()Z

    move-result v40

    xor-int/lit8 v40, v40, 0x1

    if-eqz v40, :cond_39

    invoke-interface/range {v26 .. v26}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v25

    :goto_fc0
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v40

    if-eqz v40, :cond_fe8

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/util/Pair;

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v40, v0

    check-cast v40, Ljava/lang/String;

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v41, v0

    check-cast v41, Ljava/lang/String;

    move-object/from16 v0, v34

    move-object/from16 v1, v21

    move-object/from16 v2, v40

    move-object/from16 v3, v41

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setNotificationSyncPolicy(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_fc0

    :cond_fe8
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->clear()V

    const/16 v26, 0x0

    goto/16 :goto_39

    :cond_fef
    const-string/jumbo v40, "knoxCore"

    move-object/from16 v0, v40

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_1035

    if-eqz v28, :cond_1009

    invoke-interface/range {v28 .. v28}, Ljava/util/List;->isEmpty()Z

    move-result v40

    xor-int/lit8 v40, v40, 0x1

    if-eqz v40, :cond_1009

    invoke-static/range {v28 .. v28}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-set1(Ljava/util/List;)Ljava/util/List;

    :cond_1009
    const/16 v28, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mTypeListLocal:Ljava/util/List;

    move-object/from16 v40, v0

    invoke-interface/range {v40 .. v40}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v38

    :cond_1015
    :goto_1015
    invoke-interface/range {v38 .. v38}, Ljava/util/Iterator;->hasNext()Z

    move-result v40

    if-eqz v40, :cond_39

    invoke-interface/range {v38 .. v38}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Lcom/samsung/android/knox/container/KnoxConfigurationType;

    move-object/from16 v0, v37

    instance-of v0, v0, Lcom/samsung/android/knox/container/BBCConfigurationType;

    move/from16 v40, v0

    if-nez v40, :cond_1015

    invoke-virtual/range {v37 .. v37}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getAppInstallationList()Ljava/util/List;

    move-result-object v40

    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-get7()Ljava/util/List;

    move-result-object v41

    invoke-interface/range {v40 .. v41}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1015

    :cond_1035
    const-string/jumbo v40, "BadgePolicy"

    move-object/from16 v0, v40

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_39

    invoke-static {v8}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-set5(Ljava/util/List;)Ljava/util/List;
    :try_end_1045
    .catch Ljava/lang/Exception; {:try_start_13f .. :try_end_1045} :catch_11f

    const/4 v8, 0x0

    goto/16 :goto_39

    :pswitch_data_1048
    .packed-switch 0x2
        :pswitch_44
        :pswitch_e52
    .end packed-switch
.end method

.method public setTypeList(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/knox/container/KnoxConfigurationType;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mTypeListLocal:Ljava/util/List;

    return-void
.end method

.method public writeToXml()V
    .registers 49

    new-instance v15, Ljava/io/File;

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-get1()Ljava/lang/String;

    move-result-object v46

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string/jumbo v46, "enterprisedata.xml"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    move-object/from16 v0, v45

    invoke-direct {v15, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v38, 0x0

    :try_start_21
    new-instance v39, Ljava/io/FileOutputStream;

    const/16 v45, 0x0

    move-object/from16 v0, v39

    move/from16 v1, v45

    invoke-direct {v0, v15, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_2c} :catch_171c

    :try_start_2c
    new-instance v23, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct/range {v23 .. v23}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    const/16 v17, 0x0

    const/16 v37, 0x0

    const/16 v45, 0x0

    invoke-static/range {v45 .. v45}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    const-string/jumbo v45, "utf-8"

    move-object/from16 v0, v23

    move-object/from16 v1, v39

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    const/16 v45, 0x1

    invoke-static/range {v45 .. v45}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v45

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v45, "table"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "name"

    const-string/jumbo v46, "MUMContainerType"

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mTypeListLocal:Ljava/util/List;

    move-object/from16 v45, v0

    invoke-interface/range {v45 .. v45}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v44

    :goto_83
    invoke-interface/range {v44 .. v44}, Ljava/util/Iterator;->hasNext()Z

    move-result v45

    if-eqz v45, :cond_15ec

    invoke-interface/range {v44 .. v44}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Lcom/samsung/android/knox/container/KnoxConfigurationType;

    const-string/jumbo v45, "row"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-object/from16 v0, v43

    instance-of v0, v0, Lcom/samsung/android/knox/container/LightweightConfigurationType;

    move/from16 v45, v0

    if-eqz v45, :cond_1ce

    const-string/jumbo v45, "type"

    sget-object v46, Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;->LIGHTWEIGHT:Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;

    invoke-virtual/range {v46 .. v46}, Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;->toString()Ljava/lang/String;

    move-result-object v46

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :goto_bb
    invoke-virtual/range {v43 .. v43}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getAdminUid()I

    move-result v17

    if-ltz v17, :cond_104

    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "name"

    const-string/jumbo v46, "UID"

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "value"

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v46

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_104
    invoke-virtual/range {v43 .. v43}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getUserId()I

    move-result v17

    const/16 v45, -0x1

    move/from16 v0, v17

    move/from16 v1, v45

    if-lt v0, v1, :cond_153

    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "name"

    const-string/jumbo v46, "UserID"

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "value"

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v46

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_153
    invoke-virtual/range {v43 .. v43}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getPersonaList()Ljava/util/List;

    move-result-object v29

    if-eqz v29, :cond_254

    invoke-interface/range {v29 .. v29}, Ljava/util/List;->size()I

    move-result v45

    if-lez v45, :cond_254

    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "name"

    const-string/jumbo v46, "PersonaIDs"

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface/range {v29 .. v29}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v28

    :goto_184
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v45

    if-eqz v45, :cond_246

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/Integer;

    const-string/jumbo v45, "persona"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "id"

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Integer;->intValue()I

    move-result v46

    invoke-static/range {v46 .. v46}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v46

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "persona"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_1c4
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_1c4} :catch_1c5

    goto :goto_184

    :catch_1c5
    move-exception v13

    move-object/from16 v38, v39

    :goto_1c8
    if-eqz v38, :cond_1cd

    :try_start_1ca
    invoke-virtual/range {v38 .. v38}, Ljava/io/FileOutputStream;->close()V
    :try_end_1cd
    .catch Ljava/io/IOException; {:try_start_1ca .. :try_end_1cd} :catch_1719

    :cond_1cd
    :goto_1cd
    return-void

    :cond_1ce
    :try_start_1ce
    move-object/from16 v0, v43

    instance-of v0, v0, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;

    move/from16 v45, v0

    if-eqz v45, :cond_1ee

    const-string/jumbo v45, "type"

    sget-object v46, Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;->KIOSK:Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;

    invoke-virtual/range {v46 .. v46}, Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;->toString()Ljava/lang/String;

    move-result-object v46

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_bb

    :cond_1ee
    move-object/from16 v0, v43

    instance-of v0, v0, Lcom/samsung/android/knox/container/BBCConfigurationType;

    move/from16 v45, v0

    if-eqz v45, :cond_20e

    const-string/jumbo v45, "type"

    sget-object v46, Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;->BBC:Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;

    invoke-virtual/range {v46 .. v46}, Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;->toString()Ljava/lang/String;

    move-result-object v46

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_bb

    :cond_20e
    move-object/from16 v0, v43

    instance-of v0, v0, Lcom/samsung/android/knox/container/SecureFolderConfigurationType;

    move/from16 v45, v0

    if-eqz v45, :cond_22e

    const-string/jumbo v45, "type"

    sget-object v46, Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;->SECUREFOLDER:Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;

    invoke-virtual/range {v46 .. v46}, Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;->toString()Ljava/lang/String;

    move-result-object v46

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_bb

    :cond_22e
    const-string/jumbo v45, "type"

    sget-object v46, Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;->LAUNCHER:Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;

    invoke-virtual/range {v46 .. v46}, Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;->toString()Ljava/lang/String;

    move-result-object v46

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_bb

    :cond_246
    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_254
    invoke-virtual/range {v43 .. v43}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getName()Ljava/lang/String;

    move-result-object v37

    if-eqz v37, :cond_299

    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "name"

    const-string/jumbo v46, "Name"

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "value"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    move-object/from16 v3, v37

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_299
    invoke-virtual/range {v43 .. v43}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->isDefaultConfigType()Z

    move-result v45

    invoke-static/range {v45 .. v45}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "name"

    const-string/jumbo v46, "DefaultConfigType"

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "value"

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v46

    invoke-static/range {v46 .. v46}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v46

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual/range {v43 .. v43}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getContainerLayout()I

    move-result v17

    if-ltz v17, :cond_331

    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "name"

    const-string/jumbo v46, "DefaultContainerLayout"

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "value"

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v46

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_331
    invoke-virtual/range {v43 .. v43}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->isLayoutSwitchingAllowed()Z

    move-result v45

    invoke-static/range {v45 .. v45}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "name"

    const-string/jumbo v46, "LayoutSwitchingAllowed"

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "value"

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v46

    invoke-static/range {v46 .. v46}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v46

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual/range {v43 .. v43}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getVersion()Ljava/lang/String;

    move-result-object v37

    if-eqz v37, :cond_3c5

    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "name"

    const-string/jumbo v46, "Version"

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "value"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    move-object/from16 v3, v37

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_3c5
    invoke-virtual/range {v43 .. v43}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getMaximumTimeToLock()I

    move-result v17

    if-eqz v17, :cond_40e

    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "name"

    const-string/jumbo v46, "MaximumTimeToLock"

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "value"

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v46

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_40e
    invoke-virtual/range {v43 .. v43}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getPasswordMinimumLength()I

    move-result v17

    if-eqz v17, :cond_457

    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "name"

    const-string/jumbo v46, "PasswordMinimumLength"

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "value"

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v46

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_457
    invoke-virtual/range {v43 .. v43}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getPasswordMinimumNonLetters()I

    move-result v17

    if-eqz v17, :cond_4a0

    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "name"

    const-string/jumbo v46, "PasswordMinimumNonLetters"

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "value"

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v46

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_4a0
    invoke-virtual/range {v43 .. v43}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getPasswordMinimumLetters()I

    move-result v17

    if-eqz v17, :cond_4e9

    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "name"

    const-string/jumbo v46, "PasswordMinimumLetters"

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "value"

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v46

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_4e9
    invoke-virtual/range {v43 .. v43}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getPasswordMinimumNumeric()I

    move-result v17

    if-eqz v17, :cond_532

    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "name"

    const-string/jumbo v46, "PasswordMinimumNumeric"

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "value"

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v46

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_532
    invoke-virtual/range {v43 .. v43}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getPasswordMinimumUpperCase()I

    move-result v17

    if-eqz v17, :cond_57b

    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "name"

    const-string/jumbo v46, "PasswordMinimumUpperCase"

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "value"

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v46

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_57b
    invoke-virtual/range {v43 .. v43}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getPasswordMinimumLowerCase()I

    move-result v17

    if-eqz v17, :cond_5c4

    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "name"

    const-string/jumbo v46, "PasswordMinimumLowerCase"

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "value"

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v46

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_5c4
    invoke-virtual/range {v43 .. v43}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getPasswordMinimumSymbols()I

    move-result v17

    if-eqz v17, :cond_60d

    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "name"

    const-string/jumbo v46, "PasswordMinimumSymbols"

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "value"

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v46

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_60d
    invoke-virtual/range {v43 .. v43}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getPasswordQuality()I

    move-result v17

    if-eqz v17, :cond_656

    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "name"

    const-string/jumbo v46, "PasswordQuality"

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "value"

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v46

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_656
    invoke-virtual/range {v43 .. v43}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getMaximumFailedPasswordsForWipe()I

    move-result v17

    if-eqz v17, :cond_69f

    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "name"

    const-string/jumbo v46, "MaximumFailedPasswordsForWipe"

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "value"

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v46

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_69f
    invoke-virtual/range {v43 .. v43}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getMaximumCharacterOccurences()I

    move-result v17

    if-eqz v17, :cond_6e8

    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "name"

    const-string/jumbo v46, "MaximumCharacterOccurences"

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "value"

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v46

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_6e8
    invoke-virtual/range {v43 .. v43}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getMaximumCharacterSequenceLength()I

    move-result v17

    if-eqz v17, :cond_731

    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "name"

    const-string/jumbo v46, "MaximumCharacterSequenceLength"

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "value"

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v46

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_731
    invoke-virtual/range {v43 .. v43}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getMaximumNumericSequenceLength()I

    move-result v17

    if-eqz v17, :cond_77a

    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "name"

    const-string/jumbo v46, "MaximumNumericSequenceLength"

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "value"

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v46

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_77a
    invoke-virtual/range {v43 .. v43}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getKeyguardDisabledFeatures()I

    move-result v17

    if-ltz v17, :cond_7c3

    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "name"

    const-string/jumbo v46, "KeyguardDisabledFeatures"

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "value"

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v46

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_7c3
    invoke-virtual/range {v43 .. v43}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getSimplePasswordEnabled()Z

    move-result v45

    invoke-static/range {v45 .. v45}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v45

    if-nez v45, :cond_818

    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "name"

    const-string/jumbo v46, "SimplePasswordEnabled"

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "value"

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v46

    invoke-static/range {v46 .. v46}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v46

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_818
    invoke-virtual/range {v43 .. v43}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->isMultifactorAuthenticationEnforced()Z

    move-result v45

    invoke-static/range {v45 .. v45}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v45

    if-eqz v45, :cond_86d

    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "name"

    const-string/jumbo v46, "MultifactorAuthEnabled"

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "value"

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v46

    invoke-static/range {v46 .. v46}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v46

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_86d
    invoke-virtual/range {v43 .. v43}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getManagedType()Z

    move-result v45

    invoke-static/range {v45 .. v45}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v45

    if-eqz v45, :cond_8c2

    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "name"

    const-string/jumbo v46, "UserManaged"

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "value"

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v46

    invoke-static/range {v46 .. v46}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v46

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_8c2
    invoke-virtual/range {v43 .. v43}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getBiometricAuthenticationEnabledValue()Z

    move-result v45

    invoke-static/range {v45 .. v45}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual/range {v43 .. v43}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getBiometricAuthenticationEnabledType()I

    move-result v17

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v45

    if-eqz v45, :cond_931

    if-lez v17, :cond_931

    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "name"

    const-string/jumbo v46, "BiometricAuthEnabled"

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "type"

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v46

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "value"

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v46

    invoke-static/range {v46 .. v46}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v46

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_931
    invoke-virtual/range {v43 .. v43}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getForbiddenStrings()Ljava/util/List;

    move-result-object v16

    if-eqz v16, :cond_9a9

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v45

    if-lez v45, :cond_9a9

    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "name"

    const-string/jumbo v46, "ForbiddenStrings"

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface/range {v16 .. v16}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v41

    :goto_962
    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->hasNext()Z

    move-result v45

    if-eqz v45, :cond_99b

    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Ljava/lang/String;

    const-string/jumbo v45, "forbiddenString"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "value"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    move-object/from16 v3, v40

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "forbiddenString"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_962

    :cond_99b
    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_9a9
    invoke-virtual/range {v43 .. v43}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getRequiredPwdPatternRestrictions()Ljava/lang/String;

    move-result-object v37

    if-eqz v37, :cond_9ee

    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "name"

    const-string/jumbo v46, "PatternRestriction"

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "value"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    move-object/from16 v3, v37

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_9ee
    invoke-virtual/range {v43 .. v43}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomBadgeIcon()Ljava/lang/String;

    move-result-object v37

    if-eqz v37, :cond_a33

    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "name"

    const-string/jumbo v46, "CustomBadgeIcon"

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "value"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    move-object/from16 v3, v37

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_a33
    invoke-virtual/range {v43 .. v43}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomHomeScreenWallpaper()Ljava/lang/String;

    move-result-object v37

    if-eqz v37, :cond_a78

    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "name"

    const-string/jumbo v46, "CustomHomeScreenWallpaper"

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "value"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    move-object/from16 v3, v37

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_a78
    invoke-virtual/range {v43 .. v43}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->isCustomizedContainerEnabled()Z

    move-result v45

    invoke-static/range {v45 .. v45}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "name"

    const-string/jumbo v46, "EC"

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "value"

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v46

    invoke-static/range {v46 .. v46}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v46

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual/range {v43 .. v43}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomizedContainerNameIcon()Ljava/lang/String;

    move-result-object v37

    if-eqz v37, :cond_b0c

    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "name"

    const-string/jumbo v46, "NameIcon"

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "value"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    move-object/from16 v3, v37

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_b0c
    invoke-virtual/range {v43 .. v43}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomizedContainerName()Ljava/lang/String;

    move-result-object v37

    if-eqz v37, :cond_b51

    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "name"

    const-string/jumbo v46, "ECName"

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "value"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    move-object/from16 v3, v37

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_b51
    invoke-virtual/range {v43 .. v43}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomizedContainerIcon()Ljava/lang/String;

    move-result-object v37

    if-eqz v37, :cond_b96

    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "name"

    const-string/jumbo v46, "ECIcon"

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "value"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    move-object/from16 v3, v37

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_b96
    invoke-virtual/range {v43 .. v43}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomizedContainerBadge()Ljava/lang/String;

    move-result-object v37

    if-eqz v37, :cond_bdb

    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "name"

    const-string/jumbo v46, "ECBadge"

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "value"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    move-object/from16 v3, v37

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_bdb
    invoke-virtual/range {v43 .. v43}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomLockScreenWallpaper()Ljava/lang/String;

    move-result-object v37

    if-eqz v37, :cond_c20

    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "name"

    const-string/jumbo v46, "CustomLockScreenWallpaper"

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "value"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    move-object/from16 v3, v37

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_c20
    invoke-virtual/range {v43 .. v43}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomStatusLabel()Ljava/lang/String;

    move-result-object v37

    if-eqz v37, :cond_c65

    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "name"

    const-string/jumbo v46, "CustomStatusLabel"

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "value"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    move-object/from16 v3, v37

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_c65
    invoke-virtual/range {v43 .. v43}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomStatusIcon()Ljava/lang/String;

    move-result-object v37

    if-eqz v37, :cond_caa

    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "name"

    const-string/jumbo v46, "CustomStatusIcon"

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "value"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    move-object/from16 v3, v37

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_caa
    invoke-virtual/range {v43 .. v43}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->isMultiwindowModeAllowed()Z

    move-result v45

    invoke-static/range {v45 .. v45}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v45

    if-nez v45, :cond_cff

    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "name"

    const-string/jumbo v46, "AllowMultiwindowMode"

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "value"

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v46

    invoke-static/range {v46 .. v46}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v46

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_cff
    invoke-virtual/range {v43 .. v43}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->isTaskManagerAllowed()Z

    move-result v45

    invoke-static/range {v45 .. v45}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v45

    if-nez v45, :cond_d54

    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "name"

    const-string/jumbo v46, "AllowTaskManager"

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "value"

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v46

    invoke-static/range {v46 .. v46}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v46

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_d54
    invoke-virtual/range {v43 .. v43}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->isUSBDebuggingAllowed()Z

    move-result v45

    invoke-static/range {v45 .. v45}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v45

    if-eqz v45, :cond_da9

    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "name"

    const-string/jumbo v46, "USBDebuggingAllowed"

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "value"

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v46

    invoke-static/range {v46 .. v46}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v46

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_da9
    move-object/from16 v0, v43

    instance-of v0, v0, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;

    move/from16 v45, v0

    if-eqz v45, :cond_fb5

    move-object/from16 v0, v43

    check-cast v0, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;->isSettingChangesAllowed()Z

    move-result v45

    invoke-static/range {v45 .. v45}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v45

    if-eqz v45, :cond_e0c

    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "name"

    const-string/jumbo v46, "AllowSettingsChanges"

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "value"

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v46

    invoke-static/range {v46 .. v46}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v46

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_e0c
    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;->isStatusBarExpansionAllowed()Z

    move-result v45

    invoke-static/range {v45 .. v45}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v45

    if-nez v45, :cond_e61

    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "name"

    const-string/jumbo v46, "AllowStatusBarExpansion"

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "value"

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v46

    invoke-static/range {v46 .. v46}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v46

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_e61
    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;->isHomeKeyAllowed()Z

    move-result v45

    invoke-static/range {v45 .. v45}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v45

    if-eqz v45, :cond_eb6

    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "name"

    const-string/jumbo v46, "AllowHomeKey"

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "value"

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v46

    invoke-static/range {v46 .. v46}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v46

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_eb6
    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;->isClearAllNotificationAllowed()Z

    move-result v45

    invoke-static/range {v45 .. v45}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v45

    if-eqz v45, :cond_f0b

    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "name"

    const-string/jumbo v46, "AllowClearAllNotification"

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "value"

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v46

    invoke-static/range {v46 .. v46}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v46

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_f0b
    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;->isHideSystemBarEnabled()Z

    move-result v45

    invoke-static/range {v45 .. v45}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v45

    if-eqz v45, :cond_f60

    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "name"

    const-string/jumbo v46, "HideSystemBar"

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "value"

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v46

    invoke-static/range {v46 .. v46}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v46

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_f60
    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;->isWipeRecentTasksEnabled()Z

    move-result v45

    invoke-static/range {v45 .. v45}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v45

    if-eqz v45, :cond_fb5

    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "name"

    const-string/jumbo v46, "WipeRecentTasks"

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "value"

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v46

    invoke-static/range {v46 .. v46}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v46

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_fb5
    move-object/from16 v0, v43

    instance-of v0, v0, Lcom/samsung/android/knox/container/LightweightConfigurationType;

    move/from16 v45, v0

    if-eqz v45, :cond_1092

    move-object/from16 v0, v43

    check-cast v0, Lcom/samsung/android/knox/container/LightweightConfigurationType;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/knox/container/LightweightConfigurationType;->getFolderHeaderTitle()Ljava/lang/String;

    move-result-object v37

    if-eqz v37, :cond_1008

    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "name"

    const-string/jumbo v46, "FolderHeaderTitle"

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "value"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    move-object/from16 v3, v37

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_1008
    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/knox/container/LightweightConfigurationType;->getFolderHeaderIcon()Ljava/lang/String;

    move-result-object v37

    if-eqz v37, :cond_104d

    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "name"

    const-string/jumbo v46, "FolderHeaderIcon"

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "value"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    move-object/from16 v3, v37

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_104d
    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/knox/container/LightweightConfigurationType;->getFolderDisabledChangeLayout()Ljava/lang/String;

    move-result-object v37

    if-eqz v37, :cond_1092

    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "name"

    const-string/jumbo v46, "FolderDisabledChangeLayout"

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "value"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    move-object/from16 v3, v37

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_1092
    invoke-virtual/range {v43 .. v43}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getAppInstallationList()Ljava/util/List;

    move-result-object v21

    if-eqz v21, :cond_1162

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v45

    if-lez v45, :cond_1162

    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "name"

    const-string/jumbo v46, "AppInstallList"

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface/range {v21 .. v21}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_10c3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v45

    if-eqz v45, :cond_10fa

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string/jumbo v45, "application"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "name"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "application"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_10c3

    :cond_10fa
    invoke-virtual/range {v43 .. v43}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getAppRemoveList()Ljava/util/List;

    move-result-object v35

    if-eqz v35, :cond_1154

    invoke-interface/range {v35 .. v35}, Ljava/util/List;->size()I

    move-result v45

    if-lez v45, :cond_1154

    invoke-interface/range {v35 .. v35}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_110a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v45

    if-eqz v45, :cond_1154

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string/jumbo v45, "application"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "name"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "remove"

    const-string/jumbo v46, "true"

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "application"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_110a

    :cond_1154
    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_1162
    invoke-virtual/range {v43 .. v43}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getProtectedPackageList()Ljava/util/List;

    move-result-object v21

    if-eqz v21, :cond_11da

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v45

    if-lez v45, :cond_11da

    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "name"

    const-string/jumbo v46, "ProtectedPkgList"

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface/range {v21 .. v21}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v31

    :goto_1193
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    move-result v45

    if-eqz v45, :cond_11cc

    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/String;

    const-string/jumbo v45, "protectedPkg"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "name"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    move-object/from16 v3, v30

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "protectedPkg"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_1193

    :cond_11cc
    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_11da
    invoke-virtual/range {v43 .. v43}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getGoogleAppsList()Ljava/util/List;

    move-result-object v21

    if-eqz v21, :cond_1250

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v45

    if-lez v45, :cond_1250

    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "name"

    const-string/jumbo v46, "GoogleAppsPkgList"

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface/range {v21 .. v21}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_120b
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v45

    if-eqz v45, :cond_1242

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    const-string/jumbo v45, "disablePkg"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "name"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "disablePkg"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_120b

    :cond_1242
    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_1250
    invoke-virtual/range {v43 .. v43}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getFOTADisableList()Ljava/util/List;

    move-result-object v21

    if-eqz v21, :cond_1324

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v45

    if-lez v45, :cond_1324

    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "name"

    const-string/jumbo v46, "FOTADisableAppsPkgList"

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface/range {v21 .. v21}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1281
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v45

    if-eqz v45, :cond_12b8

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    const-string/jumbo v45, "fotadisablePkg"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "name"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "fotadisablePkg"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_1281

    :cond_12b8
    invoke-virtual/range {v43 .. v43}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getFOTAReenableList()Ljava/util/List;

    move-result-object v32

    if-eqz v32, :cond_1316

    invoke-interface/range {v32 .. v32}, Ljava/util/List;->isEmpty()Z

    move-result v45

    xor-int/lit8 v45, v45, 0x1

    if-eqz v45, :cond_1316

    invoke-interface/range {v32 .. v32}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v34

    :goto_12ca
    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->hasNext()Z

    move-result v45

    if-eqz v45, :cond_1316

    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/String;

    const-string/jumbo v45, "fotadisablePkg"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "name"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    move-object/from16 v3, v33

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "reenable"

    const-string/jumbo v46, "true"

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "fotadisablePkg"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_12ca

    :cond_1316
    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_1324
    invoke-virtual/range {v43 .. v43}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getDataSyncPolicy()Ljava/util/HashMap;

    move-result-object v36

    if-eqz v36, :cond_140c

    invoke-virtual/range {v36 .. v36}, Ljava/util/HashMap;->isEmpty()Z

    move-result v45

    xor-int/lit8 v45, v45, 0x1

    if-eqz v45, :cond_140c

    const/16 v26, 0x0

    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "name"

    const-string/jumbo v46, "RCPDataSettings"

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual/range {v36 .. v36}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v45

    invoke-interface/range {v45 .. v45}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_135d
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v45

    if-eqz v45, :cond_13fe

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, v36

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/util/List;

    const-string/jumbo v45, "provider"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "name"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    move-object/from16 v3, v18

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface/range {v26 .. v26}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v25

    :goto_1395
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v45

    if-eqz v45, :cond_13ee

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/util/Pair;

    const-string/jumbo v45, "property"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v46, "name"

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v45, v0

    check-cast v45, Ljava/lang/String;

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v46

    move-object/from16 v3, v45

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v46, "value"

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v45, v0

    check-cast v45, Ljava/lang/String;

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v46

    move-object/from16 v3, v45

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "property"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_1395

    :cond_13ee
    const-string/jumbo v45, "provider"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_135d

    :cond_13fe
    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_140c
    invoke-virtual/range {v43 .. v43}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getAllowChangeDataSyncPolicy()Ljava/util/HashMap;

    move-result-object v36

    if-eqz v36, :cond_14f4

    invoke-virtual/range {v36 .. v36}, Ljava/util/HashMap;->isEmpty()Z

    move-result v45

    xor-int/lit8 v45, v45, 0x1

    if-eqz v45, :cond_14f4

    const/16 v26, 0x0

    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "name"

    const-string/jumbo v46, "RCPAllowChangeDataSettings"

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual/range {v36 .. v36}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v45

    invoke-interface/range {v45 .. v45}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_1445
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v45

    if-eqz v45, :cond_14e6

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, v36

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/util/List;

    const-string/jumbo v45, "provider"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "name"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    move-object/from16 v3, v18

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface/range {v26 .. v26}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v25

    :goto_147d
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v45

    if-eqz v45, :cond_14d6

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/util/Pair;

    const-string/jumbo v45, "property"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v46, "name"

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v45, v0

    check-cast v45, Ljava/lang/String;

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v46

    move-object/from16 v3, v45

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v46, "value"

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v45, v0

    check-cast v45, Ljava/lang/String;

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v46

    move-object/from16 v3, v45

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "property"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_147d

    :cond_14d6
    const-string/jumbo v45, "provider"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_1445

    :cond_14e6
    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_14f4
    invoke-virtual/range {v43 .. v43}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getNotificationSyncPolicy()Ljava/util/HashMap;

    move-result-object v36

    if-eqz v36, :cond_15dc

    invoke-virtual/range {v36 .. v36}, Ljava/util/HashMap;->isEmpty()Z

    move-result v45

    xor-int/lit8 v45, v45, 0x1

    if-eqz v45, :cond_15dc

    const/16 v26, 0x0

    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "name"

    const-string/jumbo v46, "RCPNotifSettings"

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual/range {v36 .. v36}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v45

    invoke-interface/range {v45 .. v45}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_152d
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v45

    if-eqz v45, :cond_15ce

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, v36

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/util/List;

    const-string/jumbo v45, "package"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "name"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    move-object/from16 v3, v18

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface/range {v26 .. v26}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v25

    :goto_1565
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v45

    if-eqz v45, :cond_15be

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/util/Pair;

    const-string/jumbo v45, "property"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v46, "name"

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v45, v0

    check-cast v45, Ljava/lang/String;

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v46

    move-object/from16 v3, v45

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v46, "value"

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v45, v0

    check-cast v45, Ljava/lang/String;

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v46

    move-object/from16 v3, v45

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "property"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_1565

    :cond_15be
    const-string/jumbo v45, "package"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_152d

    :cond_15ce
    const-string/jumbo v45, "column"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_15dc
    const-string/jumbo v45, "row"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_83

    :cond_15ec
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-get7()Ljava/util/List;

    move-result-object v45

    invoke-interface/range {v45 .. v45}, Ljava/util/List;->isEmpty()Z

    move-result v45

    if-nez v45, :cond_1651

    const-string/jumbo v45, "knoxCore"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-get7()Ljava/util/List;

    move-result-object v45

    invoke-interface/range {v45 .. v45}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_160c
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v45

    if-eqz v45, :cond_1643

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const-string/jumbo v45, "package"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "name"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "package"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_160c

    :cond_1643
    const-string/jumbo v45, "knoxCore"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_1651
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-get15()Ljava/util/List;

    move-result-object v45

    invoke-interface/range {v45 .. v45}, Ljava/util/List;->isEmpty()Z

    move-result v45

    if-nez v45, :cond_16d9

    const-string/jumbo v45, "BadgePolicy"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-get15()Ljava/util/List;

    move-result-object v45

    invoke-interface/range {v45 .. v45}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1671
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v45

    if-eqz v45, :cond_16cb

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string/jumbo v45, "/"

    move-object/from16 v0, v45

    invoke-virtual {v6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v42

    const-string/jumbo v45, "policy"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "name"

    const/16 v46, 0x0

    aget-object v46, v42, v46

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "value"

    const/16 v46, 0x1

    aget-object v46, v42, v46

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v45, "policy"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_1671

    :cond_16cb
    const-string/jumbo v45, "BadgePolicy"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_16d9
    const-string/jumbo v45, "table"

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface/range {v23 .. v23}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    invoke-virtual/range {v39 .. v39}, Ljava/io/FileOutputStream;->flush()V
    :try_end_16ed
    .catch Ljava/io/IOException; {:try_start_1ce .. :try_end_16ed} :catch_1c5

    :try_start_16ed
    invoke-virtual/range {v39 .. v39}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/io/FileDescriptor;->sync()V
    :try_end_16f4
    .catch Ljava/io/IOException; {:try_start_16ed .. :try_end_16f4} :catch_16fb

    :goto_16f4
    :try_start_16f4
    invoke-virtual/range {v39 .. v39}, Ljava/io/FileOutputStream;->close()V

    move-object/from16 v38, v39

    goto/16 :goto_1cd

    :catch_16fb
    move-exception v13

    const-string/jumbo v45, "MumXmlDataParser"

    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v47, "Error in Write to XML sync FD "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1718
    .catch Ljava/io/IOException; {:try_start_16f4 .. :try_end_1718} :catch_1c5

    goto :goto_16f4

    :catch_1719
    move-exception v14

    goto/16 :goto_1cd

    :catch_171c
    move-exception v13

    goto/16 :goto_1c8
.end method
