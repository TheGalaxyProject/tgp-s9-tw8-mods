.class final Lcom/android/settings/applications/ProcessStatsDetail$3;
.super Ljava/lang/Object;
.source "ProcessStatsDetail.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/ProcessStatsDetail;
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
        "Lcom/android/settings/applications/ProcessStatsDetail$PkgService;",
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
.method public compare(Lcom/android/settings/applications/ProcessStatsDetail$PkgService;Lcom/android/settings/applications/ProcessStatsDetail$PkgService;)I
    .registers 7

    iget-wide v0, p1, Lcom/android/settings/applications/ProcessStatsDetail$PkgService;->mDuration:J

    iget-wide v2, p2, Lcom/android/settings/applications/ProcessStatsDetail$PkgService;->mDuration:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    iget-wide v0, p1, Lcom/android/settings/applications/ProcessStatsDetail$PkgService;->mDuration:J

    iget-wide v2, p2, Lcom/android/settings/applications/ProcessStatsDetail$PkgService;->mDuration:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_14

    const/4 v0, -0x1

    return v0

    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Lcom/android/settings/applications/ProcessStatsDetail$PkgService;

    check-cast p2, Lcom/android/settings/applications/ProcessStatsDetail$PkgService;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/applications/ProcessStatsDetail$3;->compare(Lcom/android/settings/applications/ProcessStatsDetail$PkgService;Lcom/android/settings/applications/ProcessStatsDetail$PkgService;)I

    move-result v0

    return v0
.end method
