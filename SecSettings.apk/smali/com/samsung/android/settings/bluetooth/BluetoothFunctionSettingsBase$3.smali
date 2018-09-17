.class Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$3;
.super Ljava/lang/Object;
.source "BluetoothFunctionSettingsBase.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$3;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$3;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;

    invoke-static {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;->-get0(Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;)Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$DialogListener;

    move-result-object v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$3;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;

    invoke-static {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;->-get0(Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;)Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$DialogListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$DialogListener;->onDialogCanceled()V

    :goto_11
    return-void

    :cond_12
    const-string/jumbo v0, "BluetoothFunctionSettingsBase"

    const-string/jumbo v1, "onCancel :: mDialogCallback is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11
.end method
