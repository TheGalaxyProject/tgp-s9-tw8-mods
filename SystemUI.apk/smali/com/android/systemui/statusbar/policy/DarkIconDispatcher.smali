.class public interface abstract Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;
.super Ljava/lang/Object;
.source "DarkIconDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;
    }
.end annotation


# static fields
.field public static final sTmpInt2:[I

.field public static final sTmpRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->sTmpRect:Landroid/graphics/Rect;

    const/4 v0, 0x2

    new-array v0, v0, [I

    sput-object v0, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->sTmpInt2:[I

    return-void
.end method

.method public static getDarkIntensity(Landroid/graphics/Rect;Landroid/view/View;F)F
    .registers 4

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->isInArea(Landroid/graphics/Rect;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_7

    return p2

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public static getTint(Landroid/graphics/Rect;Landroid/view/View;I)I
    .registers 4

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->isInArea(Landroid/graphics/Rect;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_7

    return p2

    :cond_7
    const/4 v0, -0x1

    return v0
.end method

.method public static isInArea(Landroid/graphics/Rect;Landroid/view/View;)Z
    .registers 11

    const/4 v6, 0x0

    invoke-virtual {p0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_9

    const/4 v6, 0x1

    return v6

    :cond_9
    sget-object v7, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->sTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v7, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    sget-object v7, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->sTmpInt2:[I

    invoke-virtual {p1, v7}, Landroid/view/View;->getLocationOnScreen([I)V

    sget-object v7, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->sTmpInt2:[I

    aget v4, v7, v6

    iget v7, p0, Landroid/graphics/Rect;->left:I

    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v7

    add-int/2addr v7, v4

    iget v8, p0, Landroid/graphics/Rect;->right:I

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v2

    sub-int v7, v2, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v7, p0, Landroid/graphics/Rect;->top:I

    if-gtz v7, :cond_3f

    const/4 v0, 0x1

    :goto_33
    mul-int/lit8 v7, v1, 0x2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v8

    if-le v7, v8, :cond_41

    const/4 v5, 0x1

    :goto_3c
    if-eqz v5, :cond_43

    :goto_3e
    return v0

    :cond_3f
    const/4 v0, 0x0

    goto :goto_33

    :cond_41
    const/4 v5, 0x0

    goto :goto_3c

    :cond_43
    move v0, v6

    goto :goto_3e
.end method


# virtual methods
.method public abstract addDarkReceiver(Landroid/widget/ImageView;)V
.end method

.method public abstract addDarkReceiver(Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;)V
.end method

.method public abstract applyDark(Landroid/widget/ImageView;)V
.end method

.method public abstract getTransitionsController()Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;
.end method

.method public abstract removeDarkReceiver(Landroid/widget/ImageView;)V
.end method

.method public abstract removeDarkReceiver(Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;)V
.end method

.method public abstract setIconsDarkArea(Landroid/graphics/Rect;)V
.end method
