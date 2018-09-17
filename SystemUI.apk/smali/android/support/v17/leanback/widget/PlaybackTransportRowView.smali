.class public Landroid/support/v17/leanback/widget/PlaybackTransportRowView;
.super Landroid/widget/LinearLayout;
.source "PlaybackTransportRowView.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/widget/PlaybackTransportRowView$OnUnhandledKeyListener;
    }
.end annotation


# instance fields
.field private mOnUnhandledKeyListener:Landroid/support/v17/leanback/widget/PlaybackTransportRowView$OnUnhandledKeyListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowView;->mOnUnhandledKeyListener:Landroid/support/v17/leanback/widget/PlaybackTransportRowView$OnUnhandledKeyListener;

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowView;->mOnUnhandledKeyListener:Landroid/support/v17/leanback/widget/PlaybackTransportRowView$OnUnhandledKeyListener;

    invoke-interface {v0, p1}, Landroid/support/v17/leanback/widget/PlaybackTransportRowView$OnUnhandledKeyListener;->onUnhandledKey(Landroid/view/KeyEvent;)Z

    move-result v0

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public focusSearch(Landroid/view/View;I)Landroid/view/View;
    .registers 7

    if-eqz p1, :cond_61

    const/16 v2, 0x21

    if-ne p2, v2, :cond_20

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/PlaybackTransportRowView;->getFocusedChild()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/widget/PlaybackTransportRowView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_10
    if-ltz v0, :cond_61

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/PlaybackTransportRowView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v2

    if-eqz v2, :cond_1d

    return-object v1

    :cond_1d
    add-int/lit8 v0, v0, -0x1

    goto :goto_10

    :cond_20
    const/16 v2, 0x82

    if-ne p2, v2, :cond_42

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/PlaybackTransportRowView;->getFocusedChild()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/widget/PlaybackTransportRowView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    :goto_2e
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/PlaybackTransportRowView;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_61

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/PlaybackTransportRowView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v2

    if-eqz v2, :cond_3f

    return-object v1

    :cond_3f
    add-int/lit8 v0, v0, 0x1

    goto :goto_2e

    :cond_42
    const/16 v2, 0x11

    if-eq p2, v2, :cond_4a

    const/16 v2, 0x42

    if-ne p2, v2, :cond_61

    :cond_4a
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/PlaybackTransportRowView;->getFocusedChild()Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_61

    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/PlaybackTransportRowView;->getFocusedChild()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v3, v2, p1, p2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    return-object v2

    :cond_61
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    return-object v2
.end method

.method public hasOverlappingRendering()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .registers 7

    const/4 v3, 0x1

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/PlaybackTransportRowView;->findFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_e

    return v3

    :cond_e
    sget v2, Landroid/support/v17/leanback/R$id;->playback_progress:I

    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/widget/PlaybackTransportRowView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_23

    invoke-virtual {v1}, Landroid/view/View;->isFocusable()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-virtual {v1, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_23

    return v3

    :cond_23
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z

    move-result v2

    return v2
.end method

.method setOnUnhandledKeyListener(Landroid/support/v17/leanback/widget/PlaybackTransportRowView$OnUnhandledKeyListener;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowView;->mOnUnhandledKeyListener:Landroid/support/v17/leanback/widget/PlaybackTransportRowView$OnUnhandledKeyListener;

    return-void
.end method
