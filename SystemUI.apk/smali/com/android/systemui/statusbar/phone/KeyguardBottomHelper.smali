.class public Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;
.super Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;
.source "KeyguardBottomHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper$AlphaInterpolater;
    }
.end annotation


# instance fields
.field private mAlphaInterpolator:Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper$AlphaInterpolater;

.field private mCenterIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

.field private mIndicationText:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

.field private mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

.field private mLeftIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

.field private mLockSecureIcon:Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;

.field private mPreviewAnimationStarted:Z

.field private mRightIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

.field private mSineIn33:Landroid/view/animation/Interpolator;

.field private mTargetedView:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

.field private mUSIMText:Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;)Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper$AlphaInterpolater;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mAlphaInterpolator:Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper$AlphaInterpolater;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;)Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mCenterIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;)Landroid/view/animation/Interpolator;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mSineIn33:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;Landroid/content/Context;Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V

    return-void
.end method

.method constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;Landroid/content/Context;Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V
    .registers 12

    const v5, 0x3f547ae1    # 0.83f

    const/4 v6, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;-><init>()V

    new-instance v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper$AlphaInterpolater;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper$AlphaInterpolater;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper$AlphaInterpolater;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mAlphaInterpolator:Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper$AlphaInterpolater;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ea8f5c3    # 0.33f

    invoke-direct {v0, v1, v2, v5, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mSineIn33:Landroid/view/animation/Interpolator;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    check-cast p3, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->initIcons()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    move-object v0, p0

    move v5, v4

    move v7, v4

    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->updateIcon(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;FFZZZZ)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mCenterIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    move-object v0, p0

    move v5, v4

    move v7, v4

    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->updateIcon(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;FFZZZZ)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    move-object v0, p0

    move v5, v4

    move v7, v4

    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->updateIcon(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;FFZZZZ)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->initDimens()V

    return-void
.end method


# virtual methods
.method public animateHideLeftRightIcon()V
    .registers 9

    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    move-object v0, p0

    move v3, v2

    move v6, v5

    move v7, v5

    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->updateIcon(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;FFZZZZ)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    move-object v0, p0

    move v3, v2

    move v6, v5

    move v7, v5

    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->updateIcon(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;FFZZZZ)V

    return-void
.end method

.method public cancelDAAffordance()V
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->cancelDAAffordance()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->cancelDAAffordance()V

    return-void
.end method

.method protected centerSwipePossible()Z
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mCenterIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_14

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mCenterIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->getImageAlpha()I

    move-result v1

    const/16 v2, 0xbf

    if-ne v1, v2, :cond_14

    const/4 v0, 0x1

    :cond_14
    return v0
.end method

.method protected getIconAtPosition(FF)Landroid/view/View;
    .registers 4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->leftSwipePossible()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->isOnIcon(Landroid/view/View;FF)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    return-object v0

    :cond_11
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->rightSwipePossible()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->isOnIcon(Landroid/view/View;FF)Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    return-object v0

    :cond_22
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->centerSwipePossible()Z

    move-result v0

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mCenterIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->isOnIconExact(Landroid/view/View;FF)Z

    move-result v0

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mCenterIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    return-object v0

    :cond_33
    const/4 v0, 0x0

    return-object v0
.end method

.method protected initDimens()V
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070177

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mTouchTargetSize:I

    return-void
.end method

.method protected initIcons()V
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_54

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->getLeftView()Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->getRightView()Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    :goto_19
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->getLockIcon()Lcom/android/systemui/statusbar/phone/LockIcon;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mCenterIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->getIndicationView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mIndicationText:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->getUSimCarrierTextView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mUSIMText:Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->getLockSecureIcon()Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mLockSecureIcon:Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setCallback(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setCallback(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mCenterIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->setCallbackForDummy(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->updatePreviews()V

    return-void

    :cond_54
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->getLeftView()Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->getRightView()Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    goto :goto_19
.end method

.method public isOnAffordanceIcon(FF)Z
    .registers 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->isOnIcon(Landroid/view/View;FF)Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->isOnIcon(Landroid/view/View;FF)Z

    move-result v0

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x1

    goto :goto_e
.end method

.method protected isOnIcon(Landroid/view/View;FF)Z
    .registers 16

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/high16 v9, 0x40000000    # 2.0f

    const/4 v7, 0x2

    new-array v4, v7, [I

    invoke-virtual {p1, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v7, v4, v6

    int-to-float v7, v7

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v9

    add-float v2, v7, v8

    aget v7, v4, v5

    int-to-float v7, v7

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v9

    add-float v3, v7, v8

    sub-float v7, p2, v2

    float-to-double v8, v7

    sub-float v7, p3, v3

    float-to-double v10, v7

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    iget v7, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mTouchTargetSize:I

    div-int/lit8 v7, v7, 0x2

    int-to-double v8, v7

    cmpg-double v7, v0, v8

    if-gtz v7, :cond_34

    :goto_33
    return v5

    :cond_34
    move v5, v6

    goto :goto_33
.end method

.method protected isOnIconExact(Landroid/view/View;FF)Z
    .registers 9

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v0, v3, [I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v3, v0, v2

    int-to-float v3, v3

    cmpl-float v3, p2, v3

    if-lez v3, :cond_31

    aget v3, v0, v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    cmpg-float v3, p2, v3

    if-gez v3, :cond_31

    aget v3, v0, v1

    int-to-float v3, v3

    cmpl-float v3, p3, v3

    if-lez v3, :cond_2f

    aget v3, v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    cmpg-float v3, p3, v3

    if-gez v3, :cond_2f

    :goto_2e
    return v1

    :cond_2f
    move v1, v2

    goto :goto_2e

    :cond_31
    move v1, v2

    goto :goto_2e
.end method

.method public isShortcutPreviewAnimationPlaying()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mPreviewAnimationStarted:Z

    return v0
.end method

.method public isSwipingInProgress()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public launchAffordance(ZZ)V
    .registers 3

    return-void
.end method

.method protected leftSwipePossible()Z
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_14

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->getImageAlpha()I

    move-result v1

    const/16 v2, 0xbf

    if-ne v1, v2, :cond_14

    const/4 v0, 0x1

    :cond_14
    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 11

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mMotionCancelled:Z

    if-eqz v5, :cond_e

    if-eqz v0, :cond_e

    return v6

    :cond_e
    sget-boolean v5, Lcom/android/systemui/Rune;->KEYGUARD_SUPPORT_SIM_PERM_DISABLED:Z

    if-eqz v5, :cond_1f

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIccBlockedPermanently()Z

    move-result v5

    if-eqz v5, :cond_1f

    return v6

    :cond_1f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    packed-switch v0, :pswitch_data_86

    :pswitch_2a
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mTargetedView:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    if-nez v5, :cond_7e

    return v6

    :pswitch_2f
    invoke-virtual {p0, v3, v4}, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->getIconAtPosition(FF)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_3d

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mTargetedView:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    if-eqz v5, :cond_40

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mTargetedView:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    if-eq v5, v2, :cond_40

    :cond_3d
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mMotionCancelled:Z

    return v6

    :cond_40
    check-cast v2, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mTargetedView:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mMotionCancelled:Z

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mTargetedView:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {p0, v5, v6}, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->startPreviewAnimation(Landroid/view/View;Z)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mTargetedView:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {v5, p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    return v5

    :pswitch_52
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mMotionCancelled:Z

    :pswitch_54
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mTargetedView:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    if-nez v5, :cond_59

    return v6

    :cond_59
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mTargetedView:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {v5, p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mTargetedView:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    if-nez v5, :cond_64

    return v1

    :cond_64
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mTargetedView:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->isPlayingHintAnimation()Z

    move-result v5

    if-nez v5, :cond_7b

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mTargetedView:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->isWaitingLaunchAppInSecure()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_7b

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mTargetedView:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {p0, v5, v8}, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->startPreviewAnimation(Landroid/view/View;Z)V

    :cond_7b
    iput-object v7, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mTargetedView:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    return v1

    :cond_7e
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mTargetedView:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {v5, p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    return v5

    nop

    :pswitch_data_86
    .packed-switch 0x0
        :pswitch_2f
        :pswitch_54
        :pswitch_2a
        :pswitch_54
        :pswitch_2a
        :pswitch_52
    .end packed-switch
.end method

.method public removePreviews()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setPreviewView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setPreviewView(Landroid/view/View;)V

    return-void
.end method

.method public reset(Z)V
    .registers 10

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    move-object v0, p0

    move v3, v2

    move v5, v4

    move v6, v4

    move v7, v4

    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->updateIcon(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;FFZZZZ)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mCenterIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    move-object v0, p0

    move v3, v2

    move v5, v4

    move v6, v4

    move v7, v4

    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->updateIcon(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;FFZZZZ)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    move-object v0, p0

    move v3, v2

    move v5, v4

    move v6, v4

    move v7, v4

    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->updateIcon(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;FFZZZZ)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->reset()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->reset()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mMotionCancelled:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mTargetedView:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mLockSecureIcon:Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;->resetHideIconAnimation()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mIndicationText:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->resetHideAnimation()V

    return-void
.end method

.method protected rightSwipePossible()Z
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_14

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->getImageAlpha()I

    move-result v1

    const/16 v2, 0xbf

    if-ne v1, v2, :cond_14

    const/4 v0, 0x1

    :cond_14
    return v0
.end method

.method public setCallbackForDummy(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V
    .registers 3

    new-instance v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper$3;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setCallback(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;)V

    return-void
.end method

.method public startHintAnimation(ZLjava/lang/Runnable;)V
    .registers 15

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->getLeftView()Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->getRightView()Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    move-result-object v10

    if-eqz p1, :cond_45

    move-object v11, v10

    :goto_f
    if-eqz p1, :cond_47

    move-object v1, v0

    :goto_12
    invoke-virtual {v11, p2}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->startHintAnimationPhase1(Ljava/lang/Runnable;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mIndicationText:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->startShortcutHintAnimation()V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mLockSecureIcon:Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;->startShortcutHintAnimation()V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mUSIMText:Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;

    if-eqz v2, :cond_28

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mUSIMText:Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;->startShortcutHintAnimation()V

    :cond_28
    new-instance v7, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper$1;

    invoke-direct {v7, p0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper$1;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-wide/16 v4, 0x96

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setImageAlpha(FZJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mCenterIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    new-instance v9, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper$2;

    invoke-direct {v9, p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper$2;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;)V

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-wide/16 v6, 0x96

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v9}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setImageAlpha(FZJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    return-void

    :cond_45
    move-object v11, v0

    goto :goto_f

    :cond_47
    move-object v1, v10

    goto :goto_12
.end method

.method protected startPreviewAnimation(Landroid/view/View;Z)V
    .registers 13

    const-wide/16 v4, -0x1

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v3, 0x1

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mCenterIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    if-ne p1, v0, :cond_c

    return-void

    :cond_c
    xor-int/lit8 v0, p2, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mPreviewAnimationStarted:Z

    sget-object v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "startPreviewAnimation() show="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_79

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mIndicationText:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->startShowHelpTextAnimation()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mLockSecureIcon:Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;->startDelayedShowAnimation()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mUSIMText:Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mUSIMText:Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;->startShowHelpTextAnimation()V

    :cond_3e
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    if-ne p1, v0, :cond_53

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    const-wide/16 v6, 0xc8

    move-object v9, v8

    invoke-virtual/range {v1 .. v9}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setImageAlpha(FZJJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mCenterIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    const-wide/16 v6, 0xc8

    move-object v9, v8

    invoke-virtual/range {v1 .. v9}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setImageAlpha(FZJJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    :goto_52
    return-void

    :cond_53
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    if-ne p1, v0, :cond_68

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    const-wide/16 v6, 0xc8

    move-object v9, v8

    invoke-virtual/range {v1 .. v9}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setImageAlpha(FZJJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mCenterIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    const-wide/16 v6, 0xc8

    move-object v9, v8

    invoke-virtual/range {v1 .. v9}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setImageAlpha(FZJJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    goto :goto_52

    :cond_68
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    const-wide/16 v6, 0xc8

    move-object v9, v8

    invoke-virtual/range {v1 .. v9}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setImageAlpha(FZJJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    const-wide/16 v6, 0xc8

    move-object v9, v8

    invoke-virtual/range {v1 .. v9}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setImageAlpha(FZJJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    goto :goto_52

    :cond_79
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mIndicationText:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->startHideHelpTextAnimation()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mLockSecureIcon:Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;->startHideAnimation()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mUSIMText:Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;

    if-eqz v0, :cond_8c

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mUSIMText:Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;->startHideHelpTextAnimation()V

    :cond_8c
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    if-ne p1, v0, :cond_9b

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {v0, v7, v3}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setImageAlpha(FZ)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mCenterIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {v0, v7, v3}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setImageAlpha(FZ)V

    goto :goto_52

    :cond_9b
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    if-ne p1, v0, :cond_aa

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {v0, v7, v3}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setImageAlpha(FZ)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mCenterIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {v0, v7, v3}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setImageAlpha(FZ)V

    goto :goto_52

    :cond_aa
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {v0, v7, v3}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setImageAlpha(FZ)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {v0, v7, v3}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setImageAlpha(FZ)V

    goto :goto_52
.end method

.method protected startSwiping(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method protected updateIcon(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;FFZZZZ)V
    .registers 9

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_b

    xor-int/lit8 v0, p6, 0x1

    if-eqz v0, :cond_b

    return-void

    :cond_b
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->updateIconAlpha(Lcom/android/systemui/statusbar/KeyguardAffordanceView;FZ)V

    return-void
.end method

.method public updatePreviews()V
    .registers 1

    return-void
.end method
