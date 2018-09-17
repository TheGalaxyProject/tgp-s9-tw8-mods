.class public Lcom/android/systemui/splugins/SVersionInfo;
.super Ljava/lang/Object;
.source "SVersionInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/splugins/SVersionInfo$InvalidVersionException;,
        Lcom/android/systemui/splugins/SVersionInfo$Version;
    }
.end annotation


# instance fields
.field private mDefault:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final mVersions:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/android/systemui/splugins/SVersionInfo$Version;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/splugins/SVersionInfo;->mVersions:Landroid/util/ArrayMap;

    return-void
.end method

.method private addClass(Ljava/lang/Class;Z)V
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;Z)V"
        }
    .end annotation

    iget-object v8, p0, Lcom/android/systemui/splugins/SVersionInfo;->mVersions:Landroid/util/ArrayMap;

    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    return-void

    :cond_b
    const-class v8, Lcom/samsung/systemui/splugins/annotations/ProvidesInterface;

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/lang/Class;->getDeclaredAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, Lcom/samsung/systemui/splugins/annotations/ProvidesInterface;

    if-eqz v4, :cond_28

    iget-object v8, p0, Lcom/android/systemui/splugins/SVersionInfo;->mVersions:Landroid/util/ArrayMap;

    new-instance v9, Lcom/android/systemui/splugins/SVersionInfo$Version;

    invoke-interface {v4}, Lcom/samsung/systemui/splugins/annotations/ProvidesInterface;->version()I

    move-result v10

    const/4 v11, 0x1

    invoke-direct {v9, v10, v11}, Lcom/android/systemui/splugins/SVersionInfo$Version;-><init>(IZ)V

    move-object/from16 v0, p1

    invoke-virtual {v8, v0, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_28
    const-class v8, Lcom/samsung/systemui/splugins/annotations/Requires;

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/lang/Class;->getDeclaredAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v7

    check-cast v7, Lcom/samsung/systemui/splugins/annotations/Requires;

    if-eqz v7, :cond_48

    iget-object v8, p0, Lcom/android/systemui/splugins/SVersionInfo;->mVersions:Landroid/util/ArrayMap;

    invoke-interface {v7}, Lcom/samsung/systemui/splugins/annotations/Requires;->target()Ljava/lang/Class;

    move-result-object v9

    new-instance v10, Lcom/android/systemui/splugins/SVersionInfo$Version;

    invoke-interface {v7}, Lcom/samsung/systemui/splugins/annotations/Requires;->version()I

    move-result v11

    move/from16 v0, p2

    invoke-direct {v10, v11, v0}, Lcom/android/systemui/splugins/SVersionInfo$Version;-><init>(IZ)V

    invoke-virtual {v8, v9, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_48
    const-class v8, Lcom/samsung/systemui/splugins/annotations/Requirements;

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/lang/Class;->getDeclaredAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v6

    check-cast v6, Lcom/samsung/systemui/splugins/annotations/Requirements;

    if-eqz v6, :cond_75

    invoke-interface {v6}, Lcom/samsung/systemui/splugins/annotations/Requirements;->value()[Lcom/samsung/systemui/splugins/annotations/Requires;

    move-result-object v9

    const/4 v8, 0x0

    array-length v10, v9

    :goto_5a
    if-ge v8, v10, :cond_75

    aget-object v5, v9, v8

    iget-object v11, p0, Lcom/android/systemui/splugins/SVersionInfo;->mVersions:Landroid/util/ArrayMap;

    invoke-interface {v5}, Lcom/samsung/systemui/splugins/annotations/Requires;->target()Ljava/lang/Class;

    move-result-object v12

    new-instance v13, Lcom/android/systemui/splugins/SVersionInfo$Version;

    invoke-interface {v5}, Lcom/samsung/systemui/splugins/annotations/Requires;->version()I

    move-result v14

    move/from16 v0, p2

    invoke-direct {v13, v14, v0}, Lcom/android/systemui/splugins/SVersionInfo$Version;-><init>(IZ)V

    invoke-virtual {v11, v12, v13}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v8, v8, 0x1

    goto :goto_5a

    :cond_75
    const-class v8, Lcom/samsung/systemui/splugins/annotations/DependsOn;

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/lang/Class;->getDeclaredAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    check-cast v3, Lcom/samsung/systemui/splugins/annotations/DependsOn;

    if-eqz v3, :cond_89

    invoke-interface {v3}, Lcom/samsung/systemui/splugins/annotations/DependsOn;->target()Ljava/lang/Class;

    move-result-object v8

    const/4 v9, 0x1

    invoke-direct {p0, v8, v9}, Lcom/android/systemui/splugins/SVersionInfo;->addClass(Ljava/lang/Class;Z)V

    :cond_89
    const-class v8, Lcom/samsung/systemui/splugins/annotations/Dependencies;

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/lang/Class;->getDeclaredAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lcom/samsung/systemui/splugins/annotations/Dependencies;

    if-eqz v2, :cond_aa

    invoke-interface {v2}, Lcom/samsung/systemui/splugins/annotations/Dependencies;->value()[Lcom/samsung/systemui/splugins/annotations/DependsOn;

    move-result-object v9

    const/4 v8, 0x0

    array-length v10, v9

    :goto_9b
    if-ge v8, v10, :cond_aa

    aget-object v1, v9, v8

    invoke-interface {v1}, Lcom/samsung/systemui/splugins/annotations/DependsOn;->target()Ljava/lang/Class;

    move-result-object v11

    const/4 v12, 0x1

    invoke-direct {p0, v11, v12}, Lcom/android/systemui/splugins/SVersionInfo;->addClass(Ljava/lang/Class;Z)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_9b

    :cond_aa
    return-void
.end method

.method private createVersion(Ljava/lang/Class;)Lcom/android/systemui/splugins/SVersionInfo$Version;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/android/systemui/splugins/SVersionInfo$Version;"
        }
    .end annotation

    const/4 v2, 0x0

    const-class v1, Lcom/samsung/systemui/splugins/annotations/ProvidesInterface;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->getDeclaredAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/samsung/systemui/splugins/annotations/ProvidesInterface;

    if-eqz v0, :cond_16

    new-instance v1, Lcom/android/systemui/splugins/SVersionInfo$Version;

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/annotations/ProvidesInterface;->version()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/splugins/SVersionInfo$Version;-><init>(IZ)V

    return-object v1

    :cond_16
    return-object v2
.end method

.method static synthetic lambda$-com_android_systemui_splugins_SVersionInfo_4248(Ljava/lang/Class;Lcom/android/systemui/splugins/SVersionInfo$Version;)V
    .registers 5

    invoke-static {p1}, Lcom/android/systemui/splugins/SVersionInfo$Version;->-get0(Lcom/android/systemui/splugins/SVersionInfo$Version;)Z

    move-result v0

    if-eqz v0, :cond_25

    new-instance v0, Lcom/android/systemui/splugins/SVersionInfo$InvalidVersionException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Missing required dependency "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/splugins/SVersionInfo$InvalidVersionException;-><init>(Ljava/lang/String;Z)V

    throw v0

    :cond_25
    return-void
.end method


# virtual methods
.method public addClass(Ljava/lang/Class;)Lcom/android/systemui/splugins/SVersionInfo;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/android/systemui/splugins/SVersionInfo;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/splugins/SVersionInfo;->mDefault:Ljava/lang/Class;

    if-nez v0, :cond_6

    iput-object p1, p0, Lcom/android/systemui/splugins/SVersionInfo;->mDefault:Ljava/lang/Class;

    :cond_6
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/splugins/SVersionInfo;->addClass(Ljava/lang/Class;Z)V

    return-object p0
.end method

.method public checkVersion(Lcom/android/systemui/splugins/SVersionInfo;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/systemui/splugins/SVersionInfo$InvalidVersionException;
        }
    .end annotation

    new-instance v0, Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/systemui/splugins/SVersionInfo;->mVersions:Landroid/util/ArrayMap;

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    iget-object v1, p1, Lcom/android/systemui/splugins/SVersionInfo;->mVersions:Landroid/util/ArrayMap;

    new-instance v2, Lcom/android/systemui/splugins/-$Lambda$P3F_H_8OSTUOFul20ol8sZM2vuA$1;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/splugins/-$Lambda$P3F_H_8OSTUOFul20ol8sZM2vuA$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->forEach(Ljava/util/function/BiConsumer;)V

    new-instance v1, Lcom/android/systemui/splugins/-$Lambda$P3F_H_8OSTUOFul20ol8sZM2vuA;

    invoke-direct {v1}, Lcom/android/systemui/splugins/-$Lambda$P3F_H_8OSTUOFul20ol8sZM2vuA;-><init>()V

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public getDefaultVersion()I
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/splugins/SVersionInfo;->mVersions:Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/systemui/splugins/SVersionInfo;->mDefault:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/splugins/SVersionInfo$Version;

    invoke-static {v0}, Lcom/android/systemui/splugins/SVersionInfo$Version;->-get1(Lcom/android/systemui/splugins/SVersionInfo$Version;)I

    move-result v0

    return v0
.end method

.method public hasClass(Ljava/lang/Class;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/splugins/SVersionInfo;->mVersions:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasVersionInfo()Z
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/splugins/SVersionInfo;->mVersions:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method synthetic lambda$-com_android_systemui_splugins_SVersionInfo_3091(Landroid/util/ArrayMap;Ljava/lang/Class;Lcom/android/systemui/splugins/SVersionInfo$Version;)V
    .registers 8

    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/splugins/SVersionInfo$Version;

    if-nez v0, :cond_c

    invoke-direct {p0, p2}, Lcom/android/systemui/splugins/SVersionInfo;->createVersion(Ljava/lang/Class;)Lcom/android/systemui/splugins/SVersionInfo$Version;

    move-result-object v0

    :cond_c
    if-nez v0, :cond_2d

    new-instance v1, Lcom/android/systemui/splugins/SVersionInfo$InvalidVersionException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " does not provide an interface"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/splugins/SVersionInfo$InvalidVersionException;-><init>(Ljava/lang/String;Z)V

    throw v1

    :cond_2d
    return-void
.end method
