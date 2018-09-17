.class public Lcom/samsung/android/settings/display/ScreenResolutionSeekBarPreference;
.super Lcom/samsung/android/settings/display/DisplayCustomPreference;
.source "ScreenResolutionSeekBarPreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# static fields
.field private static sScreenResolutionSeekbar:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFHD:Landroid/widget/TextView;

.field private mFHDpx:Landroid/widget/TextView;

.field private mHD:Landroid/widget/TextView;

.field private mHDpx:Landroid/widget/TextView;

.field public mScreenSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

.field private mWQHD:Landroid/widget/TextView;

.field private mWQHDpx:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 10

    const/4 v3, 0x0

    const v5, 0x7f0d022a

    const v6, 0x7f0a0745

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, v3

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/settings/display/DisplayCustomPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIII)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/display/ScreenResolutionSeekBarPreference;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/samsung/android/settings/display/ScreenResolutionSeekBarPreference;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getSeekBarContentDescription()Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/samsung/android/settings/display/ScreenResolutionSeekBarPreference;->mHD:Landroid/widget/TextView;

    if-eqz v2, :cond_e

    :try_start_5
    iget-object v2, p0, Lcom/samsung/android/settings/display/ScreenResolutionSeekBarPreference;->mScreenSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    invoke-virtual {v2}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->getProgress()I

    move-result v2

    packed-switch v2, :pswitch_data_9c

    :cond_e
    :goto_e
    return-object v0

    :pswitch_f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/settings/display/ScreenResolutionSeekBarPreference;->mHD:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/display/ScreenResolutionSeekBarPreference;->mHDpx:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    :pswitch_34
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/settings/display/ScreenResolutionSeekBarPreference;->mFHD:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/display/ScreenResolutionSeekBarPreference;->mFHDpx:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    :pswitch_59
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/settings/display/ScreenResolutionSeekBarPreference;->mWQHD:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/display/ScreenResolutionSeekBarPreference;->mWQHDpx:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_7c
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_7c} :catch_7e

    move-result-object v0

    goto :goto_e

    :catch_7e
    move-exception v1

    const-string/jumbo v2, "ScreenResolutionSeekBarPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getSeekBarContentDescription() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    nop

    :pswitch_data_9c
    .packed-switch 0x0
        :pswitch_f
        :pswitch_34
        :pswitch_59
    .end packed-switch
.end method

.method private updateResolutionLabels()V
    .registers 19

    const/4 v10, 0x0

    const/4 v5, 0x0

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    :try_start_7
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v11

    const/4 v12, 0x0

    invoke-interface {v11, v12, v2}, Landroid/view/IWindowManager;->getInitialDisplaySize(ILandroid/graphics/Point;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_f} :catch_154

    iget v10, v2, Landroid/graphics/Point;->x:I

    iget v5, v2, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/settings/display/ScreenResolutionSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_15f

    const/4 v6, 0x1

    :goto_27
    int-to-float v12, v5

    int-to-float v13, v10

    div-float v8, v12, v13

    const v12, 0x3fe38e39

    cmpl-float v12, v8, v12

    if-lez v12, :cond_9b

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/settings/display/ScreenResolutionSeekBarPreference;->mHD:Landroid/widget/TextView;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/display/ScreenResolutionSeekBarPreference;->mHD:Landroid/widget/TextView;

    invoke-virtual {v14}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "+"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/settings/display/ScreenResolutionSeekBarPreference;->mFHD:Landroid/widget/TextView;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/display/ScreenResolutionSeekBarPreference;->mFHD:Landroid/widget/TextView;

    invoke-virtual {v14}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "+"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/settings/display/ScreenResolutionSeekBarPreference;->mWQHD:Landroid/widget/TextView;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/display/ScreenResolutionSeekBarPreference;->mWQHD:Landroid/widget/TextView;

    invoke-virtual {v14}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "+"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_9b
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v12

    invoke-static {v12}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v4

    const/4 v12, 0x0

    invoke-virtual {v4, v12}, Ljava/text/NumberFormat;->setGroupingUsed(Z)V

    const/16 v12, 0x5a0

    if-ne v10, v12, :cond_140

    if-eqz v6, :cond_162

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/settings/display/ScreenResolutionSeekBarPreference;->mHDpx:Landroid/widget/TextView;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    int-to-double v14, v10

    const-wide/high16 v16, 0x3fe0000000000000L    # 0.5

    mul-double v14, v14, v16

    double-to-int v14, v14

    int-to-long v14, v14

    invoke-virtual {v4, v14, v15}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "x"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    int-to-double v14, v5

    const-wide/high16 v16, 0x3fe0000000000000L    # 0.5

    mul-double v14, v14, v16

    double-to-int v14, v14

    int-to-long v14, v14

    invoke-virtual {v4, v14, v15}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/settings/display/ScreenResolutionSeekBarPreference;->mFHDpx:Landroid/widget/TextView;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    int-to-double v14, v10

    const-wide/high16 v16, 0x3fe8000000000000L    # 0.75

    mul-double v14, v14, v16

    double-to-int v14, v14

    int-to-long v14, v14

    invoke-virtual {v4, v14, v15}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "x"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    int-to-double v14, v5

    const-wide/high16 v16, 0x3fe8000000000000L    # 0.75

    mul-double v14, v14, v16

    double-to-int v14, v14

    int-to-long v14, v14

    invoke-virtual {v4, v14, v15}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/settings/display/ScreenResolutionSeekBarPreference;->mWQHDpx:Landroid/widget/TextView;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    int-to-long v14, v10

    invoke-virtual {v4, v14, v15}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "x"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    int-to-long v14, v5

    invoke-virtual {v4, v14, v15}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_140
    :goto_140
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/display/ScreenResolutionSeekBarPreference;->getSeekBarContentDescription()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_153

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/settings/display/ScreenResolutionSeekBarPreference;->mScreenSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    if-eqz v12, :cond_153

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/settings/display/ScreenResolutionSeekBarPreference;->mScreenSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    invoke-virtual {v12, v9}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_153
    return-void

    :catch_154
    move-exception v3

    const-string/jumbo v12, "ScreenResolutionSeekBarPreference"

    const-string/jumbo v13, "getInitialDisplaySize() exception!!!"

    invoke-static {v12, v13}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_15f
    const/4 v6, 0x0

    goto/16 :goto_27

    :cond_162
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/settings/display/ScreenResolutionSeekBarPreference;->mHDpx:Landroid/widget/TextView;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    int-to-double v14, v5

    const-wide/high16 v16, 0x3fe0000000000000L    # 0.5

    mul-double v14, v14, v16

    double-to-int v14, v14

    int-to-long v14, v14

    invoke-virtual {v4, v14, v15}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "x"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    int-to-double v14, v10

    const-wide/high16 v16, 0x3fe0000000000000L    # 0.5

    mul-double v14, v14, v16

    double-to-int v14, v14

    int-to-long v14, v14

    invoke-virtual {v4, v14, v15}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/settings/display/ScreenResolutionSeekBarPreference;->mFHDpx:Landroid/widget/TextView;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    int-to-double v14, v5

    const-wide/high16 v16, 0x3fe8000000000000L    # 0.75

    mul-double v14, v14, v16

    double-to-int v14, v14

    int-to-long v14, v14

    invoke-virtual {v4, v14, v15}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "x"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    int-to-double v14, v10

    const-wide/high16 v16, 0x3fe8000000000000L    # 0.75

    mul-double v14, v14, v16

    double-to-int v14, v14

    int-to-long v14, v14

    invoke-virtual {v4, v14, v15}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/settings/display/ScreenResolutionSeekBarPreference;->mWQHDpx:Landroid/widget/TextView;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    int-to-long v14, v5

    invoke-virtual {v4, v14, v15}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "x"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    int-to-long v14, v10

    invoke-virtual {v4, v14, v15}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_140
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .registers 6

    invoke-super {p0, p1}, Lcom/samsung/android/settings/display/DisplayCustomPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    const-string/jumbo v2, "ScreenResolutionSeekBarPreference"

    const-string/jumbo v3, "onBindView called "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const v2, 0x7f0a0740

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/samsung/android/settings/display/ScreenResolutionSeekBarPreference;->mHD:Landroid/widget/TextView;

    const v2, 0x7f0a0741

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/samsung/android/settings/display/ScreenResolutionSeekBarPreference;->mHDpx:Landroid/widget/TextView;

    const v2, 0x7f0a073e

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/samsung/android/settings/display/ScreenResolutionSeekBarPreference;->mFHD:Landroid/widget/TextView;

    const v2, 0x7f0a073f

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/samsung/android/settings/display/ScreenResolutionSeekBarPreference;->mFHDpx:Landroid/widget/TextView;

    const v2, 0x7f0a0746

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/samsung/android/settings/display/ScreenResolutionSeekBarPreference;->mWQHD:Landroid/widget/TextView;

    const v2, 0x7f0a0747

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/samsung/android/settings/display/ScreenResolutionSeekBarPreference;->mWQHDpx:Landroid/widget/TextView;

    const v2, 0x7f0a0745

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/widget/IntervalSeekBar;

    iget-object v2, p0, Lcom/samsung/android/settings/display/ScreenResolutionSeekBarPreference;->mScreenSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    if-eq v1, v2, :cond_73

    iput-object v1, p0, Lcom/samsung/android/settings/display/ScreenResolutionSeekBarPreference;->mScreenSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    iget-object v2, p0, Lcom/samsung/android/settings/display/ScreenResolutionSeekBarPreference;->mScreenSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->setMax(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/display/ScreenResolutionSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->getCurrentResolution(Landroid/content/Context;)I

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/settings/display/ScreenResolutionSeekBarPreference;->mScreenSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    invoke-virtual {v2, v0}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->setProgress(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/display/ScreenResolutionSeekBarPreference;->mScreenSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    invoke-virtual {v2, p0}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    :cond_73
    invoke-direct {p0}, Lcom/samsung/android/settings/display/ScreenResolutionSeekBarPreference;->updateResolutionLabels()V

    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .registers 5

    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/settings/display/DisplayCustomPreference;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    invoke-direct {p0}, Lcom/samsung/android/settings/display/ScreenResolutionSeekBarPreference;->getSeekBarContentDescription()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_13

    if-eqz p1, :cond_13

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setContentDescription(Ljava/lang/CharSequence;)V

    if-eqz p3, :cond_13

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_13
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 5

    invoke-super {p0, p1}, Lcom/samsung/android/settings/display/DisplayCustomPreference;->onStopTrackingTouch(Landroid/widget/SeekBar;)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/ScreenResolutionSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b043e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/samsung/android/settings/display/ScreenResolutionSeekBarPreference;->sScreenResolutionSeekbar:I

    iget-object v0, p0, Lcom/samsung/android/settings/display/ScreenResolutionSeekBarPreference;->mContext:Landroid/content/Context;

    sget v1, Lcom/samsung/android/settings/display/ScreenResolutionSeekBarPreference;->sScreenResolutionSeekbar:I

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    return-void
.end method
