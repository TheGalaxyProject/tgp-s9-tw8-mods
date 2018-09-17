.class Lcom/samsung/android/sdk/cover/LegacyLedSystemEventListenerDelegate$ListenerDelegateHandler;
.super Landroid/os/Handler;
.source "LegacyLedSystemEventListenerDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/cover/LegacyLedSystemEventListenerDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ListenerDelegateHandler"
.end annotation


# instance fields
.field private final mListener:Ljava/lang/Object;


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 15

    const/4 v12, 0x1

    iget-object v8, p0, Lcom/samsung/android/sdk/cover/LegacyLedSystemEventListenerDelegate$ListenerDelegateHandler;->mListener:Ljava/lang/Object;

    if-nez v8, :cond_6

    :cond_5
    :goto_5
    return-void

    :cond_6
    iget v8, p1, Landroid/os/Message;->what:I

    packed-switch v8, :pswitch_data_f4

    goto :goto_5

    :pswitch_c
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, [I

    move-object v0, v8

    check-cast v0, [I

    const/4 v7, 0x0

    :try_start_14
    iget-object v8, p0, Lcom/samsung/android/sdk/cover/LegacyLedSystemEventListenerDelegate$ListenerDelegateHandler;->mListener:Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Class;

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v11, 0x0

    aput-object v10, v9, v11

    const-class v10, Landroid/os/Bundle;

    const/4 v11, 0x1

    aput-object v10, v9, v11

    const-string/jumbo v10, "onSystemCoverEvent"

    invoke-virtual {v8, v10, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_2d
    .catch Ljava/lang/SecurityException; {:try_start_14 .. :try_end_2d} :catch_4e
    .catch Ljava/lang/NoSuchMethodException; {:try_start_14 .. :try_end_2d} :catch_5a

    move-result-object v7

    :goto_2e
    if-eqz v7, :cond_5

    if-nez v0, :cond_66

    :cond_32
    :try_start_32
    # getter for: Lcom/samsung/android/sdk/cover/LegacyLedSystemEventListenerDelegate;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/cover/LegacyLedSystemEventListenerDelegate;->access$000()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Error: system event args empty: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4d
    .catch Ljava/lang/IllegalAccessException; {:try_start_32 .. :try_end_4d} :catch_8d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_32 .. :try_end_4d} :catch_af
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_32 .. :try_end_4d} :catch_d1

    return-void

    :catch_4e
    move-exception v5

    # getter for: Lcom/samsung/android/sdk/cover/LegacyLedSystemEventListenerDelegate;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/cover/LegacyLedSystemEventListenerDelegate;->access$000()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "Error getting onSystemCoverEvent method"

    invoke-static {v8, v9, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2e

    :catch_5a
    move-exception v4

    # getter for: Lcom/samsung/android/sdk/cover/LegacyLedSystemEventListenerDelegate;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/cover/LegacyLedSystemEventListenerDelegate;->access$000()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "Error getting onSystemCoverEvent method"

    invoke-static {v8, v9, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2e

    :cond_66
    :try_start_66
    array-length v8, v0

    if-lt v8, v12, :cond_32

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const/4 v8, 0x0

    aget v8, v0, v8

    const-string/jumbo v9, "led_off_command"

    invoke-virtual {v1, v9, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v8, p0, Lcom/samsung/android/sdk/cover/LegacyLedSystemEventListenerDelegate$ListenerDelegateHandler;->mListener:Ljava/lang/Object;

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    iget v10, p1, Landroid/os/Message;->arg1:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    const/4 v10, 0x1

    aput-object v1, v9, v10

    invoke-virtual {v7, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8b
    .catch Ljava/lang/IllegalAccessException; {:try_start_66 .. :try_end_8b} :catch_8d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_66 .. :try_end_8b} :catch_af
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_66 .. :try_end_8b} :catch_d1

    goto/16 :goto_5

    :catch_8d
    move-exception v2

    # getter for: Lcom/samsung/android/sdk/cover/LegacyLedSystemEventListenerDelegate;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/cover/LegacyLedSystemEventListenerDelegate;->access$000()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Error invoking "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5

    :catch_af
    move-exception v3

    # getter for: Lcom/samsung/android/sdk/cover/LegacyLedSystemEventListenerDelegate;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/cover/LegacyLedSystemEventListenerDelegate;->access$000()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Error invoking "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5

    :catch_d1
    move-exception v6

    # getter for: Lcom/samsung/android/sdk/cover/LegacyLedSystemEventListenerDelegate;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/cover/LegacyLedSystemEventListenerDelegate;->access$000()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Error invoking "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5

    nop

    :pswitch_data_f4
    .packed-switch 0x0
        :pswitch_c
    .end packed-switch
.end method
