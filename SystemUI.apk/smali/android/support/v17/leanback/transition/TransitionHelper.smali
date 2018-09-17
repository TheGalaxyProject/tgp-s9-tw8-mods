.class public final Landroid/support/v17/leanback/transition/TransitionHelper;
.super Ljava/lang/Object;
.source "TransitionHelper.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperApi21Impl;,
        Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperKitkatImpl;,
        Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperStubImpl;,
        Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperVersionImpl;
    }
.end annotation


# static fields
.field private static sImpl:Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperVersionImpl;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_e

    new-instance v0, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperApi21Impl;

    invoke-direct {v0}, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperApi21Impl;-><init>()V

    sput-object v0, Landroid/support/v17/leanback/transition/TransitionHelper;->sImpl:Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperVersionImpl;

    :goto_d
    return-void

    :cond_e
    invoke-static {}, Landroid/support/v17/leanback/transition/TransitionHelper;->systemSupportsTransitions()Z

    move-result v0

    if-eqz v0, :cond_1c

    new-instance v0, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperKitkatImpl;

    invoke-direct {v0}, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperKitkatImpl;-><init>()V

    sput-object v0, Landroid/support/v17/leanback/transition/TransitionHelper;->sImpl:Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperVersionImpl;

    goto :goto_d

    :cond_1c
    new-instance v0, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperStubImpl;

    invoke-direct {v0}, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperStubImpl;-><init>()V

    sput-object v0, Landroid/support/v17/leanback/transition/TransitionHelper;->sImpl:Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperVersionImpl;

    goto :goto_d
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addTransition(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    sget-object v0, Landroid/support/v17/leanback/transition/TransitionHelper;->sImpl:Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperVersionImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperVersionImpl;->addTransition(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static addTransitionListener(Ljava/lang/Object;Landroid/support/v17/leanback/transition/TransitionListener;)V
    .registers 3

    sget-object v0, Landroid/support/v17/leanback/transition/TransitionHelper;->sImpl:Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperVersionImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperVersionImpl;->addTransitionListener(Ljava/lang/Object;Landroid/support/v17/leanback/transition/TransitionListener;)V

    return-void
.end method

.method public static beginDelayedTransition(Landroid/view/ViewGroup;Ljava/lang/Object;)V
    .registers 3

    sget-object v0, Landroid/support/v17/leanback/transition/TransitionHelper;->sImpl:Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperVersionImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperVersionImpl;->beginDelayedTransition(Landroid/view/ViewGroup;Ljava/lang/Object;)V

    return-void
.end method

.method public static createChangeBounds(Z)Ljava/lang/Object;
    .registers 2

    sget-object v0, Landroid/support/v17/leanback/transition/TransitionHelper;->sImpl:Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperVersionImpl;

    invoke-interface {v0, p0}, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperVersionImpl;->createChangeBounds(Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static createChangeTransform()Ljava/lang/Object;
    .registers 1

    sget-object v0, Landroid/support/v17/leanback/transition/TransitionHelper;->sImpl:Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperVersionImpl;

    invoke-interface {v0}, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperVersionImpl;->createChangeTransform()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static createFadeAndShortSlide(I)Ljava/lang/Object;
    .registers 2

    sget-object v0, Landroid/support/v17/leanback/transition/TransitionHelper;->sImpl:Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperVersionImpl;

    invoke-interface {v0, p0}, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperVersionImpl;->createFadeAndShortSlide(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static createFadeAndShortSlide(IF)Ljava/lang/Object;
    .registers 3

    sget-object v0, Landroid/support/v17/leanback/transition/TransitionHelper;->sImpl:Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperVersionImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperVersionImpl;->createFadeAndShortSlide(IF)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static createFadeTransition(I)Ljava/lang/Object;
    .registers 2

    sget-object v0, Landroid/support/v17/leanback/transition/TransitionHelper;->sImpl:Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperVersionImpl;

    invoke-interface {v0, p0}, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperVersionImpl;->createFadeTransition(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static createScene(Landroid/view/ViewGroup;Ljava/lang/Runnable;)Ljava/lang/Object;
    .registers 3

    sget-object v0, Landroid/support/v17/leanback/transition/TransitionHelper;->sImpl:Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperVersionImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperVersionImpl;->createScene(Landroid/view/ViewGroup;Ljava/lang/Runnable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static createTransitionSet(Z)Ljava/lang/Object;
    .registers 2

    sget-object v0, Landroid/support/v17/leanback/transition/TransitionHelper;->sImpl:Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperVersionImpl;

    invoke-interface {v0, p0}, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperVersionImpl;->createTransitionSet(Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static exclude(Ljava/lang/Object;IZ)V
    .registers 4

    sget-object v0, Landroid/support/v17/leanback/transition/TransitionHelper;->sImpl:Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperVersionImpl;

    invoke-interface {v0, p0, p1, p2}, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperVersionImpl;->exclude(Ljava/lang/Object;IZ)V

    return-void
.end method

.method public static exclude(Ljava/lang/Object;Landroid/view/View;Z)V
    .registers 4

    sget-object v0, Landroid/support/v17/leanback/transition/TransitionHelper;->sImpl:Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperVersionImpl;

    invoke-interface {v0, p0, p1, p2}, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperVersionImpl;->exclude(Ljava/lang/Object;Landroid/view/View;Z)V

    return-void
.end method

.method public static getEnterTransition(Landroid/view/Window;)Ljava/lang/Object;
    .registers 2

    sget-object v0, Landroid/support/v17/leanback/transition/TransitionHelper;->sImpl:Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperVersionImpl;

    invoke-interface {v0, p0}, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperVersionImpl;->getEnterTransition(Landroid/view/Window;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getReturnTransition(Landroid/view/Window;)Ljava/lang/Object;
    .registers 2

    sget-object v0, Landroid/support/v17/leanback/transition/TransitionHelper;->sImpl:Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperVersionImpl;

    invoke-interface {v0, p0}, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperVersionImpl;->getReturnTransition(Landroid/view/Window;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getSharedElementEnterTransition(Landroid/view/Window;)Ljava/lang/Object;
    .registers 2

    sget-object v0, Landroid/support/v17/leanback/transition/TransitionHelper;->sImpl:Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperVersionImpl;

    invoke-interface {v0, p0}, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperVersionImpl;->getSharedElementEnterTransition(Landroid/view/Window;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getSharedElementReturnTransition(Landroid/view/Window;)Ljava/lang/Object;
    .registers 2

    sget-object v0, Landroid/support/v17/leanback/transition/TransitionHelper;->sImpl:Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperVersionImpl;

    invoke-interface {v0, p0}, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperVersionImpl;->getSharedElementReturnTransition(Landroid/view/Window;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static include(Ljava/lang/Object;I)V
    .registers 3

    sget-object v0, Landroid/support/v17/leanback/transition/TransitionHelper;->sImpl:Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperVersionImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperVersionImpl;->include(Ljava/lang/Object;I)V

    return-void
.end method

.method public static include(Ljava/lang/Object;Landroid/view/View;)V
    .registers 3

    sget-object v0, Landroid/support/v17/leanback/transition/TransitionHelper;->sImpl:Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperVersionImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperVersionImpl;->include(Ljava/lang/Object;Landroid/view/View;)V

    return-void
.end method

.method public static loadTransition(Landroid/content/Context;I)Ljava/lang/Object;
    .registers 3

    sget-object v0, Landroid/support/v17/leanback/transition/TransitionHelper;->sImpl:Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperVersionImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperVersionImpl;->loadTransition(Landroid/content/Context;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static removeTransitionListener(Ljava/lang/Object;Landroid/support/v17/leanback/transition/TransitionListener;)V
    .registers 3

    sget-object v0, Landroid/support/v17/leanback/transition/TransitionHelper;->sImpl:Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperVersionImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperVersionImpl;->removeTransitionListener(Ljava/lang/Object;Landroid/support/v17/leanback/transition/TransitionListener;)V

    return-void
.end method

.method public static runTransition(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    sget-object v0, Landroid/support/v17/leanback/transition/TransitionHelper;->sImpl:Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperVersionImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperVersionImpl;->runTransition(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static setEnterTransition(Landroid/app/Fragment;Ljava/lang/Object;)V
    .registers 3

    sget-object v0, Landroid/support/v17/leanback/transition/TransitionHelper;->sImpl:Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperVersionImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperVersionImpl;->setEnterTransition(Landroid/app/Fragment;Ljava/lang/Object;)V

    return-void
.end method

.method public static setEnterTransition(Landroid/support/v4/app/Fragment;Ljava/lang/Object;)V
    .registers 2

    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->setEnterTransition(Ljava/lang/Object;)V

    return-void
.end method

.method public static setEnterTransition(Landroid/view/Window;Ljava/lang/Object;)V
    .registers 3

    sget-object v0, Landroid/support/v17/leanback/transition/TransitionHelper;->sImpl:Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperVersionImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperVersionImpl;->setEnterTransition(Landroid/view/Window;Ljava/lang/Object;)V

    return-void
.end method

.method public static setEpicenterCallback(Ljava/lang/Object;Landroid/support/v17/leanback/transition/TransitionEpicenterCallback;)V
    .registers 3

    sget-object v0, Landroid/support/v17/leanback/transition/TransitionHelper;->sImpl:Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperVersionImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperVersionImpl;->setEpicenterCallback(Ljava/lang/Object;Landroid/support/v17/leanback/transition/TransitionEpicenterCallback;)V

    return-void
.end method

.method public static setExitTransition(Landroid/app/Fragment;Ljava/lang/Object;)V
    .registers 3

    sget-object v0, Landroid/support/v17/leanback/transition/TransitionHelper;->sImpl:Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperVersionImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperVersionImpl;->setExitTransition(Landroid/app/Fragment;Ljava/lang/Object;)V

    return-void
.end method

.method public static setExitTransition(Landroid/support/v4/app/Fragment;Ljava/lang/Object;)V
    .registers 2

    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->setExitTransition(Ljava/lang/Object;)V

    return-void
.end method

.method public static setReturnTransition(Landroid/view/Window;Ljava/lang/Object;)V
    .registers 3

    sget-object v0, Landroid/support/v17/leanback/transition/TransitionHelper;->sImpl:Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperVersionImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperVersionImpl;->setReturnTransition(Landroid/view/Window;Ljava/lang/Object;)V

    return-void
.end method

.method public static setSharedElementEnterTransition(Landroid/app/Fragment;Ljava/lang/Object;)V
    .registers 3

    sget-object v0, Landroid/support/v17/leanback/transition/TransitionHelper;->sImpl:Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperVersionImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperVersionImpl;->setSharedElementEnterTransition(Landroid/app/Fragment;Ljava/lang/Object;)V

    return-void
.end method

.method public static setSharedElementEnterTransition(Landroid/support/v4/app/Fragment;Ljava/lang/Object;)V
    .registers 2

    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->setSharedElementEnterTransition(Ljava/lang/Object;)V

    return-void
.end method

.method public static setSharedElementEnterTransition(Landroid/view/Window;Ljava/lang/Object;)V
    .registers 3

    sget-object v0, Landroid/support/v17/leanback/transition/TransitionHelper;->sImpl:Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperVersionImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperVersionImpl;->setSharedElementEnterTransition(Landroid/view/Window;Ljava/lang/Object;)V

    return-void
.end method

.method public static setSharedElementReturnTransition(Landroid/view/Window;Ljava/lang/Object;)V
    .registers 3

    sget-object v0, Landroid/support/v17/leanback/transition/TransitionHelper;->sImpl:Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperVersionImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperVersionImpl;->setSharedElementReturnTransition(Landroid/view/Window;Ljava/lang/Object;)V

    return-void
.end method

.method public static setStartDelay(Ljava/lang/Object;J)V
    .registers 4

    sget-object v0, Landroid/support/v17/leanback/transition/TransitionHelper;->sImpl:Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperVersionImpl;

    invoke-interface {v0, p0, p1, p2}, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperVersionImpl;->setStartDelay(Ljava/lang/Object;J)V

    return-void
.end method

.method public static setTransitionGroup(Landroid/view/ViewGroup;Z)V
    .registers 3

    sget-object v0, Landroid/support/v17/leanback/transition/TransitionHelper;->sImpl:Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperVersionImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperVersionImpl;->setTransitionGroup(Landroid/view/ViewGroup;Z)V

    return-void
.end method

.method public static systemSupportsEntranceTransitions()Z
    .registers 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static systemSupportsTransitions()Z
    .registers 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method
