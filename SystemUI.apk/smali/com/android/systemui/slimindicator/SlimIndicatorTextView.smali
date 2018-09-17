.class public Lcom/android/systemui/slimindicator/SlimIndicatorTextView;
.super Landroid/widget/TextView;
.source "SlimIndicatorTextView.java"

# interfaces
.implements Lcom/android/systemui/tuner/TunerService$Tunable;
.implements Lcom/android/systemui/slimindicator/SlimIndicatorElement;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHideMySelf:Z

.field private mOriginalAlpha:F

.field private mOriginalVisibility:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/slimindicator/SlimIndicatorTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/slimindicator/SlimIndicatorTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/slimindicator/SlimIndicatorTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/16 v0, 0x8

    iput v0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorTextView;->mOriginalVisibility:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorTextView;->mOriginalAlpha:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorTextView;->mHideMySelf:Z

    iput-object p1, p0, Lcom/android/systemui/slimindicator/SlimIndicatorTextView;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method synthetic lambda$-com_android_systemui_slimindicator_SlimIndicatorTextView_2451(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/slimindicator/SlimIndicatorTextView;->updateSlimIndicatorStyle(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 5

    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/android/systemui/slimindicator/SlimIndicatorTextView;->getVisibility()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorTextView;->mOriginalVisibility:I

    invoke-virtual {p0}, Lcom/android/systemui/slimindicator/SlimIndicatorTextView;->getAlpha()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorTextView;->mOriginalAlpha:F

    sget-boolean v0, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_SLIMINDICATOR:Z

    if-eqz v0, :cond_27

    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "icon_blacklist"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    :cond_27
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    sget-boolean v0, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_SLIMINDICATOR:Z

    if-eqz v0, :cond_12

    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {v0, p0}, Lcom/android/systemui/tuner/TunerService;->removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V

    :cond_12
    return-void
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const-string/jumbo v0, "icon_blacklist"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    new-instance v0, Lcom/android/systemui/slimindicator/-$Lambda$ilZbT9Qz9eLUJsvy1Q2N_9PT-xw;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/slimindicator/-$Lambda$ilZbT9Qz9eLUJsvy1Q2N_9PT-xw;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/slimindicator/SlimIndicatorTextView;->post(Ljava/lang/Runnable;)Z

    :cond_11
    return-void
.end method

.method public setAlpha(F)V
    .registers 4

    move v0, p1

    iput p1, p0, Lcom/android/systemui/slimindicator/SlimIndicatorTextView;->mOriginalAlpha:F

    sget-boolean v1, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_SLIMINDICATOR:Z

    if-eqz v1, :cond_e

    iget-boolean v1, p0, Lcom/android/systemui/slimindicator/SlimIndicatorTextView;->mHideMySelf:Z

    if-eqz v1, :cond_12

    const v0, 0x3ca3d70a    # 0.02f

    :cond_e
    :goto_e
    invoke-super {p0, v0}, Landroid/widget/TextView;->setAlpha(F)V

    return-void

    :cond_12
    move v0, p1

    goto :goto_e
.end method

.method public setVisibility(I)V
    .registers 4

    move v0, p1

    iput p1, p0, Lcom/android/systemui/slimindicator/SlimIndicatorTextView;->mOriginalVisibility:I

    sget-boolean v1, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_SLIMINDICATOR:Z

    if-eqz v1, :cond_d

    iget-boolean v1, p0, Lcom/android/systemui/slimindicator/SlimIndicatorTextView;->mHideMySelf:Z

    if-eqz v1, :cond_11

    const/16 v0, 0x8

    :cond_d
    :goto_d
    invoke-super {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    :cond_11
    move v0, p1

    goto :goto_d
.end method

.method public updateSlimIndicatorStyle(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    sget-boolean v1, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_SLIMINDICATOR:Z

    if-nez v1, :cond_5

    return-void

    :cond_5
    const-class v1, Lcom/android/systemui/slimindicator/SlimIndicatorManager;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/slimindicator/SlimIndicatorManager;

    invoke-virtual {v1, p1, p2}, Lcom/android/systemui/slimindicator/SlimIndicatorManager;->isHomeCarrierTextDisabled(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/systemui/slimindicator/SlimIndicatorTextView;->mHideMySelf:Z

    if-eq v1, v0, :cond_21

    iput-boolean v0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorTextView;->mHideMySelf:Z

    iget v1, p0, Lcom/android/systemui/slimindicator/SlimIndicatorTextView;->mOriginalVisibility:I

    invoke-virtual {p0, v1}, Lcom/android/systemui/slimindicator/SlimIndicatorTextView;->setVisibility(I)V

    iget v1, p0, Lcom/android/systemui/slimindicator/SlimIndicatorTextView;->mOriginalAlpha:F

    invoke-virtual {p0, v1}, Lcom/android/systemui/slimindicator/SlimIndicatorTextView;->setAlpha(F)V

    :cond_21
    return-void
.end method
