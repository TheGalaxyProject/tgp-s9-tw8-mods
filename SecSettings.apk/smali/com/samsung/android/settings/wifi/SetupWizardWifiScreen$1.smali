.class Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$1;
.super Landroid/os/Handler;
.source "SetupWizardWifiScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$1;->this$0:Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_14

    :goto_5
    return-void

    :pswitch_6
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$1;->this$0:Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->onBackPressed()V

    goto :goto_5

    :pswitch_c
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$1;->this$0:Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->-wrap2(Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;I)V

    goto :goto_5

    nop

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_6
        :pswitch_c
    .end packed-switch
.end method
