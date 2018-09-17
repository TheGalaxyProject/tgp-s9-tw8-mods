.class Lcom/samsung/android/settings/face/FaceTurnOnDialog$2;
.super Ljava/lang/Object;
.source "FaceTurnOnDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/face/FaceTurnOnDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/face/FaceTurnOnDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/face/FaceTurnOnDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/face/FaceTurnOnDialog$2;->this$0:Lcom/samsung/android/settings/face/FaceTurnOnDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceTurnOnDialog$2;->this$0:Lcom/samsung/android/settings/face/FaceTurnOnDialog;

    invoke-static {v0}, Lcom/samsung/android/settings/face/FaceTurnOnDialog;->-get1(Lcom/samsung/android/settings/face/FaceTurnOnDialog;)Lcom/samsung/android/settings/face/FaceTurnOnDialog$FaceTurnOnDialogFragmentListener;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceTurnOnDialog$2;->this$0:Lcom/samsung/android/settings/face/FaceTurnOnDialog;

    invoke-static {v0}, Lcom/samsung/android/settings/face/FaceTurnOnDialog;->-get1(Lcom/samsung/android/settings/face/FaceTurnOnDialog;)Lcom/samsung/android/settings/face/FaceTurnOnDialog$FaceTurnOnDialogFragmentListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/settings/face/FaceTurnOnDialog$FaceTurnOnDialogFragmentListener;->turnOffFaceLock()V

    :cond_11
    return-void
.end method
