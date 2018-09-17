.class Lcom/android/server/display/ExtendedRemoteDisplayHelper;
.super Ljava/lang/Object;
.source "ExtendedRemoteDisplayHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ExtendedRemoteDisplayHelper"

.field private static sExtRemoteDisplayClass:Ljava/lang/Class;

.field private static sExtRemoteDisplayDispose:Ljava/lang/reflect/Method;

.field private static sExtRemoteDisplayListen:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    :try_start_0
    const-string/jumbo v2, "com.qualcomm.wfd.ExtendedRemoteDisplay"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lcom/android/server/display/ExtendedRemoteDisplayHelper;->sExtRemoteDisplayClass:Ljava/lang/Class;
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_9} :catch_47

    :goto_9
    sget-object v2, Lcom/android/server/display/ExtendedRemoteDisplayHelper;->sExtRemoteDisplayClass:Ljava/lang/Class;

    if-eqz v2, :cond_46

    const-string/jumbo v2, "ExtendedRemoteDisplayHelper"

    const-string/jumbo v3, "ExtendedRemoteDisplay Is available. Find Methods"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x4

    :try_start_17
    new-array v0, v2, [Ljava/lang/Class;

    const-class v2, Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const-class v2, Landroid/media/RemoteDisplay$Listener;

    const/4 v3, 0x1

    aput-object v2, v0, v3

    const-class v2, Landroid/os/Handler;

    const/4 v3, 0x2

    aput-object v2, v0, v3

    const-class v2, Landroid/content/Context;

    const/4 v3, 0x3

    aput-object v2, v0, v3

    sget-object v2, Lcom/android/server/display/ExtendedRemoteDisplayHelper;->sExtRemoteDisplayClass:Ljava/lang/Class;

    const-string/jumbo v3, "listen"

    invoke-virtual {v2, v3, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/android/server/display/ExtendedRemoteDisplayHelper;->sExtRemoteDisplayListen:Ljava/lang/reflect/Method;
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_38} :catch_52

    :goto_38
    const/4 v2, 0x0

    :try_start_39
    new-array v0, v2, [Ljava/lang/Class;

    sget-object v2, Lcom/android/server/display/ExtendedRemoteDisplayHelper;->sExtRemoteDisplayClass:Ljava/lang/Class;

    const-string/jumbo v3, "dispose"

    invoke-virtual {v2, v3, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/android/server/display/ExtendedRemoteDisplayHelper;->sExtRemoteDisplayDispose:Ljava/lang/reflect/Method;
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_46} :catch_5d

    :cond_46
    :goto_46
    return-void

    :catch_47
    move-exception v1

    const-string/jumbo v2, "ExtendedRemoteDisplayHelper"

    const-string/jumbo v3, "ExtendedRemoteDisplay Not available."

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :catch_52
    move-exception v1

    const-string/jumbo v2, "ExtendedRemoteDisplayHelper"

    const-string/jumbo v3, "ExtendedRemoteDisplay.listen Not available."

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_38

    :catch_5d
    move-exception v1

    const-string/jumbo v2, "ExtendedRemoteDisplayHelper"

    const-string/jumbo v3, "ExtendedRemoteDisplay.dispose Not available."

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_46
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dispose(Ljava/lang/Object;)V
    .registers 6

    const-string/jumbo v3, "ExtendedRemoteDisplayHelper"

    const-string/jumbo v4, "ExtendedRemoteDisplay.dispose"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_9
    sget-object v3, Lcom/android/server/display/ExtendedRemoteDisplayHelper;->sExtRemoteDisplayDispose:Ljava/lang/reflect/Method;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v3, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_11
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_9 .. :try_end_11} :catch_20
    .catch Ljava/lang/IllegalAccessException; {:try_start_9 .. :try_end_11} :catch_12

    :goto_11
    return-void

    :catch_12
    move-exception v1

    const-string/jumbo v3, "ExtendedRemoteDisplayHelper"

    const-string/jumbo v4, "ExtendedRemoteDisplay.dispose-IllegalAccessException"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_11

    :catch_20
    move-exception v2

    const-string/jumbo v3, "ExtendedRemoteDisplayHelper"

    const-string/jumbo v4, "ExtendedRemoteDisplay.dispose - InvocationTargetException"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v3, v0, Ljava/lang/RuntimeException;

    if-eqz v3, :cond_35

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    :cond_35
    instance-of v3, v0, Ljava/lang/Error;

    if-eqz v3, :cond_3c

    check-cast v0, Ljava/lang/Error;

    throw v0

    :cond_3c
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static isAvailable()Z
    .registers 2

    sget-object v0, Lcom/android/server/display/ExtendedRemoteDisplayHelper;->sExtRemoteDisplayClass:Ljava/lang/Class;

    if-eqz v0, :cond_17

    sget-object v0, Lcom/android/server/display/ExtendedRemoteDisplayHelper;->sExtRemoteDisplayDispose:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_17

    sget-object v0, Lcom/android/server/display/ExtendedRemoteDisplayHelper;->sExtRemoteDisplayListen:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_17

    const-string/jumbo v0, "ExtendedRemoteDisplayHelper"

    const-string/jumbo v1, "ExtendedRemoteDisplay isAvailable() : Available."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    :cond_17
    const-string/jumbo v0, "ExtendedRemoteDisplayHelper"

    const-string/jumbo v1, "ExtendedRemoteDisplay isAvailable() : Not Available."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public static listen(Ljava/lang/String;Landroid/media/RemoteDisplay$Listener;Landroid/os/Handler;Landroid/content/Context;)Ljava/lang/Object;
    .registers 11

    const/4 v3, 0x0

    const-string/jumbo v4, "ExtendedRemoteDisplayHelper"

    const-string/jumbo v5, "ExtendedRemoteDisplay.listen"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Lcom/android/server/display/ExtendedRemoteDisplayHelper;->sExtRemoteDisplayListen:Ljava/lang/reflect/Method;

    if-eqz v4, :cond_28

    sget-object v4, Lcom/android/server/display/ExtendedRemoteDisplayHelper;->sExtRemoteDisplayDispose:Ljava/lang/reflect/Method;

    if-eqz v4, :cond_28

    :try_start_12
    sget-object v4, Lcom/android/server/display/ExtendedRemoteDisplayHelper;->sExtRemoteDisplayListen:Ljava/lang/reflect/Method;

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    const/4 v6, 0x2

    aput-object p2, v5, v6

    const/4 v6, 0x3

    aput-object p3, v5, v6

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_27
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_12 .. :try_end_27} :catch_37
    .catch Ljava/lang/IllegalAccessException; {:try_start_12 .. :try_end_27} :catch_29

    move-result-object v3

    :cond_28
    :goto_28
    return-object v3

    :catch_29
    move-exception v1

    const-string/jumbo v4, "ExtendedRemoteDisplayHelper"

    const-string/jumbo v5, "ExtendedRemoteDisplay.listen -IllegalAccessException"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_28

    :catch_37
    move-exception v2

    const-string/jumbo v4, "ExtendedRemoteDisplayHelper"

    const-string/jumbo v5, "ExtendedRemoteDisplay.listen - InvocationTargetException"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v4, v0, Ljava/lang/RuntimeException;

    if-eqz v4, :cond_4c

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    :cond_4c
    instance-of v4, v0, Ljava/lang/Error;

    if-eqz v4, :cond_53

    check-cast v0, Ljava/lang/Error;

    throw v0

    :cond_53
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method
