.class Lcom/samsung/android/settings/spen/DirectPenInputSettings$10;
.super Ljava/lang/Object;
.source "DirectPenInputSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/spen/DirectPenInputSettings;->showEnableDialog(Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/spen/DirectPenInputSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/spen/DirectPenInputSettings;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings$10;->this$0:Lcom/samsung/android/settings/spen/DirectPenInputSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings$10;->this$0:Lcom/samsung/android/settings/spen/DirectPenInputSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->-get8(Lcom/samsung/android/settings/spen/DirectPenInputSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings$10;->this$0:Lcom/samsung/android/settings/spen/DirectPenInputSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->-get8(Lcom/samsung/android/settings/spen/DirectPenInputSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    :cond_16
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings$10;->this$0:Lcom/samsung/android/settings/spen/DirectPenInputSettings;

    invoke-static {v0, v1}, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->-set0(Lcom/samsung/android/settings/spen/DirectPenInputSettings;Z)Z

    return-void
.end method
