.class public Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageZoom;
.super Landroid/support/v7/preference/Preference;
.source "AssistantMenuPreferenceFragment.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MagnifierImageZoom"
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field mEnable:Z

.field mIsLongkeyProcessing:Z

.field private mMinusMagnifier:Landroid/widget/ImageView;

.field private mPlusMagnifier:Landroid/widget/ImageView;

.field private mSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

.field private mTitle:Landroid/widget/TextView;

.field private mZoomLayer:Landroid/widget/LinearLayout;

.field textColor:Landroid/content/res/ColorStateList;

.field final synthetic this$0:Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageZoom;)Lcom/samsung/android/settings/widget/IntervalSeekBar;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageZoom;->mSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    return-object v0
.end method

.method public constructor <init>(Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;Landroid/content/Context;Z)V
    .registers 5

    iput-object p1, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageZoom;->this$0:Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;

    invoke-direct {p0, p2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageZoom;->textColor:Landroid/content/res/ColorStateList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageZoom;->mIsLongkeyProcessing:Z

    const v0, 0x7f0d018c

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageZoom;->setLayoutResource(I)V

    iput-object p2, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageZoom;->mContext:Landroid/content/Context;

    iput-boolean p3, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageZoom;->mEnable:Z

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .registers 12

    const/16 v9, 0x7f

    const/4 v4, 0x0

    const v8, -0x2ae4d4

    const v7, -0xb346af

    const/4 v3, 0x1

    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    const v2, 0x7f0a09df

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageZoom;->mZoomLayer:Landroid/widget/LinearLayout;

    const v2, 0x7f0a04f3

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageZoom;->mTitle:Landroid/widget/TextView;

    const v2, 0x7f0a09e2

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/widget/IntervalSeekBar;

    iput-object v2, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageZoom;->mSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    const v2, 0x7f0a09e1

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageZoom;->mPlusMagnifier:Landroid/widget/ImageView;

    const v2, 0x7f0a09e0

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageZoom;->mMinusMagnifier:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageZoom;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v5, "hover_zoom_value"

    invoke-static {v2, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageZoom;->mPlusMagnifier:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageZoom;->mMinusMagnifier:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageZoom;->mPlusMagnifier:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v2, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageZoom;->mMinusMagnifier:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v2, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageZoom;->mPlusMagnifier:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v2, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageZoom;->mMinusMagnifier:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v2, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageZoom;->mSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    const/4 v5, 0x7

    invoke-virtual {v2, v5}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->setMax(I)V

    const-string/jumbo v2, "AssistantMenuPreferenceFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "MagnifierImageZoom onBindDialogView defaultProgress : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageZoom;->mSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    invoke-virtual {v2, v0}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->setProgress(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageZoom;->mSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    invoke-virtual {v2, p0}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object v2, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageZoom;->mTitle:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageZoom;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1060003

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageZoom;->this$0:Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;

    invoke-virtual {v2}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v5, "assistant_menu"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_10d

    move v2, v3

    :goto_bd
    iput-boolean v2, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageZoom;->mEnable:Z

    iget-boolean v2, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageZoom;->mEnable:Z

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageZoom;->setEnabled(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageZoom;->mTitle:Landroid/widget/TextView;

    iget-boolean v3, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageZoom;->mEnable:Z

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-boolean v2, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageZoom;->mEnable:Z

    if-eqz v2, :cond_10f

    iget-object v2, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageZoom;->mPlusMagnifier:Landroid/widget/ImageView;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v7, v3}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v2, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageZoom;->mMinusMagnifier:Landroid/widget/ImageView;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v8, v3}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v2, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageZoom;->mPlusMagnifier:Landroid/widget/ImageView;

    const/16 v3, 0xff

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageAlpha(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageZoom;->mMinusMagnifier:Landroid/widget/ImageView;

    const/16 v3, 0xff

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageAlpha(I)V

    :goto_eb
    iget-object v2, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageZoom;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_13a

    iget-object v2, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageZoom;->mZoomLayer:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    const v2, 0x3e4ccccd    # 0.2f

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v2, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageZoom;->mZoomLayer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_10c
    return-void

    :cond_10d
    move v2, v4

    goto :goto_bd

    :cond_10f
    iget-object v2, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageZoom;->mTitle:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageZoom;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1060008

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageZoom;->mPlusMagnifier:Landroid/widget/ImageView;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v7, v3}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v2, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageZoom;->mMinusMagnifier:Landroid/widget/ImageView;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v8, v3}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v2, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageZoom;->mPlusMagnifier:Landroid/widget/ImageView;

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setImageAlpha(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageZoom;->mMinusMagnifier:Landroid/widget/ImageView;

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setImageAlpha(I)V

    goto :goto_eb

    :cond_13a
    iget-object v2, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageZoom;->mZoomLayer:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, 0x0

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v2, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageZoom;->mZoomLayer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_10c
.end method

.method public onClick(Landroid/view/View;)V
    .registers 6

    invoke-virtual {p0}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageZoom;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "hover_zoom_value"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_4a

    :cond_17
    :goto_17
    return-void

    :pswitch_18
    if-lez v0, :cond_17

    iget-object v1, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageZoom;->this$0:Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;

    invoke-virtual {v1}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "hover_zoom_value"

    add-int/lit8 v3, v0, -0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageZoom;->mSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->setProgress(I)V

    goto :goto_17

    :pswitch_30
    const/4 v1, 0x7

    if-ge v0, v1, :cond_17

    iget-object v1, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageZoom;->this$0:Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;

    invoke-virtual {v1}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "hover_zoom_value"

    add-int/lit8 v3, v0, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageZoom;->mSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->setProgress(I)V

    goto :goto_17

    nop

    :pswitch_data_4a
    .packed-switch 0x7f0a09e0
        :pswitch_18
        :pswitch_30
    .end packed-switch
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 9

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_4c

    invoke-virtual {p0}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageZoom;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "hover_zoom_value"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    packed-switch p2, :pswitch_data_4e

    return v3

    :pswitch_1b
    if-lez v0, :cond_4c

    iget-object v1, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageZoom;->this$0:Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;

    invoke-virtual {v1}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "hover_zoom_value"

    add-int/lit8 v3, v0, -0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageZoom;->mSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->setProgress(I)V

    return v4

    :pswitch_33
    const/4 v1, 0x7

    if-ge v0, v1, :cond_4c

    iget-object v1, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageZoom;->this$0:Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;

    invoke-virtual {v1}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "hover_zoom_value"

    add-int/lit8 v3, v0, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageZoom;->mSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->setProgress(I)V

    return v4

    :cond_4c
    return v3

    nop

    :pswitch_data_4e
    .packed-switch 0x15
        :pswitch_1b
        :pswitch_33
    .end packed-switch
.end method

.method public onLongClick(Landroid/view/View;)Z
    .registers 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageZoom;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "hover_zoom_value"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput-boolean v4, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageZoom;->mIsLongkeyProcessing:Z

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_3c

    :cond_1a
    :goto_1a
    return v3

    :pswitch_1b
    if-lez v0, :cond_1a

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageZoom$1;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageZoom$1;-><init>(Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageZoom;I)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_1a

    :pswitch_2b
    const/4 v1, 0x7

    if-ge v0, v1, :cond_1a

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageZoom$2;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageZoom$2;-><init>(Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageZoom;I)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_1a

    :pswitch_data_3c
    .packed-switch 0x7f0a09e0
        :pswitch_1b
        :pswitch_2b
    .end packed-switch
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .registers 7

    const/4 v0, 0x7

    if-le p2, v0, :cond_c

    div-int/lit8 v0, p2, 0x7

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-int/lit8 p2, v0, 0x7

    :cond_c
    iget-object v0, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageZoom;->mSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    invoke-virtual {v0, p2}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->setProgress(I)V

    const-string/jumbo v0, "AssistantMenuPreferenceFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Scale value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageZoom;->this$0:Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;

    invoke-virtual {v0}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "hover_zoom_value"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageZoom;->this$0:Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;

    invoke-static {v0, p2}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->-wrap0(Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;I)V

    const-string/jumbo v0, "AssistantMenuPreferenceFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "MagnifierImageZoom refreshImageView : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 5

    const/4 v1, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_c

    :goto_8
    return v1

    :pswitch_9
    iput-boolean v1, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageZoom;->mIsLongkeyProcessing:Z

    goto :goto_8

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_9
    .end packed-switch
.end method

.method public setEnabledZoomButton(Z)V
    .registers 9

    const/16 v6, 0xff

    const/16 v5, 0x7f

    const v4, -0x2ae4d4

    const v3, -0xb346af

    const-string/jumbo v0, "AssistantMenuPreferenceFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "MagnifierImageZoom setEnabled : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageZoom;->mTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageZoom;->mPlusMagnifier:Landroid/widget/ImageView;

    if-nez v0, :cond_36

    :cond_2c
    const-string/jumbo v0, "AssistantMenuPreferenceFragment"

    const-string/jumbo v1, "MagnifierImageZoom is not binded"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_36
    iget-object v0, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageZoom;->mMinusMagnifier:Landroid/widget/ImageView;

    if-eqz v0, :cond_2c

    iput-boolean p1, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageZoom;->mEnable:Z

    iget-boolean v0, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageZoom;->mEnable:Z

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageZoom;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageZoom;->mTitle:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageZoom;->mEnable:Z

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-boolean v0, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageZoom;->mEnable:Z

    if-eqz v0, :cond_65

    iget-object v0, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageZoom;->mPlusMagnifier:Landroid/widget/ImageView;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v3, v1}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v0, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageZoom;->mMinusMagnifier:Landroid/widget/ImageView;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v4, v1}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v0, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageZoom;->mPlusMagnifier:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageAlpha(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageZoom;->mMinusMagnifier:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageAlpha(I)V

    :goto_64
    return-void

    :cond_65
    iget-object v0, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageZoom;->mTitle:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageZoom;->mPlusMagnifier:Landroid/widget/ImageView;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v3, v1}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v0, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageZoom;->mMinusMagnifier:Landroid/widget/ImageView;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v4, v1}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v0, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageZoom;->mPlusMagnifier:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageAlpha(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageZoom;->mMinusMagnifier:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageAlpha(I)V

    goto :goto_64
.end method

.method public update()V
    .registers 5

    iget-object v1, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageZoom;->mSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    if-eqz v1, :cond_19

    invoke-virtual {p0}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageZoom;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "hover_zoom_value"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageZoom;->mSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->setProgress(I)V

    :cond_19
    return-void
.end method
