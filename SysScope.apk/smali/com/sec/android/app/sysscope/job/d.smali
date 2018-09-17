.class final Lcom/sec/android/app/sysscope/job/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/sec/android/app/sysscope/job/e;Lcom/sec/android/app/sysscope/job/e;)I
    .registers 8

    const/4 v1, 0x1

    const/4 v0, -0x1

    iget v2, p1, Lcom/sec/android/app/sysscope/job/e;->l:I

    iget v3, p1, Lcom/sec/android/app/sysscope/job/e;->m:I

    add-int/2addr v2, v3

    iget v3, p2, Lcom/sec/android/app/sysscope/job/e;->l:I

    iget v4, p2, Lcom/sec/android/app/sysscope/job/e;->m:I

    add-int/2addr v3, v4

    if-eq v2, v3, :cond_13

    if-le v2, v3, :cond_11

    :cond_10
    :goto_10
    return v0

    :cond_11
    move v0, v1

    goto :goto_10

    :cond_13
    iget-boolean v2, p1, Lcom/sec/android/app/sysscope/job/e;->s:Z

    iget-boolean v3, p2, Lcom/sec/android/app/sysscope/job/e;->s:Z

    if-eq v2, v3, :cond_1f

    iget-boolean v2, p1, Lcom/sec/android/app/sysscope/job/e;->s:Z

    if-nez v2, :cond_10

    move v0, v1

    goto :goto_10

    :cond_1f
    iget-boolean v2, p1, Lcom/sec/android/app/sysscope/job/e;->t:Z

    iget-boolean v3, p2, Lcom/sec/android/app/sysscope/job/e;->t:Z

    if-eq v2, v3, :cond_2b

    iget-boolean v2, p1, Lcom/sec/android/app/sysscope/job/e;->t:Z

    if-nez v2, :cond_10

    move v0, v1

    goto :goto_10

    :cond_2b
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Lcom/sec/android/app/sysscope/job/e;

    check-cast p2, Lcom/sec/android/app/sysscope/job/e;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sysscope/job/d;->a(Lcom/sec/android/app/sysscope/job/e;Lcom/sec/android/app/sysscope/job/e;)I

    move-result v0

    return v0
.end method
