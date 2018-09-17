.class public Landroid/support/v4/view/ViewCompat;
.super Ljava/lang/Object;
.source "ViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/view/ViewCompat$ImportantForAccessibility;,
        Landroid/support/v4/view/ViewCompat$ResolvedLayoutDirectionMode;,
        Landroid/support/v4/view/ViewCompat$ScrollAxis;,
        Landroid/support/v4/view/ViewCompat$ViewCompatApi15Impl;,
        Landroid/support/v4/view/ViewCompat$ViewCompatApi16Impl;,
        Landroid/support/v4/view/ViewCompat$ViewCompatApi17Impl;,
        Landroid/support/v4/view/ViewCompat$ViewCompatApi18Impl;,
        Landroid/support/v4/view/ViewCompat$ViewCompatApi19Impl;,
        Landroid/support/v4/view/ViewCompat$ViewCompatApi21Impl;,
        Landroid/support/v4/view/ViewCompat$ViewCompatApi23Impl;,
        Landroid/support/v4/view/ViewCompat$ViewCompatApi24Impl;,
        Landroid/support/v4/view/ViewCompat$ViewCompatApi26Impl;,
        Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;
    }
.end annotation


# static fields
.field static final IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    invoke-static {}, Landroid/support/v4/os/BuildCompat;->isAtLeastO()Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance v0, Landroid/support/v4/view/ViewCompat$ViewCompatApi26Impl;

    invoke-direct {v0}, Landroid/support/v4/view/ViewCompat$ViewCompatApi26Impl;-><init>()V

    sput-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;

    :goto_d
    return-void

    :cond_e
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_1c

    new-instance v0, Landroid/support/v4/view/ViewCompat$ViewCompatApi24Impl;

    invoke-direct {v0}, Landroid/support/v4/view/ViewCompat$ViewCompatApi24Impl;-><init>()V

    sput-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;

    goto :goto_d

    :cond_1c
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_2a

    new-instance v0, Landroid/support/v4/view/ViewCompat$ViewCompatApi23Impl;

    invoke-direct {v0}, Landroid/support/v4/view/ViewCompat$ViewCompatApi23Impl;-><init>()V

    sput-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;

    goto :goto_d

    :cond_2a
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_38

    new-instance v0, Landroid/support/v4/view/ViewCompat$ViewCompatApi21Impl;

    invoke-direct {v0}, Landroid/support/v4/view/ViewCompat$ViewCompatApi21Impl;-><init>()V

    sput-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;

    goto :goto_d

    :cond_38
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_46

    new-instance v0, Landroid/support/v4/view/ViewCompat$ViewCompatApi19Impl;

    invoke-direct {v0}, Landroid/support/v4/view/ViewCompat$ViewCompatApi19Impl;-><init>()V

    sput-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;

    goto :goto_d

    :cond_46
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_54

    new-instance v0, Landroid/support/v4/view/ViewCompat$ViewCompatApi18Impl;

    invoke-direct {v0}, Landroid/support/v4/view/ViewCompat$ViewCompatApi18Impl;-><init>()V

    sput-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;

    goto :goto_d

    :cond_54
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_62

    new-instance v0, Landroid/support/v4/view/ViewCompat$ViewCompatApi17Impl;

    invoke-direct {v0}, Landroid/support/v4/view/ViewCompat$ViewCompatApi17Impl;-><init>()V

    sput-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;

    goto :goto_d

    :cond_62
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_70

    new-instance v0, Landroid/support/v4/view/ViewCompat$ViewCompatApi16Impl;

    invoke-direct {v0}, Landroid/support/v4/view/ViewCompat$ViewCompatApi16Impl;-><init>()V

    sput-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;

    goto :goto_d

    :cond_70
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-lt v0, v1, :cond_7e

    new-instance v0, Landroid/support/v4/view/ViewCompat$ViewCompatApi15Impl;

    invoke-direct {v0}, Landroid/support/v4/view/ViewCompat$ViewCompatApi15Impl;-><init>()V

    sput-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;

    goto :goto_d

    :cond_7e
    new-instance v0, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;

    invoke-direct {v0}, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;-><init>()V

    sput-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;

    goto :goto_d
.end method

.method protected constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canScrollVertically(Landroid/view/View;I)Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    return v0
.end method

.method public static dispatchApplyWindowInsets(Landroid/view/View;Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;
    .registers 3

    sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->dispatchApplyWindowInsets(Landroid/view/View;Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;

    move-result-object v0

    return-object v0
.end method

.method public static getAlpha(Landroid/view/View;)F
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v0

    return v0
.end method

.method public static getBackgroundTintList(Landroid/view/View;)Landroid/content/res/ColorStateList;
    .registers 2

    sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->getBackgroundTintList(Landroid/view/View;)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public static getBackgroundTintMode(Landroid/view/View;)Landroid/graphics/PorterDuff$Mode;
    .registers 2

    sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->getBackgroundTintMode(Landroid/view/View;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0
.end method

.method public static getDisplay(Landroid/view/View;)Landroid/view/Display;
    .registers 2
    .param p0    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->getDisplay(Landroid/view/View;)Landroid/view/Display;

    move-result-object v0

    return-object v0
.end method

.method public static getElevation(Landroid/view/View;)F
    .registers 2

    sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->getElevation(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method public static getFitsSystemWindows(Landroid/view/View;)Z
    .registers 2

    sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public static getImportantForAccessibility(Landroid/view/View;)I
    .registers 2

    sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->getImportantForAccessibility(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static getLayoutDirection(Landroid/view/View;)I
    .registers 2

    sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static getMinimumHeight(Landroid/view/View;)I
    .registers 2

    sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->getMinimumHeight(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static getMinimumWidth(Landroid/view/View;)I
    .registers 2

    sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->getMinimumWidth(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static getPaddingEnd(Landroid/view/View;)I
    .registers 2

    sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->getPaddingEnd(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static getPaddingStart(Landroid/view/View;)I
    .registers 2

    sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->getPaddingStart(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static getParentForAccessibility(Landroid/view/View;)Landroid/view/ViewParent;
    .registers 2

    sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->getParentForAccessibility(Landroid/view/View;)Landroid/view/ViewParent;

    move-result-object v0

    return-object v0
.end method

.method public static getTransitionName(Landroid/view/View;)Ljava/lang/String;
    .registers 2

    sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTranslationX(Landroid/view/View;)F
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    return v0
.end method

.method public static getTranslationY(Landroid/view/View;)F
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    return v0
.end method

.method public static getWindowSystemUiVisibility(Landroid/view/View;)I
    .registers 2

    sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->getWindowSystemUiVisibility(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static getY(Landroid/view/View;)F
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result v0

    return v0
.end method

.method public static getZ(Landroid/view/View;)F
    .registers 2

    sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->getZ(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method public static hasAccessibilityDelegate(Landroid/view/View;)Z
    .registers 2

    sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->hasAccessibilityDelegate(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public static hasOverlappingRendering(Landroid/view/View;)Z
    .registers 2

    sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->hasOverlappingRendering(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public static hasTransientState(Landroid/view/View;)Z
    .registers 2

    sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->hasTransientState(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public static isAttachedToWindow(Landroid/view/View;)Z
    .registers 2

    sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public static isLaidOut(Landroid/view/View;)Z
    .registers 2

    sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public static isNestedScrollingEnabled(Landroid/view/View;)Z
    .registers 2
    .param p0    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->isNestedScrollingEnabled(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public static isPaddingRelative(Landroid/view/View;)Z
    .registers 2

    sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->isPaddingRelative(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public static offsetLeftAndRight(Landroid/view/View;I)V
    .registers 3

    sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->offsetLeftAndRight(Landroid/view/View;I)V

    return-void
.end method

.method public static offsetTopAndBottom(Landroid/view/View;I)V
    .registers 3

    sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->offsetTopAndBottom(Landroid/view/View;I)V

    return-void
.end method

.method public static onApplyWindowInsets(Landroid/view/View;Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;
    .registers 3

    sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->onApplyWindowInsets(Landroid/view/View;Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;

    move-result-object v0

    return-object v0
.end method

.method public static onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public static onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .registers 3

    sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    return-void
.end method

.method public static performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .registers 4

    sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;

    invoke-virtual {v0, p0, p1, p2}, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public static postInvalidateOnAnimation(Landroid/view/View;)V
    .registers 2

    sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->postInvalidateOnAnimation(Landroid/view/View;)V

    return-void
.end method

.method public static postInvalidateOnAnimation(Landroid/view/View;IIII)V
    .registers 11

    sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->postInvalidateOnAnimation(Landroid/view/View;IIII)V

    return-void
.end method

.method public static postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V
    .registers 3

    sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V
    .registers 6

    sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;

    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public static requestApplyInsets(Landroid/view/View;)V
    .registers 2

    sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->requestApplyInsets(Landroid/view/View;)V

    return-void
.end method

.method public static setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V
    .registers 3

    sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    return-void
.end method

.method public static setAccessibilityLiveRegion(Landroid/view/View;I)V
    .registers 3

    sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->setAccessibilityLiveRegion(Landroid/view/View;I)V

    return-void
.end method

.method public static setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .registers 3

    sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static setBackgroundTintList(Landroid/view/View;Landroid/content/res/ColorStateList;)V
    .registers 3

    sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->setBackgroundTintList(Landroid/view/View;Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public static setBackgroundTintMode(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V
    .registers 3

    sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->setBackgroundTintMode(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public static setChildrenDrawingOrderEnabled(Landroid/view/ViewGroup;Z)V
    .registers 3

    sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->setChildrenDrawingOrderEnabled(Landroid/view/ViewGroup;Z)V

    return-void
.end method

.method public static setElevation(Landroid/view/View;F)V
    .registers 3

    sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->setElevation(Landroid/view/View;F)V

    return-void
.end method

.method public static setFitsSystemWindows(Landroid/view/View;Z)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Landroid/view/View;->setFitsSystemWindows(Z)V

    return-void
.end method

.method public static setImportantForAccessibility(Landroid/view/View;I)V
    .registers 3

    sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->setImportantForAccessibility(Landroid/view/View;I)V

    return-void
.end method

.method public static setLayerPaint(Landroid/view/View;Landroid/graphics/Paint;)V
    .registers 3

    sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->setLayerPaint(Landroid/view/View;Landroid/graphics/Paint;)V

    return-void
.end method

.method public static setOnApplyWindowInsetsListener(Landroid/view/View;Landroid/support/v4/view/OnApplyWindowInsetsListener;)V
    .registers 3

    sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroid/support/v4/view/OnApplyWindowInsetsListener;)V

    return-void
.end method

.method public static setPaddingRelative(Landroid/view/View;IIII)V
    .registers 11

    sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->setPaddingRelative(Landroid/view/View;IIII)V

    return-void
.end method

.method public static setPointerIcon(Landroid/view/View;Landroid/support/v4/view/PointerIconCompat;)V
    .registers 3
    .param p0    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->setPointerIcon(Landroid/view/View;Landroid/support/v4/view/PointerIconCompat;)V

    return-void
.end method

.method public static stopNestedScroll(Landroid/view/View;)V
    .registers 2
    .param p0    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->stopNestedScroll(Landroid/view/View;)V

    return-void
.end method
