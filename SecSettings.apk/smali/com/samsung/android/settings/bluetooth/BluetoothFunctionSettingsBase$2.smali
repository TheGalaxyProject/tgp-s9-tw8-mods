.class Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$2;
.super Ljava/lang/Object;
.source "BluetoothFunctionSettingsBase.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$2;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    packed-switch p2, :pswitch_data_3c

    :goto_3
    return-void

    :pswitch_4
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$2;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;

    invoke-static {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;->-get0(Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;)Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$DialogListener;

    move-result-object v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$2;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;

    invoke-static {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;->-get0(Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;)Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$DialogListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$DialogListener;->onDialogPositiveClicked()V

    goto :goto_3

    :cond_16
    const-string/jumbo v0, "BluetoothFunctionSettingsBase"

    const-string/jumbo v1, "onClick :: mDialogCallback is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :pswitch_20
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$2;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;

    invoke-static {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;->-get0(Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;)Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$DialogListener;

    move-result-object v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$2;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;

    invoke-static {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;->-get0(Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;)Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$DialogListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$DialogListener;->onDialogNegativeClicked()V

    goto :goto_3

    :cond_32
    const-string/jumbo v0, "BluetoothFunctionSettingsBase"

    const-string/jumbo v1, "onClick :: mDialogCallback is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :pswitch_data_3c
    .packed-switch -0x2
        :pswitch_20
        :pswitch_4
    .end packed-switch
.end method
