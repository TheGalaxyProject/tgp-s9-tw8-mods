.class Lcom/android/settings/notification/ZenRuleSelectionDialog$4;
.super Ljava/lang/Object;
.source "ZenRuleSelectionDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/ZenRuleSelectionDialog;->bindType(Lcom/android/settings/notification/ZenRuleInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/ZenRuleSelectionDialog;

.field final synthetic val$ri:Lcom/android/settings/notification/ZenRuleInfo;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/ZenRuleSelectionDialog;Lcom/android/settings/notification/ZenRuleInfo;)V
    .registers 3

    iput-object p1, p0, Lcom/android/settings/notification/ZenRuleSelectionDialog$4;->this$0:Lcom/android/settings/notification/ZenRuleSelectionDialog;

    iput-object p2, p0, Lcom/android/settings/notification/ZenRuleSelectionDialog$4;->val$ri:Lcom/android/settings/notification/ZenRuleInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/android/settings/notification/ZenRuleSelectionDialog$4;->this$0:Lcom/android/settings/notification/ZenRuleSelectionDialog;

    invoke-static {v0}, Lcom/android/settings/notification/ZenRuleSelectionDialog;->-get2(Lcom/android/settings/notification/ZenRuleSelectionDialog;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iget-object v0, p0, Lcom/android/settings/notification/ZenRuleSelectionDialog$4;->val$ri:Lcom/android/settings/notification/ZenRuleInfo;

    iget-boolean v0, v0, Lcom/android/settings/notification/ZenRuleInfo;->isSystem:Z

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/settings/notification/ZenRuleSelectionDialog$4;->this$0:Lcom/android/settings/notification/ZenRuleSelectionDialog;

    iget-object v1, p0, Lcom/android/settings/notification/ZenRuleSelectionDialog$4;->val$ri:Lcom/android/settings/notification/ZenRuleInfo;

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/ZenRuleSelectionDialog;->onSystemRuleSelected(Lcom/android/settings/notification/ZenRuleInfo;)V

    :goto_16
    return-void

    :cond_17
    iget-object v0, p0, Lcom/android/settings/notification/ZenRuleSelectionDialog$4;->this$0:Lcom/android/settings/notification/ZenRuleSelectionDialog;

    iget-object v1, p0, Lcom/android/settings/notification/ZenRuleSelectionDialog$4;->val$ri:Lcom/android/settings/notification/ZenRuleInfo;

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/ZenRuleSelectionDialog;->onExternalRuleSelected(Lcom/android/settings/notification/ZenRuleInfo;)V

    goto :goto_16
.end method
