.class public Lcom/android/systemui/statusbar/EmptyShadeView$EmptyShadeViewState;
.super Lcom/android/systemui/statusbar/stack/ExpandableViewState;
.source "EmptyShadeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/EmptyShadeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EmptyShadeViewState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/EmptyShadeView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/EmptyShadeView;)V
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/statusbar/EmptyShadeView$EmptyShadeViewState;->this$0:Lcom/android/systemui/statusbar/EmptyShadeView;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;-><init>()V

    return-void
.end method


# virtual methods
.method public applyToView(Landroid/view/View;)V
    .registers 7

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->applyToView(Landroid/view/View;)V

    instance-of v2, p1, Lcom/android/systemui/statusbar/EmptyShadeView;

    if-eqz v2, :cond_2c

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/EmptyShadeView;

    iget v2, p0, Lcom/android/systemui/statusbar/EmptyShadeView$EmptyShadeViewState;->clipTopAmount:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/EmptyShadeView$EmptyShadeViewState;->this$0:Lcom/android/systemui/statusbar/EmptyShadeView;

    invoke-static {v3}, Lcom/android/systemui/statusbar/EmptyShadeView;->-get0(Lcom/android/systemui/statusbar/EmptyShadeView;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3f19999a    # 0.6f

    mul-float/2addr v3, v4

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_2d

    const/4 v1, 0x1

    :goto_21
    if-eqz v1, :cond_2f

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/EmptyShadeView;->willBeGone()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    :goto_29
    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/EmptyShadeView;->performVisibilityAnimation(Z)V

    :cond_2c
    return-void

    :cond_2d
    const/4 v1, 0x0

    goto :goto_21

    :cond_2f
    const/4 v2, 0x0

    goto :goto_29
.end method
