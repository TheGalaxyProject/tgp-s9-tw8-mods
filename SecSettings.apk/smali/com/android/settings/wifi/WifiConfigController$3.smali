.class Lcom/android/settings/wifi/WifiConfigController$3;
.super Ljava/lang/Object;
.source "WifiConfigController.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiConfigController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiConfigController;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiConfigController;)V
    .registers 2

    iput-object p1, p0, Lcom/android/settings/wifi/WifiConfigController$3;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .registers 5

    const-string/jumbo v0, "WifiConfigController"

    const-string/jumbo v1, "OnFocusChangeListener"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_12

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_20

    :cond_12
    :goto_12
    return-void

    :sswitch_13
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController$3;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiConfigController;->hideSoftKeyboard()V

    goto :goto_12

    :sswitch_19
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController$3;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiConfigController;->showSoftKeyboard()V

    goto :goto_12

    nop

    :sswitch_data_20
    .sparse-switch
        0x7f0a00b7 -> :sswitch_13
        0x7f0a0435 -> :sswitch_13
        0x7f0a0613 -> :sswitch_19
        0x7f0a0694 -> :sswitch_13
        0x7f0a069b -> :sswitch_13
        0x7f0a0772 -> :sswitch_13
        0x7f0a07b3 -> :sswitch_13
        0x7f0a096f -> :sswitch_13
        0x7f0a0971 -> :sswitch_13
        0x7f0a09a2 -> :sswitch_13
        0x7f0a09af -> :sswitch_13
    .end sparse-switch
.end method
