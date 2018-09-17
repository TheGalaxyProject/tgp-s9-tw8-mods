.class public Lcom/android/keyguard/KeyguardSimPukTMOView;
.super Landroid/widget/LinearLayout;
.source "KeyguardSimPukTMOView.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardSecurityView;


# instance fields
.field private mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;


# direct methods
.method static synthetic -get0(Lcom/android/keyguard/KeyguardSimPukTMOView;)Lcom/android/keyguard/KeyguardSecurityCallback;
    .registers 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukTMOView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/keyguard/KeyguardSimPukTMOView;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukTMOView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardSimPukTMOView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public needsInput()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected onFinishInflate()V
    .registers 9

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v5, 0x7f0a02b9

    invoke-virtual {p0, v5}, Lcom/android/keyguard/KeyguardSimPukTMOView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/keyguard/KeyguardSimPukTMOView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x11200c1

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v3, :cond_6b

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/keyguard/KeyguardSimPukTMOView;->mContext:Landroid/content/Context;

    const v7, 0x7f120637

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/keyguard/KeyguardSimPukTMOView;->mContext:Landroid/content/Context;

    const v7, 0x7f120636

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v4, :cond_68

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/keyguard/KeyguardSimPukTMOView;->mContext:Landroid/content/Context;

    const v7, 0x10402f6

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_68
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6b
    const v5, 0x7f0a0196

    invoke-virtual {p0, v5}, Lcom/android/keyguard/KeyguardSimPukTMOView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    if-eqz v0, :cond_86

    if-eqz v4, :cond_a6

    const v5, 0x7f12055b

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setText(I)V

    :goto_7e
    new-instance v5, Lcom/android/keyguard/KeyguardSimPukTMOView$1;

    invoke-direct {v5, p0}, Lcom/android/keyguard/KeyguardSimPukTMOView$1;-><init>(Lcom/android/keyguard/KeyguardSimPukTMOView;)V

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_86
    const v5, 0x7f0a01bd

    invoke-virtual {p0, v5}, Lcom/android/keyguard/KeyguardSimPukTMOView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    if-eqz v4, :cond_ad

    if-eqz v1, :cond_a5

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    const v5, 0x7f120638

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setText(I)V

    new-instance v5, Lcom/android/keyguard/KeyguardSimPukTMOView$2;

    invoke-direct {v5, p0}, Lcom/android/keyguard/KeyguardSimPukTMOView$2;-><init>(Lcom/android/keyguard/KeyguardSimPukTMOView;)V

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_a5
    :goto_a5
    return-void

    :cond_a6
    const v5, 0x7f120635

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setText(I)V

    goto :goto_7e

    :cond_ad
    if-eqz v1, :cond_a5

    const/16 v5, 0x8

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_a5
.end method

.method public onPause()V
    .registers 1

    return-void
.end method

.method public onResume(I)V
    .registers 2

    return-void
.end method

.method public reset()V
    .registers 1

    return-void
.end method

.method public setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V
    .registers 2

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSimPukTMOView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-void
.end method

.method public setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .registers 2

    return-void
.end method

.method public showMessage(Ljava/lang/String;I)V
    .registers 3

    return-void
.end method

.method public showPromptReason(I)V
    .registers 2

    return-void
.end method

.method public startAppearAnimation()V
    .registers 1

    return-void
.end method

.method public startDisappearAnimation(Ljava/lang/Runnable;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method
