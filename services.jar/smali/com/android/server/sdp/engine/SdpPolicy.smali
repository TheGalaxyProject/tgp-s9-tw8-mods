.class public Lcom/android/server/sdp/engine/SdpPolicy;
.super Ljava/lang/Object;
.source "SdpPolicy.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private mAlias:Ljava/lang/String;

.field private mOwner:Lcom/samsung/android/knox/sdp/core/SdpDomain;

.field private mPrivilegedApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/knox/sdp/core/SdpDomain;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;Lcom/samsung/android/knox/sdp/core/SdpDomain;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;",
            "Lcom/samsung/android/knox/sdp/core/SdpDomain;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/knox/sdp/core/SdpDomain;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sdp/engine/SdpPolicy;->mAlias:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/sdp/engine/SdpPolicy;->mOwner:Lcom/samsung/android/knox/sdp/core/SdpDomain;

    iput-object p3, p0, Lcom/android/server/sdp/engine/SdpPolicy;->mPrivilegedApps:Ljava/util/List;

    return-void
.end method

.method private matches(Lcom/samsung/android/knox/sdp/core/SdpDomain;Lcom/samsung/android/knox/sdp/core/SdpDomain;)Z
    .registers 5

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpDomain;->getAlias()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/samsung/android/knox/sdp/core/SdpDomain;->getAlias()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpDomain;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/samsung/android/knox/sdp/core/SdpDomain;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    return v0

    :cond_1e
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public addPrivilegedApp(Lcom/samsung/android/knox/sdp/core/SdpDomain;)Z
    .registers 10

    const/4 v6, 0x0

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpDomain;->getAlias()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpDomain;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3b

    iget-object v7, p0, Lcom/android/server/sdp/engine/SdpPolicy;->mAlias:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3b

    :try_start_17
    iget-object v7, p0, Lcom/android/server/sdp/engine/SdpPolicy;->mPrivilegedApps:Ljava/util/List;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_35

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/sdp/core/SdpDomain;

    invoke-virtual {v2}, Lcom/samsung/android/knox/sdp/core/SdpDomain;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1d

    const/4 v7, 0x0

    return v7

    :cond_35
    iget-object v7, p0, Lcom/android/server/sdp/engine/SdpPolicy;->mPrivilegedApps:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_3a} :catch_3c

    move-result v6

    :cond_3b
    :goto_3b
    return v6

    :catch_3c
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3b
.end method

.method public getAlias()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/sdp/engine/SdpPolicy;->mAlias:Ljava/lang/String;

    return-object v0
.end method

.method public getOwner()Lcom/samsung/android/knox/sdp/core/SdpDomain;
    .registers 2

    iget-object v0, p0, Lcom/android/server/sdp/engine/SdpPolicy;->mOwner:Lcom/samsung/android/knox/sdp/core/SdpDomain;

    return-object v0
.end method

.method public getPrivilegedApps()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/knox/sdp/core/SdpDomain;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/sdp/engine/SdpPolicy;->mPrivilegedApps:Ljava/util/List;

    return-object v0
.end method

.method public isAuthorized(Lcom/samsung/android/knox/sdp/core/SdpDomain;)Z
    .registers 5

    iget-object v2, p0, Lcom/android/server/sdp/engine/SdpPolicy;->mPrivilegedApps:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/sdp/core/SdpDomain;

    invoke-direct {p0, p1, v0}, Lcom/android/server/sdp/engine/SdpPolicy;->matches(Lcom/samsung/android/knox/sdp/core/SdpDomain;Lcom/samsung/android/knox/sdp/core/SdpDomain;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    return v2

    :cond_1a
    const/4 v2, 0x0

    return v2
.end method

.method public isOwner(Lcom/samsung/android/knox/sdp/core/SdpDomain;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/sdp/engine/SdpPolicy;->mOwner:Lcom/samsung/android/knox/sdp/core/SdpDomain;

    invoke-direct {p0, v0, p1}, Lcom/android/server/sdp/engine/SdpPolicy;->matches(Lcom/samsung/android/knox/sdp/core/SdpDomain;Lcom/samsung/android/knox/sdp/core/SdpDomain;)Z

    move-result v0

    return v0
.end method

.method public removePrivilegedApp(Lcom/samsung/android/knox/sdp/core/SdpDomain;)Z
    .registers 10

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpDomain;->getAlias()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpDomain;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_39

    iget-object v7, p0, Lcom/android/server/sdp/engine/SdpPolicy;->mAlias:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_39

    :try_start_17
    iget-object v7, p0, Lcom/android/server/sdp/engine/SdpPolicy;->mPrivilegedApps:Ljava/util/List;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_39

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/sdp/core/SdpDomain;

    invoke-virtual {v0}, Lcom/samsung/android/knox/sdp/core/SdpDomain;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1d

    iget-object v7, p0, Lcom/android/server/sdp/engine/SdpPolicy;->mPrivilegedApps:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_38} :catch_3a

    move-result v4

    :cond_39
    :goto_39
    return v4

    :catch_3a
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_39
.end method

.method public serialize()[B
    .registers 6

    const/4 v2, 0x0

    :try_start_1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v3, Ljava/io/ObjectOutputStream;

    invoke-direct {v3, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_b} :catch_13

    :try_start_b
    invoke-interface {v3, p0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_11} :catch_19

    move-result-object v4

    return-object v4

    :catch_13
    move-exception v1

    :goto_14
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    const/4 v4, 0x0

    return-object v4

    :catch_19
    move-exception v1

    move-object v2, v3

    goto :goto_14
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SdpPolicy {\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Alias:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/sdp/engine/SdpPolicy;->mAlias:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/sdp/engine/SdpPolicy;->mOwner:Lcom/samsung/android/knox/sdp/core/SdpDomain;

    if-eqz v3, :cond_37

    const-string/jumbo v3, "mOwner:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/sdp/engine/SdpPolicy;->mOwner:Lcom/samsung/android/knox/sdp/core/SdpDomain;

    invoke-virtual {v4}, Lcom/samsung/android/knox/sdp/core/SdpDomain;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_37
    iget-object v3, p0, Lcom/android/server/sdp/engine/SdpPolicy;->mPrivilegedApps:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/sdp/core/SdpDomain;

    const-string/jumbo v3, "mPrivilegedApps:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/samsung/android/knox/sdp/core/SdpDomain;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3d

    :cond_5e
    const-string/jumbo v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
