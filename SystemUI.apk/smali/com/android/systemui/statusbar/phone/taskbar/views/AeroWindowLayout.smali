.class public Lcom/android/systemui/statusbar/phone/taskbar/views/AeroWindowLayout;
.super Landroid/widget/LinearLayout;
.source "AeroWindowLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field mAeroWindowView:Landroid/view/View;

.field mCellLayoutTaskbar:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;

.field mCloseButton:Landroid/widget/ImageView;

.field mIconBitmap:Landroid/graphics/Bitmap;

.field mTaskId:I

.field mThumbnailView:Landroid/widget/ImageView;

.field mTitle:Landroid/widget/TextView;

.field mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .registers 2

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AeroWindowLayout;->setVisibility(I)V

    return-void
.end method

.method public makeAeroWindow(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;Z)V
    .registers 12

    const v6, 0x7f070052

    const/4 v5, -0x1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AeroWindowLayout;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AeroWindowLayout;->mCellLayoutTaskbar:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;

    iget v1, p3, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mRunningTaskId:I

    iput v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AeroWindowLayout;->mTaskId:I

    iget-object v1, p3, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->user:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AeroWindowLayout;->mUserId:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AeroWindowLayout;->mContext:Landroid/content/Context;

    const v2, 0x7f0d001c

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AeroWindowLayout;->mAeroWindowView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AeroWindowLayout;->mAeroWindowView:Landroid/view/View;

    const v2, 0x7f0a051a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AeroWindowLayout;->mTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AeroWindowLayout;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AeroWindowLayout;->mAeroWindowView:Landroid/view/View;

    const v2, 0x7f0a0513

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AeroWindowLayout;->mThumbnailView:Landroid/widget/ImageView;

    iget-object v1, p3, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mIconBitmap:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AeroWindowLayout;->mIconBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AeroWindowLayout;->mThumbnailView:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AeroWindowLayout;->mThumbnailView:Landroid/widget/ImageView;

    invoke-virtual {p3}, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AeroWindowLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f120a70

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AeroWindowLayout;->mAeroWindowView:Landroid/view/View;

    const v2, 0x7f0a00e4

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AeroWindowLayout;->mCloseButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AeroWindowLayout;->mCloseButton:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AeroWindowLayout;->mCloseButton:Landroid/widget/ImageView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->semSetHoverPopupType(I)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    if-eqz p4, :cond_9a

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AeroWindowLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    :goto_94
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AeroWindowLayout;->mAeroWindowView:Landroid/view/View;

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AeroWindowLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_9a
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AeroWindowLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    goto :goto_94
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_3e

    :goto_7
    return-void

    :sswitch_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AeroWindowLayout;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AeroWindowLayout;->mTaskId:I

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->moveToFront(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_16

    :goto_12
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AeroWindowLayout;->dismiss()V

    goto :goto_7

    :cond_16
    const-string/jumbo v0, "[DS]AeroWindowLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[AERO] cannot moveToFront taskId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AeroWindowLayout;->mTaskId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    :sswitch_33
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AeroWindowLayout;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AeroWindowLayout;->mTaskId:I

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->removeTask(Landroid/content/Context;I)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AeroWindowLayout;->dismiss()V

    goto :goto_7

    :sswitch_data_3e
    .sparse-switch
        0x7f0a00e4 -> :sswitch_33
        0x7f0a0513 -> :sswitch_8
    .end sparse-switch
.end method

.method public onInterceptHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AeroWindowLayout;->mCellLayoutTaskbar:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;

    invoke-virtual {v0, p0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInterceptHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setThumbnailBitmap()V
    .registers 11

    const v9, 0x7f070053

    const/4 v8, 0x1

    iget v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AeroWindowLayout;->mUserId:I

    invoke-static {v6}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v6

    if-eqz v6, :cond_27

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AeroWindowLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AeroWindowLayout;->mIconBitmap:Landroid/graphics/Bitmap;

    invoke-static {v6, v4, v4, v8}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AeroWindowLayout;->mThumbnailView:Landroid/widget/ImageView;

    sget-object v7, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :goto_21
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AeroWindowLayout;->mThumbnailView:Landroid/widget/ImageView;

    invoke-virtual {v6, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void

    :cond_27
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AeroWindowLayout;->mContext:Landroid/content/Context;

    iget v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AeroWindowLayout;->mTaskId:I

    invoke-static {v6, v7}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->getRunningAppThumbnail(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_47

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AeroWindowLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AeroWindowLayout;->mIconBitmap:Landroid/graphics/Bitmap;

    invoke-static {v6, v4, v4, v8}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AeroWindowLayout;->mThumbnailView:Landroid/widget/ImageView;

    sget-object v7, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_21

    :cond_47
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    if-le v6, v7, :cond_80

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AeroWindowLayout;->mThumbnailView:Landroid/widget/ImageView;

    sget-object v7, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AeroWindowLayout;->mThumbnailView:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AeroWindowLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/graphics/Bitmap;->getScaledWidth(Landroid/util/DisplayMetrics;)I

    move-result v6

    int-to-float v0, v6

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AeroWindowLayout;->mThumbnailView:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getWidth()I

    move-result v5

    int-to-float v6, v5

    div-float v3, v6, v0

    invoke-virtual {v2, v3, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AeroWindowLayout;->mThumbnailView:Landroid/widget/ImageView;

    invoke-virtual {v6, v2}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    goto :goto_21

    :cond_80
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AeroWindowLayout;->mThumbnailView:Landroid/widget/ImageView;

    sget-object v7, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_21
.end method

.method public show()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AeroWindowLayout;->setVisibility(I)V

    return-void
.end method
