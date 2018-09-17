.class public Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer;
.super Landroid/widget/FrameLayout;
.source "DispatchEventLayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;
    }
.end annotation


# instance fields
.field private mAnimPool:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;",
            ">;"
        }
    .end annotation
.end field

.field private mAnimations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;",
            ">;"
        }
    .end annotation
.end field

.field private mDragLastX:I

.field private mDragLastY:I

.field private mDragLocalState:Ljava/lang/Object;

.field private mDragStateDropped:Z

.field private mTaskBar:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

.field private final mTmpFPos:[F

.field private final mTmpPos:[I

.field private mViewPool:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field sRootLocationOnScreen:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    const/4 v2, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer;->mAnimations:Ljava/util/List;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer;->mAnimPool:Ljava/util/Stack;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer;->mViewPool:Ljava/util/Stack;

    iput v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer;->mDragLastX:I

    iput v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer;->mDragLastY:I

    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer;->sRootLocationOnScreen:[I

    new-array v0, v2, [F

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer;->mTmpFPos:[F

    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer;->mTmpPos:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7

    const/4 v2, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer;->mAnimations:Ljava/util/List;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer;->mAnimPool:Ljava/util/Stack;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer;->mViewPool:Ljava/util/Stack;

    iput v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer;->mDragLastX:I

    iput v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer;->mDragLastY:I

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer;->sRootLocationOnScreen:[I

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer;->mTmpFPos:[F

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer;->mTmpPos:[I

    return-void
.end method

.method private cleanupFinishedAnimations()V
    .registers 7

    const/high16 v5, 0x3f800000    # 1.0f

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer;->mAnimations:Ljava/util/List;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;->isCompleted()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_23
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_27
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_53

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer;->mAnimations:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    if-eqz v3, :cond_4a

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setAlpha(F)V

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setScaleX(F)V

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setScaleY(F)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer;->mViewPool:Ljava/util/Stack;

    invoke-virtual {v4, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4a
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;->recycle()V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer;->mAnimPool:Ljava/util/Stack;

    invoke-virtual {v4, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_27

    :cond_53
    return-void
.end method

.method public static createAnimatorSequentialSet(Landroid/animation/Animator;Landroid/animation/Animator;)Landroid/animation/AnimatorSet;
    .registers 5

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/animation/Animator;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    return-object v0
.end method

.method public static createAnimatorTogetherSet(Landroid/animation/Animator;Landroid/animation/Animator;)Landroid/animation/AnimatorSet;
    .registers 5

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/animation/Animator;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-object v0
.end method

.method private getNewAnim()Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer;->mAnimPool:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance v0, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer;)V

    return-object v0

    :cond_e
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer;->mAnimPool:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;

    return-object v0
.end method

.method private getNewImageView()Landroid/widget/ImageView;
    .registers 4

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer;->mViewPool:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v1

    if-eqz v1, :cond_1b

    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    :goto_11
    sget-object v1, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->sViewLayerPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearColorFilter()V

    return-object v0

    :cond_1b
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer;->mViewPool:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    goto :goto_11
.end method


# virtual methods
.method public animateDrop(ILjava/lang/Runnable;Landroid/view/View;Lcom/android/systemui/statusbar/phone/taskbar/data/ShadowBuilder;)Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;
    .registers 16

    const/4 v6, 0x0

    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_8

    return-object v6

    :cond_8
    instance-of v0, p3, Landroid/widget/TextView;

    if-nez v0, :cond_d

    return-object v6

    :cond_d
    const/4 v4, 0x0

    instance-of v0, p3, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;

    if-eqz v0, :cond_19

    move-object v0, p3

    check-cast v0, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->getDragIcon()Landroid/graphics/Bitmap;

    move-result-object v4

    :cond_19
    if-nez v4, :cond_1f

    invoke-virtual {p4}, Lcom/android/systemui/statusbar/phone/taskbar/data/ShadowBuilder;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    :cond_1f
    invoke-virtual {p0, p4}, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer;->getDropOffset(Lcom/android/systemui/statusbar/phone/taskbar/data/ShadowBuilder;)[I

    move-result-object v5

    const/4 v7, 0x0

    const/16 v8, 0x140

    const/4 v9, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v9}, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer;->animateIcon(ILjava/lang/Runnable;Landroid/view/View;Landroid/graphics/Bitmap;[I[IZIZ)Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;

    move-result-object v10

    return-object v10
.end method

.method public animateIcon(ILjava/lang/Runnable;Landroid/view/View;Landroid/graphics/Bitmap;[I[IZIZ)Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;
    .registers 19

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer;->cleanupFinishedAnimations()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer;->getNewImageView()Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, p4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2c

    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    if-eqz v1, :cond_2c

    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    iget v1, v8, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->isDisabled:I

    if-eqz v1, :cond_2c

    move-object v1, p3

    check-cast v1, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_2c
    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {p0, v3, v1, v2}, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer;->addView(Landroid/view/View;II)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer;->getNewAnim()Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;

    move-result-object v0

    iput p1, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;->mAnimGroup:I

    if-eqz p2, :cond_46

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;->mCallback:Ljava/lang/ref/WeakReference;

    :cond_46
    if-eqz p7, :cond_58

    move-object v1, p3

    move-object v2, p4

    move-object v4, p5

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;->setupMoveFadeAnimation(Landroid/view/View;Landroid/graphics/Bitmap;Landroid/widget/ImageView;[I[I)V

    :goto_4f
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer;->mAnimations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    return-object v0

    :cond_58
    move-object v1, p3

    move-object v2, p4

    move-object v4, p5

    move-object v5, p6

    move/from16 v6, p8

    move/from16 v7, p9

    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;->setupMoveAnimation(Landroid/view/View;Landroid/graphics/Bitmap;Landroid/widget/ImageView;[I[IIZ)V

    goto :goto_4f
.end method

.method public dispatchDragEvent(Landroid/view/DragEvent;)Z
    .registers 15

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer;->mTaskBar:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    if-nez v10, :cond_9

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v10

    return v10

    :cond_9
    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE_DRAG_HIERARCHY()Z

    move-result v10

    if-eqz v10, :cond_2d

    const-string/jumbo v10, "[DS]DispatchEventLayer"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "[DRAG_HIERARCHY]dispatchDragEvent :: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p1}, Landroid/view/DragEvent;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2d
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;

    const/4 v8, 0x0

    const/4 v5, 0x0

    if-nez v6, :cond_eb

    invoke-virtual {p1}, Landroid/view/DragEvent;->getClipDescription()Landroid/content/ClipDescription;

    move-result-object v1

    if-eqz v1, :cond_eb

    invoke-virtual {v1}, Landroid/content/ClipDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object v10

    if-eqz v10, :cond_eb

    const/4 v10, 0x1

    if-eq v0, v10, :cond_4d

    const/4 v10, 0x3

    if-ne v0, v10, :cond_eb

    :cond_4d
    invoke-virtual {v1}, Landroid/content/ClipDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_eb

    const-string/jumbo v10, "DragAndDropBinding"

    invoke-virtual {v5, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_eb

    const/4 v3, 0x0

    const/4 v10, 0x3

    if-ne v0, v10, :cond_a8

    :try_start_62
    invoke-virtual {p1}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v3

    if-nez v3, :cond_76

    const/4 v10, 0x1

    invoke-static {v5, v10}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    :cond_76
    :goto_76
    if-eqz v3, :cond_eb

    const-string/jumbo v10, "itemType"

    const/4 v11, -0x1

    invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    invoke-static {v10}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarSettings$Favorites;->convertToLocalItemType(I)I

    move-result v9

    const/16 v10, 0xa

    if-ne v9, v10, :cond_b0

    const/4 v10, 0x3

    if-ne v0, v10, :cond_ae

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer;->mTaskBar:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->getContext()Landroid/content/Context;

    move-result-object v10

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer;->mTaskBar:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    invoke-virtual {v11}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f120a5c

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    const/4 v10, 0x0

    return v10

    :cond_a8
    const/4 v10, 0x1

    invoke-static {v5, v10}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    goto :goto_76

    :cond_ae
    const/4 v10, 0x1

    return v10

    :cond_b0
    if-nez v9, :cond_118

    const/4 v10, 0x1

    if-ne v0, v10, :cond_fd

    new-instance v7, Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer;->mTaskBar:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    invoke-direct {v7, v3, v9, v10}, Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;-><init>(Landroid/content/Intent;ILcom/android/systemui/statusbar/phone/taskbar/TaskBar;)V

    move-object v6, v7

    :cond_bd
    :goto_bd
    if-eqz v6, :cond_116

    iget-object v10, v6, Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;->mItem:Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;

    if-eqz v10, :cond_116

    sput-object v6, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->dragState:Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE_DRAG_INFO()Z

    move-result v10

    if-eqz v10, :cond_eb

    const-string/jumbo v10, "[DS]DispatchEventLayer"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "dispatchDragEvent :: item = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v6, Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;->mItem:Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;

    invoke-virtual {v12}, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_eb
    .catch Ljava/net/URISyntaxException; {:try_start_62 .. :try_end_eb} :catch_111

    :cond_eb
    :goto_eb
    const/4 v10, 0x1

    if-ne v0, v10, :cond_11a

    iput-object v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer;->mDragLocalState:Ljava/lang/Object;

    if-eqz v6, :cond_f6

    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer;->mDragStateDropped:Z

    const/4 v8, 0x1

    :cond_f6
    :goto_f6
    if-eqz v8, :cond_14a

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v10

    return v10

    :cond_fd
    :try_start_fd
    sget-object v10, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->dragState:Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;

    if-eqz v10, :cond_bd

    sget-object v10, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->dragState:Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;

    iget-object v10, v10, Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;->mDragOrigin:Lcom/android/systemui/statusbar/phone/taskbar/data/DragOrigin;

    instance-of v10, v10, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;

    xor-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_bd

    sget-object v6, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->dragState:Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;

    invoke-virtual {v6, v3, v9}, Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;->updateItemInfo(Landroid/content/Intent;I)V
    :try_end_110
    .catch Ljava/net/URISyntaxException; {:try_start_fd .. :try_end_110} :catch_111

    goto :goto_bd

    :catch_111
    move-exception v2

    invoke-virtual {v2}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_eb

    :cond_116
    const/4 v6, 0x0

    goto :goto_eb

    :cond_118
    const/4 v10, 0x0

    return v10

    :cond_11a
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer;->mDragLocalState:Ljava/lang/Object;

    if-nez v10, :cond_122

    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer;->mDragLocalState:Ljava/lang/Object;

    goto :goto_f6

    :cond_122
    const/4 v10, 0x4

    if-ne v0, v10, :cond_12a

    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer;->mDragLocalState:Ljava/lang/Object;

    const/4 v8, 0x1

    goto :goto_f6

    :cond_12a
    iget-boolean v10, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer;->mDragStateDropped:Z

    if-nez v10, :cond_f6

    const/4 v10, 0x2

    if-eq v0, v10, :cond_134

    const/4 v10, 0x3

    if-ne v0, v10, :cond_148

    :cond_134
    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v10

    float-to-int v10, v10

    iput v10, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer;->mDragLastX:I

    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result v10

    float-to-int v10, v10

    iput v10, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer;->mDragLastY:I

    const/4 v10, 0x3

    if-ne v0, v10, :cond_148

    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer;->mDragStateDropped:Z

    :cond_148
    const/4 v8, 0x1

    goto :goto_f6

    :cond_14a
    return v8
.end method

.method public getDropOffset(Lcom/android/systemui/statusbar/phone/taskbar/data/ShadowBuilder;)[I
    .registers 8

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v0, 0x0

    if-eqz p1, :cond_1b

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/taskbar/data/ShadowBuilder;->getTouchOffset()[I

    move-result-object v0

    :goto_9
    const/4 v1, 0x2

    new-array v1, v1, [I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer;->mDragLastX:I

    aget v3, v0, v4

    sub-int/2addr v2, v3

    aput v2, v1, v4

    iget v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer;->mDragLastY:I

    aget v3, v0, v5

    sub-int/2addr v2, v3

    aput v2, v1, v5

    return-object v1

    :cond_1b
    filled-new-array {v4, v4}, [I

    move-result-object v0

    goto :goto_9
.end method

.method public getLocationOfView(Landroid/view/View;Landroid/graphics/Bitmap;)[I
    .registers 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer;->mTmpPos:[I

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer;->getLocationOfView(Landroid/view/View;Landroid/graphics/Bitmap;[I)[I

    move-result-object v0

    return-object v0
.end method

.method public getLocationOfView(Landroid/view/View;Landroid/graphics/Bitmap;[I)[I
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer;->getLocationOfView(Landroid/view/View;Landroid/graphics/Bitmap;[IZ)[I

    move-result-object v0

    return-object v0
.end method

.method public getLocationOfView(Landroid/view/View;Landroid/graphics/Bitmap;[IZ)[I
    .registers 19

    if-nez p3, :cond_7

    const/4 v10, 0x2

    new-array v0, v10, [I

    move-object/from16 p3, v0

    :cond_7
    if-nez p1, :cond_a

    return-object p3

    :cond_a
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren$LayoutParams;

    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v8

    invoke-virtual {p1}, Landroid/view/View;->getScaleY()F

    move-result v9

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-virtual {p1, v10}, Landroid/view/View;->setScaleX(F)V

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-virtual {p1, v10}, Landroid/view/View;->setScaleY(F)V

    move-object/from16 v0, p3

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-virtual {p1, v8}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p1, v9}, Landroid/view/View;->setScaleY(F)V

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer;->mTmpFPos:[F

    const/4 v10, 0x0

    aget v10, p3, v10

    int-to-float v10, v10

    const/4 v11, 0x0

    aput v10, v7, v11

    const/4 v10, 0x1

    aget v10, p3, v10

    int-to-float v10, v10

    const/4 v11, 0x1

    aput v10, v7, v11

    const/4 v10, 0x0

    aget v11, v7, v10

    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer;->sRootLocationOnScreen:[I

    const/4 v13, 0x0

    aget v12, v12, v13

    int-to-float v12, v12

    sub-float/2addr v11, v12

    aput v11, v7, v10

    const/4 v10, 0x1

    aget v11, v7, v10

    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer;->sRootLocationOnScreen:[I

    const/4 v13, 0x1

    aget v12, v12, v13

    int-to-float v12, v12

    sub-float/2addr v11, v12

    aput v11, v7, v10

    if-eqz p2, :cond_d1

    iget v10, v6, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren$LayoutParams;->width:I

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    sub-int/2addr v10, v11

    int-to-float v10, v10

    const/high16 v11, 0x40000000    # 2.0f

    div-float v3, v10, v11

    const/4 v4, 0x0

    if-nez p4, :cond_75

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v11

    if-eq v10, v11, :cond_75

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v10

    int-to-float v4, v10

    :cond_75
    :try_start_75
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    invoke-interface {v10}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getScaleX()F
    :try_end_82
    .catch Ljava/lang/NullPointerException; {:try_start_75 .. :try_end_82} :catch_e0

    move-result v8

    :goto_83
    const/4 v10, 0x0

    aget v11, v7, v10

    mul-float v12, v3, v8

    add-float/2addr v11, v12

    aput v11, v7, v10

    const/high16 v10, 0x3f800000    # 1.0f

    cmpl-float v10, v8, v10

    if-eqz v10, :cond_a3

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    int-to-float v2, v10

    const/4 v10, 0x0

    aget v11, v7, v10

    mul-float v12, v2, v8

    sub-float v12, v2, v12

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    sub-float/2addr v11, v12

    aput v11, v7, v10

    :cond_a3
    :try_start_a3
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    invoke-interface {v10}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getScaleY()F
    :try_end_b0
    .catch Ljava/lang/NullPointerException; {:try_start_a3 .. :try_end_b0} :catch_e4

    move-result v9

    :goto_b1
    const/4 v10, 0x1

    aget v11, v7, v10

    mul-float v12, v4, v9

    add-float/2addr v11, v12

    aput v11, v7, v10

    const/high16 v10, 0x3f800000    # 1.0f

    cmpl-float v10, v9, v10

    if-eqz v10, :cond_d1

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    int-to-float v1, v10

    const/4 v10, 0x1

    aget v11, v7, v10

    mul-float v12, v1, v9

    sub-float v12, v1, v12

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    sub-float/2addr v11, v12

    aput v11, v7, v10

    :cond_d1
    const/4 v10, 0x0

    aget v10, v7, v10

    float-to-int v10, v10

    const/4 v11, 0x0

    aput v10, p3, v11

    const/4 v10, 0x1

    aget v10, v7, v10

    float-to-int v10, v10

    const/4 v11, 0x1

    aput v10, p3, v11

    return-object p3

    :catch_e0
    move-exception v5

    const/high16 v8, 0x3f800000    # 1.0f

    goto :goto_83

    :catch_e4
    move-exception v5

    const/high16 v9, 0x3f800000    # 1.0f

    goto :goto_b1
.end method

.method protected onLayout(ZIIII)V
    .registers 7

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer;->sRootLocationOnScreen:[I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer;->getLocationOnScreen([I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer;->setLayoutDirection(I)V

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    return-void
.end method

.method public setTaskBar(Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;)V
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer;->mTaskBar:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    return-void
.end method

.method public updateExistingAnimationTo(Landroid/view/View;[IIZ)Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;
    .registers 9

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer;->cleanupFinishedAnimations()V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer;->mAnimations:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;->isCompleted()Z

    move-result v2

    if-nez v2, :cond_a

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;->mView:Landroid/view/View;

    if-ne v2, p1, :cond_a

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-virtual {v0, p2, p3, p4}, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;->update([IIZ)V

    return-object v0

    :cond_2a
    return-object v3
.end method
