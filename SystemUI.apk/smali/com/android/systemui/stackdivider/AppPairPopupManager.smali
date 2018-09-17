.class public Lcom/android/systemui/stackdivider/AppPairPopupManager;
.super Ljava/lang/Object;
.source "AppPairPopupManager.java"


# instance fields
.field private final mBubblePos:[I

.field private final mCirclePos:[I

.field private mContext:Landroid/content/Context;

.field private mDimLp:Landroid/view/WindowManager$LayoutParams;

.field private mDimView:Landroid/widget/ImageView;

.field private mDirection:I

.field private final mDisplaySizePoint:Landroid/graphics/Point;

.field private mHeightOffset:I

.field private mIsLandScape:Z

.field private mIsNeedGravityToBottom:Z

.field private mIsNeedGravityToRight:Z

.field private mIsRTL:Z

.field private mLp:Landroid/view/WindowManager$LayoutParams;

.field private mVerticalGravity:I

.field private mView:Lcom/android/systemui/stackdivider/AppPairPopupView;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    const/4 v2, 0x2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mDisplaySizePoint:Landroid/graphics/Point;

    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mBubblePos:[I

    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mCirclePos:[I

    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mIsLandScape:Z

    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mIsRTL:Z

    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mIsNeedGravityToRight:Z

    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mIsNeedGravityToBottom:Z

    iput-object p1, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mContext:Landroid/content/Context;

    const-class v0, Landroid/view/WindowManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mWindowManager:Landroid/view/WindowManager;

    iput v1, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mHeightOffset:I

    return-void
.end method

.method private calDirectionOfBubble(ZZ)I
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v12, 0x4

    const/4 v10, 0x0

    const/4 v11, 0x3

    const/4 v9, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->getAllStackInfos()Ljava/util/List;

    move-result-object v7

    const/4 v6, 0x0

    :goto_f
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-ge v6, v8, :cond_41

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager$StackInfo;

    iget v8, v8, Landroid/app/ActivityManager$StackInfo;->stackId:I

    if-ne v8, v9, :cond_2c

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$StackInfo;

    invoke-direct {p0, v4, p1, v9}, Lcom/android/systemui/stackdivider/AppPairPopupManager;->calStackSize(Landroid/app/ActivityManager$StackInfo;ZI)I

    move-result v5

    :cond_29
    :goto_29
    add-int/lit8 v6, v6, 0x1

    goto :goto_f

    :cond_2c
    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager$StackInfo;

    iget v8, v8, Landroid/app/ActivityManager$StackInfo;->stackId:I

    if-ne v8, v11, :cond_29

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$StackInfo;

    invoke-direct {p0, v2, p1, v11}, Lcom/android/systemui/stackdivider/AppPairPopupManager;->calStackSize(Landroid/app/ActivityManager$StackInfo;ZI)I

    move-result v3

    goto :goto_29

    :cond_41
    if-eqz p1, :cond_5e

    if-lt v3, v5, :cond_5c

    const/4 v1, 0x2

    :cond_46
    :goto_46
    if-eq v1, v9, :cond_4a

    if-ne v1, v12, :cond_6d

    :cond_4a
    move v8, v9

    :goto_4b
    iput-boolean v8, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mIsNeedGravityToRight:Z

    if-eq v1, v11, :cond_51

    if-ne v1, v12, :cond_74

    :cond_51
    :goto_51
    iput-boolean v9, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mIsNeedGravityToBottom:Z

    iget-boolean v8, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mIsNeedGravityToBottom:Z

    if-eqz v8, :cond_76

    const/16 v8, 0x50

    :goto_59
    iput v8, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mVerticalGravity:I

    return v1

    :cond_5c
    const/4 v1, 0x5

    goto :goto_46

    :cond_5e
    if-lt v3, v5, :cond_67

    const/4 v1, 0x3

    :goto_61
    if-eqz p2, :cond_46

    if-nez v1, :cond_69

    const/4 v1, 0x1

    goto :goto_46

    :cond_67
    const/4 v1, 0x0

    goto :goto_61

    :cond_69
    if-ne v1, v11, :cond_46

    const/4 v1, 0x4

    goto :goto_46

    :cond_6d
    const/4 v8, 0x2

    if-ne v1, v8, :cond_72

    move v8, v9

    goto :goto_4b

    :cond_72
    move v8, v10

    goto :goto_4b

    :cond_74
    move v9, v10

    goto :goto_51

    :cond_76
    const/16 v8, 0x30

    goto :goto_59
.end method

.method private calStackSize(Landroid/app/ActivityManager$StackInfo;ZI)I
    .registers 9

    iget-object v3, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1050151

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget v3, p1, Landroid/app/ActivityManager$StackInfo;->stackId:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2d

    move v1, v0

    :goto_13
    if-eqz p2, :cond_3a

    iget-object v3, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getRotation()I

    move-result v3

    if-ne v3, p3, :cond_2f

    iget-object v3, p1, Landroid/app/ActivityManager$StackInfo;->bounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p1, Landroid/app/ActivityManager$StackInfo;->bounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    sub-int v2, v3, v0

    :goto_2c
    return v2

    :cond_2d
    const/4 v1, 0x0

    goto :goto_13

    :cond_2f
    iget-object v3, p1, Landroid/app/ActivityManager$StackInfo;->bounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p1, Landroid/app/ActivityManager$StackInfo;->bounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int v2, v3, v4

    goto :goto_2c

    :cond_3a
    iget-object v3, p1, Landroid/app/ActivityManager$StackInfo;->bounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p1, Landroid/app/ActivityManager$StackInfo;->bounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    sub-int v2, v3, v1

    goto :goto_2c
.end method


# virtual methods
.method public addAndGetPopupView(Z)Lcom/android/systemui/stackdivider/AppPairPopupView;
    .registers 11

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v8, 0x0

    :try_start_3
    iput-boolean p1, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mIsLandScape:Z

    iget-object v2, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v2

    if-ne v2, v0, :cond_103

    :goto_15
    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mIsRTL:Z

    iget-object v0, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mDisplaySizePoint:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mIsLandScape:Z

    iget-boolean v1, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mIsRTL:Z

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/stackdivider/AppPairPopupManager;->calDirectionOfBubble(ZZ)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mDirection:I

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/16 v3, 0x7d8

    const/16 v4, 0x20

    const/4 v5, -0x3

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mIsNeedGravityToRight:Z

    if-eqz v0, :cond_106

    iget v0, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mVerticalGravity:I

    or-int/lit8 v0, v0, 0x5

    :goto_44
    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v0, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    const-string/jumbo v1, "AppPairToolTip"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iget-object v0, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d001e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/stackdivider/AppPairPopupView;

    iput-object v0, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mView:Lcom/android/systemui/stackdivider/AppPairPopupView;

    iget-object v0, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mView:Lcom/android/systemui/stackdivider/AppPairPopupView;

    const/16 v1, 0x700

    invoke-virtual {v0, v1}, Lcom/android/systemui/stackdivider/AppPairPopupView;->setSystemUiVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mView:Lcom/android/systemui/stackdivider/AppPairPopupView;

    iget-object v2, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mView:Lcom/android/systemui/stackdivider/AppPairPopupView;

    iget-boolean v1, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mIsLandScape:Z

    iget-boolean v2, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mIsNeedGravityToRight:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/stackdivider/AppPairPopupView;->setVariables(ZZ)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mView:Lcom/android/systemui/stackdivider/AppPairPopupView;

    iget v1, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mDirection:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/stackdivider/AppPairPopupView;->setTextViewMargin(I)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mView:Lcom/android/systemui/stackdivider/AppPairPopupView;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/AppPairPopupView;->setOnTouchListeners()V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mView:Lcom/android/systemui/stackdivider/AppPairPopupView;

    invoke-virtual {v0, p0}, Lcom/android/systemui/stackdivider/AppPairPopupView;->setPopupManager(Lcom/android/systemui/stackdivider/AppPairPopupManager;)V

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mIsLandScape:Z

    if-nez v0, :cond_b1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mView:Lcom/android/systemui/stackdivider/AppPairPopupView;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/AppPairPopupView;->getBubbleView()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    iget v0, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mVerticalGravity:I

    or-int/lit8 v0, v0, 0x1

    iput v0, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v0, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mView:Lcom/android/systemui/stackdivider/AppPairPopupView;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/AppPairPopupView;->getBubbleView()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_b1
    iget-object v0, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d001d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mDimView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mDimView:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/systemui/stackdivider/AppPairPopupManager$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/stackdivider/AppPairPopupManager$1;-><init>(Lcom/android/systemui/stackdivider/AppPairPopupManager;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mDimView:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/systemui/stackdivider/AppPairPopupManager$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/stackdivider/AppPairPopupManager$2;-><init>(Lcom/android/systemui/stackdivider/AppPairPopupManager;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/16 v3, 0x903

    const/4 v4, 0x0

    const/4 v5, -0x3

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mDimLp:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mDimLp:Landroid/view/WindowManager$LayoutParams;

    const-string/jumbo v1, "PopupDimLayer"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mDimView:Landroid/widget/ImageView;

    const/16 v1, 0x700

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSystemUiVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mDimView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mDimLp:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/systemui/stackdivider/AppPairPopupManager;->show(I)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mView:Lcom/android/systemui/stackdivider/AppPairPopupView;

    return-object v0

    :cond_103
    move v0, v1

    goto/16 :goto_15

    :cond_106
    iget v0, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mVerticalGravity:I
    :try_end_108
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_108} :catch_10c

    or-int/lit8 v0, v0, 0x3

    goto/16 :goto_44

    :catch_10c
    move-exception v7

    const-string/jumbo v0, "AppPairToolTip"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Exception in addAndGetPopupView() AppPairPopupView and DimView --> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v8
.end method

.method public calBubblePosition([ILandroid/graphics/Rect;)V
    .registers 20

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0703b4

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x1050151

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x10502b0

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f07038c

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f07038f

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mView:Lcom/android/systemui/stackdivider/AppPairPopupView;

    invoke-virtual {v13}, Lcom/android/systemui/stackdivider/AppPairPopupView;->getTxtView()Landroid/view/View;

    move-result-object v10

    const/4 v13, 0x2

    new-array v11, v13, [I

    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v10, v11}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-virtual {v10, v12}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mIsNeedGravityToRight:Z

    if-eqz v13, :cond_83

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mDisplaySizePoint:Landroid/graphics/Point;

    iget v13, v13, Landroid/graphics/Point;->x:I

    const/4 v14, 0x0

    aget v14, p1, v14

    sub-int/2addr v13, v14

    move-object/from16 v0, p2

    iget v14, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p2

    iget v15, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v14, v15

    sub-int/2addr v13, v14

    mul-int/lit8 v14, v4, 0x2

    div-int/lit8 v14, v14, 0x3

    add-int/2addr v13, v14

    const/4 v14, 0x0

    aput v13, p1, v14

    :cond_83
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mIsLandScape:Z

    if-nez v13, :cond_159

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f070391

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mBubblePos:[I

    const/4 v14, 0x0

    aget v14, v11, v14

    const/4 v15, 0x0

    aput v14, v13, v15

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mBubblePos:[I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mDisplaySizePoint:Landroid/graphics/Point;

    iget v14, v14, Landroid/graphics/Point;->y:I

    const/4 v15, 0x1

    aget v15, p1, v15

    sub-int/2addr v14, v15

    move-object/from16 v0, p2

    iget v15, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    sub-int/2addr v14, v15

    add-int/2addr v14, v1

    const/4 v15, 0x1

    aput v14, v13, v15

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mCirclePos:[I

    const/4 v14, 0x0

    aget v14, p1, v14

    mul-int/lit8 v15, v4, 0x2

    sub-int/2addr v14, v15

    const/4 v15, 0x0

    aput v14, v13, v15

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mCirclePos:[I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mDisplaySizePoint:Landroid/graphics/Point;

    iget v14, v14, Landroid/graphics/Point;->y:I

    const/4 v15, 0x1

    aget v15, p1, v15

    sub-int/2addr v14, v15

    move-object/from16 v0, p2

    iget v15, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    mul-int/lit8 v15, v15, 0x2

    sub-int/2addr v14, v15

    div-int/lit8 v15, v6, 0x3

    sub-int/2addr v14, v15

    const/4 v15, 0x1

    aput v14, v13, v15

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mDisplaySizePoint:Landroid/graphics/Point;

    iget v9, v13, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mDisplaySizePoint:Landroid/graphics/Point;

    iget v13, v13, Landroid/graphics/Point;->y:I

    sub-int v8, v13, v5

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mIsNeedGravityToBottom:Z

    if-nez v13, :cond_12f

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mView:Lcom/android/systemui/stackdivider/AppPairPopupView;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/android/systemui/stackdivider/AppPairPopupView;->setNeedTopArrow(Z)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mBubblePos:[I

    const/4 v14, 0x1

    aget v14, p1, v14

    move-object/from16 v0, p2

    iget v15, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    add-int/2addr v14, v15

    add-int/2addr v14, v1

    const/4 v15, 0x1

    aput v14, v13, v15

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mCirclePos:[I

    const/4 v14, 0x1

    aget v14, p1, v14

    const/4 v15, 0x1

    aput v14, v13, v15

    :cond_12f
    :goto_12f
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mBubblePos:[I

    const/4 v14, 0x0

    aget v13, v13, v14

    iget v14, v12, Landroid/graphics/Rect;->right:I

    iget v15, v12, Landroid/graphics/Rect;->left:I

    sub-int/2addr v14, v15

    add-int/2addr v13, v14

    add-int/2addr v13, v2

    if-lt v9, v13, :cond_150

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mBubblePos:[I

    const/4 v14, 0x1

    aget v13, v13, v14

    iget v14, v12, Landroid/graphics/Rect;->bottom:I

    iget v15, v12, Landroid/graphics/Rect;->top:I

    sub-int/2addr v14, v15

    add-int/2addr v13, v14

    add-int/2addr v13, v7

    add-int/2addr v13, v2

    if-ge v8, v13, :cond_158

    :cond_150
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mView:Lcom/android/systemui/stackdivider/AppPairPopupView;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/android/systemui/stackdivider/AppPairPopupView;->setIsNeedResetToolTipSize(Z)V

    :cond_158
    return-void

    :cond_159
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f070390

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f07038a

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mBubblePos:[I

    move-object/from16 v0, p2

    iget v14, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p2

    iget v15, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v14, v15

    const/4 v15, 0x0

    aget v15, p1, v15

    add-int/2addr v14, v15

    add-int/2addr v14, v1

    const/4 v15, 0x0

    aput v14, v13, v15

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mBubblePos:[I

    const/4 v14, 0x1

    aget v14, p1, v14

    move-object/from16 v0, p2

    iget v15, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    sub-int/2addr v14, v15

    add-int/2addr v14, v6

    const/4 v15, 0x1

    aput v14, v13, v15

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mCirclePos:[I

    const/4 v14, 0x0

    aget v14, p1, v14

    sub-int/2addr v14, v3

    const/4 v15, 0x0

    aput v14, v13, v15

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mCirclePos:[I

    const/4 v14, 0x1

    aget v14, p1, v14

    mul-int/lit8 v15, v4, 0x2

    sub-int/2addr v14, v15

    add-int/2addr v14, v6

    const/4 v15, 0x1

    aput v14, v13, v15

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mDisplaySizePoint:Landroid/graphics/Point;

    iget v13, v13, Landroid/graphics/Point;->x:I

    sub-int v9, v13, v5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mDisplaySizePoint:Landroid/graphics/Point;

    iget v8, v13, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mIsNeedGravityToRight:Z

    if-eqz v13, :cond_200

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/Display;->getRotation()I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_200

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mBubblePos:[I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mBubblePos:[I

    const/4 v15, 0x0

    aget v14, v14, v15

    sub-int/2addr v14, v5

    const/4 v15, 0x0

    aput v14, v13, v15

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mCirclePos:[I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mCirclePos:[I

    const/4 v15, 0x0

    aget v14, v14, v15

    sub-int/2addr v14, v5

    const/4 v15, 0x0

    aput v14, v13, v15

    goto/16 :goto_12f

    :cond_200
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mIsNeedGravityToRight:Z

    if-nez v13, :cond_12f

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/Display;->getRotation()I

    move-result v13

    const/4 v14, 0x3

    if-ne v13, v14, :cond_12f

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mBubblePos:[I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mBubblePos:[I

    const/4 v15, 0x0

    aget v14, v14, v15

    sub-int/2addr v14, v5

    const/4 v15, 0x0

    aput v14, v13, v15

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mCirclePos:[I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mCirclePos:[I

    const/4 v15, 0x0

    aget v14, v14, v15

    sub-int/2addr v14, v5

    const/4 v15, 0x0

    aput v14, v13, v15

    goto/16 :goto_12f
.end method

.method public reSetBubblePositionAndImage()V
    .registers 10

    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mView:Lcom/android/systemui/stackdivider/AppPairPopupView;

    iget v5, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mDirection:I

    invoke-virtual {v4, v5}, Lcom/android/systemui/stackdivider/AppPairPopupView;->setBubbleViewImage(I)V

    iget-object v4, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mView:Lcom/android/systemui/stackdivider/AppPairPopupView;

    const v5, 0x7f0a035b

    invoke-virtual {v4, v5}, Lcom/android/systemui/stackdivider/AppPairPopupView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v4, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07038f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-boolean v4, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mIsLandScape:Z

    if-nez v4, :cond_49

    iget v4, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mVerticalGravity:I

    or-int/lit8 v4, v4, 0x1

    :goto_2d
    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-boolean v4, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mIsLandScape:Z

    if-nez v4, :cond_57

    :cond_33
    move v6, v0

    :goto_34
    iget-boolean v4, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mIsNeedGravityToBottom:Z

    if-eqz v4, :cond_62

    move v5, v0

    :goto_39
    iget-boolean v4, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mIsLandScape:Z

    if-nez v4, :cond_69

    :cond_3d
    move v4, v0

    :goto_3e
    iget-boolean v7, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mIsLandScape:Z

    if-eqz v7, :cond_73

    :cond_42
    :goto_42
    invoke-virtual {v2, v6, v5, v4, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_48
    return-void

    :cond_49
    iget-boolean v4, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mIsNeedGravityToRight:Z

    if-eqz v4, :cond_52

    iget v4, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mVerticalGravity:I

    or-int/lit8 v4, v4, 0x5

    goto :goto_2d

    :cond_52
    iget v4, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mVerticalGravity:I

    or-int/lit8 v4, v4, 0x3

    goto :goto_2d

    :cond_57
    iget-boolean v4, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mIsNeedGravityToRight:Z

    if-nez v4, :cond_33

    iget-object v4, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mBubblePos:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    move v6, v4

    goto :goto_34

    :cond_62
    iget-object v4, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mBubblePos:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    move v5, v4

    goto :goto_39

    :cond_69
    iget-boolean v4, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mIsNeedGravityToRight:Z

    if-eqz v4, :cond_3d

    iget-object v4, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mBubblePos:[I

    const/4 v7, 0x0

    aget v4, v4, v7

    goto :goto_3e

    :cond_73
    iget-boolean v7, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mIsNeedGravityToBottom:Z

    if-eqz v7, :cond_42

    iget-object v7, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mBubblePos:[I

    const/4 v8, 0x1

    aget v0, v7, v8
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7c} :catch_7d

    goto :goto_42

    :catch_7d
    move-exception v1

    const-string/jumbo v4, "AppPairToolTip"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Exception in  AppPairPopupManager::reSetWindowPosition = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_48
.end method

.method public reSetBubbleSize()V
    .registers 14

    const/4 v12, 0x1

    const/4 v11, 0x0

    iget-object v9, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mView:Lcom/android/systemui/stackdivider/AppPairPopupView;

    invoke-virtual {v9}, Lcom/android/systemui/stackdivider/AppPairPopupView;->getTxtView()Landroid/view/View;

    move-result-object v6

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    const/4 v9, 0x2

    new-array v7, v9, [I

    if-eqz v6, :cond_a3

    iget-object v9, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mView:Lcom/android/systemui/stackdivider/AppPairPopupView;

    invoke-virtual {v9}, Lcom/android/systemui/stackdivider/AppPairPopupView;->getCircleWidth()I

    move-result v1

    invoke-virtual {v6, v8}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    invoke-virtual {v6, v7}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v9, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mView:Lcom/android/systemui/stackdivider/AppPairPopupView;

    invoke-virtual {v9}, Lcom/android/systemui/stackdivider/AppPairPopupView;->getFirstBody()Landroid/widget/ImageView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v9, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mView:Lcom/android/systemui/stackdivider/AppPairPopupView;

    invoke-virtual {v9}, Lcom/android/systemui/stackdivider/AppPairPopupView;->getFirstLine()Landroid/widget/ImageView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v9, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mView:Lcom/android/systemui/stackdivider/AppPairPopupView;

    invoke-virtual {v9}, Lcom/android/systemui/stackdivider/AppPairPopupView;->getSecondBody()Landroid/widget/ImageView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v9, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mView:Lcom/android/systemui/stackdivider/AppPairPopupView;

    invoke-virtual {v9}, Lcom/android/systemui/stackdivider/AppPairPopupView;->getSecondLine()Landroid/widget/ImageView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    iget-boolean v9, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mIsLandScape:Z

    if-eqz v9, :cond_a4

    iget-object v9, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mCirclePos:[I

    aget v9, v9, v12

    div-int/lit8 v10, v1, 0x2

    add-int/2addr v9, v10

    iget-object v10, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mBubblePos:[I

    aget v10, v10, v12

    sub-int v0, v9, v10

    iput v0, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget v9, v8, Landroid/graphics/Rect;->bottom:I

    iget v10, v8, Landroid/graphics/Rect;->top:I

    sub-int/2addr v9, v10

    sub-int/2addr v9, v0

    iget v10, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mHeightOffset:I

    add-int/2addr v9, v10

    iput v9, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput v9, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget v9, v8, Landroid/graphics/Rect;->right:I

    iget v10, v8, Landroid/graphics/Rect;->left:I

    sub-int/2addr v9, v10

    iput v9, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v9, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v9, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v9, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    :goto_7d
    iget-object v9, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mView:Lcom/android/systemui/stackdivider/AppPairPopupView;

    invoke-virtual {v9}, Lcom/android/systemui/stackdivider/AppPairPopupView;->getFirstBody()Landroid/widget/ImageView;

    move-result-object v9

    invoke-virtual {v9, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v9, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mView:Lcom/android/systemui/stackdivider/AppPairPopupView;

    invoke-virtual {v9}, Lcom/android/systemui/stackdivider/AppPairPopupView;->getFirstLine()Landroid/widget/ImageView;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v9, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mView:Lcom/android/systemui/stackdivider/AppPairPopupView;

    invoke-virtual {v9}, Lcom/android/systemui/stackdivider/AppPairPopupView;->getSecondBody()Landroid/widget/ImageView;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v9, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mView:Lcom/android/systemui/stackdivider/AppPairPopupView;

    invoke-virtual {v9}, Lcom/android/systemui/stackdivider/AppPairPopupView;->getSecondLine()Landroid/widget/ImageView;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iput v11, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mHeightOffset:I

    :cond_a3
    return-void

    :cond_a4
    iget-object v9, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mCirclePos:[I

    aget v9, v9, v11

    div-int/lit8 v10, v1, 0x2

    add-int/2addr v9, v10

    aget v10, v7, v11

    sub-int v0, v9, v10

    iget-boolean v9, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mIsNeedGravityToRight:Z

    if-eqz v9, :cond_d4

    iget v9, v8, Landroid/graphics/Rect;->right:I

    iget v10, v8, Landroid/graphics/Rect;->left:I

    sub-int/2addr v9, v10

    sub-int/2addr v9, v0

    :goto_b9
    iput v9, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v9, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget-boolean v9, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mIsNeedGravityToRight:Z

    if-eqz v9, :cond_d6

    move v9, v0

    :goto_c2
    iput v9, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v9, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget v9, v8, Landroid/graphics/Rect;->bottom:I

    iget v10, v8, Landroid/graphics/Rect;->top:I

    sub-int/2addr v9, v10

    iput v9, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput v9, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput v9, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput v9, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto :goto_7d

    :cond_d4
    move v9, v0

    goto :goto_b9

    :cond_d6
    iget v9, v8, Landroid/graphics/Rect;->right:I

    iget v10, v8, Landroid/graphics/Rect;->left:I

    sub-int/2addr v9, v10

    sub-int/2addr v9, v0

    goto :goto_c2
.end method

.method public reSetCirclePosition()V
    .registers 9

    const/4 v3, 0x0

    :try_start_1
    iget-object v4, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mView:Lcom/android/systemui/stackdivider/AppPairPopupView;

    const v5, 0x7f0a0359

    invoke-virtual {v4, v5}, Lcom/android/systemui/stackdivider/AppPairPopupView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iget-boolean v4, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mIsNeedGravityToRight:Z

    if-eqz v4, :cond_3f

    move v6, v3

    :goto_17
    iget-boolean v4, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mIsNeedGravityToBottom:Z

    if-eqz v4, :cond_46

    move v5, v3

    :goto_1c
    iget-boolean v4, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mIsNeedGravityToRight:Z

    if-eqz v4, :cond_4d

    iget-object v4, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mCirclePos:[I

    const/4 v7, 0x0

    aget v4, v4, v7

    :goto_25
    iget-boolean v7, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mIsNeedGravityToBottom:Z

    if-eqz v7, :cond_2e

    iget-object v3, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mCirclePos:[I

    const/4 v7, 0x1

    aget v3, v3, v7

    :cond_2e
    invoke-virtual {v1, v6, v5, v4, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    iget-boolean v3, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mIsNeedGravityToRight:Z

    if-eqz v3, :cond_4f

    iget v3, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mVerticalGravity:I

    or-int/lit8 v3, v3, 0x5

    :goto_39
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_3e
    return-void

    :cond_3f
    iget-object v4, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mCirclePos:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    move v6, v4

    goto :goto_17

    :cond_46
    iget-object v4, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mCirclePos:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    move v5, v4

    goto :goto_1c

    :cond_4d
    move v4, v3

    goto :goto_25

    :cond_4f
    iget v3, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mVerticalGravity:I
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_51} :catch_54

    or-int/lit8 v3, v3, 0x3

    goto :goto_39

    :catch_54
    move-exception v0

    const-string/jumbo v3, "AppPairToolTip"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Exception in AppPairPopupManager::reSetCirclePosition = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3e
.end method

.method public remove()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mView:Lcom/android/systemui/stackdivider/AppPairPopupView;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mView:Lcom/android/systemui/stackdivider/AppPairPopupView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    iput-object v2, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mView:Lcom/android/systemui/stackdivider/AppPairPopupView;

    :cond_e
    iget-object v0, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mDimView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mDimView:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    iput-object v2, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mDimView:Landroid/widget/ImageView;

    :cond_1b
    return-void
.end method

.method public show(I)V
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mView:Lcom/android/systemui/stackdivider/AppPairPopupView;

    if-eqz v0, :cond_d

    if-nez p1, :cond_17

    iget-object v0, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mView:Lcom/android/systemui/stackdivider/AppPairPopupView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/stackdivider/AppPairPopupView;->startAnimation(I)V

    :cond_d
    :goto_d
    iget-object v0, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mDimView:Landroid/widget/ImageView;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mDimView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_16
    return-void

    :cond_17
    iget-object v0, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mView:Lcom/android/systemui/stackdivider/AppPairPopupView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/stackdivider/AppPairPopupView;->startAnimation(I)V

    goto :goto_d
.end method
