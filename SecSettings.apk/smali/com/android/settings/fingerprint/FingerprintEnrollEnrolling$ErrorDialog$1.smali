.class Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$ErrorDialog$1;
.super Ljava/lang/Object;
.source "FingerprintEnrollEnrolling.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$ErrorDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$ErrorDialog;

.field final synthetic val$errMsgId:I


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$ErrorDialog;I)V
    .registers 3

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$ErrorDialog$1;->this$1:Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$ErrorDialog;

    iput p2, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$ErrorDialog$1;->val$errMsgId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7

    const/4 v2, 0x3

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget v3, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$ErrorDialog$1;->val$errMsgId:I

    if-ne v3, v2, :cond_18

    const/4 v1, 0x1

    :goto_9
    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$ErrorDialog$1;->this$1:Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$ErrorDialog;

    invoke-virtual {v3}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$ErrorDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v1, :cond_1a

    :goto_11
    invoke-virtual {v0, v2}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_18
    const/4 v1, 0x0

    goto :goto_9

    :cond_1a
    const/4 v2, 0x1

    goto :goto_11
.end method
