.class Lcom/android/settings/notification/ZenRuleNameDialog$1;
.super Ljava/lang/Object;
.source "ZenRuleNameDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/ZenRuleNameDialog;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/ZenRuleNameDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/ZenRuleNameDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/android/settings/notification/ZenRuleNameDialog$1;->this$0:Lcom/android/settings/notification/ZenRuleNameDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    iget-object v1, p0, Lcom/android/settings/notification/ZenRuleNameDialog$1;->this$0:Lcom/android/settings/notification/ZenRuleNameDialog;

    invoke-static {v1}, Lcom/android/settings/notification/ZenRuleNameDialog;->-wrap0(Lcom/android/settings/notification/ZenRuleNameDialog;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    return-void

    :cond_d
    iget-object v1, p0, Lcom/android/settings/notification/ZenRuleNameDialog$1;->this$0:Lcom/android/settings/notification/ZenRuleNameDialog;

    invoke-static {v1}, Lcom/android/settings/notification/ZenRuleNameDialog;->-get0(Lcom/android/settings/notification/ZenRuleNameDialog;)Z

    move-result v1

    if-nez v1, :cond_2a

    iget-object v1, p0, Lcom/android/settings/notification/ZenRuleNameDialog$1;->this$0:Lcom/android/settings/notification/ZenRuleNameDialog;

    invoke-static {v1}, Lcom/android/settings/notification/ZenRuleNameDialog;->-get1(Lcom/android/settings/notification/ZenRuleNameDialog;)Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_2a

    iget-object v1, p0, Lcom/android/settings/notification/ZenRuleNameDialog$1;->this$0:Lcom/android/settings/notification/ZenRuleNameDialog;

    invoke-static {v1}, Lcom/android/settings/notification/ZenRuleNameDialog;->-get1(Lcom/android/settings/notification/ZenRuleNameDialog;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    return-void

    :cond_2a
    iget-object v1, p0, Lcom/android/settings/notification/ZenRuleNameDialog$1;->this$0:Lcom/android/settings/notification/ZenRuleNameDialog;

    invoke-virtual {v1, v0}, Lcom/android/settings/notification/ZenRuleNameDialog;->onOk(Ljava/lang/String;)V

    return-void
.end method
