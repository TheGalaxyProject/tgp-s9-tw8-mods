.class public Lcom/android/systemui/statusbar/DismissView$DismissViewState;
.super Lcom/android/systemui/statusbar/stack/ExpandableViewState;
.source "DismissView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/DismissView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DismissViewState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/DismissView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/DismissView;)V
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/statusbar/DismissView$DismissViewState;->this$0:Lcom/android/systemui/statusbar/DismissView;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;-><init>()V

    return-void
.end method


# virtual methods
.method public applyToView(Landroid/view/View;)V
    .registers 6

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->applyToView(Landroid/view/View;)V

    instance-of v2, p1, Lcom/android/systemui/statusbar/DismissView;

    if-eqz v2, :cond_20

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/DismissView;

    iget v2, p0, Lcom/android/systemui/statusbar/DismissView$DismissViewState;->clipTopAmount:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/DismissView$DismissViewState;->this$0:Lcom/android/systemui/statusbar/DismissView;

    invoke-static {v3}, Lcom/android/systemui/statusbar/DismissView;->-get0(Lcom/android/systemui/statusbar/DismissView;)I

    move-result v3

    if-ge v2, v3, :cond_21

    const/4 v1, 0x1

    :goto_15
    if-eqz v1, :cond_23

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/DismissView;->willBeGone()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    :goto_1d
    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/DismissView;->performVisibilityAnimation(Z)V

    :cond_20
    return-void

    :cond_21
    const/4 v1, 0x0

    goto :goto_15

    :cond_23
    const/4 v2, 0x0

    goto :goto_1d
.end method
