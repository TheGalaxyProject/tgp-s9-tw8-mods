.class Lcom/android/settings/bluetooth/BluetoothSettings$12;
.super Ljava/lang/Object;
.source "BluetoothSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/BluetoothSettings;->ShowChinaPermissionPopUp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/BluetoothSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/BluetoothSettings;)V
    .registers 2

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothSettings$12;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 9

    const/4 v4, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_5

    return-void

    :cond_5
    :try_start_5
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings$12;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-virtual {v3}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
    :try_end_12
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_12} :catch_16

    move-result-object v2

    :goto_13
    if-nez v2, :cond_1b

    return-void

    :catch_16
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_13

    :cond_1b
    if-ne p2, v4, :cond_4a

    const-string/jumbo v3, "bluetooth_security_on_check"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings$12;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-virtual {v3}, Lcom/android/settings/bluetooth/BluetoothSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1207d6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_30
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings$12;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get5(Lcom/android/settings/bluetooth/BluetoothSettings;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings$12;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-virtual {v4}, Lcom/android/settings/bluetooth/BluetoothSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f1209db

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/samsung/android/settingslib/bluetooth/BluetoothSALogger;->insertSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4a
    const-string/jumbo v3, "bluetooth_security_on_check"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings$12;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-virtual {v3}, Lcom/android/settings/bluetooth/BluetoothSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1207d7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_30
.end method
