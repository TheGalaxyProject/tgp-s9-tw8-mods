.class public final Lcom/android/server/net/NetworkPolicyManagerService$ProcStateSeqHistory;
.super Ljava/lang/Object;
.source "NetworkPolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkPolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProcStateSeqHistory"
.end annotation


# static fields
.field private static final INVALID_UID:I = -0x1


# instance fields
.field private mHistoryNext:I

.field private final mMaxCapacity:I

.field private final mProcStateSeqs:[J

.field private final mUids:[I


# direct methods
.method public constructor <init>(I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$ProcStateSeqHistory;->mMaxCapacity:I

    iget v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$ProcStateSeqHistory;->mMaxCapacity:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$ProcStateSeqHistory;->mUids:[I

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$ProcStateSeqHistory;->mUids:[I

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    iget v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$ProcStateSeqHistory;->mMaxCapacity:I

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$ProcStateSeqHistory;->mProcStateSeqs:[J

    return-void
.end method

.method public static getString(IJ)Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "UID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " procStateSeq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private increaseNext(II)I
    .registers 4

    add-int/2addr p1, p2

    iget v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$ProcStateSeqHistory;->mMaxCapacity:I

    if-lt p1, v0, :cond_7

    const/4 p1, 0x0

    :cond_6
    :goto_6
    return p1

    :cond_7
    if-gez p1, :cond_6

    iget v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$ProcStateSeqHistory;->mMaxCapacity:I

    add-int/lit8 p1, v0, -0x1

    goto :goto_6
.end method


# virtual methods
.method public addProcStateSeqUL(IJ)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUidRulesFirstLock"
    .end annotation

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$ProcStateSeqHistory;->mUids:[I

    iget v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$ProcStateSeqHistory;->mHistoryNext:I

    aput p1, v0, v1

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$ProcStateSeqHistory;->mProcStateSeqs:[J

    iget v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$ProcStateSeqHistory;->mHistoryNext:I

    aput-wide p2, v0, v1

    iget v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$ProcStateSeqHistory;->mHistoryNext:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService$ProcStateSeqHistory;->increaseNext(II)I

    move-result v0

    iput v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$ProcStateSeqHistory;->mHistoryNext:I

    return-void
.end method

.method public dumpUL(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUidRulesFirstLock"
    .end annotation

    const/4 v4, -0x1

    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$ProcStateSeqHistory;->mUids:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    if-ne v1, v4, :cond_f

    const-string/jumbo v1, "NONE"

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_f
    iget v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$ProcStateSeqHistory;->mHistoryNext:I

    :goto_11
    invoke-direct {p0, v0, v4}, Lcom/android/server/net/NetworkPolicyManagerService$ProcStateSeqHistory;->increaseNext(II)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$ProcStateSeqHistory;->mUids:[I

    aget v1, v1, v0

    if-ne v1, v4, :cond_1c

    :cond_1b
    return-void

    :cond_1c
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$ProcStateSeqHistory;->mUids:[I

    aget v1, v1, v0

    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService$ProcStateSeqHistory;->mProcStateSeqs:[J

    aget-wide v2, v2, v0

    invoke-static {v1, v2, v3}, Lcom/android/server/net/NetworkPolicyManagerService$ProcStateSeqHistory;->getString(IJ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$ProcStateSeqHistory;->mHistoryNext:I

    if-eq v0, v1, :cond_1b

    goto :goto_11
.end method
