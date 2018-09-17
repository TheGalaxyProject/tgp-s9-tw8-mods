.class public Lcom/android/keyguard/EmergencyCarrierArea;
.super Lcom/android/keyguard/AlphaOptimizedLinearLayout;
.source "EmergencyCarrierArea.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;
    }
.end annotation


# instance fields
.field private mBiometricDexButtonView:Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;

.field private mEmergencyButton:Lcom/android/keyguard/EmergencyButton;

.field private mEmergencyButtonArea:Landroid/widget/LinearLayout;

.field private mForgotPatternButton:Lcom/android/systemui/widget/SystemUIButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/keyguard/AlphaOptimizedLinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/AlphaOptimizedLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .registers 2

    invoke-super {p0}, Lcom/android/keyguard/AlphaOptimizedLinearLayout;->onFinishInflate()V

    const v0, 0x7f0a01bd

    invoke-virtual {p0, v0}, Lcom/android/keyguard/EmergencyCarrierArea;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/widget/SystemUIButton;

    iput-object v0, p0, Lcom/android/keyguard/EmergencyCarrierArea;->mForgotPatternButton:Lcom/android/systemui/widget/SystemUIButton;

    const v0, 0x7f0a0196

    invoke-virtual {p0, v0}, Lcom/android/keyguard/EmergencyCarrierArea;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/EmergencyButton;

    iput-object v0, p0, Lcom/android/keyguard/EmergencyCarrierArea;->mEmergencyButton:Lcom/android/keyguard/EmergencyButton;

    const v0, 0x7f0a025c

    invoke-virtual {p0, v0}, Lcom/android/keyguard/EmergencyCarrierArea;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/keyguard/EmergencyCarrierArea;->mEmergencyButtonArea:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0245

    invoke-virtual {p0, v0}, Lcom/android/keyguard/EmergencyCarrierArea;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;

    iput-object v0, p0, Lcom/android/keyguard/EmergencyCarrierArea;->mBiometricDexButtonView:Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;

    invoke-virtual {p0}, Lcom/android/keyguard/EmergencyCarrierArea;->resizeFooter()V

    return-void
.end method

.method public resizeFooter()V
    .registers 11

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    iget-object v6, p0, Lcom/android/keyguard/EmergencyCarrierArea;->mEmergencyButtonArea:Landroid/widget/LinearLayout;

    if-eqz v6, :cond_b

    iget-object v6, p0, Lcom/android/keyguard/EmergencyCarrierArea;->mEmergencyButton:Lcom/android/keyguard/EmergencyButton;

    if-nez v6, :cond_c

    :cond_b
    return-void

    :cond_c
    iget-object v6, p0, Lcom/android/keyguard/EmergencyCarrierArea;->mForgotPatternButton:Lcom/android/systemui/widget/SystemUIButton;

    if-eqz v6, :cond_b

    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    :goto_13
    iget-object v6, p0, Lcom/android/keyguard/EmergencyCarrierArea;->mEmergencyButtonArea:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v6

    if-ge v2, v6, :cond_3a

    iget-object v6, p0, Lcom/android/keyguard/EmergencyCarrierArea;->mEmergencyButtonArea:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_37

    iget-object v6, p0, Lcom/android/keyguard/EmergencyCarrierArea;->mEmergencyButtonArea:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_37

    add-int/lit8 v5, v5, 0x1

    iget-object v6, p0, Lcom/android/keyguard/EmergencyCarrierArea;->mEmergencyButtonArea:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    :cond_37
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_3a
    if-lez v5, :cond_4c

    iget-object v6, p0, Lcom/android/keyguard/EmergencyCarrierArea;->mEmergencyButton:Lcom/android/keyguard/EmergencyButton;

    invoke-virtual {v6}, Lcom/android/keyguard/EmergencyButton;->getVisibility()I

    move-result v6

    const/4 v7, 0x4

    if-ne v6, v7, :cond_4c

    iget-object v6, p0, Lcom/android/keyguard/EmergencyCarrierArea;->mEmergencyButton:Lcom/android/keyguard/EmergencyButton;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Lcom/android/keyguard/EmergencyButton;->setVisibility(I)V

    :cond_4c
    packed-switch v5, :pswitch_data_8a

    :cond_4f
    :goto_4f
    return-void

    :pswitch_50
    if-eqz v3, :cond_4f

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    iput v6, v4, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v6, 0x0

    iput v6, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_4f

    :pswitch_62
    iget-object v6, p0, Lcom/android/keyguard/EmergencyCarrierArea;->mEmergencyButton:Lcom/android/keyguard/EmergencyButton;

    invoke-virtual {v6}, Lcom/android/keyguard/EmergencyButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v6, p0, Lcom/android/keyguard/EmergencyCarrierArea;->mForgotPatternButton:Lcom/android/systemui/widget/SystemUIButton;

    invoke-virtual {v6}, Lcom/android/systemui/widget/SystemUIButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iput v8, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v8, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v9, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iput v9, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v6, p0, Lcom/android/keyguard/EmergencyCarrierArea;->mEmergencyButton:Lcom/android/keyguard/EmergencyButton;

    invoke-virtual {v6, v0}, Lcom/android/keyguard/EmergencyButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v6, p0, Lcom/android/keyguard/EmergencyCarrierArea;->mForgotPatternButton:Lcom/android/systemui/widget/SystemUIButton;

    invoke-virtual {v6, v1}, Lcom/android/systemui/widget/SystemUIButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v6, p0, Lcom/android/keyguard/EmergencyCarrierArea;->mForgotPatternButton:Lcom/android/systemui/widget/SystemUIButton;

    invoke-virtual {v6, v8, v8, v8, v8}, Lcom/android/systemui/widget/SystemUIButton;->setPadding(IIII)V

    goto :goto_4f

    :pswitch_data_8a
    .packed-switch 0x1
        :pswitch_50
        :pswitch_62
    .end packed-switch
.end method

.method public updateDexButtonVisibility()V
    .registers 2

    iget-object v0, p0, Lcom/android/keyguard/EmergencyCarrierArea;->mBiometricDexButtonView:Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/keyguard/EmergencyCarrierArea;->mBiometricDexButtonView:Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;

    invoke-virtual {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;->updateButtonVisibility()V

    :cond_9
    return-void
.end method
