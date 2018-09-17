.class Lcom/android/systemui/recents/views/TaskStackView$1;
.super Ljava/lang/Object;
.source "TaskStackView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/views/TaskStackView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/views/TaskStackView;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/views/TaskStackView;)V
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskStackView$1;->this$0:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView$1;->this$0:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-static {v0}, Lcom/android/systemui/recents/views/TaskStackView;->-get3(Lcom/android/systemui/recents/views/TaskStackView;)Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView$1;->this$0:Lcom/android/systemui/recents/views/TaskStackView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/recents/views/TaskStackView;->-set0(Lcom/android/systemui/recents/views/TaskStackView;Z)Z

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView$1;->this$0:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackView;->invalidate()V

    :cond_13
    return-void
.end method
