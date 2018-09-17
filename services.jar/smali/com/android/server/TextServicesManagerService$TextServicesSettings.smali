.class final Lcom/android/server/TextServicesManagerService$TextServicesSettings;
.super Ljava/lang/Object;
.source "TextServicesManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/TextServicesManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TextServicesSettings"
.end annotation


# instance fields
.field private mCopyOnWrite:Z

.field private final mCopyOnWriteDataStore:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentProfileIds:[I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mCurrentUserId:I

.field private mLock:Ljava/lang/Object;

.field private final mResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;IZ)V
    .registers 6

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCurrentProfileIds:[I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCopyOnWriteDataStore:Ljava/util/HashMap;

    iput-boolean v1, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCopyOnWrite:Z

    iput-object p1, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0, p2, p3}, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->switchCurrentUser(IZ)V

    return-void
.end method

.method private getBoolean(Ljava/lang/String;Z)Z
    .registers 6

    const/4 v2, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_c

    move v0, v1

    :goto_5
    invoke-direct {p0, p1, v0}, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_e

    :goto_b
    return v1

    :cond_c
    move v0, v2

    goto :goto_5

    :cond_e
    move v1, v2

    goto :goto_b
.end method

.method private getInt(Ljava/lang/String;I)I
    .registers 6

    iget-boolean v1, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCopyOnWrite:Z

    if-eqz v1, :cond_1d

    iget-object v1, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCopyOnWriteDataStore:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    iget-object v1, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCopyOnWriteDataStore:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1b

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    :goto_1a
    return v1

    :cond_1b
    const/4 v1, 0x0

    goto :goto_1a

    :cond_1d
    iget-object v1, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mResolver:Landroid/content/ContentResolver;

    iget v2, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCurrentUserId:I

    invoke-static {v1, p1, p2, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    return v1
.end method

.method private getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    iget-boolean v1, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCopyOnWrite:Z

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCopyOnWriteDataStore:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCopyOnWriteDataStore:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_14
    if-eqz v0, :cond_20

    :goto_16
    return-object v0

    :cond_17
    iget-object v1, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mResolver:Landroid/content/ContentResolver;

    iget v2, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCurrentUserId:I

    invoke-static {v1, p1, v2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    :cond_20
    move-object v0, p2

    goto :goto_16
.end method

.method private putBoolean(Ljava/lang/String;Z)V
    .registers 4

    if-eqz p2, :cond_7

    const/4 v0, 0x1

    :goto_3
    invoke-direct {p0, p1, v0}, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->putInt(Ljava/lang/String;I)V

    return-void

    :cond_7
    const/4 v0, 0x0

    goto :goto_3
.end method

.method private putInt(Ljava/lang/String;I)V
    .registers 5

    iget-boolean v0, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCopyOnWrite:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCopyOnWriteDataStore:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_d
    return-void

    :cond_e
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mResolver:Landroid/content/ContentResolver;

    iget v1, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCurrentUserId:I

    invoke-static {v0, p1, p2, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_d
.end method

.method private putString(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    iget-boolean v0, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCopyOnWrite:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCopyOnWriteDataStore:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_9
    return-void

    :cond_a
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mResolver:Landroid/content/ContentResolver;

    iget v1, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCurrentUserId:I

    invoke-static {v0, p1, p2, v1}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_9
.end method


# virtual methods
.method public dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mCurrentUserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCurrentUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mCurrentProfileIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCurrentProfileIds:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mCopyOnWrite="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCopyOnWrite:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getCurrentUserId()I
    .registers 2

    iget v0, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCurrentUserId:I

    return v0
.end method

.method public getSelectedSpellChecker()Ljava/lang/String;
    .registers 3

    const-string/jumbo v0, "selected_spell_checker"

    const-string/jumbo v1, ""

    invoke-direct {p0, v0, v1}, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedSpellCheckerSubtype(I)I
    .registers 3

    const-string/jumbo v0, "selected_spell_checker_subtype"

    invoke-direct {p0, v0, p1}, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public isCurrentProfile(I)Z
    .registers 6

    const/4 v3, 0x1

    iget-object v2, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_4
    iget v1, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCurrentUserId:I
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_1e

    if-ne p1, v1, :cond_a

    monitor-exit v2

    return v3

    :cond_a
    const/4 v0, 0x0

    :goto_b
    :try_start_b
    iget-object v1, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCurrentProfileIds:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1b

    iget-object v1, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCurrentProfileIds:[I

    aget v1, v1, v0
    :try_end_14
    .catchall {:try_start_b .. :try_end_14} :catchall_1e

    if-ne p1, v1, :cond_18

    monitor-exit v2

    return v3

    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_1b
    const/4 v1, 0x0

    monitor-exit v2

    return v1

    :catchall_1e
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public isSpellCheckerEnabled()Z
    .registers 3

    const-string/jumbo v0, "spell_checker_enabled"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public putSelectedSpellChecker(Ljava/lang/String;)V
    .registers 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string/jumbo v0, "selected_spell_checker"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_d
    return-void

    :cond_e
    const-string/jumbo v0, "selected_spell_checker"

    invoke-direct {p0, v0, p1}, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d
.end method

.method public putSelectedSpellCheckerSubtype(I)V
    .registers 3

    const-string/jumbo v0, "selected_spell_checker_subtype"

    invoke-direct {p0, v0, p1}, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public setCurrentProfileIds([I)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iput-object p1, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCurrentProfileIds:[I
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-void

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public setSpellCheckerEnabled(Z)V
    .registers 3

    const-string/jumbo v0, "spell_checker_enabled"

    invoke-direct {p0, v0, p1}, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public switchCurrentUser(IZ)V
    .registers 4

    iget v0, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCurrentUserId:I

    if-ne v0, p1, :cond_8

    iget-boolean v0, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCopyOnWrite:Z

    if-eq v0, p2, :cond_d

    :cond_8
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCopyOnWriteDataStore:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_d
    iput p1, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCurrentUserId:I

    iput-boolean p2, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCopyOnWrite:Z

    return-void
.end method
