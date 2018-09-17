.class Lcom/android/server/audio/MediaFocusControl$3;
.super Landroid/telephony/PhoneStateListener;
.source "MediaFocusControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/audio/MediaFocusControl;->getPhoneStateListener(II)Landroid/telephony/PhoneStateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/audio/MediaFocusControl;


# direct methods
.method constructor <init>(Lcom/android/server/audio/MediaFocusControl;Ljava/lang/Integer;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/audio/MediaFocusControl$3;->this$0:Lcom/android/server/audio/MediaFocusControl;

    invoke-direct {p0, p2}, Landroid/telephony/PhoneStateListener;-><init>(Ljava/lang/Integer;)V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .registers 8

    const/4 v4, 0x2

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1e

    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl$3;->this$0:Lcom/android/server/audio/MediaFocusControl;

    invoke-static {v1}, Lcom/android/server/audio/MediaFocusControl;->-get7(Lcom/android/server/audio/MediaFocusControl;)Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->-get13(Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_f
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl$3;->this$0:Lcom/android/server/audio/MediaFocusControl;

    invoke-static {v1}, Lcom/android/server/audio/MediaFocusControl;->-get7(Lcom/android/server/audio/MediaFocusControl;)Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;

    move-result-object v1

    const/4 v3, 0x1

    invoke-static {v1, v3}, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->-set8(Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;Z)Z
    :try_end_19
    .catchall {:try_start_f .. :try_end_19} :catchall_1b

    :cond_19
    :goto_19
    monitor-exit v2

    :cond_1a
    return-void

    :catchall_1b
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_1e
    if-eq p1, v4, :cond_22

    if-nez p1, :cond_1a

    :cond_22
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl$3;->this$0:Lcom/android/server/audio/MediaFocusControl;

    invoke-static {v1}, Lcom/android/server/audio/MediaFocusControl;->-get7(Lcom/android/server/audio/MediaFocusControl;)Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->-get13(Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_2d
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl$3;->this$0:Lcom/android/server/audio/MediaFocusControl;

    invoke-static {v1}, Lcom/android/server/audio/MediaFocusControl;->-get7(Lcom/android/server/audio/MediaFocusControl;)Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->-set8(Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;Z)Z

    if-ne p1, v4, :cond_7a

    const/4 v1, 0x3

    const/4 v3, 0x0

    invoke-static {v1, v3}, Landroid/media/AudioSystem;->isStreamActiveRemotely(II)Z

    move-result v1

    if-eqz v1, :cond_7a

    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl$3;->this$0:Lcom/android/server/audio/MediaFocusControl;

    invoke-static {v1}, Lcom/android/server/audio/MediaFocusControl;->-get7(Lcom/android/server/audio/MediaFocusControl;)Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->-get3(Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v3, "sidesync_source_connect"

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_7a

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.sec.android.intent.action.SPLIT_SOUND_SERVICE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "enabled"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl$3;->this$0:Lcom/android/server/audio/MediaFocusControl;

    invoke-static {v1}, Lcom/android/server/audio/MediaFocusControl;->-get2(Lcom/android/server/audio/MediaFocusControl;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl$3;->this$0:Lcom/android/server/audio/MediaFocusControl;

    invoke-static {v1}, Lcom/android/server/audio/MediaFocusControl;->-get7(Lcom/android/server/audio/MediaFocusControl;)Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;

    move-result-object v1

    const/4 v3, 0x1

    invoke-static {v1, v3}, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->-set15(Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;Z)Z

    :cond_7a
    if-nez p1, :cond_19

    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl$3;->this$0:Lcom/android/server/audio/MediaFocusControl;

    invoke-static {v1}, Lcom/android/server/audio/MediaFocusControl;->-get7(Lcom/android/server/audio/MediaFocusControl;)Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->-get17(Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;)Z

    move-result v1

    if-eqz v1, :cond_19

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.sec.android.intent.action.SPLIT_SOUND_SERVICE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "enabled"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl$3;->this$0:Lcom/android/server/audio/MediaFocusControl;

    invoke-static {v1}, Lcom/android/server/audio/MediaFocusControl;->-get2(Lcom/android/server/audio/MediaFocusControl;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl$3;->this$0:Lcom/android/server/audio/MediaFocusControl;

    invoke-static {v1}, Lcom/android/server/audio/MediaFocusControl;->-get7(Lcom/android/server/audio/MediaFocusControl;)Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->-set15(Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;Z)Z
    :try_end_ad
    .catchall {:try_start_2d .. :try_end_ad} :catchall_af

    goto/16 :goto_19

    :catchall_af
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .registers 7

    if-eqz p1, :cond_8c

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl$3;->this$0:Lcom/android/server/audio/MediaFocusControl;

    invoke-static {v2}, Lcom/android/server/audio/MediaFocusControl;->-get7(Lcom/android/server/audio/MediaFocusControl;)Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->-get12(Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;)I

    move-result v2

    if-eq v1, v2, :cond_65

    const-string/jumbo v2, "MediaFocusControl"

    const-string/jumbo v3, "##################################################"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "MediaFocusControl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "### RIL State is changed : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/audio/MediaFocusControl$3;->this$0:Lcom/android/server/audio/MediaFocusControl;

    invoke-static {v4}, Lcom/android/server/audio/MediaFocusControl;->-get7(Lcom/android/server/audio/MediaFocusControl;)Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->-get12(Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "MediaFocusControl"

    const-string/jumbo v3, "##################################################"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_5c

    const-string/jumbo v2, "ril_state_connected=1"

    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    :cond_5c
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl$3;->this$0:Lcom/android/server/audio/MediaFocusControl;

    invoke-static {v2}, Lcom/android/server/audio/MediaFocusControl;->-get7(Lcom/android/server/audio/MediaFocusControl;)Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->-set11(Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;I)I

    :cond_65
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl$3;->this$0:Lcom/android/server/audio/MediaFocusControl;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceNetworkType()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/server/audio/MediaFocusControl;->-wrap0(Lcom/android/server/audio/MediaFocusControl;I)Z

    move-result v0

    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl$3;->this$0:Lcom/android/server/audio/MediaFocusControl;

    invoke-static {v2}, Lcom/android/server/audio/MediaFocusControl;->-get7(Lcom/android/server/audio/MediaFocusControl;)Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->-get7(Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;)Z

    move-result v2

    if-eq v2, v0, :cond_8c

    if-eqz v0, :cond_8d

    const-string/jumbo v2, "call_2g_tdma=true"

    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    :goto_83
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl$3;->this$0:Lcom/android/server/audio/MediaFocusControl;

    invoke-static {v2}, Lcom/android/server/audio/MediaFocusControl;->-get7(Lcom/android/server/audio/MediaFocusControl;)Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->-set6(Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;Z)Z

    :cond_8c
    return-void

    :cond_8d
    const-string/jumbo v2, "call_2g_tdma=false"

    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_83
.end method
