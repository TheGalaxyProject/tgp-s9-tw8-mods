.class public Lcom/android/systemui/statusbar/phone/DcmLockIcon;
.super Lcom/android/systemui/statusbar/KeyguardAffordanceView;
.source "DcmLockIcon.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/DcmLockIcon$1;
    }
.end annotation


# instance fields
.field private mForceExitCircleAnimation:Z

.field private mHandler:Landroid/os/Handler;

.field private mLastDeviceInteractive:Z

.field private mLastScreenOn:Z

.field private mLastState:I

.field private mScreenOn:Z

.field private mTrustDrawable:Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;

.field private final mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;


# direct methods
.method static synthetic -wrap0(Lcom/android/systemui/statusbar/phone/DcmLockIcon;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/DcmLockIcon;->handleUpdate()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/DcmLockIcon;->mLastState:I

    new-instance v0, Lcom/android/systemui/statusbar/phone/DcmLockIcon$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/DcmLockIcon$1;-><init>(Lcom/android/systemui/statusbar/phone/DcmLockIcon;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmLockIcon;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;

    invoke-direct {v0, p1}, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmLockIcon;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmLockIcon;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/DcmLockIcon;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmLockIcon;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    return-void
.end method

.method private getIconForState(I)I
    .registers 5

    const-string/jumbo v0, "DcmKeyguardLockIcon"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getIconForState("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p1, :pswitch_data_36

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :pswitch_2a
    const v0, 0x7f080209

    return v0

    :pswitch_2e
    const v0, 0x7f080327

    return v0

    :pswitch_32
    const v0, 0x7f0802ea

    return v0

    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_2a
        :pswitch_2e
        :pswitch_32
    .end packed-switch
.end method

.method private getState()I
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmLockIcon;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->canSkipBouncer()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmLockIcon;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isFaceUnlockRunning()Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x2

    return v0

    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method private handleUpdate()V
    .registers 12

    const/4 v10, 0x1

    sget-object v8, Lcom/android/systemui/statusbar/phone/DcmLockIcon;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DcmLockIcon;->isShown()Z

    move-result v8

    if-eqz v8, :cond_87

    move v7, v4

    :goto_12
    if-eqz v7, :cond_89

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/DcmLockIcon;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->start()V

    :goto_19
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/DcmLockIcon;->getState()I

    move-result v5

    iget v8, p0, Lcom/android/systemui/statusbar/phone/DcmLockIcon;->mLastState:I

    if-ne v5, v8, :cond_25

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/DcmLockIcon;->mLastDeviceInteractive:Z

    if-eq v4, v8, :cond_8f

    :cond_25
    :goto_25
    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/phone/DcmLockIcon;->getIconForState(I)I

    move-result v3

    sget-object v8, Lcom/android/systemui/statusbar/phone/DcmLockIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    instance-of v8, v2, Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz v8, :cond_96

    move-object v0, v2

    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    :goto_36
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/DcmLockIcon;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {p0, v8}, Lcom/android/systemui/statusbar/phone/DcmLockIcon;->setRestingAlpha(F)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DcmLockIcon;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f1200ed

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/DcmLockIcon;->setContentDescription(Ljava/lang/CharSequence;)V

    if-eqz v0, :cond_5e

    const-string/jumbo v8, "DcmKeyguardLockIcon"

    const-string/jumbo v9, "animation not null"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/DcmLockIcon;->mScreenOn:Z

    if-eqz v8, :cond_98

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    :cond_5e
    :goto_5e
    iput v5, p0, Lcom/android/systemui/statusbar/phone/DcmLockIcon;->mLastState:I

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/DcmLockIcon;->mLastDeviceInteractive:Z

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/DcmLockIcon;->mScreenOn:Z

    iput-boolean v8, p0, Lcom/android/systemui/statusbar/phone/DcmLockIcon;->mLastScreenOn:Z

    :cond_66
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/DcmLockIcon;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isTrustManaged()Z

    move-result v8

    if-eqz v8, :cond_9c

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/DcmLockIcon;->mForceExitCircleAnimation:Z

    xor-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_9c

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/DcmLockIcon;->getState()I

    move-result v8

    if-ne v8, v10, :cond_9c

    const/4 v6, 0x1

    :goto_7b
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/DcmLockIcon;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;

    invoke-virtual {v8, v6}, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->setTrustManaged(Z)V

    invoke-virtual {p0, v10}, Lcom/android/systemui/statusbar/phone/DcmLockIcon;->setClickable(Z)V

    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/phone/DcmLockIcon;->setLongClickable(Z)V

    return-void

    :cond_87
    const/4 v7, 0x0

    goto :goto_12

    :cond_89
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/DcmLockIcon;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->stop()V

    goto :goto_19

    :cond_8f
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/DcmLockIcon;->mScreenOn:Z

    iget-boolean v9, p0, Lcom/android/systemui/statusbar/phone/DcmLockIcon;->mLastScreenOn:Z

    if-eq v8, v9, :cond_66

    goto :goto_25

    :cond_96
    const/4 v0, 0x0

    goto :goto_36

    :cond_98
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->stop()V

    goto :goto_5e

    :cond_9c
    const/4 v6, 0x0

    goto :goto_7b
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmLockIcon;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->stop()V

    invoke-super {p0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->onDetachedFromWindow()V

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .registers 4

    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->onVisibilityChanged(Landroid/view/View;I)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DcmLockIcon;->isShown()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmLockIcon;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->start()V

    :goto_e
    return-void

    :cond_f
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmLockIcon;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->stop()V

    goto :goto_e
.end method

.method public setScreenOn(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/DcmLockIcon;->mScreenOn:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DcmLockIcon;->update()V

    return-void
.end method

.method public update()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/android/systemui/statusbar/phone/DcmLockIcon;->update(ZI)V

    return-void
.end method

.method public update(ZI)V
    .registers 7

    const/16 v1, 0x12cb

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/DcmLockIcon;->mForceExitCircleAnimation:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmLockIcon;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmLockIcon;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_11
    if-lez p2, :cond_1b

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmLockIcon;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_1a
    return-void

    :cond_1b
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmLockIcon;->mHandler:Landroid/os/Handler;

    int-to-long v2, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1a
.end method

.method public updateLayout()V
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmLockIcon;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->updateLayout()V

    return-void
.end method
