.class Lcom/android/server/policy/LegacyGlobalActions$31;
.super Landroid/animation/AnimatorListenerAdapter;
.source "LegacyGlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/LegacyGlobalActions;->confirmAction(Landroid/view/View;Lcom/android/server/policy/LegacyGlobalActions$Action;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/LegacyGlobalActions;

.field final synthetic val$action:Lcom/android/server/policy/LegacyGlobalActions$Action;


# direct methods
.method constructor <init>(Lcom/android/server/policy/LegacyGlobalActions;Lcom/android/server/policy/LegacyGlobalActions$Action;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/policy/LegacyGlobalActions$31;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    iput-object p2, p0, Lcom/android/server/policy/LegacyGlobalActions$31;->val$action:Lcom/android/server/policy/LegacyGlobalActions$Action;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions$31;->val$action:Lcom/android/server/policy/LegacyGlobalActions$Action;

    invoke-interface {v0}, Lcom/android/server/policy/LegacyGlobalActions$Action;->onPress()V

    return-void
.end method
