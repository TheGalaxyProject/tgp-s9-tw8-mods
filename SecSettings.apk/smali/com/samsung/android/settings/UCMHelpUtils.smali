.class public Lcom/samsung/android/settings/UCMHelpUtils;
.super Ljava/lang/Object;
.source "UCMHelpUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field public static miscInfo:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/samsung/android/settings/UCMHelpUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/UCMHelpUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v0, ""

    sput-object v0, Lcom/samsung/android/settings/UCMHelpUtils;->miscInfo:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generatePassword(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, v0}, Lcom/samsung/android/settings/UCMHelpUtils;->generatePassword(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static generatePassword(Ljava/lang/String;I)Ljava/lang/String;
    .registers 9

    const/4 v6, 0x0

    const-string/jumbo v4, "com.samsung.ucs.ucsservice"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/knox/ucm/core/IUcmService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ucm/core/IUcmService;

    move-result-object v2

    if-eqz v2, :cond_23

    const/4 v4, 0x0

    :try_start_f
    invoke-interface {v2, p1, p0, v4}, Lcom/samsung/android/knox/ucm/core/IUcmService;->generateKeyguardPassword(ILjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_16

    return-object v6

    :cond_16
    const-string/jumbo v4, "stringresponse"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_1c} :catch_1e

    move-result-object v3

    return-object v3

    :catch_1e
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_22
    return-object v6

    :cond_23
    sget-object v4, Lcom/samsung/android/settings/UCMHelpUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "mUcmBinder == null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22
.end method

.method public static getErrorMessage(Landroid/content/Context;I)Ljava/lang/String;
    .registers 10

    const v7, 0x7f121c6f

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\n("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "0x%08X"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sparse-switch p1, :sswitch_data_f0

    const/high16 v1, 0x8000000

    if-ge v1, p1, :cond_d3

    const/high16 v1, 0x8010000

    if-le v1, p1, :cond_d3

    const-string/jumbo v1, "0x%08X"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :sswitch_7f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f121c6b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :sswitch_9c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f121c61

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :sswitch_b9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_d3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f121c70

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :sswitch_data_f0
    .sparse-switch
        0x1 -> :sswitch_7f
        0x2 -> :sswitch_7f
        0x3 -> :sswitch_7f
        0x4 -> :sswitch_7f
        0x5 -> :sswitch_7f
        0x6 -> :sswitch_7f
        0x7 -> :sswitch_7f
        0x8 -> :sswitch_7f
        0x9 -> :sswitch_7f
        0xa -> :sswitch_7f
        0xb -> :sswitch_7f
        0xc -> :sswitch_7f
        0xd -> :sswitch_7f
        0xe -> :sswitch_7f
        0xf -> :sswitch_7f
        0x10 -> :sswitch_7f
        0x11 -> :sswitch_7f
        0x12 -> :sswitch_7f
        0x13 -> :sswitch_7f
        0x14 -> :sswitch_7f
        0x15 -> :sswitch_7f
        0x16 -> :sswitch_7f
        0x17 -> :sswitch_7f
        0x18 -> :sswitch_7f
        0x19 -> :sswitch_7f
        0x101 -> :sswitch_7f
        0x102 -> :sswitch_7f
        0x103 -> :sswitch_7f
        0x104 -> :sswitch_7f
        0x105 -> :sswitch_7f
        0x106 -> :sswitch_7f
        0x107 -> :sswitch_7f
        0x108 -> :sswitch_7f
        0x109 -> :sswitch_7f
        0x10a -> :sswitch_7f
        0x10b -> :sswitch_7f
        0x10c -> :sswitch_7f
        0x10d -> :sswitch_7f
        0x10e -> :sswitch_7f
        0x10f -> :sswitch_7f
        0x1000 -> :sswitch_7f
        0x1fff -> :sswitch_7f
        0x1000100 -> :sswitch_9c
        0x1000200 -> :sswitch_9c
        0x1000300 -> :sswitch_9c
        0x1000400 -> :sswitch_9c
        0x2000101 -> :sswitch_9c
        0x2000102 -> :sswitch_9c
        0x2000201 -> :sswitch_9c
        0x2000301 -> :sswitch_9c
        0x2000302 -> :sswitch_9c
        0x2000303 -> :sswitch_9c
        0x2000304 -> :sswitch_9c
        0x2000305 -> :sswitch_9c
        0x2000306 -> :sswitch_9c
        0x2000401 -> :sswitch_9c
        0x2000402 -> :sswitch_9c
        0x2000403 -> :sswitch_9c
        0x2000404 -> :sswitch_9c
        0x2000405 -> :sswitch_9c
        0x2000406 -> :sswitch_9c
        0x2000501 -> :sswitch_9c
        0x2000502 -> :sswitch_9c
        0x3000000 -> :sswitch_9c
        0x3000001 -> :sswitch_9c
        0x3000002 -> :sswitch_9c
        0x3000003 -> :sswitch_9c
        0x3000004 -> :sswitch_9c
        0x8000000 -> :sswitch_b9
        0x9000000 -> :sswitch_7f
        0xc000100 -> :sswitch_7f
        0xc000200 -> :sswitch_7f
    .end sparse-switch
.end method

.method public static getKeyguardStorageForCurrentUser()Ljava/lang/String;
    .registers 7

    const/4 v1, 0x0

    const-string/jumbo v4, "com.samsung.ucs.ucsservice"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/knox/ucm/core/IUcmService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ucm/core/IUcmService;

    move-result-object v2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    sget-object v4, Lcom/samsung/android/settings/UCMHelpUtils;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getKeyguardStorageForCurrentUser() for userId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_2f

    :try_start_2b
    invoke-interface {v2, v3}, Lcom/samsung/android/knox/ucm/core/IUcmService;->getKeyguardStorageForCurrentUser(I)Ljava/lang/String;
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2e} :catch_30

    move-result-object v1

    :cond_2f
    :goto_2f
    return-object v1

    :catch_30
    move-exception v0

    sget-object v4, Lcom/samsung/android/settings/UCMHelpUtils;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Error in getKeyguardStorageForCurrentUser: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2f
.end method

.method public static getStatus(Ljava/lang/String;)[I
    .registers 15

    const/4 v11, 0x7

    new-array v8, v11, [I

    const/16 v11, 0x84

    const/4 v12, 0x0

    aput v11, v8, v12

    const/4 v11, -0x1

    const/4 v12, 0x1

    aput v11, v8, v12

    const/4 v11, -0x1

    const/4 v12, 0x2

    aput v11, v8, v12

    const/4 v11, -0x1

    const/4 v12, 0x3

    aput v11, v8, v12

    const/4 v11, -0x1

    const/4 v12, 0x4

    aput v11, v8, v12

    const/4 v11, -0x1

    const/4 v12, 0x5

    aput v11, v8, v12

    const/4 v11, -0x1

    const/4 v12, 0x6

    aput v11, v8, v12

    :try_start_20
    const-string/jumbo v11, "com.samsung.ucs.ucsservice"

    invoke-static {v11}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v11

    invoke-static {v11}, Lcom/samsung/android/knox/ucm/core/IUcmService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ucm/core/IUcmService;

    move-result-object v2

    const/4 v10, 0x0

    if-nez v2, :cond_2f

    return-object v8

    :cond_2f
    invoke-interface {v2, p0}, Lcom/samsung/android/knox/ucm/core/IUcmService;->getStatus(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v10

    if-eqz v10, :cond_104

    sget-object v11, Lcom/samsung/android/settings/UCMHelpUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v12, "status not null"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v11, "state"

    const/4 v12, -0x1

    invoke-virtual {v10, v11, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    const-string/jumbo v11, "remainCnt"

    const/4 v12, -0x1

    invoke-virtual {v10, v11, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    const-string/jumbo v11, "errorresponse"

    const/4 v12, -0x1

    invoke-virtual {v10, v11, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string/jumbo v11, "minPinLength"

    const/4 v12, -0x1

    invoke-virtual {v10, v11, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    const-string/jumbo v11, "maxPinLength"

    const/4 v12, -0x1

    invoke-virtual {v10, v11, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    const-string/jumbo v11, "minPukLength"

    const/4 v12, -0x1

    invoke-virtual {v10, v11, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    const-string/jumbo v11, "maxPukLength"

    const/4 v12, -0x1

    invoke-virtual {v10, v11, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    const-string/jumbo v11, "miscInfo"

    const-string/jumbo v12, "NONE"

    invoke-virtual {v10, v11, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    sput-object v11, Lcom/samsung/android/settings/UCMHelpUtils;->miscInfo:Ljava/lang/String;

    sget-object v11, Lcom/samsung/android/settings/UCMHelpUtils;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "remain count = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "state = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "error code = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v11, Lcom/samsung/android/settings/UCMHelpUtils;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "pin min = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " pin max = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " puk min = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " puk max = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    aput v9, v8, v11

    const/4 v11, 0x1

    aput v7, v8, v11

    const/4 v11, 0x2

    aput v1, v8, v11

    const/4 v11, 0x3

    aput v4, v8, v11

    const/4 v11, 0x4

    aput v3, v8, v11

    const/4 v11, 0x5

    aput v6, v8, v11

    const/4 v11, 0x6

    aput v5, v8, v11
    :try_end_ff
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_ff} :catch_100

    return-object v8

    :catch_100
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_104
    const/16 v11, 0x84

    const/4 v12, 0x0

    aput v11, v8, v12

    const/4 v11, -0x1

    const/4 v12, 0x1

    aput v11, v8, v12

    const/4 v11, -0x1

    const/4 v12, 0x2

    aput v11, v8, v12

    return-object v8
.end method

.method private static getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;
    .registers 1

    const-string/jumbo v0, "knox_ucsm_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v0

    return-object v0
.end method

.method private static getValidStr(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v1, 0x0

    if-nez p0, :cond_4

    :cond_3
    :goto_3
    return-object v1

    :cond_4
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_f} :catch_14

    move-result v2

    if-lez v2, :cond_3

    move-object v1, p0

    goto :goto_3

    :catch_14
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v1
.end method

.method public static isCACCardRegistered(Landroid/content/Context;)Z
    .registers 6

    const/4 v1, 0x0

    :try_start_1
    invoke-static {p0}, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->isCardRegistered(Landroid/content/Context;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_1f

    move-result v1

    :goto_5
    sget-object v2, Lcom/samsung/android/settings/UCMHelpUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isCardRegistered: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :catch_1f
    move-exception v0

    goto :goto_5
.end method

.method public static isEnforcedCredentialStorageExist()Z
    .registers 8

    const/4 v2, 0x0

    invoke-static {}, Lcom/samsung/android/settings/UCMHelpUtils;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v3

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    sget-object v5, Lcom/samsung/android/settings/UCMHelpUtils;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isEnforcedCredentialStorageExist() for userId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-eqz v3, :cond_2d

    :try_start_25
    invoke-interface {v3, v4}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->getEnforcedCredentialStorageForLockTypeAsUser(I)Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    move-result-object v0

    if-eqz v0, :cond_2c

    const/4 v2, 0x1

    :cond_2c
    :goto_2c
    return v2

    :cond_2d
    sget-object v5, Lcom/samsung/android/settings/UCMHelpUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "ucmService is null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_35} :catch_36

    goto :goto_2c

    :catch_36
    move-exception v1

    sget-object v5, Lcom/samsung/android/settings/UCMHelpUtils;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Error in isEnforcedCredentialStorageExist: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return v2
.end method

.method private static isSmartcardAuthInstalled(Landroid/content/Context;)Z
    .registers 6

    const/4 v1, 0x0

    :try_start_1
    invoke-static {p0}, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->isSmartCardAuthenticationInstalled(Landroid/content/Context;)Z

    move-result v1

    sget-object v2, Lcom/samsung/android/settings/UCMHelpUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isSmartCardAuthenticationAvailable: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1e} :catch_1f

    :goto_1e
    return v1

    :catch_1f
    move-exception v0

    sget-object v2, Lcom/samsung/android/settings/UCMHelpUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "RuntimeException : isSmartCardAuthenticationAvailable"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e
.end method

.method public static isSmartcardAvailable(Landroid/content/Context;)Z
    .registers 8

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p0}, Lcom/samsung/android/settings/UCMHelpUtils;->isSmartcardAuthInstalled(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_24

    :try_start_b
    const-string/jumbo v4, "com.samsung.ucm.baiplugin"

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_3e

    sget-object v4, Lcom/samsung/android/settings/UCMHelpUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "UCM_SMARTCARD_BAI_PLUGIN installed"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/samsung/android/settings/UCMHelpUtils;->isCACCardRegistered(Landroid/content/Context;)Z
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_20} :catch_40

    move-result v4

    if-eqz v4, :cond_24

    const/4 v3, 0x1

    :cond_24
    :goto_24
    sget-object v4, Lcom/samsung/android/settings/UCMHelpUtils;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isSmartcardAvailable : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_3e
    const/4 v3, 0x1

    goto :goto_24

    :catch_40
    move-exception v0

    const/4 v3, 0x1

    goto :goto_24
.end method

.method public static resetUcmKeyguardSettings()Z
    .registers 7

    const/4 v6, 0x1

    const-string/jumbo v3, "com.samsung.ucs.ucsservice"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/knox/ucm/core/IUcmService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ucm/core/IUcmService;

    move-result-object v1

    if-eqz v1, :cond_73

    invoke-static {}, Lcom/samsung/android/settings/UCMHelpUtils;->getKeyguardStorageForCurrentUser()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1a

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_23

    :cond_1a
    sget-object v3, Lcom/samsung/android/settings/UCMHelpUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "UCM keyguard is not enabled"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_23
    const-string/jumbo v3, "None"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1a

    :try_start_2c
    sget-object v3, Lcom/samsung/android/settings/UCMHelpUtils;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "resetUcmKeyguardSettings for the user : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Lcom/samsung/android/knox/ucm/core/IUcmService;->configureKeyguardSettings(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_65

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/samsung/android/settings/UCMHelpUtils;->sendKeyguardConfiguredEvent(ILjava/lang/String;)V

    sget-object v3, Lcom/samsung/android/settings/UCMHelpUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "success to ucm keyguard configure disable"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_64
    return v6

    :cond_65
    sget-object v3, Lcom/samsung/android/settings/UCMHelpUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Failed to ucm keyguard configure disable"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_6d} :catch_6e

    goto :goto_64

    :catch_6e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_64

    :cond_73
    sget-object v3, Lcom/samsung/android/settings/UCMHelpUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "mUcmBinder == null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_64
.end method

.method public static saveUCMPasswordAndSetConfigurationInfo(Ljava/lang/String;Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    const-string/jumbo v3, "com.samsung.ucs.ucsservice"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/knox/ucm/core/IUcmService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ucm/core/IUcmService;

    move-result-object v1

    if-eqz v1, :cond_ae

    :try_start_d
    const-string/jumbo v3, ""

    invoke-static {p0, v3}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz p3, :cond_85

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_85

    if-eqz p1, :cond_a5

    sget-object v3, Lcom/samsung/android/settings/UCMHelpUtils;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "saveUCMPasswordAndSetConfigationInfo for the user : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-interface {v1, v3, v2}, Lcom/samsung/android/knox/ucm/core/IUcmService;->configureKeyguardSettings(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_86

    sget-object v3, Lcom/samsung/android/settings/UCMHelpUtils;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "success to configureKeyguardSettings : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/samsung/android/settings/UCMHelpUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "saved password to lockpatternutils"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    const/high16 v4, 0x70000

    invoke-virtual {p1, p3, p2, v4, v3}, Lcom/android/internal/widget/LockPatternUtils;->saveUCMLockPassword(Ljava/lang/String;Ljava/lang/String;II)V

    sget-object v3, Lcom/samsung/android/settings/UCMHelpUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "set the UCM keyguard as PASSWORD_QUALITY_SMARTCARDNUMERIC"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-interface {v1, v3}, Lcom/samsung/android/knox/ucm/core/IUcmService;->removeEnforcedLockTypeNotification(I)V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-static {v3, v2}, Lcom/samsung/android/settings/UCMHelpUtils;->sendKeyguardConfiguredEvent(ILjava/lang/String;)V

    :cond_85
    :goto_85
    return-void

    :cond_86
    sget-object v3, Lcom/samsung/android/settings/UCMHelpUtils;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "failed to configure Keyguard : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9f
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_9f} :catch_a0

    goto :goto_85

    :catch_a0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_85

    :cond_a5
    :try_start_a5
    sget-object v3, Lcom/samsung/android/settings/UCMHelpUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Could not set password recieved from UCM as mLockPatternUtils is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ad
    .catch Landroid/os/RemoteException; {:try_start_a5 .. :try_end_ad} :catch_a0

    goto :goto_85

    :cond_ae
    sget-object v3, Lcom/samsung/android/settings/UCMHelpUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "mUcmBinder == null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_85
.end method

.method private static sendKeyguardConfiguredEvent(ILjava/lang/String;)V
    .registers 8

    const-string/jumbo v3, "com.samsung.ucs.ucsservice"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/knox/ucm/core/IUcmService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ucm/core/IUcmService;

    move-result-object v2

    if-eqz v2, :cond_5d

    :try_start_d
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "userId"

    invoke-virtual {v0, v3, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-nez p1, :cond_39

    const/16 v3, 0x13

    invoke-interface {v2, p1, v3, v0}, Lcom/samsung/android/knox/ucm/core/IUcmService;->notifyChangeToPlugin(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;

    sget-object v3, Lcom/samsung/android/settings/UCMHelpUtils;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "notifyChangeToPlugin KEYGUARD_SET : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_38
    return-void

    :cond_39
    const/16 v3, 0x12

    invoke-interface {v2, p1, v3, v0}, Lcom/samsung/android/knox/ucm/core/IUcmService;->notifyChangeToPlugin(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;

    sget-object v3, Lcom/samsung/android/settings/UCMHelpUtils;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "notifyChangeToPlugin KEYGUARD_UNSET : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_57} :catch_58

    goto :goto_38

    :catch_58
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_38

    :cond_5d
    sget-object v3, Lcom/samsung/android/settings/UCMHelpUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "mUcmBinder == null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_38
.end method

.method public static showCardNotRegisteredDialog(Landroid/content/Context;)V
    .registers 5

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.sec.smartcard.pinservice.CARD_NOT_REGISTERED_ERROR_DIALOG"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_d
    sget-object v2, Lcom/samsung/android/settings/UCMHelpUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "showCardNotRegisteredDialog called "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_18
    .catch Landroid/content/ActivityNotFoundException; {:try_start_d .. :try_end_18} :catch_19

    :goto_18
    return-void

    :catch_19
    move-exception v0

    sget-object v2, Lcom/samsung/android/settings/UCMHelpUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "showCardNotRegisteredDialog "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_18
.end method

.method public static verfiyODEPin(Ljava/lang/String;Ljava/lang/String;)[I
    .registers 3

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/samsung/android/settings/UCMHelpUtils;->verfiyODEPin(Ljava/lang/String;Ljava/lang/String;I)[I

    move-result-object v0

    return-object v0
.end method

.method public static verfiyODEPin(Ljava/lang/String;Ljava/lang/String;I)[I
    .registers 13

    const/4 v7, 0x3

    new-array v4, v7, [I

    const/4 v7, 0x0

    const/4 v8, 0x0

    aput v7, v4, v8

    const/4 v7, -0x1

    const/4 v8, 0x1

    aput v7, v4, v8

    const/4 v7, -0x1

    const/4 v8, 0x2

    aput v7, v4, v8

    const-string/jumbo v7, "com.samsung.ucs.ucsservice"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/android/knox/ucm/core/IUcmService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ucm/core/IUcmService;

    move-result-object v6

    if-nez v6, :cond_25

    sget-object v7, Lcom/samsung/android/settings/UCMHelpUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "failed to get UCM service"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_25
    const/4 v7, 0x0

    :try_start_26
    invoke-interface {v6, p2, p1, p0, v7}, Lcom/samsung/android/knox/ucm/core/IUcmService;->verifyPin(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_d9

    const-string/jumbo v7, "state"

    const/4 v8, -0x1

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    const-string/jumbo v7, "remainCnt"

    const/4 v8, -0x1

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    const-string/jumbo v7, "errorresponse"

    const/4 v8, -0x1

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-string/jumbo v7, "miscInfo"

    const-string/jumbo v8, "NONE"

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/samsung/android/settings/UCMHelpUtils;->miscInfo:Ljava/lang/String;

    sget-object v7, Lcom/samsung/android/settings/UCMHelpUtils;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "state : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v7, Lcom/samsung/android/settings/UCMHelpUtils;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "remainCnt : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v7, Lcom/samsung/android/settings/UCMHelpUtils;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "errorCode : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v7, 0x83

    if-ne v5, v7, :cond_b1

    sget-object v7, Lcom/samsung/android/settings/UCMHelpUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "PIN verfication succeed"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_a7
    const/4 v7, 0x0

    aput v5, v4, v7

    const/4 v7, 0x1

    aput v3, v4, v7

    const/4 v7, 0x2

    aput v2, v4, v7

    :goto_b0
    return-object v4

    :cond_b1
    const/16 v7, 0x84

    if-ne v5, v7, :cond_d0

    sget-object v7, Lcom/samsung/android/settings/UCMHelpUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "PIN verfication failed"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_bd
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_bd} :catch_be

    goto :goto_a7

    :catch_be
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    const/16 v7, 0x84

    const/4 v8, 0x0

    aput v7, v4, v8

    const/4 v7, -0x1

    const/4 v8, 0x1

    aput v7, v4, v8

    const/4 v7, -0x1

    const/4 v8, 0x2

    aput v7, v4, v8

    return-object v4

    :cond_d0
    :try_start_d0
    sget-object v7, Lcom/samsung/android/settings/UCMHelpUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "Mostly has gone to PUK case"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a7

    :cond_d9
    sget-object v7, Lcom/samsung/android/settings/UCMHelpUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "verifyPin bundle is null."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e1
    .catch Landroid/os/RemoteException; {:try_start_d0 .. :try_end_e1} :catch_be

    goto :goto_b0
.end method

.method public static verifyPUK(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[I
    .registers 15

    sget-object v9, Lcom/samsung/android/settings/UCMHelpUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "verifyPUK enterd"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x3

    new-array v4, v9, [I

    const/4 v9, 0x0

    const/4 v10, 0x0

    aput v9, v4, v10

    const/4 v9, -0x1

    const/4 v10, 0x1

    aput v9, v4, v10

    const/4 v9, -0x1

    const/4 v10, 0x2

    aput v9, v4, v10

    invoke-static {p1}, Lcom/samsung/android/settings/UCMHelpUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sget-object v9, Lcom/samsung/android/settings/UCMHelpUtils;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "tempPUK : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2}, Lcom/samsung/android/settings/UCMHelpUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sget-object v9, Lcom/samsung/android/settings/UCMHelpUtils;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "tempPIN : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v7, :cond_55

    if-nez v6, :cond_5a

    :cond_55
    const/4 v9, -0x1

    const/4 v10, 0x0

    aput v9, v4, v10

    return-object v4

    :cond_5a
    const-string/jumbo v9, "com.samsung.ucs.ucsservice"

    invoke-static {v9}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/android/knox/ucm/core/IUcmService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ucm/core/IUcmService;

    move-result-object v8

    if-nez v8, :cond_74

    sget-object v9, Lcom/samsung/android/settings/UCMHelpUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "failed to get UCM service"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, -0x1

    const/4 v10, 0x0

    aput v9, v4, v10

    return-object v4

    :cond_74
    :try_start_74
    invoke-interface {v8, p0, p1, p2}, Lcom/samsung/android/knox/ucm/core/IUcmService;->verifyPuk(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_117

    const-string/jumbo v9, "state"

    const/4 v10, -0x1

    invoke-virtual {v0, v9, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    const-string/jumbo v9, "remainCnt"

    const/4 v10, -0x1

    invoke-virtual {v0, v9, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    const-string/jumbo v9, "errorresponse"

    const/4 v10, -0x1

    invoke-virtual {v0, v9, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-string/jumbo v9, "miscInfo"

    const-string/jumbo v10, "NONE"

    invoke-virtual {v0, v9, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sput-object v9, Lcom/samsung/android/settings/UCMHelpUtils;->miscInfo:Ljava/lang/String;

    sget-object v9, Lcom/samsung/android/settings/UCMHelpUtils;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "state : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v9, Lcom/samsung/android/settings/UCMHelpUtils;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "remainCnt : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v9, Lcom/samsung/android/settings/UCMHelpUtils;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "errorCode : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v9, 0x84

    if-ne v5, v9, :cond_f8

    const/4 v9, 0x0

    const/4 v10, 0x0

    aput v9, v4, v10

    const/4 v9, 0x1

    aput v3, v4, v9

    const/4 v9, 0x2

    aput v2, v4, v9

    :goto_f7
    return-object v4

    :cond_f8
    const/16 v9, 0x83

    if-ne v5, v9, :cond_10c

    const/4 v9, 0x0

    const/4 v10, 0x0

    aput v9, v4, v10

    const/4 v9, 0x1

    aput v3, v4, v9

    const/4 v9, 0x2

    aput v2, v4, v9
    :try_end_106
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_106} :catch_107

    goto :goto_f7

    :catch_107
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_f7

    :cond_10c
    const/4 v9, -0x1

    const/4 v10, 0x0

    :try_start_10e
    aput v9, v4, v10

    const/4 v9, 0x1

    aput v3, v4, v9

    const/4 v9, 0x2

    aput v2, v4, v9

    goto :goto_f7

    :cond_117
    sget-object v9, Lcom/samsung/android/settings/UCMHelpUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "verifyPin bundle is null."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11f
    .catch Ljava/lang/Exception; {:try_start_10e .. :try_end_11f} :catch_107

    goto :goto_f7
.end method
