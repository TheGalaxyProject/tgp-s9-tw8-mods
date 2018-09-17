.class final Lcom/android/server/am/BroadcastQueue$1;
.super Ljava/lang/Object;
.source "BroadcastQueue.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/BroadcastQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/server/am/BroadcastQueue$BroadcastSpamCheckEntry;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/server/am/BroadcastQueue$BroadcastSpamCheckEntry;Lcom/android/server/am/BroadcastQueue$BroadcastSpamCheckEntry;)I
    .registers 5

    iget v0, p1, Lcom/android/server/am/BroadcastQueue$BroadcastSpamCheckEntry;->mSendCount:I

    iget v1, p2, Lcom/android/server/am/BroadcastQueue$BroadcastSpamCheckEntry;->mSendCount:I

    if-le v0, v1, :cond_8

    const/4 v0, -0x1

    return v0

    :cond_8
    iget v0, p1, Lcom/android/server/am/BroadcastQueue$BroadcastSpamCheckEntry;->mSendCount:I

    iget v1, p2, Lcom/android/server/am/BroadcastQueue$BroadcastSpamCheckEntry;->mSendCount:I

    if-ge v0, v1, :cond_10

    const/4 v0, 0x1

    return v0

    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Lcom/android/server/am/BroadcastQueue$BroadcastSpamCheckEntry;

    check-cast p2, Lcom/android/server/am/BroadcastQueue$BroadcastSpamCheckEntry;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/BroadcastQueue$1;->compare(Lcom/android/server/am/BroadcastQueue$BroadcastSpamCheckEntry;Lcom/android/server/am/BroadcastQueue$BroadcastSpamCheckEntry;)I

    move-result v0

    return v0
.end method
