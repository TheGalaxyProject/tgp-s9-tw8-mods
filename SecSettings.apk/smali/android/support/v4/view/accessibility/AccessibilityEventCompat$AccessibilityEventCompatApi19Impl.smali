.class Landroid/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventCompatApi19Impl;
.super Landroid/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventCompatApi16Impl;
.source "AccessibilityEventCompat.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x13
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/accessibility/AccessibilityEventCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AccessibilityEventCompatApi19Impl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventCompatApi16Impl;-><init>()V

    return-void
.end method


# virtual methods
.method public getContentChangeTypes(Landroid/view/accessibility/AccessibilityEvent;)I
    .registers 3

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getContentChangeTypes()I

    move-result v0

    return v0
.end method

.method public setContentChangeTypes(Landroid/view/accessibility/AccessibilityEvent;I)V
    .registers 3

    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityEvent;->setContentChangeTypes(I)V

    return-void
.end method
