.class public Lcom/sec/ims/extensions/WiFiManagerExt;
.super Ljava/lang/Object;
.source "WiFiManagerExt.java"


# static fields
.field public static final SEC_COMMAND_ID_DELAY_DISCONNECT_TRANSITION:I

.field public static final SEC_COMMAND_ID_SET_MAX_DTIM_IN_SUSPEND:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string/jumbo v0, "SEC_COMMAND_ID_DELAY_DISCONNECT_TRANSITION"

    const/16 v1, 0x51

    invoke-static {v0, v1}, Lcom/sec/ims/extensions/WiFiManagerExt;->getIntFromField(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/sec/ims/extensions/WiFiManagerExt;->SEC_COMMAND_ID_DELAY_DISCONNECT_TRANSITION:I

    const-string/jumbo v0, "SEC_COMMAND_ID_SET_MAX_DTIM_IN_SUSPEND"

    const/16 v1, 0x119

    invoke-static {v0, v1}, Lcom/sec/ims/extensions/WiFiManagerExt;->getIntFromField(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/sec/ims/extensions/WiFiManagerExt;->SEC_COMMAND_ID_SET_MAX_DTIM_IN_SUSPEND:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static callSECApi(Landroid/net/wifi/WifiManager;Landroid/os/Message;)I
    .registers 9

    :try_start_0
    const-class v2, Landroid/net/wifi/WifiManager;

    const-string/jumbo v3, "callSECApi"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Landroid/os/Message;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, p0, v2}, Lcom/sec/ims/extensions/ReflectionUtils;->invoke2(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_20
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_20} :catch_22

    move-result v2

    return v2

    :catch_22
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    const/4 v2, -0x1

    return v2
.end method

.method static getIntFromField(Ljava/lang/String;I)I
    .registers 6

    :try_start_0
    const-class v3, Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, p0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_a
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_a} :catch_11
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_a} :catch_c

    move-result v3

    return v3

    :catch_c
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    :goto_10
    return p1

    :catch_11
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_10
.end method

.method public static setImsCallEstablished(Landroid/net/wifi/WifiManager;Z)V
    .registers 9

    :try_start_0
    const-class v2, Landroid/net/wifi/WifiManager;

    const-string/jumbo v3, "setImsCallEstablished"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, p0, v2}, Lcom/sec/ims/extensions/ReflectionUtils;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_1e
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_1e} :catch_1f

    :goto_1e
    return-void

    :catch_1f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_1e
.end method
