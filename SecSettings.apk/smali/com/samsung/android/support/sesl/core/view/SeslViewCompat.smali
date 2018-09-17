.class public Lcom/samsung/android/support/sesl/core/view/SeslViewCompat;
.super Ljava/lang/Object;
.source "SeslViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/core/view/SeslViewCompat$ViewCompatApi23Impl;,
        Lcom/samsung/android/support/sesl/core/view/SeslViewCompat$ViewCompatApi24Impl;,
        Lcom/samsung/android/support/sesl/core/view/SeslViewCompat$ViewCompatApi26Impl;,
        Lcom/samsung/android/support/sesl/core/view/SeslViewCompat$ViewCompatBaseImpl;
    }
.end annotation


# static fields
.field static final IMPL:Lcom/samsung/android/support/sesl/core/view/SeslViewCompat$ViewCompatBaseImpl;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    invoke-static {}, Lcom/samsung/android/support/sesl/core/os/SeslBuildCompat;->isAtLeastO()Z

    move-result v0

    if-nez v0, :cond_1a

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_22

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_2a

    new-instance v0, Lcom/samsung/android/support/sesl/core/view/SeslViewCompat$ViewCompatBaseImpl;

    invoke-direct {v0}, Lcom/samsung/android/support/sesl/core/view/SeslViewCompat$ViewCompatBaseImpl;-><init>()V

    sput-object v0, Lcom/samsung/android/support/sesl/core/view/SeslViewCompat;->IMPL:Lcom/samsung/android/support/sesl/core/view/SeslViewCompat$ViewCompatBaseImpl;

    :goto_19
    return-void

    :cond_1a
    new-instance v0, Lcom/samsung/android/support/sesl/core/view/SeslViewCompat$ViewCompatApi26Impl;

    invoke-direct {v0}, Lcom/samsung/android/support/sesl/core/view/SeslViewCompat$ViewCompatApi26Impl;-><init>()V

    sput-object v0, Lcom/samsung/android/support/sesl/core/view/SeslViewCompat;->IMPL:Lcom/samsung/android/support/sesl/core/view/SeslViewCompat$ViewCompatBaseImpl;

    goto :goto_19

    :cond_22
    new-instance v0, Lcom/samsung/android/support/sesl/core/view/SeslViewCompat$ViewCompatApi24Impl;

    invoke-direct {v0}, Lcom/samsung/android/support/sesl/core/view/SeslViewCompat$ViewCompatApi24Impl;-><init>()V

    sput-object v0, Lcom/samsung/android/support/sesl/core/view/SeslViewCompat;->IMPL:Lcom/samsung/android/support/sesl/core/view/SeslViewCompat$ViewCompatBaseImpl;

    goto :goto_19

    :cond_2a
    new-instance v0, Lcom/samsung/android/support/sesl/core/view/SeslViewCompat$ViewCompatApi23Impl;

    invoke-direct {v0}, Lcom/samsung/android/support/sesl/core/view/SeslViewCompat$ViewCompatApi23Impl;-><init>()V

    sput-object v0, Lcom/samsung/android/support/sesl/core/view/SeslViewCompat;->IMPL:Lcom/samsung/android/support/sesl/core/view/SeslViewCompat$ViewCompatBaseImpl;

    goto :goto_19
.end method

.method protected constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static offsetLeftAndRight(Landroid/view/View;I)V
    .registers 3

    sget-object v0, Lcom/samsung/android/support/sesl/core/view/SeslViewCompat;->IMPL:Lcom/samsung/android/support/sesl/core/view/SeslViewCompat$ViewCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/support/sesl/core/view/SeslViewCompat$ViewCompatBaseImpl;->offsetLeftAndRight(Landroid/view/View;I)V

    return-void
.end method

.method public static offsetTopAndBottom(Landroid/view/View;I)V
    .registers 3

    sget-object v0, Lcom/samsung/android/support/sesl/core/view/SeslViewCompat;->IMPL:Lcom/samsung/android/support/sesl/core/view/SeslViewCompat$ViewCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/support/sesl/core/view/SeslViewCompat$ViewCompatBaseImpl;->offsetTopAndBottom(Landroid/view/View;I)V

    return-void
.end method

.method public static setAccessibilityDelegate(Landroid/view/View;Lcom/samsung/android/support/sesl/core/view/SeslAccessibilityDelegateCompat;)V
    .registers 3

    const/4 v0, 0x0

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/core/view/SeslAccessibilityDelegateCompat;->getBridge()Landroid/view/View$AccessibilityDelegate;

    move-result-object v0

    :cond_7
    invoke-virtual {p0, v0}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    return-void
.end method
