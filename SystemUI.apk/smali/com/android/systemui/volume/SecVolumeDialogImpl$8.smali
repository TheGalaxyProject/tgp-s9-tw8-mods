.class Lcom/android/systemui/volume/SecVolumeDialogImpl$8;
.super Ljava/lang/Object;
.source "SecVolumeDialogImpl.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/SecVolumeDialogImpl;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/SecVolumeDialogImpl;)V
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$8;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .registers 4

    packed-switch p1, :pswitch_data_14

    :goto_3
    return-void

    :pswitch_4
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$8;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    check-cast p2, Landroid/bluetooth/BluetoothA2dp;

    invoke-static {v0, p2}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-set0(Lcom/android/systemui/volume/SecVolumeDialogImpl;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;

    goto :goto_3

    :pswitch_c
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$8;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    check-cast p2, Landroid/bluetooth/BluetoothHeadset;

    invoke-static {v0, p2}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-set11(Lcom/android/systemui/volume/SecVolumeDialogImpl;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    goto :goto_3

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_c
        :pswitch_4
    .end packed-switch
.end method

.method public onServiceDisconnected(I)V
    .registers 4

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_1c

    :goto_4
    return-void

    :pswitch_5
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$8;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v0, v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-set0(Lcom/android/systemui/volume/SecVolumeDialogImpl;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$8;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v0, v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-set2(Lcom/android/systemui/volume/SecVolumeDialogImpl;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_4

    :pswitch_10
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$8;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v0, v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-set11(Lcom/android/systemui/volume/SecVolumeDialogImpl;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$8;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v0, v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-set3(Lcom/android/systemui/volume/SecVolumeDialogImpl;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_4

    nop

    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_10
        :pswitch_5
    .end packed-switch
.end method
