.class Lcom/android/settings/applications/RunningState$ServiceProcessComparator;
.super Ljava/lang/Object;
.source "RunningState.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/RunningState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ServiceProcessComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/settings/applications/RunningState$ProcessItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/RunningState;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/RunningState;)V
    .registers 2

    iput-object p1, p0, Lcom/android/settings/applications/RunningState$ServiceProcessComparator;->this$0:Lcom/android/settings/applications/RunningState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/settings/applications/RunningState$ProcessItem;Lcom/android/settings/applications/RunningState$ProcessItem;)I
    .registers 9

    const/4 v1, 0x1

    const/4 v0, -0x1

    iget v2, p1, Lcom/android/settings/applications/RunningState$ProcessItem;->mUserId:I

    iget v3, p2, Lcom/android/settings/applications/RunningState$ProcessItem;->mUserId:I

    if-eq v2, v3, :cond_23

    iget v2, p1, Lcom/android/settings/applications/RunningState$ProcessItem;->mUserId:I

    iget-object v3, p0, Lcom/android/settings/applications/RunningState$ServiceProcessComparator;->this$0:Lcom/android/settings/applications/RunningState;

    iget v3, v3, Lcom/android/settings/applications/RunningState;->mMyUserId:I

    if-ne v2, v3, :cond_11

    return v0

    :cond_11
    iget v2, p2, Lcom/android/settings/applications/RunningState$ProcessItem;->mUserId:I

    iget-object v3, p0, Lcom/android/settings/applications/RunningState$ServiceProcessComparator;->this$0:Lcom/android/settings/applications/RunningState;

    iget v3, v3, Lcom/android/settings/applications/RunningState;->mMyUserId:I

    if-ne v2, v3, :cond_1a

    return v1

    :cond_1a
    iget v2, p1, Lcom/android/settings/applications/RunningState$ProcessItem;->mUserId:I

    iget v3, p2, Lcom/android/settings/applications/RunningState$ProcessItem;->mUserId:I

    if-ge v2, v3, :cond_21

    :goto_20
    return v0

    :cond_21
    move v0, v1

    goto :goto_20

    :cond_23
    iget-boolean v2, p1, Lcom/android/settings/applications/RunningState$ProcessItem;->mIsStarted:Z

    iget-boolean v3, p2, Lcom/android/settings/applications/RunningState$ProcessItem;->mIsStarted:Z

    if-eq v2, v3, :cond_30

    iget-boolean v2, p1, Lcom/android/settings/applications/RunningState$ProcessItem;->mIsStarted:Z

    if-eqz v2, :cond_2e

    :goto_2d
    return v0

    :cond_2e
    move v0, v1

    goto :goto_2d

    :cond_30
    iget-boolean v2, p1, Lcom/android/settings/applications/RunningState$ProcessItem;->mIsSystem:Z

    iget-boolean v3, p2, Lcom/android/settings/applications/RunningState$ProcessItem;->mIsSystem:Z

    if-eq v2, v3, :cond_3d

    iget-boolean v2, p1, Lcom/android/settings/applications/RunningState$ProcessItem;->mIsSystem:Z

    if-eqz v2, :cond_3b

    :goto_3a
    return v1

    :cond_3b
    move v1, v0

    goto :goto_3a

    :cond_3d
    iget-wide v2, p1, Lcom/android/settings/applications/RunningState$ProcessItem;->mActiveSince:J

    iget-wide v4, p2, Lcom/android/settings/applications/RunningState$ProcessItem;->mActiveSince:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_50

    iget-wide v2, p1, Lcom/android/settings/applications/RunningState$ProcessItem;->mActiveSince:J

    iget-wide v4, p2, Lcom/android/settings/applications/RunningState$ProcessItem;->mActiveSince:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_4e

    :goto_4d
    return v0

    :cond_4e
    move v0, v1

    goto :goto_4d

    :cond_50
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Lcom/android/settings/applications/RunningState$ProcessItem;

    check-cast p2, Lcom/android/settings/applications/RunningState$ProcessItem;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/applications/RunningState$ServiceProcessComparator;->compare(Lcom/android/settings/applications/RunningState$ProcessItem;Lcom/android/settings/applications/RunningState$ProcessItem;)I

    move-result v0

    return v0
.end method
