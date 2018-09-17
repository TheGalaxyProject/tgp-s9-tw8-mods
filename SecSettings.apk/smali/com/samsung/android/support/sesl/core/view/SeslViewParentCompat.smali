.class public Lcom/samsung/android/support/sesl/core/view/SeslViewParentCompat;
.super Ljava/lang/Object;
.source "SeslViewParentCompat.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onNestedPreScroll(Landroid/view/ViewParent;Landroid/view/View;II[II)V
    .registers 13

    instance-of v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingParent2;

    if-nez v0, :cond_7

    if-eqz p5, :cond_13

    :goto_6
    return-void

    :cond_7
    move-object v0, p0

    check-cast v0, Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingParent2;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingParent2;->onNestedPreScroll(Landroid/view/View;II[II)V

    goto :goto_6

    :cond_13
    :try_start_13
    invoke-interface {p0, p1, p2, p3, p4}, Landroid/view/ViewParent;->onNestedPreScroll(Landroid/view/View;II[I)V
    :try_end_16
    .catch Ljava/lang/AbstractMethodError; {:try_start_13 .. :try_end_16} :catch_17

    goto :goto_6

    :catch_17
    move-exception v6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ViewParent "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " does not implement interface method onNestedPreScroll"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "ViewParentCompat"

    invoke-static {v1, v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6
.end method

.method public static onNestedScroll(Landroid/view/ViewParent;Landroid/view/View;IIIII)V
    .registers 15

    instance-of v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingParent2;

    if-nez v0, :cond_7

    if-eqz p6, :cond_14

    :goto_6
    return-void

    :cond_7
    move-object v0, p0

    check-cast v0, Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingParent2;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingParent2;->onNestedScroll(Landroid/view/View;IIIII)V

    goto :goto_6

    :cond_14
    :try_start_14
    invoke-interface/range {p0 .. p5}, Landroid/view/ViewParent;->onNestedScroll(Landroid/view/View;IIII)V
    :try_end_17
    .catch Ljava/lang/AbstractMethodError; {:try_start_14 .. :try_end_17} :catch_18

    goto :goto_6

    :catch_18
    move-exception v7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ViewParent "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " does not implement interface method onNestedScroll"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "ViewParentCompat"

    invoke-static {v1, v0, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6
.end method

.method public static onNestedScrollAccepted(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;II)V
    .registers 8

    instance-of v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingParent2;

    if-nez v1, :cond_7

    if-eqz p4, :cond_d

    :goto_6
    return-void

    :cond_7
    check-cast p0, Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingParent2;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingParent2;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V

    goto :goto_6

    :cond_d
    :try_start_d
    invoke-interface {p0, p1, p2, p3}, Landroid/view/ViewParent;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    :try_end_10
    .catch Ljava/lang/AbstractMethodError; {:try_start_d .. :try_end_10} :catch_11

    goto :goto_6

    :catch_11
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ViewParent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " does not implement interface method onNestedScrollAccepted"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "ViewParentCompat"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6
.end method

.method public static onStartNestedScroll(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;II)Z
    .registers 9

    const/4 v3, 0x0

    instance-of v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingParent2;

    if-nez v1, :cond_8

    if-eqz p4, :cond_f

    return v3

    :cond_8
    check-cast p0, Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingParent2;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingParent2;->onStartNestedScroll(Landroid/view/View;Landroid/view/View;II)Z

    move-result v1

    return v1

    :cond_f
    :try_start_f
    invoke-interface {p0, p1, p2, p3}, Landroid/view/ViewParent;->onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    :try_end_12
    .catch Ljava/lang/AbstractMethodError; {:try_start_f .. :try_end_12} :catch_14

    move-result v1

    return v1

    :catch_14
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ViewParent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " does not implement interface method onStartNestedScroll"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "ViewParentCompat"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v3
.end method

.method public static onStopNestedScroll(Landroid/view/ViewParent;Landroid/view/View;I)V
    .registers 6

    instance-of v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingParent2;

    if-nez v1, :cond_7

    if-eqz p2, :cond_d

    :goto_6
    return-void

    :cond_7
    check-cast p0, Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingParent2;

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingParent2;->onStopNestedScroll(Landroid/view/View;I)V

    goto :goto_6

    :cond_d
    :try_start_d
    invoke-interface {p0, p1}, Landroid/view/ViewParent;->onStopNestedScroll(Landroid/view/View;)V
    :try_end_10
    .catch Ljava/lang/AbstractMethodError; {:try_start_d .. :try_end_10} :catch_11

    goto :goto_6

    :catch_11
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ViewParent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " does not implement interface method onStopNestedScroll"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "ViewParentCompat"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6
.end method
