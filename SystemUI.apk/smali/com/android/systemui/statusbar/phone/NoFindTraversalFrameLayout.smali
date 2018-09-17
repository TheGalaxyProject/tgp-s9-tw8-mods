.class public Lcom/android/systemui/statusbar/phone/NoFindTraversalFrameLayout;
.super Landroid/widget/FrameLayout;
.source "NoFindTraversalFrameLayout.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method protected findViewTraversal(I)Landroid/view/View;
    .registers 3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NoFindTraversalFrameLayout;->getId()I

    move-result v0

    if-ne p1, v0, :cond_7

    return-object p0

    :cond_7
    const/4 v0, 0x0

    return-object v0
.end method
