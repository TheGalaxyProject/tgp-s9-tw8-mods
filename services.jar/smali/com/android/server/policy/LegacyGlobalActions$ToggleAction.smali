.class abstract Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;
.super Ljava/lang/Object;
.source "LegacyGlobalActions.java"

# interfaces
.implements Lcom/android/server/policy/LegacyGlobalActions$Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/LegacyGlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "ToggleAction"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;
    }
.end annotation


# instance fields
.field protected mDisabledIconResid:I

.field protected mDisabledStatusMessageResId:I

.field protected mEnabledIconResId:I

.field protected mEnabledStatusMessageResId:I

.field mLayoutId:I

.field protected mMessageResId:I

.field protected mState:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;


# direct methods
.method public constructor <init>(IIIII)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;

    iput-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;->mState:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;

    iput p1, p0, Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;->mEnabledIconResId:I

    iput p2, p0, Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;->mDisabledIconResid:I

    iput p3, p0, Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;->mMessageResId:I

    iput p4, p0, Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;->mEnabledStatusMessageResId:I

    iput p5, p0, Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;->mDisabledStatusMessageResId:I

    invoke-static {}, Lcom/android/server/policy/LegacyGlobalActions;->-get66()Z

    move-result v0

    if-eqz v0, :cond_1d

    const v0, 0x109006f

    iput v0, p0, Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;->mLayoutId:I

    :goto_1c
    return-void

    :cond_1d
    const v0, 0x109006d

    iput v0, p0, Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;->mLayoutId:I

    goto :goto_1c
.end method


# virtual methods
.method protected changeStateFromPress(Z)V
    .registers 5

    if-eqz p1, :cond_21

    sget-object v0, Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;->On:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;

    :goto_4
    iput-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;->mState:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;

    const-string/jumbo v0, "LegacyGlobalActions"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "changeStateFromPress : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_21
    sget-object v0, Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;

    goto :goto_4
.end method

.method public create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;
    .registers 15

    invoke-virtual {p0}, Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;->willCreate()V

    invoke-static {}, Lcom/android/server/policy/LegacyGlobalActions;->-get66()Z

    move-result v7

    if-eqz v7, :cond_bf

    const v7, 0x109006f

    const/4 v8, 0x0

    invoke-virtual {p4, v7, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    :goto_11
    const v7, 0x1020006

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v7, 0x102000b

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v7, 0x10204ed

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v7, 0x10202d6

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;->isEnabled()Z

    move-result v0

    if-eqz v3, :cond_4b

    iget v7, p0, Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;->mMessageResId:I

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    if-nez v0, :cond_4b

    const v7, -0x777778

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_4b
    iget-object v7, p0, Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;->mState:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;

    sget-object v8, Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;->On:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;

    if-eq v7, v8, :cond_57

    iget-object v7, p0, Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;->mState:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;

    sget-object v8, Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;->TurningOn:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;

    if-ne v7, v8, :cond_c9

    :cond_57
    const/4 v4, 0x1

    :goto_58
    if-eqz v1, :cond_7b

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    if-eqz v4, :cond_cb

    iget v7, p0, Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;->mEnabledIconResId:I

    :goto_62
    invoke-static {}, Lcom/android/server/policy/LegacyGlobalActions;->-get59()I

    move-result v9

    invoke-virtual {v8, v7, v9}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    if-eqz v4, :cond_ce

    iget v7, p0, Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;->mEnabledIconResId:I

    :goto_74
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    :cond_7b
    if-eqz v5, :cond_93

    if-eqz v4, :cond_d1

    iget v7, p0, Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;->mEnabledStatusMessageResId:I

    :goto_81
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(I)V

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    if-nez v0, :cond_93

    const v7, -0x777778

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_93
    invoke-virtual {v6, v0}, Landroid/view/View;->setEnabled(Z)V

    if-eqz v2, :cond_a6

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    if-eqz v0, :cond_d4

    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Landroid/widget/FrameLayout;->setClickable(Z)V

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v2, v7}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :cond_a6
    :goto_a6
    invoke-static {}, Lcom/android/server/policy/LegacyGlobalActions;->-get65()Z

    move-result v7

    if-eqz v7, :cond_be

    if-eqz v3, :cond_b5

    invoke-static {}, Lcom/android/server/policy/LegacyGlobalActions;->-get68()I

    move-result v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_b5
    if-eqz v5, :cond_be

    invoke-static {}, Lcom/android/server/policy/LegacyGlobalActions;->-get71()I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_be
    return-object v6

    :cond_bf
    const v7, 0x109006d

    const/4 v8, 0x0

    invoke-virtual {p4, v7, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    goto/16 :goto_11

    :cond_c9
    const/4 v4, 0x0

    goto :goto_58

    :cond_cb
    iget v7, p0, Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;->mDisabledIconResid:I

    goto :goto_62

    :cond_ce
    iget v7, p0, Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;->mDisabledIconResid:I

    goto :goto_74

    :cond_d1
    iget v7, p0, Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;->mDisabledStatusMessageResId:I

    goto :goto_81

    :cond_d4
    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Landroid/widget/FrameLayout;->setClickable(Z)V

    const v7, 0x3ecccccd    # 0.4f

    invoke-virtual {v2, v7}, Landroid/widget/FrameLayout;->setAlpha(F)V

    goto :goto_a6
.end method

.method public getLabelForAccessibility(Landroid/content/Context;)Ljava/lang/CharSequence;
    .registers 3

    iget v0, p0, Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;->mMessageResId:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isEnabled()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;->mState:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;

    invoke-virtual {v0}, Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;->inTransition()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public onPress()V
    .registers 5

    const-string/jumbo v1, "LegacyGlobalActions"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ToggleAction onPress  mState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;->mState:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;->mState:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;

    invoke-virtual {v1}, Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;->inTransition()Z

    move-result v1

    if-eqz v1, :cond_2e

    const-string/jumbo v1, "LegacyGlobalActions"

    const-string/jumbo v2, "shouldn\'t be able to toggle when in transition"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2e
    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;->mState:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;

    sget-object v2, Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;->On:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;

    if-eq v1, v2, :cond_56

    const/4 v0, 0x1

    :goto_35
    const-string/jumbo v1, "LegacyGlobalActions"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onPress nowOn : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0}, Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;->onToggle(Z)V

    invoke-virtual {p0, v0}, Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;->changeStateFromPress(Z)V

    return-void

    :cond_56
    const/4 v0, 0x0

    goto :goto_35
.end method

.method public onPressAction()V
    .registers 5

    const-string/jumbo v1, "LegacyGlobalActions"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ToggleAction onPress  mState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;->mState:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;->mState:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;

    invoke-virtual {v1}, Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;->inTransition()Z

    move-result v1

    if-eqz v1, :cond_2e

    const-string/jumbo v1, "LegacyGlobalActions"

    const-string/jumbo v2, "shouldn\'t be able to toggle when in transition"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2e
    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;->mState:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;

    sget-object v2, Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;->On:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;

    if-eq v1, v2, :cond_56

    const/4 v0, 0x1

    :goto_35
    const-string/jumbo v1, "LegacyGlobalActions"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onPressAction nowOn : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0}, Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;->onToggle(Z)V

    invoke-virtual {p0, v0}, Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;->changeStateFromPress(Z)V

    return-void

    :cond_56
    const/4 v0, 0x0

    goto :goto_35
.end method

.method abstract onToggle(Z)V
.end method

.method public updateState(Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;->mState:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;

    return-void
.end method

.method willCreate()V
    .registers 1

    return-void
.end method
