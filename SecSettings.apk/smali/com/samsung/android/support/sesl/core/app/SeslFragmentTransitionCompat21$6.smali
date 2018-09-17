.class Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransitionCompat21$6;
.super Landroid/transition/Transition$EpicenterCallback;
.source "SeslFragmentTransitionCompat21.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransitionCompat21;->setEpicenter(Landroid/transition/Transition;Landroid/graphics/Rect;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$epicenter:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Landroid/graphics/Rect;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransitionCompat21$6;->val$epicenter:Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/transition/Transition$EpicenterCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetEpicenter(Landroid/transition/Transition;)Landroid/graphics/Rect;
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransitionCompat21$6;->val$epicenter:Landroid/graphics/Rect;

    if-nez v0, :cond_6

    :cond_5
    return-object v1

    :cond_6
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransitionCompat21$6;->val$epicenter:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransitionCompat21$6;->val$epicenter:Landroid/graphics/Rect;

    return-object v0
.end method
