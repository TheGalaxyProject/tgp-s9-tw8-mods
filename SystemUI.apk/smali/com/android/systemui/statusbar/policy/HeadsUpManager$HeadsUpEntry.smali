.class public Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;
.super Ljava/lang/Object;
.source "HeadsUpManager.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/HeadsUpManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HeadsUpEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;",
        ">;"
    }
.end annotation


# instance fields
.field public earliestRemovaltime:J

.field public entry:Lcom/android/systemui/statusbar/NotificationData$Entry;

.field public expanded:Z

.field private mRemoveHeadsUpRunnable:Ljava/lang/Runnable;

.field public postTime:J

.field public remoteInputActive:Z

.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/HeadsUpManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/HeadsUpManager;)V
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->this$0:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isSticky()Z
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->entry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isPinned()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->expanded:Z

    if-nez v0, :cond_1b

    :cond_e
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->remoteInputActive:Z

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->this$0:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->entry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->-wrap0(Lcom/android/systemui/statusbar/policy/HeadsUpManager;Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    move-result v0

    :goto_1a
    return v0

    :cond_1b
    const/4 v0, 0x1

    goto :goto_1a
.end method


# virtual methods
.method public compareTo(Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;)I
    .registers 12

    const/4 v4, 0x1

    const/4 v5, -0x1

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->entry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v6, v6, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isPinned()Z

    move-result v0

    iget-object v6, p1, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->entry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v6, v6, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isPinned()Z

    move-result v2

    if-eqz v0, :cond_19

    xor-int/lit8 v6, v2, 0x1

    if-eqz v6, :cond_19

    return v5

    :cond_19
    if-nez v0, :cond_1e

    if-eqz v2, :cond_1e

    return v4

    :cond_1e
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->this$0:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->entry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    invoke-static {v6, v7}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->-wrap0(Lcom/android/systemui/statusbar/policy/HeadsUpManager;Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    move-result v3

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->this$0:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    iget-object v7, p1, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->entry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    invoke-static {v6, v7}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->-wrap0(Lcom/android/systemui/statusbar/policy/HeadsUpManager;Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    move-result v1

    if-eqz v3, :cond_35

    xor-int/lit8 v6, v1, 0x1

    if-eqz v6, :cond_35

    return v5

    :cond_35
    if-nez v3, :cond_3a

    if-eqz v1, :cond_3a

    return v4

    :cond_3a
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->remoteInputActive:Z

    if-eqz v6, :cond_45

    iget-boolean v6, p1, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->remoteInputActive:Z

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_45

    return v5

    :cond_45
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->remoteInputActive:Z

    if-nez v6, :cond_4e

    iget-boolean v6, p1, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->remoteInputActive:Z

    if-eqz v6, :cond_4e

    return v4

    :cond_4e
    iget-wide v6, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->postTime:J

    iget-wide v8, p1, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->postTime:J

    cmp-long v6, v6, v8

    if-gez v6, :cond_57

    :goto_56
    return v4

    :cond_57
    iget-wide v6, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->postTime:J

    iget-wide v8, p1, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->postTime:J

    cmp-long v4, v6, v8

    if-nez v4, :cond_6c

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->entry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v4, v4, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    iget-object v5, p1, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->entry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v5, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    goto :goto_56

    :cond_6c
    move v4, v5

    goto :goto_56
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->compareTo(Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;)I

    move-result v0

    return v0
.end method

.method public removeAsSoonAsPossible()V
    .registers 7

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->removeAutoRemovalCallbacks()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->this$0:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->-get3(Lcom/android/systemui/statusbar/policy/HeadsUpManager;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->mRemoveHeadsUpRunnable:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->earliestRemovaltime:J

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->this$0:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->-get0(Lcom/android/systemui/statusbar/policy/HeadsUpManager;)Lcom/android/systemui/statusbar/policy/HeadsUpManager$Clock;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/HeadsUpManager$Clock;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public removeAutoRemovalCallbacks()V
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->this$0:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->-get3(Lcom/android/systemui/statusbar/policy/HeadsUpManager;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->mRemoveHeadsUpRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public reset()V
    .registers 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->removeAutoRemovalCallbacks()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->entry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->mRemoveHeadsUpRunnable:Ljava/lang/Runnable;

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->expanded:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->remoteInputActive:Z

    return-void
.end method

.method public setEntry(Lcom/android/systemui/statusbar/NotificationData$Entry;)V
    .registers 6

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->entry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->this$0:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->-get0(Lcom/android/systemui/statusbar/policy/HeadsUpManager;)Lcom/android/systemui/statusbar/policy/HeadsUpManager$Clock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager$Clock;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->this$0:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->-get9(Lcom/android/systemui/statusbar/policy/HeadsUpManager;)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->postTime:J

    new-instance v0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry$1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry$1;-><init>(Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->mRemoveHeadsUpRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->updateEntry()V

    return-void
.end method

.method public updateEntry()V
    .registers 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->updateEntry(Z)V

    return-void
.end method

.method public updateEntry(Z)V
    .registers 12

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->this$0:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-static {v6}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->-get0(Lcom/android/systemui/statusbar/policy/HeadsUpManager;)Lcom/android/systemui/statusbar/policy/HeadsUpManager$Clock;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/policy/HeadsUpManager$Clock;->currentTimeMillis()J

    move-result-wide v0

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->this$0:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-static {v6}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->-get5(Lcom/android/systemui/statusbar/policy/HeadsUpManager;)I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v6, v0

    iput-wide v6, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->earliestRemovaltime:J

    if-eqz p1, :cond_1e

    iget-wide v6, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->postTime:J

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->postTime:J

    :cond_1e
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->removeAutoRemovalCallbacks()V

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->this$0:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-static {v6}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->-get1(Lcom/android/systemui/statusbar/policy/HeadsUpManager;)Ljava/util/HashSet;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->entry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3a

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->this$0:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-static {v6}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->-get1(Lcom/android/systemui/statusbar/policy/HeadsUpManager;)Ljava/util/HashSet;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->entry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :cond_3a
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->this$0:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-static {v6}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->-get2(Lcom/android/systemui/statusbar/policy/HeadsUpManager;)Landroid/support/v4/util/ArraySet;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->entry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    invoke-virtual {v6, v7}, Landroid/support/v4/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_53

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->this$0:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-static {v6}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->-get2(Lcom/android/systemui/statusbar/policy/HeadsUpManager;)Landroid/support/v4/util/ArraySet;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->entry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    invoke-virtual {v6, v7}, Landroid/support/v4/util/ArraySet;->remove(Ljava/lang/Object;)Z

    :cond_53
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->isSticky()Z

    move-result v6

    if-nez v6, :cond_7c

    iget-wide v6, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->postTime:J

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->this$0:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-static {v8}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->-get4(Lcom/android/systemui/statusbar/policy/HeadsUpManager;)I

    move-result v8

    int-to-long v8, v8

    add-long v2, v6, v8

    sub-long v6, v2, v0

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->this$0:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-static {v8}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->-get5(Lcom/android/systemui/statusbar/policy/HeadsUpManager;)I

    move-result v8

    int-to-long v8, v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->this$0:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-static {v6}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->-get3(Lcom/android/systemui/statusbar/policy/HeadsUpManager;)Landroid/os/Handler;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->mRemoveHeadsUpRunnable:Ljava/lang/Runnable;

    invoke-virtual {v6, v7, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_7c
    return-void
.end method

.method public wasShownLongEnough()Z
    .registers 5

    iget-wide v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->earliestRemovaltime:J

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->this$0:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->-get0(Lcom/android/systemui/statusbar/policy/HeadsUpManager;)Lcom/android/systemui/statusbar/policy/HeadsUpManager$Clock;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/HeadsUpManager$Clock;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method
