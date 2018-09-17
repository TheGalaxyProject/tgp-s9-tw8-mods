.class public Lcom/android/keyguard/KeyguardFMMView;
.super Lcom/android/keyguard/KeyguardPINView;
.source "KeyguardFMMView.java"


# instance fields
.field private mCallButton:Lcom/android/systemui/widget/SystemUIButton;

.field private mContactArea:Landroid/view/ViewGroup;

.field private mCurrentOrientation:I

.field private mFMMContainer:Landroid/view/ViewGroup;

.field private mIsVoiceCapacity:Z

.field private final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mMessageArea:Landroid/widget/LinearLayout;

.field private mMessageAreaSpace:Landroid/view/View;

.field private mOwnerContactInfo:Lcom/android/systemui/widget/SystemUITextView;

.field private mOwnerMessage:Lcom/android/systemui/widget/SystemUITextView;

.field private mTitle:Lcom/android/systemui/widget/SystemUITextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardFMMView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardPINView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/keyguard/KeyguardFMMView;->mCurrentOrientation:I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardFMMView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardFMMView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-void
.end method

.method private setFMMInfo()V
    .registers 7

    const/16 v5, 0x8

    const/4 v4, 0x0

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/util/SettingsHelper;->getFMMMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/util/SettingsHelper;->getFMMPhone()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardFMMView;->mOwnerMessage:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v2, :cond_28

    if-eqz v0, :cond_28

    const-string/jumbo v2, "\\r\\n|\\r|\\n"

    const-string/jumbo v3, " "

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/keyguard/KeyguardFMMView;->mOwnerMessage:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v2, v0}, Lcom/android/systemui/widget/SystemUITextView;->setText(Ljava/lang/CharSequence;)V

    :cond_28
    iget-object v2, p0, Lcom/android/keyguard/KeyguardFMMView;->mOwnerContactInfo:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v2, :cond_57

    iget-object v2, p0, Lcom/android/keyguard/KeyguardFMMView;->mCallButton:Lcom/android/systemui/widget/SystemUIButton;

    if-eqz v2, :cond_57

    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardFMMView;->mIsVoiceCapacity:Z

    if-eqz v2, :cond_58

    if-eqz v1, :cond_58

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_58

    iget-object v2, p0, Lcom/android/keyguard/KeyguardFMMView;->mCallButton:Lcom/android/systemui/widget/SystemUIButton;

    invoke-virtual {v2, v1}, Lcom/android/systemui/widget/SystemUIButton;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardFMMView;->mCallButton:Lcom/android/systemui/widget/SystemUIButton;

    new-instance v3, Lcom/android/keyguard/-$Lambda$VjywHzoTN04fSKMPDBCPVTST5m4$1;

    invoke-direct {v3, p0, v1}, Lcom/android/keyguard/-$Lambda$VjywHzoTN04fSKMPDBCPVTST5m4$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Lcom/android/systemui/widget/SystemUIButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardFMMView;->mOwnerContactInfo:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v2, v4}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardFMMView;->mCallButton:Lcom/android/systemui/widget/SystemUIButton;

    invoke-virtual {v2, v4}, Lcom/android/systemui/widget/SystemUIButton;->setVisibility(I)V

    :cond_57
    :goto_57
    return-void

    :cond_58
    iget-object v2, p0, Lcom/android/keyguard/KeyguardFMMView;->mOwnerContactInfo:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v2, v5}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardFMMView;->mCallButton:Lcom/android/systemui/widget/SystemUIButton;

    invoke-virtual {v2, v5}, Lcom/android/systemui/widget/SystemUIButton;->setVisibility(I)V

    goto :goto_57
.end method

.method private updateLayout()V
    .registers 14

    const v8, 0x7f0701dd

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    iget-object v6, p0, Lcom/android/keyguard/KeyguardFMMView;->mMessageArea:Landroid/widget/LinearLayout;

    if-eqz v6, :cond_e3

    iget-object v6, p0, Lcom/android/keyguard/KeyguardFMMView;->mOwnerMessage:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v6, :cond_e3

    iget-object v6, p0, Lcom/android/keyguard/KeyguardFMMView;->mFMMContainer:Landroid/view/ViewGroup;

    if-eqz v6, :cond_e3

    iget-object v6, p0, Lcom/android/keyguard/KeyguardFMMView;->mContactArea:Landroid/view/ViewGroup;

    if-eqz v6, :cond_e3

    iget-object v6, p0, Lcom/android/keyguard/KeyguardFMMView;->mTitle:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v6, :cond_e3

    iget-object v6, p0, Lcom/android/keyguard/KeyguardFMMView;->mMessageArea:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v6, p0, Lcom/android/keyguard/KeyguardFMMView;->mContactArea:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v6, p0, Lcom/android/keyguard/KeyguardFMMView;->mTitle:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v6}, Lcom/android/systemui/widget/SystemUITextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v6, p0, Lcom/android/keyguard/KeyguardFMMView;->mOwnerMessage:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v6}, Lcom/android/systemui/widget/SystemUITextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v6, p0, Lcom/android/keyguard/KeyguardFMMView;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDexMode()Z

    move-result v6

    if-eqz v6, :cond_14b

    iget-object v6, p0, Lcom/android/keyguard/KeyguardFMMView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0701e5

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget-object v6, p0, Lcom/android/keyguard/KeyguardFMMView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0701e5

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget-object v6, p0, Lcom/android/keyguard/KeyguardFMMView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget-object v6, p0, Lcom/android/keyguard/KeyguardFMMView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget-object v6, p0, Lcom/android/keyguard/KeyguardFMMView;->mFMMContainer:Landroid/view/ViewGroup;

    iget-object v7, p0, Lcom/android/keyguard/KeyguardFMMView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0701df

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iget-object v8, p0, Lcom/android/keyguard/KeyguardFMMView;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0701de

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    invoke-virtual {v6, v10, v7, v10, v8}, Landroid/view/ViewGroup;->setPadding(IIII)V

    iget-object v6, p0, Lcom/android/keyguard/KeyguardFMMView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0701e1

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget-object v6, p0, Lcom/android/keyguard/KeyguardFMMView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0701e0

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    :goto_b9
    iget-object v6, p0, Lcom/android/keyguard/KeyguardFMMView;->mMessageArea:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v6, p0, Lcom/android/keyguard/KeyguardFMMView;->mContactArea:Landroid/view/ViewGroup;

    invoke-virtual {v6, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v6, p0, Lcom/android/keyguard/KeyguardFMMView;->mTitle:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v6, v5}, Lcom/android/systemui/widget/SystemUITextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v6, p0, Lcom/android/keyguard/KeyguardFMMView;->mOwnerMessage:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v6, v4}, Lcom/android/systemui/widget/SystemUITextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget v6, p0, Lcom/android/keyguard/KeyguardFMMView;->mCurrentOrientation:I

    if-ne v6, v11, :cond_192

    iget-object v6, p0, Lcom/android/keyguard/KeyguardFMMView;->mOwnerMessage:Lcom/android/systemui/widget/SystemUITextView;

    iget-object v7, p0, Lcom/android/keyguard/KeyguardFMMView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0b0024

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/systemui/widget/SystemUITextView;->setMaxLines(I)V

    :cond_e3
    :goto_e3
    sget-boolean v6, Lcom/android/systemui/Rune;->IS_TABLET_DEVICE:Z

    if-eqz v6, :cond_14a

    iget-object v6, p0, Lcom/android/keyguard/KeyguardFMMView;->mMessageArea:Landroid/widget/LinearLayout;

    if-eqz v6, :cond_14a

    iget-object v6, p0, Lcom/android/keyguard/KeyguardFMMView;->mContactArea:Landroid/view/ViewGroup;

    if-eqz v6, :cond_14a

    iget-object v6, p0, Lcom/android/keyguard/KeyguardFMMView;->mOwnerMessage:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v6, :cond_14a

    iget-object v6, p0, Lcom/android/keyguard/KeyguardFMMView;->mMessageAreaSpace:Landroid/view/View;

    if-eqz v6, :cond_14a

    iget-object v6, p0, Lcom/android/keyguard/KeyguardFMMView;->mOwnerContactInfo:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v6, :cond_14a

    iget-object v6, p0, Lcom/android/keyguard/KeyguardFMMView;->mContactArea:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v6, p0, Lcom/android/keyguard/KeyguardFMMView;->mOwnerContactInfo:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v6}, Lcom/android/systemui/widget/SystemUITextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v6, p0, Lcom/android/keyguard/KeyguardFMMView;->mCurrentOrientation:I

    if-ne v6, v11, :cond_1aa

    iget-object v6, p0, Lcom/android/keyguard/KeyguardFMMView;->mMessageArea:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v6, p0, Lcom/android/keyguard/KeyguardFMMView;->mMessageAreaSpace:Landroid/view/View;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    const/4 v6, -0x1

    iput v6, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    :cond_11e
    :goto_11e
    iget-object v6, p0, Lcom/android/keyguard/KeyguardFMMView;->mOwnerMessage:Lcom/android/systemui/widget/SystemUITextView;

    iget-object v7, p0, Lcom/android/keyguard/KeyguardFMMView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f070202

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/systemui/widget/SystemUITextView;->setMaxWidth(I)V

    iget-object v6, p0, Lcom/android/keyguard/KeyguardFMMView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070204

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    iget-object v6, p0, Lcom/android/keyguard/KeyguardFMMView;->mOwnerContactInfo:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v6, v3}, Lcom/android/systemui/widget/SystemUITextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v6, p0, Lcom/android/keyguard/KeyguardFMMView;->mContactArea:Landroid/view/ViewGroup;

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_14a
    return-void

    :cond_14b
    iget-object v6, p0, Lcom/android/keyguard/KeyguardFMMView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0701fe

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget-object v6, p0, Lcom/android/keyguard/KeyguardFMMView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0701fe

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v10, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v10, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget-object v6, p0, Lcom/android/keyguard/KeyguardFMMView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070206

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget-object v6, p0, Lcom/android/keyguard/KeyguardFMMView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070201

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget-object v6, p0, Lcom/android/keyguard/KeyguardFMMView;->mFMMContainer:Landroid/view/ViewGroup;

    invoke-virtual {v6, v10, v10, v10, v10}, Landroid/view/ViewGroup;->setPadding(IIII)V

    goto/16 :goto_b9

    :cond_192
    iget v6, p0, Lcom/android/keyguard/KeyguardFMMView;->mCurrentOrientation:I

    if-ne v6, v12, :cond_e3

    iget-object v6, p0, Lcom/android/keyguard/KeyguardFMMView;->mOwnerMessage:Lcom/android/systemui/widget/SystemUITextView;

    iget-object v7, p0, Lcom/android/keyguard/KeyguardFMMView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0b0023

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/systemui/widget/SystemUITextView;->setMaxLines(I)V

    goto/16 :goto_e3

    :cond_1aa
    iget v6, p0, Lcom/android/keyguard/KeyguardFMMView;->mCurrentOrientation:I

    if-ne v6, v12, :cond_11e

    iget-object v6, p0, Lcom/android/keyguard/KeyguardFMMView;->mMessageArea:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v6, p0, Lcom/android/keyguard/KeyguardFMMView;->mMessageAreaSpace:Landroid/view/View;

    invoke-virtual {v6, v10}, Landroid/view/View;->setVisibility(I)V

    const/4 v6, -0x2

    iput v6, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget-object v6, p0, Lcom/android/keyguard/KeyguardFMMView;->mOwnerMessage:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v6}, Lcom/android/systemui/widget/SystemUITextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v10, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget-object v6, p0, Lcom/android/keyguard/KeyguardFMMView;->mOwnerMessage:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v6, v4}, Lcom/android/systemui/widget/SystemUITextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_11e
.end method


# virtual methods
.method protected getPasswordTextViewId()I
    .registers 2

    const v0, 0x7f0a01b4

    return v0
.end method

.method protected getSecurityViewId()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getWrongPasswordStringId()I
    .registers 2

    const v0, 0x7f12050d

    return v0
.end method

.method synthetic lambda$-com_android_keyguard_KeyguardFMMView_3847(Landroid/view/View;)V
    .registers 3

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardFMMView;->doHapticKeyClick()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardFMMView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v0}, Lcom/android/keyguard/PasswordTextView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardFMMView;->verifyPasswordAndUnlock()V

    :cond_e
    return-void
.end method

.method synthetic lambda$-com_android_keyguard_KeyguardFMMView_6790(Ljava/lang/String;Landroid/view/View;)V
    .registers 8

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.CALL_PRIVILEGED"

    const-string/jumbo v3, "tel"

    const/4 v4, 0x0

    invoke-static {v3, p1, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :try_start_15
    const-string/jumbo v2, "KeyguardFMMView"

    const-string/jumbo v3, "click call button"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/keyguard/KeyguardFMMView;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_25
    .catch Landroid/content/ActivityNotFoundException; {:try_start_15 .. :try_end_25} :catch_26

    :goto_25
    return-void

    :catch_26
    move-exception v0

    const-string/jumbo v2, "KeyguardFMMView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Can\'t find the component "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25
.end method

.method synthetic lambda$-com_android_keyguard_KeyguardFMMView_8579(IZI)V
    .registers 6

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardFMMView;->setPasswordEntryInputEnabled(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardFMMView;->mPendingLockCheck:Landroid/os/AsyncTask;

    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/android/keyguard/KeyguardFMMView;->onPasswordChecked(IZIZ)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardPINView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget v0, p0, Lcom/android/keyguard/KeyguardFMMView;->mCurrentOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_10

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/keyguard/KeyguardFMMView;->mCurrentOrientation:I

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardFMMView;->updateLayout()V

    :cond_10
    return-void
.end method

.method protected onFinishInflate()V
    .registers 4

    iget-object v1, p0, Lcom/android/keyguard/KeyguardFMMView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x11200c1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardFMMView;->mIsVoiceCapacity:Z

    const v1, 0x7f0a0261

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardFMMView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/widget/SystemUITextView;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardFMMView;->mTitle:Lcom/android/systemui/widget/SystemUITextView;

    const v1, 0x7f0a025f

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardFMMView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/widget/SystemUITextView;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardFMMView;->mOwnerMessage:Lcom/android/systemui/widget/SystemUITextView;

    const v1, 0x7f0a0260

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardFMMView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/widget/SystemUITextView;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardFMMView;->mOwnerContactInfo:Lcom/android/systemui/widget/SystemUITextView;

    const v1, 0x7f0a025e

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardFMMView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/widget/SystemUIButton;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardFMMView;->mCallButton:Lcom/android/systemui/widget/SystemUIButton;

    const v1, 0x7f0a025d

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardFMMView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardFMMView;->mFMMContainer:Landroid/view/ViewGroup;

    const v1, 0x7f0a01b5

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardFMMView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardFMMView;->mContactArea:Landroid/view/ViewGroup;

    const v1, 0x7f0a01b6

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardFMMView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardFMMView;->mMessageArea:Landroid/widget/LinearLayout;

    const v1, 0x7f0a01b7

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardFMMView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/KeyguardFMMView;->mMessageAreaSpace:Landroid/view/View;

    invoke-super {p0}, Lcom/android/keyguard/KeyguardPINView;->onFinishInflate()V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardFMMView;->mTitle:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v1, :cond_72

    iget-object v1, p0, Lcom/android/keyguard/KeyguardFMMView;->mTitle:Lcom/android/systemui/widget/SystemUITextView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/systemui/widget/SystemUITextView;->setSelected(Z)V

    :cond_72
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardFMMView;->setFMMInfo()V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardFMMView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/android/keyguard/KeyguardFMMView;->mCurrentOrientation:I

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardFMMView;->updateLayout()V

    const v1, 0x7f0a023a

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardFMMView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_97

    new-instance v1, Lcom/android/keyguard/-$Lambda$VjywHzoTN04fSKMPDBCPVTST5m4;

    invoke-direct {v1, p0}, Lcom/android/keyguard/-$Lambda$VjywHzoTN04fSKMPDBCPVTST5m4;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_97
    return-void
.end method

.method protected onPasswordChecked(IZIZ)V
    .registers 13

    const/4 v7, 0x1

    const-string/jumbo v4, "KeyguardFMMView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onPatternChecked "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " / "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " / "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " / "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_7d

    iget-object v4, p0, Lcom/android/keyguard/KeyguardFMMView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, p1}, Lcom/android/internal/widget/LockPatternUtils;->saveRemoteLockPassword(ILjava/lang/String;I)V

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v4, "com.samsung.Keyguard.UNLOCK_FMM_ALERT"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v4, 0x1000020

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/keyguard/KeyguardFMMView;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "android.permission.SEND_SMS"

    invoke-virtual {v4, v1, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    const-string/jumbo v4, "KeyguardFMMView"

    const-string/jumbo v5, "send Broadcast : com.samsung.Keyguard.UNLOCK_FMM_ALERT"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/keyguard/KeyguardFMMView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v4

    if-eqz v4, :cond_77

    iget-object v4, p0, Lcom/android/keyguard/KeyguardFMMView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v4}, Lcom/android/keyguard/KeyguardSecurityCallback;->reset()V

    :cond_71
    :goto_71
    xor-int/lit8 v4, p2, 0x1

    invoke-virtual {p0, v7, v4}, Lcom/android/keyguard/KeyguardFMMView;->resetPasswordText(ZZ)V

    return-void

    :cond_77
    iget-object v4, p0, Lcom/android/keyguard/KeyguardFMMView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v4, v7, p1}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(ZI)V

    goto :goto_71

    :cond_7d
    const-wide/16 v2, 0x0

    if-eqz p4, :cond_ae

    iget-object v4, p0, Lcom/android/keyguard/KeyguardFMMView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v4, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->addFailedFMMUnlockAttempt(I)I

    iget-object v4, p0, Lcom/android/keyguard/KeyguardFMMView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v4, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedFMMUnlockAttempt(I)I

    move-result v0

    const/4 v4, 0x5

    if-eq v0, v4, :cond_93

    const/16 v4, 0x9

    if-le v0, v4, :cond_ae

    :cond_93
    const-class v4, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v4}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v4}, Lcom/android/systemui/KnoxStateMonitor;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_ae

    iget-object v4, p0, Lcom/android/keyguard/KeyguardFMMView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/16 v5, 0x7530

    invoke-virtual {v4, p1, v5}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline(II)J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/android/keyguard/KeyguardFMMView;->handleAttemptLockout(J)V

    :cond_ae
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_71

    iget-object v4, p0, Lcom/android/keyguard/KeyguardFMMView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardFMMView;->getWrongPasswordStringId()I

    move-result v5

    invoke-interface {v4, v5}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(I)V

    iget-object v4, p0, Lcom/android/keyguard/KeyguardFMMView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-interface {v4}, Lcom/android/keyguard/SecurityMessageDisplay;->displayFailedAnimation()V

    goto :goto_71
.end method

.method public onPause()V
    .registers 1

    invoke-super {p0}, Lcom/android/keyguard/KeyguardPINView;->onPause()V

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardFMMView;->setFMMInfo()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 7

    if-eqz p1, :cond_23

    const-class v2, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v2}, Lcom/android/systemui/KnoxStateMonitor;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v2

    if-nez v2, :cond_2d

    iget-object v2, p0, Lcom/android/keyguard/KeyguardFMMView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_24

    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/KeyguardFMMView;->handleAttemptLockout(J)V

    :cond_23
    :goto_23
    return-void

    :cond_24
    iget-object v2, p0, Lcom/android/keyguard/KeyguardFMMView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    const v3, 0x7f1205f4

    invoke-interface {v2, v3}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(I)V

    goto :goto_23

    :cond_2d
    iget-object v2, p0, Lcom/android/keyguard/KeyguardFMMView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardFMMView;->mContext:Landroid/content/Context;

    const v4, 0x1040292

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_23
.end method

.method protected resetState()V
    .registers 6

    invoke-super {p0}, Lcom/android/keyguard/KeyguardPINView;->resetState()V

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardFMMView;->setFMMInfo()V

    const-class v2, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v2}, Lcom/android/systemui/KnoxStateMonitor;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v2

    if-nez v2, :cond_31

    iget-object v2, p0, Lcom/android/keyguard/KeyguardFMMView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_28

    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/KeyguardFMMView;->handleAttemptLockout(J)V

    :goto_27
    return-void

    :cond_28
    iget-object v2, p0, Lcom/android/keyguard/KeyguardFMMView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    const v3, 0x7f1205f4

    invoke-interface {v2, v3}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(I)V

    goto :goto_27

    :cond_31
    iget-object v2, p0, Lcom/android/keyguard/KeyguardFMMView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardFMMView;->mContext:Landroid/content/Context;

    const v4, 0x1040292

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_27
.end method

.method protected verifyPasswordAndUnlock()V
    .registers 6

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardFMMView;->getPasswordText()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {p0, v4}, Lcom/android/keyguard/KeyguardFMMView;->setPasswordEntryInputEnabled(Z)V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardFMMView;->mPendingLockCheck:Landroid/os/AsyncTask;

    if-eqz v2, :cond_15

    iget-object v2, p0, Lcom/android/keyguard/KeyguardFMMView;->mPendingLockCheck:Landroid/os/AsyncTask;

    invoke-virtual {v2, v4}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_15
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x3

    if-gt v2, v3, :cond_24

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardFMMView;->setPasswordEntryInputEnabled(Z)V

    invoke-virtual {p0, v1, v4, v4, v4}, Lcom/android/keyguard/KeyguardFMMView;->onPasswordChecked(IZIZ)V

    return-void

    :cond_24
    iget-object v2, p0, Lcom/android/keyguard/KeyguardFMMView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    new-instance v3, Lcom/android/keyguard/-$Lambda$VjywHzoTN04fSKMPDBCPVTST5m4$2;

    invoke-direct {v3, v1, p0}, Lcom/android/keyguard/-$Lambda$VjywHzoTN04fSKMPDBCPVTST5m4$2;-><init>(ILjava/lang/Object;)V

    invoke-static {v2, v4, v0, v1, v3}, Lcom/android/internal/widget/LockPatternChecker;->checkRemoteLockPassword(Lcom/android/internal/widget/LockPatternUtils;ILjava/lang/String;ILcom/android/internal/widget/LockPatternChecker$OnCheckCallback;)Landroid/os/AsyncTask;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/KeyguardFMMView;->mPendingLockCheck:Landroid/os/AsyncTask;

    return-void
.end method
