.class Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog$2;
.super Ljava/lang/Object;
.source "UseFaceLockSettingsDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;->showUseFaceLockSettingsDailog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog$2;->this$0:Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 6

    const-string/jumbo v0, "FcstUseFaceLockSettingsDialog"

    const-string/jumbo v1, "onDismiss"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog$2;->this$0:Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;

    invoke-static {v0}, Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;->-get3(Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;)Z

    move-result v0

    if-nez v0, :cond_38

    const-string/jumbo v0, "FcstUseFaceLockSettingsDialog"

    const-string/jumbo v1, "Turn on button doesn\'t click!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog$2;->this$0:Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;

    invoke-static {v0}, Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;->-get0(Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;)Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog$2;->this$0:Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;

    invoke-static {v0}, Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;->-get4(Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    iget-object v0, p0, Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog$2;->this$0:Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;

    invoke-static {v0}, Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;->-get5(Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;)I

    move-result v3

    iget-object v0, p0, Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog$2;->this$0:Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;

    invoke-static {v0}, Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;->-get2(Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;)Z

    move-result v0

    if-eqz v0, :cond_3e

    const/4 v0, 0x0

    :goto_35
    invoke-static {v1, v2, v3, v0}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->removeFaceLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;IZ)V

    :cond_38
    iget-object v0, p0, Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog$2;->this$0:Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;

    invoke-virtual {v0}, Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;->finish()V

    return-void

    :cond_3e
    const/4 v0, 0x1

    goto :goto_35
.end method
