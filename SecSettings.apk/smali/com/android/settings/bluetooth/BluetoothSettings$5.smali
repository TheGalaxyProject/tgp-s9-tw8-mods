.class Lcom/android/settings/bluetooth/BluetoothSettings$5;
.super Ljava/lang/Object;
.source "BluetoothSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/BluetoothSettings;
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

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    packed-switch p2, :pswitch_data_12

    :goto_3
    return-void

    :pswitch_4
    const-string/jumbo v0, "BluetoothSettings"

    const-string/jumbo v1, "Bluetooth Popup OnClickListener :: Positive "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_3

    nop

    :pswitch_data_12
    .packed-switch -0x1
        :pswitch_4
    .end packed-switch
.end method
