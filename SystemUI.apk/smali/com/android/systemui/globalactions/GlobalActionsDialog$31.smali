.class Lcom/android/systemui/globalactions/GlobalActionsDialog$31;
.super Landroid/animation/AnimatorListenerAdapter;
.source "GlobalActionsDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/globalactions/GlobalActionsDialog;->confirmAction(Landroid/view/View;Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

.field final synthetic val$action:Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;


# direct methods
.method constructor <init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;)V
    .registers 3

    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$31;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    iput-object p2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$31;->val$action:Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$31;->val$action:Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;

    invoke-interface {v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;->onPress()V

    return-void
.end method
