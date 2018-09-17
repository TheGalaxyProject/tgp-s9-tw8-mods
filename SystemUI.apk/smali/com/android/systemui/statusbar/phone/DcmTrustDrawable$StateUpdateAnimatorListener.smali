.class Lcom/android/systemui/statusbar/phone/DcmTrustDrawable$StateUpdateAnimatorListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DcmTrustDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StateUpdateAnimatorListener"
.end annotation


# instance fields
.field mCancelled:Z

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;)V
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable$StateUpdateAnimatorListener;->this$0:Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;Lcom/android/systemui/statusbar/phone/DcmTrustDrawable$StateUpdateAnimatorListener;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable$StateUpdateAnimatorListener;-><init>(Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;)V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable$StateUpdateAnimatorListener;->mCancelled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable$StateUpdateAnimatorListener;->mCancelled:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable$StateUpdateAnimatorListener;->this$0:Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->-wrap0(Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;Z)V

    :cond_a
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable$StateUpdateAnimatorListener;->mCancelled:Z

    return-void
.end method
