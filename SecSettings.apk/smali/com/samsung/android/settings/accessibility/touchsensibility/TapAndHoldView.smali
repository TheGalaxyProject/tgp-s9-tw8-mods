.class public Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;
.super Landroid/widget/ImageView;
.source "TapAndHoldView.java"


# static fields
.field private static touch_time:J


# instance fields
.field private blockLongPress:Z

.field private currentTapAndHoldState:I

.field private final_touch_time:J

.field private isActivityFront:Z

.field private isLongPressDone:Z

.field private isStartCounting:Z

.field private isTouchBeforeResume:Z

.field private mBitmapHoldConfirm:Landroid/graphics/Bitmap;

.field private mBitmapHoldStandBy:Landroid/graphics/Bitmap;

.field private mBitmapTapConfirm:Landroid/graphics/Bitmap;

.field private mBitmapTapStandBy:Landroid/graphics/Bitmap;

.field private paint:Landroid/graphics/Paint;

.field private startX:F

.field private startY:F


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->touch_time:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    const/4 v0, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput v0, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->startX:F

    iput v0, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->startY:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->final_touch_time:J

    iput-boolean v2, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->isLongPressDone:Z

    iput-boolean v2, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->blockLongPress:Z

    iput-boolean v2, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->isStartCounting:Z

    iput-boolean v3, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->isActivityFront:Z

    iput-boolean v2, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->isTouchBeforeResume:Z

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->paint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setDither(Z)V

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7

    const/4 v0, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v0, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->startX:F

    iput v0, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->startY:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->final_touch_time:J

    iput-boolean v2, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->isLongPressDone:Z

    iput-boolean v2, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->blockLongPress:Z

    iput-boolean v2, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->isStartCounting:Z

    iput-boolean v3, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->isActivityFront:Z

    iput-boolean v2, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->isTouchBeforeResume:Z

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->paint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setDither(Z)V

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8

    const/4 v0, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v0, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->startX:F

    iput v0, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->startY:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->final_touch_time:J

    iput-boolean v2, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->isLongPressDone:Z

    iput-boolean v2, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->blockLongPress:Z

    iput-boolean v2, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->isStartCounting:Z

    iput-boolean v3, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->isActivityFront:Z

    iput-boolean v2, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->isTouchBeforeResume:Z

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->paint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setDither(Z)V

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->initView()V

    return-void
.end method

.method private initView()V
    .registers 7

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f08010a

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const v5, 0x7f080109

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const v5, 0x7f080104

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const v5, 0x7f080103

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v5, v4, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;

    if-eqz v5, :cond_2c

    check-cast v4, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;

    invoke-virtual {v4}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->mBitmapTapStandBy:Landroid/graphics/Bitmap;

    :cond_2c
    instance-of v5, v3, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;

    if-eqz v5, :cond_38

    check-cast v3, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;

    invoke-virtual {v3}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->mBitmapTapConfirm:Landroid/graphics/Bitmap;

    :cond_38
    instance-of v5, v1, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;

    if-eqz v5, :cond_44

    check-cast v1, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;

    invoke-virtual {v1}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->mBitmapHoldStandBy:Landroid/graphics/Bitmap;

    :cond_44
    instance-of v5, v0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;

    if-eqz v5, :cond_50

    check-cast v0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;

    invoke-virtual {v0}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->mBitmapHoldConfirm:Landroid/graphics/Bitmap;

    :cond_50
    const/4 v5, 0x0

    iput v5, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->currentTapAndHoldState:I

    return-void
.end method


# virtual methods
.method public checkAndSaveState()V
    .registers 7

    iget-boolean v2, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->isStartCounting:Z

    if-eqz v2, :cond_1f

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->touch_time:J

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->final_touch_time:J

    iget-wide v2, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->final_touch_time:J

    const-wide/16 v4, 0x1f4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1c

    const/4 v2, 0x3

    iput v2, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->currentTapAndHoldState:I

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->isLongPressDone:Z

    :cond_1c
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->isStartCounting:Z

    :cond_1f
    return-void
.end method

.method public checkLongPressStatus()Z
    .registers 2

    iget-boolean v0, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->isLongPressDone:Z

    return v0
.end method

.method public checkTouchBeforeResume()Z
    .registers 2

    iget-boolean v0, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->isTouchBeforeResume:Z

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 8

    const/high16 v5, 0x40000000    # 2.0f

    invoke-super {p0, p1}, Landroid/widget/ImageView;->draw(Landroid/graphics/Canvas;)V

    :try_start_5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_8} :catch_1a

    :goto_8
    iget v1, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->currentTapAndHoldState:I

    packed-switch v1, :pswitch_data_9c

    const-string/jumbo v1, "TapAndHoldView"

    const-string/jumbo v2, "Unknown Tap and Hold State"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_16
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->invalidate()V

    return-void

    :catch_1a
    move-exception v0

    goto :goto_8

    :pswitch_1c
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->mBitmapTapStandBy:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->mBitmapTapStandBy:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    div-float/2addr v2, v5

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->mBitmapTapStandBy:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v5

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_16

    :pswitch_40
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->mBitmapTapConfirm:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->startX:F

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->mBitmapTapConfirm:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v5

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->startY:F

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->mBitmapTapConfirm:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_16

    :pswitch_5e
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->mBitmapHoldStandBy:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->startX:F

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->mBitmapHoldStandBy:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v5

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->startY:F

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->mBitmapHoldStandBy:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_16

    :pswitch_7c
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->mBitmapHoldConfirm:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->startX:F

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->mBitmapHoldConfirm:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v5

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->startY:F

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->mBitmapHoldConfirm:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_16

    nop

    :pswitch_data_9c
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_40
        :pswitch_5e
        :pswitch_7c
    .end packed-switch
.end method

.method public getTouchTime()J
    .registers 3

    iget-wide v0, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->final_touch_time:J

    return-wide v0
.end method

.method public isCountingLongPressTime()Z
    .registers 2

    iget-boolean v0, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->isStartCounting:Z

    return v0
.end method

.method protected onDetachedFromWindow()V
    .registers 1

    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 10

    const-wide/16 v6, 0x1f4

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_4f

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->startX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->startY:F

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->touch_time:J

    iput v5, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->currentTapAndHoldState:I

    iput-boolean v4, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->isLongPressDone:Z

    iput-boolean v4, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->blockLongPress:Z

    iput-boolean v5, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->isStartCounting:Z

    iget-boolean v2, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->isActivityFront:Z

    if-nez v2, :cond_2e

    iput-boolean v5, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->isTouchBeforeResume:Z

    :cond_2e
    :goto_2e
    iget-boolean v2, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->isActivityFront:Z

    if-eqz v2, :cond_34

    iput-boolean v4, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->isTouchBeforeResume:Z

    :cond_34
    sget-wide v2, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->touch_time:J

    sub-long v2, v0, v2

    cmp-long v2, v2, v6

    if-ltz v2, :cond_4b

    iget-boolean v2, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->isLongPressDone:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_4b

    iget-boolean v2, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->blockLongPress:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_4b

    const/4 v2, 0x2

    iput v2, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->currentTapAndHoldState:I

    :cond_4b
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->invalidate()V

    return v5

    :cond_4f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v5, :cond_2e

    sget-wide v2, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->touch_time:J

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->final_touch_time:J

    iget-wide v2, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->final_touch_time:J

    cmp-long v2, v2, v6

    if-ltz v2, :cond_6d

    iget-boolean v2, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->isActivityFront:Z

    if-eqz v2, :cond_6d

    const/4 v2, 0x3

    iput v2, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->currentTapAndHoldState:I

    iput-boolean v5, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->isLongPressDone:Z

    :cond_6a
    :goto_6a
    iput-boolean v4, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->isStartCounting:Z

    goto :goto_2e

    :cond_6d
    iget-boolean v2, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->isActivityFront:Z

    if-nez v2, :cond_6a

    iget-boolean v2, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->isTouchBeforeResume:Z

    if-nez v2, :cond_77

    iput v4, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->currentTapAndHoldState:I

    :cond_77
    iput-boolean v4, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->isLongPressDone:Z

    goto :goto_6a
.end method

.method public refresh()V
    .registers 5

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->currentTapAndHoldState:I

    iput v0, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->startX:F

    iput v0, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->startY:F

    sput-wide v2, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->touch_time:J

    iput-wide v2, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->final_touch_time:J

    iput-boolean v1, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->isLongPressDone:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->blockLongPress:Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->isStartCounting:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->invalidate()V

    return-void
.end method

.method public setActivityState(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->isActivityFront:Z

    return-void
.end method

.method public updateRunningHoldStandby()V
    .registers 2

    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->currentTapAndHoldState:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->invalidate()V

    return-void
.end method
