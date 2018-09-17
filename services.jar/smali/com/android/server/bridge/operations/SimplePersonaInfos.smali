.class public Lcom/android/server/bridge/operations/SimplePersonaInfos;
.super Ljava/lang/Object;
.source "SimplePersonaInfos.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/bridge/operations/SimplePersonaInfos$SimplePersonaInfo;
    }
.end annotation


# static fields
.field public static final LAST_IMPORT_CALENDAR_STATUS:Ljava/lang/String; = "last_import_calendar_status"

.field public static final LAST_IMPORT_CONTACT_STATUS:Ljava/lang/String; = "last_import_contact_status"

.field static final MAX:I = 0x5

.field public static final PERSONA_ID:Ljava/lang/String; = "user_id"

.field public static final PERSONA_NAME:Ljava/lang/String; = "user_name"

.field public static final PERSONA_TYPE:Ljava/lang/String; = "type"

.field static final TAG:Ljava/lang/String; = "SimplePersonaInfos"

.field private static mCtx:Landroid/content/Context;


# instance fields
.field isInitialized:Z

.field lock:Ljava/lang/Object;

.field mExtraInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field mList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/server/bridge/operations/SimplePersonaInfos$SimplePersonaInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/bridge/operations/SimplePersonaInfos;->mCtx:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/bridge/operations/SimplePersonaInfos;->isInitialized:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/bridge/operations/SimplePersonaInfos;->lock:Ljava/lang/Object;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/bridge/operations/SimplePersonaInfos;->mList:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/bridge/operations/SimplePersonaInfos;->mExtraInfo:Ljava/util/HashMap;

    sput-object p1, Lcom/android/server/bridge/operations/SimplePersonaInfos;->mCtx:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/server/bridge/operations/SimplePersonaInfos;->initialize()V

    return-void
.end method

.method private addItem(ILjava/lang/String;Ljava/lang/String;)V
    .registers 8

    invoke-direct {p0, p1}, Lcom/android/server/bridge/operations/SimplePersonaInfos;->isExist(I)Z

    move-result v2

    if-eqz v2, :cond_7

    return-void

    :cond_7
    new-instance v1, Lcom/android/server/bridge/operations/SimplePersonaInfos$SimplePersonaInfo;

    invoke-direct {v1, p0}, Lcom/android/server/bridge/operations/SimplePersonaInfos$SimplePersonaInfo;-><init>(Lcom/android/server/bridge/operations/SimplePersonaInfos;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput p1, v1, Lcom/android/server/bridge/operations/SimplePersonaInfos$SimplePersonaInfo;->id:I

    iput-object p2, v1, Lcom/android/server/bridge/operations/SimplePersonaInfos$SimplePersonaInfo;->name:Ljava/lang/String;

    iput-object p3, v1, Lcom/android/server/bridge/operations/SimplePersonaInfos$SimplePersonaInfo;->type:Ljava/lang/String;

    const-string/jumbo v2, "KNOX"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_53

    iget-object v2, p0, Lcom/android/server/bridge/operations/SimplePersonaInfos;->mList:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    :goto_25
    const-string/jumbo v2, "user_id"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v2, "user_name"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "type"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "last_import_contact_status"

    const-string/jumbo v3, "false"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "last_import_calendar_status"

    const-string/jumbo v3, "false"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/bridge/operations/SimplePersonaInfos;->mExtraInfo:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_53
    iget-object v2, p0, Lcom/android/server/bridge/operations/SimplePersonaInfos;->mList:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto :goto_25
.end method

.method private isExist(I)Z
    .registers 4

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/server/bridge/operations/SimplePersonaInfos;->mList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1a

    iget-object v1, p0, Lcom/android/server/bridge/operations/SimplePersonaInfos;->mList:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/bridge/operations/SimplePersonaInfos$SimplePersonaInfo;

    iget v1, v1, Lcom/android/server/bridge/operations/SimplePersonaInfos$SimplePersonaInfo;->id:I

    if-ne v1, p1, :cond_17

    const/4 v1, 0x1

    return v1

    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1a
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public getExtraInfo(I)Landroid/os/Bundle;
    .registers 4

    iget-object v0, p0, Lcom/android/server/bridge/operations/SimplePersonaInfos;->mExtraInfo:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    return-object v0
.end method

.method public getItem(I)Lcom/android/server/bridge/operations/SimplePersonaInfos$SimplePersonaInfo;
    .registers 4

    iget-boolean v0, p0, Lcom/android/server/bridge/operations/SimplePersonaInfos;->isInitialized:Z

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/android/server/bridge/operations/SimplePersonaInfos;->initialize()V

    :cond_7
    iget-object v1, p0, Lcom/android/server/bridge/operations/SimplePersonaInfos;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_a
    iget-object v0, p0, Lcom/android/server/bridge/operations/SimplePersonaInfos;->mList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ge p1, v0, :cond_1e

    if-ltz p1, :cond_1e

    iget-object v0, p0, Lcom/android/server/bridge/operations/SimplePersonaInfos;->mList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/bridge/operations/SimplePersonaInfos$SimplePersonaInfo;
    :try_end_1c
    .catchall {:try_start_a .. :try_end_1c} :catchall_21

    monitor-exit v1

    return-object v0

    :cond_1e
    const/4 v0, 0x0

    monitor-exit v1

    return-object v0

    :catchall_21
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getSimplePersonaInfo(I)Landroid/os/Bundle;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/android/server/bridge/operations/SimplePersonaInfos;->getExtraInfo(I)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getSize()I
    .registers 3

    iget-boolean v0, p0, Lcom/android/server/bridge/operations/SimplePersonaInfos;->isInitialized:Z

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/android/server/bridge/operations/SimplePersonaInfos;->initialize()V

    :cond_7
    iget-object v1, p0, Lcom/android/server/bridge/operations/SimplePersonaInfos;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_a
    iget-object v0, p0, Lcom/android/server/bridge/operations/SimplePersonaInfos;->mList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I
    :try_end_f
    .catchall {:try_start_a .. :try_end_f} :catchall_12

    move-result v0

    monitor-exit v1

    return v0

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public initialize()V
    .registers 9

    const/4 v6, 0x1

    sget-object v4, Lcom/android/server/bridge/operations/SimplePersonaInfos;->mCtx:Landroid/content/Context;

    if-nez v4, :cond_6

    return-void

    :cond_6
    sget-object v4, Lcom/android/server/bridge/operations/SimplePersonaInfos;->mCtx:Landroid/content/Context;

    const-string/jumbo v5, "user"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    if-nez v3, :cond_14

    return-void

    :cond_14
    invoke-virtual {v3, v6}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_24

    const-string/jumbo v4, "SimplePersonaInfos"

    const-string/jumbo v5, "initialize() failed, personas is null"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_24
    iget-object v4, p0, Lcom/android/server/bridge/operations/SimplePersonaInfos;->mList:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->clear()V

    iget-object v5, p0, Lcom/android/server/bridge/operations/SimplePersonaInfos;->lock:Ljava/lang/Object;

    monitor-enter v5

    const/4 v0, 0x0

    :goto_2d
    :try_start_2d
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_50

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    if-eqz v2, :cond_4d

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isBBCContainer()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_4d

    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    iget-object v6, v2, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    const-string/jumbo v7, "default"

    invoke-direct {p0, v4, v6, v7}, Lcom/android/server/bridge/operations/SimplePersonaInfos;->addItem(ILjava/lang/String;Ljava/lang/String;)V

    :cond_4d
    add-int/lit8 v0, v0, 0x1

    goto :goto_2d

    :cond_50
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/bridge/operations/SimplePersonaInfos;->isInitialized:Z
    :try_end_53
    .catchall {:try_start_2d .. :try_end_53} :catchall_55

    monitor-exit v5

    return-void

    :catchall_55
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public removeItem(I)V
    .registers 6

    iget-boolean v1, p0, Lcom/android/server/bridge/operations/SimplePersonaInfos;->isInitialized:Z

    if-nez v1, :cond_8

    invoke-virtual {p0}, Lcom/android/server/bridge/operations/SimplePersonaInfos;->initialize()V

    return-void

    :cond_8
    iget-object v2, p0, Lcom/android/server/bridge/operations/SimplePersonaInfos;->lock:Ljava/lang/Object;

    monitor-enter v2

    const/4 v0, 0x0

    :goto_c
    :try_start_c
    iget-object v1, p0, Lcom/android/server/bridge/operations/SimplePersonaInfos;->mList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-ge v0, v1, :cond_25

    iget-object v1, p0, Lcom/android/server/bridge/operations/SimplePersonaInfos;->mList:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/bridge/operations/SimplePersonaInfos$SimplePersonaInfo;

    iget v1, v1, Lcom/android/server/bridge/operations/SimplePersonaInfos$SimplePersonaInfo;->id:I

    if-ne p1, v1, :cond_30

    iget-object v1, p0, Lcom/android/server/bridge/operations/SimplePersonaInfos;->mList:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    :cond_25
    iget-object v1, p0, Lcom/android/server/bridge/operations/SimplePersonaInfos;->mExtraInfo:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2e
    .catchall {:try_start_c .. :try_end_2e} :catchall_33

    monitor-exit v2

    return-void

    :cond_30
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :catchall_33
    move-exception v1

    monitor-exit v2

    throw v1
.end method
