.class Lcom/android/settings/ApnSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "ApnSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ApnSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final synthetic -com-android-internal-telephony-PhoneConstants$DataStateSwitchesValues:[I


# instance fields
.field final synthetic this$0:Lcom/android/settings/ApnSettings;


# direct methods
.method private static synthetic -getcom-android-internal-telephony-PhoneConstants$DataStateSwitchesValues()[I
    .registers 3

    sget-object v0, Lcom/android/settings/ApnSettings$1;->-com-android-internal-telephony-PhoneConstants$DataStateSwitchesValues:[I

    if-eqz v0, :cond_7

    sget-object v0, Lcom/android/settings/ApnSettings$1;->-com-android-internal-telephony-PhoneConstants$DataStateSwitchesValues:[I

    return-object v0

    :cond_7
    invoke-static {}, Lcom/android/internal/telephony/PhoneConstants$DataState;->values()[Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_e
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneConstants$DataState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_17} :catch_3b

    :goto_17
    :try_start_17
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTING:Lcom/android/internal/telephony/PhoneConstants$DataState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneConstants$DataState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_20} :catch_39

    :goto_20
    :try_start_20
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneConstants$DataState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_29} :catch_37

    :goto_29
    :try_start_29
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$DataState;->SUSPENDED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneConstants$DataState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_32
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_32} :catch_35

    :goto_32
    sput-object v0, Lcom/android/settings/ApnSettings$1;->-com-android-internal-telephony-PhoneConstants$DataStateSwitchesValues:[I

    return-object v0

    :catch_35
    move-exception v1

    goto :goto_32

    :catch_37
    move-exception v1

    goto :goto_29

    :catch_39
    move-exception v1

    goto :goto_20

    :catch_3b
    move-exception v1

    goto :goto_17
.end method

.method constructor <init>(Lcom/android/settings/ApnSettings;)V
    .registers 2

    iput-object p1, p0, Lcom/android/settings/ApnSettings$1;->this$0:Lcom/android/settings/ApnSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8

    const/4 v4, 0x0

    const/16 v3, 0x3e9

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-static {p2}, Lcom/android/settings/ApnSettings;->-wrap1(Landroid/content/Intent;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v0

    invoke-static {}, Lcom/android/settings/ApnSettings$1;->-getcom-android-internal-telephony-PhoneConstants$DataStateSwitchesValues()[I

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneConstants$DataState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_b6

    :cond_21
    :goto_21
    return-void

    :pswitch_22
    invoke-static {}, Lcom/android/settings/ApnSettings;->-get8()Z

    move-result v1

    if-nez v1, :cond_2e

    iget-object v1, p0, Lcom/android/settings/ApnSettings$1;->this$0:Lcom/android/settings/ApnSettings;

    invoke-static {v1}, Lcom/android/settings/ApnSettings;->-wrap2(Lcom/android/settings/ApnSettings;)V

    goto :goto_21

    :cond_2e
    iget-object v1, p0, Lcom/android/settings/ApnSettings$1;->this$0:Lcom/android/settings/ApnSettings;

    invoke-virtual {v1, v3}, Lcom/android/settings/ApnSettings;->showDialog(I)V

    goto :goto_21

    :cond_34
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "android.intent.action.SIM_PROFILE_UPDATE_DONE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4e

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "android.intent.action.UPDATE_CURRENT_CARRIER_DONE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_60

    :cond_4e
    invoke-static {}, Lcom/android/settings/ApnSettings;->-get8()Z

    move-result v1

    if-nez v1, :cond_5a

    iget-object v1, p0, Lcom/android/settings/ApnSettings$1;->this$0:Lcom/android/settings/ApnSettings;

    invoke-static {v1}, Lcom/android/settings/ApnSettings;->-wrap2(Lcom/android/settings/ApnSettings;)V

    goto :goto_21

    :cond_5a
    iget-object v1, p0, Lcom/android/settings/ApnSettings$1;->this$0:Lcom/android/settings/ApnSettings;

    invoke-virtual {v1, v3}, Lcom/android/settings/ApnSettings;->showDialog(I)V

    goto :goto_21

    :cond_60
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "android.intent.action.CSC_CONNECTION_RESET_DONE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a1

    invoke-static {}, Lcom/android/settings/ApnSettings;->-get8()Z

    move-result v1

    if-eqz v1, :cond_21

    iget-object v1, p0, Lcom/android/settings/ApnSettings$1;->this$0:Lcom/android/settings/ApnSettings;

    invoke-static {v1}, Lcom/android/settings/ApnSettings;->-get7(Lcom/android/settings/ApnSettings;)Lcom/android/settings/ApnSettings$RestoreApnUiHandler;

    move-result-object v1

    if-nez v1, :cond_87

    iget-object v1, p0, Lcom/android/settings/ApnSettings$1;->this$0:Lcom/android/settings/ApnSettings;

    new-instance v2, Lcom/android/settings/ApnSettings$RestoreApnUiHandler;

    iget-object v3, p0, Lcom/android/settings/ApnSettings$1;->this$0:Lcom/android/settings/ApnSettings;

    invoke-direct {v2, v3, v4}, Lcom/android/settings/ApnSettings$RestoreApnUiHandler;-><init>(Lcom/android/settings/ApnSettings;Lcom/android/settings/ApnSettings$RestoreApnUiHandler;)V

    invoke-static {v1, v2}, Lcom/android/settings/ApnSettings;->-set2(Lcom/android/settings/ApnSettings;Lcom/android/settings/ApnSettings$RestoreApnUiHandler;)Lcom/android/settings/ApnSettings$RestoreApnUiHandler;

    :cond_87
    iget-object v1, p0, Lcom/android/settings/ApnSettings$1;->this$0:Lcom/android/settings/ApnSettings;

    invoke-static {v1}, Lcom/android/settings/ApnSettings;->-get7(Lcom/android/settings/ApnSettings;)Lcom/android/settings/ApnSettings$RestoreApnUiHandler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/settings/ApnSettings$RestoreApnUiHandler;->sendEmptyMessage(I)Z

    iget-object v1, p0, Lcom/android/settings/ApnSettings$1;->this$0:Lcom/android/settings/ApnSettings;

    invoke-static {v1}, Lcom/android/settings/ApnSettings;->-get9(Lcom/android/settings/ApnSettings;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/ApnSettings$1;->this$0:Lcom/android/settings/ApnSettings;

    invoke-static {v2}, Lcom/android/settings/ApnSettings;->-get10(Lcom/android/settings/ApnSettings;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_21

    :cond_a1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "android.intent.action.ACTION_RESTORE_DEFAULT_APN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    iget-object v1, p0, Lcom/android/settings/ApnSettings$1;->this$0:Lcom/android/settings/ApnSettings;

    invoke-static {v1}, Lcom/android/settings/ApnSettings;->-wrap0(Lcom/android/settings/ApnSettings;)Z

    goto/16 :goto_21

    nop

    :pswitch_data_b6
    .packed-switch 0x1
        :pswitch_22
    .end packed-switch
.end method
