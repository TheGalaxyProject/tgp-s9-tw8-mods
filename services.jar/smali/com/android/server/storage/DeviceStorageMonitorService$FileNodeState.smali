.class Lcom/android/server/storage/DeviceStorageMonitorService$FileNodeState;
.super Ljava/lang/Object;
.source "DeviceStorageMonitorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/storage/DeviceStorageMonitorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FileNodeState"
.end annotation


# static fields
.field private static final LEVEL_FN_FULL:I = 0x2

.field private static final LEVEL_FN_LOW:I = 0x1

.field private static final LEVEL_FN_NORMAL:I = 0x0

.field private static final LEVEL_FN_UNKNOWN:I = -0x1


# instance fields
.field public level:I


# direct methods
.method static synthetic -wrap0(III)Z
    .registers 4

    invoke-static {p0, p1, p2}, Lcom/android/server/storage/DeviceStorageMonitorService$FileNodeState;->isEntering(III)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(III)Z
    .registers 4

    invoke-static {p0, p1, p2}, Lcom/android/server/storage/DeviceStorageMonitorService$FileNodeState;->isLeaving(III)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(I)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/android/server/storage/DeviceStorageMonitorService$FileNodeState;->levelToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService$FileNodeState;->level:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/storage/DeviceStorageMonitorService$FileNodeState;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/storage/DeviceStorageMonitorService$FileNodeState;-><init>()V

    return-void
.end method

.method private static isEntering(III)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lt p2, p0, :cond_a

    if-lt p1, p0, :cond_9

    const/4 v2, -0x1

    if-ne p1, v2, :cond_a

    :cond_9
    :goto_9
    return v0

    :cond_a
    move v0, v1

    goto :goto_9
.end method

.method private static isLeaving(III)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ge p2, p0, :cond_a

    if-ge p1, p0, :cond_9

    const/4 v2, -0x1

    if-ne p1, v2, :cond_a

    :cond_9
    :goto_9
    return v0

    :cond_a
    move v0, v1

    goto :goto_9
.end method

.method private static levelToString(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_18

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_8
    const-string/jumbo v0, "FN_UNKNOWN"

    return-object v0

    :pswitch_c
    const-string/jumbo v0, "FN_NORMAL"

    return-object v0

    :pswitch_10
    const-string/jumbo v0, "FN_LOW"

    return-object v0

    :pswitch_14
    const-string/jumbo v0, "FN_FULL"

    return-object v0

    :pswitch_data_18
    .packed-switch -0x1
        :pswitch_8
        :pswitch_c
        :pswitch_10
        :pswitch_14
    .end packed-switch
.end method
