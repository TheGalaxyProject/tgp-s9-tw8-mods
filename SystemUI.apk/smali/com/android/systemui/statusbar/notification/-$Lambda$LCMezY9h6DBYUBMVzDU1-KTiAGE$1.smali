.class final synthetic Lcom/android/systemui/statusbar/notification/-$Lambda$LCMezY9h6DBYUBMVzDU1-KTiAGE$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;

.field private final synthetic -$f1:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Landroid/animation/ValueAnimator;)V
    .registers 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/-$Lambda$LCMezY9h6DBYUBMVzDU1-KTiAGE$1;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/-$Lambda$LCMezY9h6DBYUBMVzDU1-KTiAGE$1;->-$f1:Ljava/lang/Object;

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;->lambda$-com_android_systemui_statusbar_notification_NotificationIconDozeHelper_2507(Landroid/widget/ImageView;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/-$Lambda$LCMezY9h6DBYUBMVzDU1-KTiAGE$1;->-$f0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/-$Lambda$LCMezY9h6DBYUBMVzDU1-KTiAGE$1;->-$f1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/-$Lambda$LCMezY9h6DBYUBMVzDU1-KTiAGE$1;->$m$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method