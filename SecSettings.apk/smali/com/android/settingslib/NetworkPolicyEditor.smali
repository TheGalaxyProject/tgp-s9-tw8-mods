.class public Lcom/android/settingslib/NetworkPolicyEditor;
.super Ljava/lang/Object;
.source "NetworkPolicyEditor.java"


# instance fields
.field private mPolicies:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/NetworkPolicy;",
            ">;"
        }
    .end annotation
.end field

.field private mPolicyManager:Landroid/net/NetworkPolicyManager;


# direct methods
.method public constructor <init>(Landroid/net/NetworkPolicyManager;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/NetworkPolicyEditor;->mPolicies:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkPolicyManager;

    iput-object v0, p0, Lcom/android/settingslib/NetworkPolicyEditor;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    return-void
.end method

.method private static buildDefaultPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;
    .registers 16
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-wide/16 v4, -0x1

    invoke-virtual {p0}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_19

    const/4 v2, -0x1

    const-string/jumbo v3, "UTC"

    const/4 v12, 0x0

    :goto_e
    new-instance v0, Landroid/net/NetworkPolicy;

    const/4 v13, 0x1

    move-object v1, p0

    move-wide v6, v4

    move-wide v8, v4

    move-wide v10, v4

    invoke-direct/range {v0 .. v13}, Landroid/net/NetworkPolicy;-><init>(Landroid/net/NetworkTemplate;ILjava/lang/String;JJJJZZ)V

    return-object v0

    :cond_19
    new-instance v14, Landroid/text/format/Time;

    invoke-direct {v14}, Landroid/text/format/Time;-><init>()V

    invoke-virtual {v14}, Landroid/text/format/Time;->setToNow()V

    iget v2, v14, Landroid/text/format/Time;->monthDay:I

    iget-object v3, v14, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    const/4 v12, 0x1

    goto :goto_e
.end method

.method private static buildUnquotedNetworkTemplate(Landroid/net/NetworkTemplate;)Landroid/net/NetworkTemplate;
    .registers 6

    const/4 v3, 0x0

    if-nez p0, :cond_4

    return-object v3

    :cond_4
    invoke-virtual {p0}, Landroid/net/NetworkTemplate;->getNetworkId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/wifi/WifiInfo;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_20

    new-instance v2, Landroid/net/NetworkTemplate;

    invoke-virtual {p0}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v3

    invoke-virtual {p0}, Landroid/net/NetworkTemplate;->getSubscriberId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, v1}, Landroid/net/NetworkTemplate;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_20
    return-object v3
.end method

.method private setPolicyWarningBytesInner(Landroid/net/NetworkTemplate;J)V
    .registers 6

    invoke-virtual {p0, p1}, Lcom/android/settingslib/NetworkPolicyEditor;->getOrCreatePolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    iput-wide p2, v0, Landroid/net/NetworkPolicy;->warningBytes:J

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/net/NetworkPolicy;->inferred:Z

    invoke-virtual {v0}, Landroid/net/NetworkPolicy;->clearSnooze()V

    invoke-virtual {p0}, Lcom/android/settingslib/NetworkPolicyEditor;->writeAsync()V

    return-void
.end method


# virtual methods
.method public getOrCreatePolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;
    .registers 4

    invoke-virtual {p0, p1}, Lcom/android/settingslib/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    if-nez v0, :cond_f

    invoke-static {p1}, Lcom/android/settingslib/NetworkPolicyEditor;->buildDefaultPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingslib/NetworkPolicyEditor;->mPolicies:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f
    return-object v0
.end method

.method public getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;
    .registers 5

    iget-object v2, p0, Lcom/android/settingslib/NetworkPolicyEditor;->mPolicies:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkPolicy;

    iget-object v2, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v2, p1}, Landroid/net/NetworkTemplate;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    return-object v0

    :cond_1b
    const/4 v2, 0x0

    return-object v2
.end method

.method public getPolicyCycleDay(Landroid/net/NetworkTemplate;)I
    .registers 4

    invoke-virtual {p0, p1}, Lcom/android/settingslib/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    if-eqz v0, :cond_9

    iget v1, v0, Landroid/net/NetworkPolicy;->cycleDay:I

    :goto_8
    return v1

    :cond_9
    const/4 v1, -0x1

    goto :goto_8
.end method

.method public getPolicyLimitBytes(Landroid/net/NetworkTemplate;)J
    .registers 6

    invoke-virtual {p0, p1}, Lcom/android/settingslib/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-wide v2, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    :goto_8
    return-wide v2

    :cond_9
    const-wide/16 v2, -0x1

    goto :goto_8
.end method

.method public getPolicyMaybeUnquoted(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;
    .registers 4

    invoke-virtual {p0, p1}, Lcom/android/settingslib/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    if-eqz v0, :cond_7

    return-object v0

    :cond_7
    invoke-static {p1}, Lcom/android/settingslib/NetworkPolicyEditor;->buildUnquotedNetworkTemplate(Landroid/net/NetworkTemplate;)Landroid/net/NetworkTemplate;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settingslib/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v1

    return-object v1
.end method

.method public getPolicyWarningBytes(Landroid/net/NetworkTemplate;)J
    .registers 6

    invoke-virtual {p0, p1}, Lcom/android/settingslib/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-wide v2, v0, Landroid/net/NetworkPolicy;->warningBytes:J

    :goto_8
    return-wide v2

    :cond_9
    const-wide/16 v2, -0x1

    goto :goto_8
.end method

.method public read()V
    .registers 11

    const-wide/16 v8, -0x1

    iget-object v3, p0, Lcom/android/settingslib/NetworkPolicyEditor;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v3}, Landroid/net/NetworkPolicyManager;->getNetworkPolicies()[Landroid/net/NetworkPolicy;

    move-result-object v1

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/android/settingslib/NetworkPolicyEditor;->mPolicies:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    const/4 v3, 0x0

    array-length v4, v1

    :goto_10
    if-ge v3, v4, :cond_2e

    aget-object v2, v1, v3

    iget-wide v6, v2, Landroid/net/NetworkPolicy;->limitBytes:J

    cmp-long v5, v6, v8

    if-gez v5, :cond_1d

    iput-wide v8, v2, Landroid/net/NetworkPolicy;->limitBytes:J

    const/4 v0, 0x1

    :cond_1d
    iget-wide v6, v2, Landroid/net/NetworkPolicy;->warningBytes:J

    cmp-long v5, v6, v8

    if-gez v5, :cond_26

    iput-wide v8, v2, Landroid/net/NetworkPolicy;->warningBytes:J

    const/4 v0, 0x1

    :cond_26
    iget-object v5, p0, Lcom/android/settingslib/NetworkPolicyEditor;->mPolicies:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    :cond_2e
    if-eqz v0, :cond_33

    invoke-virtual {p0}, Lcom/android/settingslib/NetworkPolicyEditor;->writeAsync()V

    :cond_33
    return-void
.end method

.method public setPolicyCycleDay(Landroid/net/NetworkTemplate;ILjava/lang/String;)V
    .registers 6

    invoke-virtual {p0, p1}, Lcom/android/settingslib/NetworkPolicyEditor;->getOrCreatePolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    iput p2, v0, Landroid/net/NetworkPolicy;->cycleDay:I

    iput-object p3, v0, Landroid/net/NetworkPolicy;->cycleTimezone:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/net/NetworkPolicy;->inferred:Z

    invoke-virtual {v0}, Landroid/net/NetworkPolicy;->clearSnooze()V

    invoke-virtual {p0}, Lcom/android/settingslib/NetworkPolicyEditor;->writeAsync()V

    return-void
.end method

.method public setPolicyLimitBytes(Landroid/net/NetworkTemplate;J)V
    .registers 10

    invoke-virtual {p0, p1}, Lcom/android/settingslib/NetworkPolicyEditor;->getPolicyWarningBytes(Landroid/net/NetworkTemplate;)J

    move-result-wide v2

    cmp-long v1, v2, p2

    if-lez v1, :cond_11

    const-wide/16 v4, -0x1

    cmp-long v1, p2, v4

    if-eqz v1, :cond_11

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settingslib/NetworkPolicyEditor;->setPolicyWarningBytesInner(Landroid/net/NetworkTemplate;J)V

    :cond_11
    invoke-virtual {p0, p1}, Lcom/android/settingslib/NetworkPolicyEditor;->getOrCreatePolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    iput-wide p2, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/net/NetworkPolicy;->inferred:Z

    invoke-virtual {v0}, Landroid/net/NetworkPolicy;->clearSnooze()V

    invoke-virtual {p0}, Lcom/android/settingslib/NetworkPolicyEditor;->writeAsync()V

    return-void
.end method

.method public setPolicyMetered(Landroid/net/NetworkTemplate;Z)V
    .registers 10

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Lcom/android/settingslib/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v1

    if-eqz p2, :cond_39

    if-nez v1, :cond_2f

    invoke-static {p1}, Lcom/android/settingslib/NetworkPolicyEditor;->buildDefaultPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v1

    iput-boolean v6, v1, Landroid/net/NetworkPolicy;->metered:Z

    iput-boolean v5, v1, Landroid/net/NetworkPolicy;->inferred:Z

    iget-object v4, p0, Lcom/android/settingslib/NetworkPolicyEditor;->mPolicies:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    :cond_19
    :goto_19
    invoke-static {p1}, Lcom/android/settingslib/NetworkPolicyEditor;->buildUnquotedNetworkTemplate(Landroid/net/NetworkTemplate;)Landroid/net/NetworkTemplate;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settingslib/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v3

    if-eqz v3, :cond_29

    iget-object v4, p0, Lcom/android/settingslib/NetworkPolicyEditor;->mPolicies:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    :cond_29
    if-eqz v0, :cond_2e

    invoke-virtual {p0}, Lcom/android/settingslib/NetworkPolicyEditor;->writeAsync()V

    :cond_2e
    return-void

    :cond_2f
    iget-boolean v4, v1, Landroid/net/NetworkPolicy;->metered:Z

    if-nez v4, :cond_19

    iput-boolean v6, v1, Landroid/net/NetworkPolicy;->metered:Z

    iput-boolean v5, v1, Landroid/net/NetworkPolicy;->inferred:Z

    const/4 v0, 0x1

    goto :goto_19

    :cond_39
    if-eqz v1, :cond_19

    iget-boolean v4, v1, Landroid/net/NetworkPolicy;->metered:Z

    if-eqz v4, :cond_19

    iput-boolean v5, v1, Landroid/net/NetworkPolicy;->metered:Z

    iput-boolean v5, v1, Landroid/net/NetworkPolicy;->inferred:Z

    const/4 v0, 0x1

    goto :goto_19
.end method

.method public setPolicyWarningBytes(Landroid/net/NetworkTemplate;J)V
    .registers 8

    invoke-virtual {p0, p1}, Lcom/android/settingslib/NetworkPolicyEditor;->getPolicyLimitBytes(Landroid/net/NetworkTemplate;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_e

    :goto_a
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settingslib/NetworkPolicyEditor;->setPolicyWarningBytesInner(Landroid/net/NetworkTemplate;J)V

    return-void

    :cond_e
    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    goto :goto_a
.end method

.method public write([Landroid/net/NetworkPolicy;)V
    .registers 3

    iget-object v0, p0, Lcom/android/settingslib/NetworkPolicyEditor;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v0, p1}, Landroid/net/NetworkPolicyManager;->setNetworkPolicies([Landroid/net/NetworkPolicy;)V

    return-void
.end method

.method public writeAsync()V
    .registers 4

    iget-object v1, p0, Lcom/android/settingslib/NetworkPolicyEditor;->mPolicies:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/settingslib/NetworkPolicyEditor;->mPolicies:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Landroid/net/NetworkPolicy;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/NetworkPolicy;

    new-instance v1, Lcom/android/settingslib/NetworkPolicyEditor$1;

    invoke-direct {v1, p0, v0}, Lcom/android/settingslib/NetworkPolicyEditor$1;-><init>(Lcom/android/settingslib/NetworkPolicyEditor;[Landroid/net/NetworkPolicy;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/settingslib/NetworkPolicyEditor$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
