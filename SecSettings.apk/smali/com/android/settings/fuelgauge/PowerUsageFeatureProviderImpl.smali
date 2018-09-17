.class public Lcom/android/settings/fuelgauge/PowerUsageFeatureProviderImpl;
.super Ljava/lang/Object;
.source "PowerUsageFeatureProviderImpl.java"

# interfaces
.implements Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;


# static fields
.field private static final PACKAGES_SYSTEM:[Ljava/lang/String;


# instance fields
.field protected mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "com.android.providers.media"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.android.providers.calendar"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.android.systemui"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/settings/fuelgauge/PowerUsageFeatureProviderImpl;->PACKAGES_SYSTEM:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageFeatureProviderImpl;->mPackageManager:Landroid/content/pm/PackageManager;

    return-void
.end method


# virtual methods
.method public getAdditionalBatteryInfoIntent()Landroid/content/Intent;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public isAdditionalBatteryInfoEnabled()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isAdvancedUiEnabled()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isPowerAccountingToggleEnabled()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isTypeService(Lcom/android/internal/os/BatterySipper;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public isTypeSystem(Lcom/android/internal/os/BatterySipper;)Z
    .registers 10

    const/4 v7, 0x1

    const/4 v3, 0x0

    iget-object v2, p1, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    if-nez v2, :cond_16

    const/4 v1, -0x1

    :goto_7
    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageFeatureProviderImpl;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    if-ltz v1, :cond_1b

    const/16 v2, 0x2710

    if-ge v1, v2, :cond_1b

    return v7

    :cond_16
    invoke-virtual {p1}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v1

    goto :goto_7

    :cond_1b
    iget-object v2, p1, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    if-eqz v2, :cond_33

    iget-object v4, p1, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    array-length v5, v4

    move v2, v3

    :goto_23
    if-ge v2, v5, :cond_33

    aget-object v0, v4, v2

    sget-object v6, Lcom/android/settings/fuelgauge/PowerUsageFeatureProviderImpl;->PACKAGES_SYSTEM:[Ljava/lang/String;

    invoke-static {v6, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_30

    return v7

    :cond_30
    add-int/lit8 v2, v2, 0x1

    goto :goto_23

    :cond_33
    return v3
.end method
