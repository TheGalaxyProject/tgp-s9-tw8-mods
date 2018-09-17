.class final Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;
.super Landroid/os/Handler;
.source "KeyboardUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/keyboard/KeyboardUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "KeyboardHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/keyboard/KeyboardUI;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyboard/KeyboardUI;Landroid/os/Looper;)V
    .registers 5

    iput-object p1, p0, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;->this$0:Lcom/android/systemui/keyboard/KeyboardUI;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 14

    iget v8, p1, Landroid/os/Message;->what:I

    packed-switch v8, :pswitch_data_7a

    :goto_5
    :pswitch_5
    return-void

    :pswitch_6
    iget-object v8, p0, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;->this$0:Lcom/android/systemui/keyboard/KeyboardUI;

    invoke-static {v8}, Lcom/android/systemui/keyboard/KeyboardUI;->-wrap2(Lcom/android/systemui/keyboard/KeyboardUI;)V

    goto :goto_5

    :pswitch_c
    iget-object v8, p0, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;->this$0:Lcom/android/systemui/keyboard/KeyboardUI;

    invoke-virtual {v8}, Lcom/android/systemui/keyboard/KeyboardUI;->onBootCompletedInternal()V

    goto :goto_5

    :pswitch_12
    iget-object v8, p0, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;->this$0:Lcom/android/systemui/keyboard/KeyboardUI;

    invoke-static {v8}, Lcom/android/systemui/keyboard/KeyboardUI;->-wrap8(Lcom/android/systemui/keyboard/KeyboardUI;)V

    goto :goto_5

    :pswitch_18
    iget v8, p1, Landroid/os/Message;->arg1:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_2a

    const/4 v5, 0x1

    :goto_1e
    if-eqz v5, :cond_2c

    iget-object v8, p0, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;->this$0:Lcom/android/systemui/keyboard/KeyboardUI;

    invoke-static {v8}, Lcom/android/systemui/keyboard/KeyboardUI;->-get2(Lcom/android/systemui/keyboard/KeyboardUI;)Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->enable()Z

    goto :goto_5

    :cond_2a
    const/4 v5, 0x0

    goto :goto_1e

    :cond_2c
    iget-object v8, p0, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;->this$0:Lcom/android/systemui/keyboard/KeyboardUI;

    const/16 v9, 0x8

    invoke-static {v8, v9}, Lcom/android/systemui/keyboard/KeyboardUI;->-set1(Lcom/android/systemui/keyboard/KeyboardUI;I)I

    goto :goto_5

    :pswitch_34
    iget v7, p1, Landroid/os/Message;->arg1:I

    iget-object v8, p0, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;->this$0:Lcom/android/systemui/keyboard/KeyboardUI;

    invoke-static {v8, v7}, Lcom/android/systemui/keyboard/KeyboardUI;->-wrap1(Lcom/android/systemui/keyboard/KeyboardUI;I)V

    goto :goto_5

    :pswitch_3c
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v8, p0, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;->this$0:Lcom/android/systemui/keyboard/KeyboardUI;

    invoke-static {v8, v0}, Lcom/android/systemui/keyboard/KeyboardUI;->-wrap4(Lcom/android/systemui/keyboard/KeyboardUI;I)V

    goto :goto_5

    :pswitch_44
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v8, p0, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;->this$0:Lcom/android/systemui/keyboard/KeyboardUI;

    invoke-static {v8, v4, v1}, Lcom/android/systemui/keyboard/KeyboardUI;->-wrap6(Lcom/android/systemui/keyboard/KeyboardUI;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V

    goto :goto_5

    :pswitch_50
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    iget-object v8, p0, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;->this$0:Lcom/android/systemui/keyboard/KeyboardUI;

    invoke-static {v8, v3}, Lcom/android/systemui/keyboard/KeyboardUI;->-wrap0(Lcom/android/systemui/keyboard/KeyboardUI;Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v2

    iget-object v8, p0, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;->this$0:Lcom/android/systemui/keyboard/KeyboardUI;

    invoke-static {v8, v2}, Lcom/android/systemui/keyboard/KeyboardUI;->-wrap5(Lcom/android/systemui/keyboard/KeyboardUI;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    goto :goto_5

    :pswitch_60
    iget-object v8, p0, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;->this$0:Lcom/android/systemui/keyboard/KeyboardUI;

    invoke-static {v8}, Lcom/android/systemui/keyboard/KeyboardUI;->-wrap3(Lcom/android/systemui/keyboard/KeyboardUI;)V

    goto :goto_5

    :pswitch_66
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/util/Pair;

    iget-object v10, p0, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;->this$0:Lcom/android/systemui/keyboard/KeyboardUI;

    iget-object v8, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Landroid/content/Context;

    iget-object v9, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    iget v11, p1, Landroid/os/Message;->arg1:I

    invoke-static {v10, v8, v9, v11}, Lcom/android/systemui/keyboard/KeyboardUI;->-wrap7(Lcom/android/systemui/keyboard/KeyboardUI;Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_5

    :pswitch_data_7a
    .packed-switch 0x0
        :pswitch_6
        :pswitch_c
        :pswitch_12
        :pswitch_18
        :pswitch_3c
        :pswitch_44
        :pswitch_50
        :pswitch_60
        :pswitch_5
        :pswitch_5
        :pswitch_34
        :pswitch_66
    .end packed-switch
.end method
