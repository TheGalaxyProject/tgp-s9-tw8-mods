.class Lcom/android/server/policy/LegacyGlobalActions$13;
.super Landroid/database/ContentObserver;
.source "LegacyGlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/LegacyGlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/LegacyGlobalActions;


# direct methods
.method constructor <init>(Lcom/android/server/policy/LegacyGlobalActions;Landroid/os/Handler;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/policy/LegacyGlobalActions$13;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions$13;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v0}, Lcom/android/server/policy/LegacyGlobalActions;->-get9(Lcom/android/server/policy/LegacyGlobalActions;)Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;

    move-result-object v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions$13;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v0}, Lcom/android/server/policy/LegacyGlobalActions;->-get12(Lcom/android/server/policy/LegacyGlobalActions;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "isBikeMode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_57

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions$13;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v0}, Lcom/android/server/policy/LegacyGlobalActions;->-get9(Lcom/android/server/policy/LegacyGlobalActions;)Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;

    move-result-object v0

    sget-object v1, Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;->On:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;

    invoke-virtual {v0, v1}, Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;->updateState(Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;)V

    :cond_28
    :goto_28
    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions$13;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v0}, Lcom/android/server/policy/LegacyGlobalActions;->-get6(Lcom/android/server/policy/LegacyGlobalActions;)Lcom/android/server/policy/LegacyGlobalActions$MyAdapter;

    move-result-object v0

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions$13;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v0}, Lcom/android/server/policy/LegacyGlobalActions;->-get6(Lcom/android/server/policy/LegacyGlobalActions;)Lcom/android/server/policy/LegacyGlobalActions$MyAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/policy/LegacyGlobalActions$MyAdapter;->notifyDataSetChanged()V

    :cond_39
    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions$13;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v0}, Lcom/android/server/policy/LegacyGlobalActions;->-get10(Lcom/android/server/policy/LegacyGlobalActions;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_56

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions$13;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v0}, Lcom/android/server/policy/LegacyGlobalActions;->-get10(Lcom/android/server/policy/LegacyGlobalActions;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_56

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions$13;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v0}, Lcom/android/server/policy/LegacyGlobalActions;->-get10(Lcom/android/server/policy/LegacyGlobalActions;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_56
    return-void

    :cond_57
    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions$13;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v0}, Lcom/android/server/policy/LegacyGlobalActions;->-get9(Lcom/android/server/policy/LegacyGlobalActions;)Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;

    move-result-object v0

    sget-object v1, Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;

    invoke-virtual {v0, v1}, Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;->updateState(Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;)V

    goto :goto_28
.end method
