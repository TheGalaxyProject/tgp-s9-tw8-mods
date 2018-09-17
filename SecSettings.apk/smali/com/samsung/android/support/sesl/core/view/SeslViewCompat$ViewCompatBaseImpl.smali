.class Lcom/samsung/android/support/sesl/core/view/SeslViewCompat$ViewCompatBaseImpl;
.super Ljava/lang/Object;
.source "SeslViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/core/view/SeslViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewCompatBaseImpl"
.end annotation


# static fields
.field static sAccessibilityDelegateCheckFailed:Z

.field private static sThreadLocalRect:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mViewPropertyAnimatorCompatMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/view/View;",
            "Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/support/sesl/core/view/SeslViewCompat$ViewCompatBaseImpl;->sAccessibilityDelegateCheckFailed:Z

    return-void
.end method

.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewCompat$ViewCompatBaseImpl;->mViewPropertyAnimatorCompatMap:Ljava/util/WeakHashMap;

    return-void
.end method

.method private static getEmptyTempRect()Landroid/graphics/Rect;
    .registers 2

    sget-object v1, Lcom/samsung/android/support/sesl/core/view/SeslViewCompat$ViewCompatBaseImpl;->sThreadLocalRect:Ljava/lang/ThreadLocal;

    if-eqz v1, :cond_12

    :goto_4
    sget-object v1, Lcom/samsung/android/support/sesl/core/view/SeslViewCompat$ViewCompatBaseImpl;->sThreadLocalRect:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    if-eqz v0, :cond_1a

    :goto_e
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    return-object v0

    :cond_12
    new-instance v1, Ljava/lang/ThreadLocal;

    invoke-direct {v1}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v1, Lcom/samsung/android/support/sesl/core/view/SeslViewCompat$ViewCompatBaseImpl;->sThreadLocalRect:Ljava/lang/ThreadLocal;

    goto :goto_4

    :cond_1a
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sget-object v1, Lcom/samsung/android/support/sesl/core/view/SeslViewCompat$ViewCompatBaseImpl;->sThreadLocalRect:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_e
.end method

.method private static tickleInvalidationFlag(Landroid/view/View;)V
    .registers 3

    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v1, v0

    invoke-virtual {p0, v1}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method


# virtual methods
.method public offsetLeftAndRight(Landroid/view/View;I)V
    .registers 12

    const/4 v4, 0x0

    invoke-static {}, Lcom/samsung/android/support/sesl/core/view/SeslViewCompat$ViewCompatBaseImpl;->getEmptyTempRect()Landroid/graphics/Rect;

    move-result-object v3

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v5, v2, Landroid/view/View;

    if-nez v5, :cond_1a

    :goto_e
    invoke-virtual {p1, p2}, Landroid/view/View;->offsetLeftAndRight(I)V

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_4a

    :cond_17
    :goto_17
    if-nez v0, :cond_58

    :cond_19
    :goto_19
    return-void

    :cond_1a
    move-object v1, v2

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v7

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v8

    invoke-virtual {v3, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v7

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v8

    invoke-virtual {v3, v5, v6, v7, v8}, Landroid/graphics/Rect;->intersects(IIII)Z

    move-result v5

    if-eqz v5, :cond_48

    move v0, v4

    :goto_47
    goto :goto_e

    :cond_48
    const/4 v0, 0x1

    goto :goto_47

    :cond_4a
    invoke-static {p1}, Lcom/samsung/android/support/sesl/core/view/SeslViewCompat$ViewCompatBaseImpl;->tickleInvalidationFlag(Landroid/view/View;)V

    instance-of v4, v2, Landroid/view/View;

    if-eqz v4, :cond_17

    move-object v4, v2

    check-cast v4, Landroid/view/View;

    invoke-static {v4}, Lcom/samsung/android/support/sesl/core/view/SeslViewCompat$ViewCompatBaseImpl;->tickleInvalidationFlag(Landroid/view/View;)V

    goto :goto_17

    :cond_58
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v6

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v4

    if-eqz v4, :cond_19

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    goto :goto_19
.end method

.method public offsetTopAndBottom(Landroid/view/View;I)V
    .registers 12

    const/4 v4, 0x0

    invoke-static {}, Lcom/samsung/android/support/sesl/core/view/SeslViewCompat$ViewCompatBaseImpl;->getEmptyTempRect()Landroid/graphics/Rect;

    move-result-object v3

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v5, v2, Landroid/view/View;

    if-nez v5, :cond_1a

    :goto_e
    invoke-virtual {p1, p2}, Landroid/view/View;->offsetTopAndBottom(I)V

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_4a

    :cond_17
    :goto_17
    if-nez v0, :cond_58

    :cond_19
    :goto_19
    return-void

    :cond_1a
    move-object v1, v2

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v7

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v8

    invoke-virtual {v3, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v7

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v8

    invoke-virtual {v3, v5, v6, v7, v8}, Landroid/graphics/Rect;->intersects(IIII)Z

    move-result v5

    if-eqz v5, :cond_48

    move v0, v4

    :goto_47
    goto :goto_e

    :cond_48
    const/4 v0, 0x1

    goto :goto_47

    :cond_4a
    invoke-static {p1}, Lcom/samsung/android/support/sesl/core/view/SeslViewCompat$ViewCompatBaseImpl;->tickleInvalidationFlag(Landroid/view/View;)V

    instance-of v4, v2, Landroid/view/View;

    if-eqz v4, :cond_17

    move-object v4, v2

    check-cast v4, Landroid/view/View;

    invoke-static {v4}, Lcom/samsung/android/support/sesl/core/view/SeslViewCompat$ViewCompatBaseImpl;->tickleInvalidationFlag(Landroid/view/View;)V

    goto :goto_17

    :cond_58
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v6

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v4

    if-eqz v4, :cond_19

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    goto :goto_19
.end method
