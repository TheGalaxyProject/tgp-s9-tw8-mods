.class final Lcom/android/server/enterprise/application/ProcessStats$1;
.super Ljava/lang/Object;
.source "ProcessStats.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/application/ProcessStats;
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
        "Lcom/android/server/enterprise/application/ProcessStats$Stats;",
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
.method public final compare(Lcom/android/server/enterprise/application/ProcessStats$Stats;Lcom/android/server/enterprise/application/ProcessStats$Stats;)I
    .registers 9

    const/4 v3, 0x1

    const/4 v2, -0x1

    iget v4, p1, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_utime:I

    iget v5, p1, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_stime:I

    add-int v0, v4, v5

    iget v4, p2, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_utime:I

    iget v5, p2, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_stime:I

    add-int v1, v4, v5

    if-eq v0, v1, :cond_15

    if-le v0, v1, :cond_13

    :goto_12
    return v2

    :cond_13
    move v2, v3

    goto :goto_12

    :cond_15
    iget-boolean v4, p1, Lcom/android/server/enterprise/application/ProcessStats$Stats;->added:Z

    iget-boolean v5, p2, Lcom/android/server/enterprise/application/ProcessStats$Stats;->added:Z

    if-eq v4, v5, :cond_22

    iget-boolean v4, p1, Lcom/android/server/enterprise/application/ProcessStats$Stats;->added:Z

    if-eqz v4, :cond_20

    :goto_1f
    return v2

    :cond_20
    move v2, v3

    goto :goto_1f

    :cond_22
    iget-boolean v4, p1, Lcom/android/server/enterprise/application/ProcessStats$Stats;->removed:Z

    iget-boolean v5, p2, Lcom/android/server/enterprise/application/ProcessStats$Stats;->removed:Z

    if-eq v4, v5, :cond_2f

    iget-boolean v4, p1, Lcom/android/server/enterprise/application/ProcessStats$Stats;->added:Z

    if-eqz v4, :cond_2d

    :goto_2c
    return v2

    :cond_2d
    move v2, v3

    goto :goto_2c

    :cond_2f
    const/4 v2, 0x0

    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Lcom/android/server/enterprise/application/ProcessStats$Stats;

    check-cast p2, Lcom/android/server/enterprise/application/ProcessStats$Stats;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/application/ProcessStats$1;->compare(Lcom/android/server/enterprise/application/ProcessStats$Stats;Lcom/android/server/enterprise/application/ProcessStats$Stats;)I

    move-result v0

    return v0
.end method
