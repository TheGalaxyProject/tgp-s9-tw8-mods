.class Lcom/android/settings/encryption/CryptSDCardSettings$1;
.super Landroid/os/Handler;
.source "CryptSDCardSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/encryption/CryptSDCardSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/encryption/CryptSDCardSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/encryption/CryptSDCardSettings;)V
    .registers 2

    iput-object p1, p0, Lcom/android/settings/encryption/CryptSDCardSettings$1;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings$1;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    invoke-static {v0}, Lcom/android/settings/encryption/CryptSDCardSettings;->-get7(Lcom/android/settings/encryption/CryptSDCardSettings;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_7
    iget v0, p1, Landroid/os/Message;->what:I
    :try_end_9
    .catchall {:try_start_7 .. :try_end_9} :catchall_14

    packed-switch v0, :pswitch_data_2e

    :goto_c
    :pswitch_c
    monitor-exit v1

    return-void

    :pswitch_e
    :try_start_e
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings$1;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    invoke-static {v0}, Lcom/android/settings/encryption/CryptSDCardSettings;->-wrap1(Lcom/android/settings/encryption/CryptSDCardSettings;)V
    :try_end_13
    .catchall {:try_start_e .. :try_end_13} :catchall_14

    goto :goto_c

    :catchall_14
    move-exception v0

    monitor-exit v1

    throw v0

    :pswitch_17
    :try_start_17
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings$1;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    invoke-static {v0}, Lcom/android/settings/encryption/CryptSDCardSettings;->-wrap3(Lcom/android/settings/encryption/CryptSDCardSettings;)V

    goto :goto_c

    :pswitch_1d
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings$1;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    invoke-static {v0}, Lcom/android/settings/encryption/CryptSDCardSettings;->-wrap2(Lcom/android/settings/encryption/CryptSDCardSettings;)V

    goto :goto_c

    :pswitch_23
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings$1;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    invoke-static {v0}, Lcom/android/settings/encryption/CryptSDCardSettings;->-get5(Lcom/android/settings/encryption/CryptSDCardSettings;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V
    :try_end_2c
    .catchall {:try_start_17 .. :try_end_2c} :catchall_14

    goto :goto_c

    nop

    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_e
        :pswitch_17
        :pswitch_c
        :pswitch_1d
        :pswitch_23
        :pswitch_23
    .end packed-switch
.end method
