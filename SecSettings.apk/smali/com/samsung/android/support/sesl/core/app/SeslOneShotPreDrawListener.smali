.class Lcom/samsung/android/support/sesl/core/app/SeslOneShotPreDrawListener;
.super Ljava/lang/Object;
.source "SeslOneShotPreDrawListener.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field private final mRunnable:Ljava/lang/Runnable;

.field private final mView:Landroid/view/View;

.field private mViewTreeObserver:Landroid/view/ViewTreeObserver;


# direct methods
.method private constructor <init>(Landroid/view/View;Ljava/lang/Runnable;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/app/SeslOneShotPreDrawListener;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslOneShotPreDrawListener;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    iput-object p2, p0, Lcom/samsung/android/support/sesl/core/app/SeslOneShotPreDrawListener;->mRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public static add(Landroid/view/View;Ljava/lang/Runnable;)Lcom/samsung/android/support/sesl/core/app/SeslOneShotPreDrawListener;
    .registers 4

    new-instance v0, Lcom/samsung/android/support/sesl/core/app/SeslOneShotPreDrawListener;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/support/sesl/core/app/SeslOneShotPreDrawListener;-><init>(Landroid/view/View;Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-object v0
.end method


# virtual methods
.method public onPreDraw()Z
    .registers 2

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/app/SeslOneShotPreDrawListener;->removeListener()V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslOneShotPreDrawListener;->mRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x1

    return v0
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .registers 3

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslOneShotPreDrawListener;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .registers 2

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/app/SeslOneShotPreDrawListener;->removeListener()V

    return-void
.end method

.method public removeListener()V
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslOneShotPreDrawListener;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslOneShotPreDrawListener;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :goto_11
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslOneShotPreDrawListener;->mView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void

    :cond_17
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslOneShotPreDrawListener;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_11
.end method
