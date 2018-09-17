.class Lcom/samsung/android/settings/datausage/trafficmanager/ShowWarningDialogFragment$2;
.super Ljava/lang/Object;
.source "ShowWarningDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/datausage/trafficmanager/ShowWarningDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/datausage/trafficmanager/ShowWarningDialogFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/datausage/trafficmanager/ShowWarningDialogFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ShowWarningDialogFragment$2;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/ShowWarningDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7

    const-string/jumbo v1, "ShowWarningDialog"

    const-string/jumbo v2, "the dialog setNegativeButton:"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_9
    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ShowWarningDialogFragment$2;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/ShowWarningDialogFragment;

    invoke-virtual {v1}, Lcom/samsung/android/settings/datausage/trafficmanager/ShowWarningDialogFragment;->dismiss()V
    :try_end_e
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_e} :catch_f

    :goto_e
    return-void

    :catch_f
    move-exception v0

    const-string/jumbo v1, "ShowWarningDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "DialogFragemnt dismiss Exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method
