.class Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView$AccessibilityDelegate;
.super Lcom/samsung/android/support/sesl/core/view/SeslAccessibilityDelegateCompat;
.source "SeslNestedScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AccessibilityDelegate"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/view/SeslAccessibilityDelegateCompat;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 6

    const/4 v1, 0x0

    invoke-super {p0, p1, p2}, Lcom/samsung/android/support/sesl/core/view/SeslAccessibilityDelegateCompat;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    move-object v0, p1

    check-cast v0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;

    const-class v2, Landroid/widget/ScrollView;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getScrollRange()I

    move-result v2

    if-gtz v2, :cond_36

    :goto_16
    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getScrollX()I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/accessibility/AccessibilityEvent;->setScrollX(I)V

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getScrollY()I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/accessibility/AccessibilityEvent;->setScrollY(I)V

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getScrollX()I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollX(I)V

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getScrollRange()I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollY(I)V

    return-void

    :cond_36
    const/4 v1, 0x1

    goto :goto_16
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Lcom/samsung/android/support/sesl/core/view/accessibility/SeslAccessibilityNodeInfoCompat;)V
    .registers 6

    invoke-super {p0, p1, p2}, Lcom/samsung/android/support/sesl/core/view/SeslAccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Lcom/samsung/android/support/sesl/core/view/accessibility/SeslAccessibilityNodeInfoCompat;)V

    move-object v0, p1

    check-cast v0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;

    const-class v2, Landroid/widget/ScrollView;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/samsung/android/support/sesl/core/view/accessibility/SeslAccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_16

    :cond_15
    :goto_15
    return-void

    :cond_16
    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getScrollRange()I

    move-result v1

    if-lez v1, :cond_15

    const/4 v2, 0x1

    invoke-virtual {p2, v2}, Lcom/samsung/android/support/sesl/core/view/accessibility/SeslAccessibilityNodeInfoCompat;->setScrollable(Z)V

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getScrollY()I

    move-result v2

    if-gtz v2, :cond_32

    :goto_26
    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getScrollY()I

    move-result v2

    if-ge v2, v1, :cond_15

    const/16 v2, 0x1000

    invoke-virtual {p2, v2}, Lcom/samsung/android/support/sesl/core/view/accessibility/SeslAccessibilityNodeInfoCompat;->addAction(I)V

    goto :goto_15

    :cond_32
    const/16 v2, 0x2000

    invoke-virtual {p2, v2}, Lcom/samsung/android/support/sesl/core/view/accessibility/SeslAccessibilityNodeInfoCompat;->addAction(I)V

    goto :goto_26
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .registers 11

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/support/sesl/core/view/SeslAccessibilityDelegateCompat;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v3

    if-nez v3, :cond_15

    move-object v0, p1

    check-cast v0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_16

    sparse-switch p2, :sswitch_data_62

    return v5

    :cond_15
    return v6

    :cond_16
    return v5

    :sswitch_17
    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getHeight()I

    move-result v3

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getPaddingTop()I

    move-result v4

    sub-int v2, v3, v4

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getScrollY()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getScrollRange()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getScrollY()I

    move-result v3

    if-ne v1, v3, :cond_3a

    return v5

    :cond_3a
    invoke-virtual {v0, v5, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->smoothScrollTo(II)V

    return v6

    :sswitch_3e
    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getHeight()I

    move-result v3

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getPaddingTop()I

    move-result v4

    sub-int v2, v3, v4

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getScrollY()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getScrollY()I

    move-result v3

    if-ne v1, v3, :cond_5d

    return v5

    :cond_5d
    invoke-virtual {v0, v5, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->smoothScrollTo(II)V

    return v6

    nop

    :sswitch_data_62
    .sparse-switch
        0x1000 -> :sswitch_17
        0x2000 -> :sswitch_3e
    .end sparse-switch
.end method
