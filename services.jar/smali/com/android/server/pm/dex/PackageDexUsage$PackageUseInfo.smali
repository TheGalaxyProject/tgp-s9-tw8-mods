.class public Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;
.super Ljava/lang/Object;
.source "PackageDexUsage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/dex/PackageDexUsage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PackageUseInfo"
.end annotation


# instance fields
.field private final mDexUseInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mIsUsedByOtherApps:Z


# direct methods
.method static synthetic -get0(Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;)Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->mDexUseInfoMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->mIsUsedByOtherApps:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->mIsUsedByOtherApps:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;Z)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->merge(Z)Z

    move-result v0

    return v0
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->mIsUsedByOtherApps:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->mDexUseInfoMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-boolean v2, p1, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->mIsUsedByOtherApps:Z

    iput-boolean v2, p0, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->mIsUsedByOtherApps:Z

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->mDexUseInfoMap:Ljava/util/Map;

    iget-object v2, p1, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->mDexUseInfoMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v4, p0, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->mDexUseInfoMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v5, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;

    invoke-direct {v5, v3}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;-><init>(Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;)V

    invoke-interface {v4, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_18

    :cond_3b
    return-void
.end method

.method private merge(Z)Z
    .registers 5

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->mIsUsedByOtherApps:Z

    iget-boolean v2, p0, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->mIsUsedByOtherApps:Z

    if-nez v2, :cond_e

    :goto_7
    iput-boolean p1, p0, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->mIsUsedByOtherApps:Z

    iget-boolean v2, p0, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->mIsUsedByOtherApps:Z

    if-eq v0, v2, :cond_10

    :goto_d
    return v1

    :cond_e
    move p1, v1

    goto :goto_7

    :cond_10
    const/4 v1, 0x0

    goto :goto_d
.end method


# virtual methods
.method public getDexUseInfoMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->mDexUseInfoMap:Ljava/util/Map;

    return-object v0
.end method

.method public isUsedByOtherApps()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->mIsUsedByOtherApps:Z

    return v0
.end method
