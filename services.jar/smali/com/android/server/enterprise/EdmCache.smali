.class public abstract Lcom/android/server/enterprise/EdmCache;
.super Ljava/lang/Object;
.source "EdmCache.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdminRemoved()Z
    .registers 2

    invoke-virtual {p0}, Lcom/android/server/enterprise/EdmCache;->updateCache()Z

    move-result v0

    return v0
.end method

.method public systemReady()Z
    .registers 2

    invoke-virtual {p0}, Lcom/android/server/enterprise/EdmCache;->updateCache()Z

    move-result v0

    return v0
.end method

.method public abstract updateCache()Z
.end method
