.class Lcom/samsung/android/settings/deviceinfo/legal/PrivacyAlertProceedDialogActivity$2;
.super Ljava/lang/Object;
.source "PrivacyAlertProceedDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/deviceinfo/legal/PrivacyAlertProceedDialogActivity;->showProceedDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/deviceinfo/legal/PrivacyAlertProceedDialogActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/deviceinfo/legal/PrivacyAlertProceedDialogActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/legal/PrivacyAlertProceedDialogActivity$2;->this$0:Lcom/samsung/android/settings/deviceinfo/legal/PrivacyAlertProceedDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/legal/PrivacyAlertProceedDialogActivity$2;->this$0:Lcom/samsung/android/settings/deviceinfo/legal/PrivacyAlertProceedDialogActivity;

    invoke-virtual {v0}, Lcom/samsung/android/settings/deviceinfo/legal/PrivacyAlertProceedDialogActivity;->finish()V

    return-void
.end method
