.class Lcom/android/systemui/statusbar/ActivatableNotificationView$1;
.super Ljava/lang/Object;
.source "ActivatableNotificationView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/ActivatableNotificationView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/ActivatableNotificationView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView$1;->this$0:Lcom/android/systemui/statusbar/ActivatableNotificationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView$1;->this$0:Lcom/android/systemui/statusbar/ActivatableNotificationView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView$1;->this$0:Lcom/android/systemui/statusbar/ActivatableNotificationView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->-get1(Lcom/android/systemui/statusbar/ActivatableNotificationView;)Lcom/android/systemui/statusbar/NotificationBackgroundView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->getAlpha()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->setNormalBackgroundVisibilityAmount(F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView$1;->this$0:Lcom/android/systemui/statusbar/ActivatableNotificationView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView$1;->this$0:Lcom/android/systemui/statusbar/ActivatableNotificationView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->-get0(Lcom/android/systemui/statusbar/ActivatableNotificationView;)Lcom/android/systemui/statusbar/NotificationBackgroundView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->getAlpha()F

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->-set3(Lcom/android/systemui/statusbar/ActivatableNotificationView;F)F

    return-void
.end method
