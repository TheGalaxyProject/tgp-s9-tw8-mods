.class Lcom/android/server/policy/LegacyGlobalActions$32;
.super Landroid/animation/AnimatorListenerAdapter;
.source "LegacyGlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/LegacyGlobalActions;->doAnimation(Landroid/view/View;FFFIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/LegacyGlobalActions;

.field final synthetic val$iconView:Landroid/widget/FrameLayout;


# direct methods
.method constructor <init>(Lcom/android/server/policy/LegacyGlobalActions;Landroid/widget/FrameLayout;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/policy/LegacyGlobalActions$32;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    iput-object p2, p0, Lcom/android/server/policy/LegacyGlobalActions$32;->val$iconView:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 6

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object v2, p0, Lcom/android/server/policy/LegacyGlobalActions$32;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v2}, Lcom/android/server/policy/LegacyGlobalActions;->-get12(Lcom/android/server/policy/LegacyGlobalActions;)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "accessibility"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_41

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityManager;->semIsAccessibilityServiceEnabled(I)Z

    move-result v2

    if-nez v2, :cond_24

    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityManager;->semIsAccessibilityServiceEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_41

    :cond_24
    const/16 v2, 0x4000

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/policy/LegacyGlobalActions$32;->val$iconView:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_41
    return-void
.end method