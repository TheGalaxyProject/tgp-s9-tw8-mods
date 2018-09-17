.class final Lcom/android/server/am/SluggishDetector$IoInfo;
.super Ljava/lang/Object;
.source "SluggishDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/SluggishDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "IoInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/SluggishDetector$IoInfo$IoInfoData;
    }
.end annotation


# static fields
.field private static final IOSTATS_PATH:Ljava/lang/String; = "/proc/iostats"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static synthetic -wrap0()Lcom/android/server/am/SluggishDetector$IoInfo$IoInfoData;
    .registers 1

    invoke-static {}, Lcom/android/server/am/SluggishDetector$IoInfo;->getIoInfoData()Lcom/android/server/am/SluggishDetector$IoInfo$IoInfoData;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/server/am/SluggishDetector;->-get0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/server/am/SluggishDetector$IoInfo;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/SluggishDetector$IoInfo;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getIoInfoData()Lcom/android/server/am/SluggishDetector$IoInfo$IoInfoData;
    .registers 6

    const/4 v4, 0x0

    new-instance v1, Lcom/android/server/am/SluggishDetector$IoInfo$IoInfoData;

    invoke-direct {v1, v4}, Lcom/android/server/am/SluggishDetector$IoInfo$IoInfoData;-><init>(Lcom/android/server/am/SluggishDetector$IoInfo$IoInfoData;)V

    const-string/jumbo v4, "/proc/iostats"

    invoke-static {v4}, Lcom/android/server/am/SluggishDetector;->-wrap0(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1f

    const/4 v4, 0x0

    array-length v5, v3

    :goto_11
    if-ge v4, v5, :cond_1f

    aget-object v2, v3, v4

    invoke-static {v2}, Lcom/android/server/am/SluggishDetector$IoInfo;->getIoInfoDataLineValue(Ljava/lang/String;)Lcom/android/server/am/SluggishDetector$IoInfo$IoInfoData;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/server/am/SluggishDetector$IoInfo$IoInfoData;->-wrap0(Lcom/android/server/am/SluggishDetector$IoInfo$IoInfoData;Lcom/android/server/am/SluggishDetector$IoInfo$IoInfoData;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    :cond_1f
    return-object v1
.end method

.method private static getIoInfoDataLineValue(Ljava/lang/String;)Lcom/android/server/am/SluggishDetector$IoInfo$IoInfoData;
    .registers 13

    const/16 v11, 0xa

    const/4 v10, 0x6

    new-instance v2, Lcom/android/server/am/SluggishDetector$IoInfo$IoInfoData;

    const/4 v5, 0x0

    invoke-direct {v2, v5}, Lcom/android/server/am/SluggishDetector$IoInfo$IoInfoData;-><init>(Lcom/android/server/am/SluggishDetector$IoInfo$IoInfoData;)V

    const-string/jumbo v5, " "

    invoke-virtual {p0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x0

    const/4 v5, 0x0

    array-length v6, v4

    :goto_13
    if-ge v5, v6, :cond_31

    aget-object v3, v4, v5

    const-string/jumbo v7, ""

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_55

    add-int/lit8 v0, v0, 0x1

    if-eq v0, v10, :cond_26

    if-ne v0, v11, :cond_2f

    :cond_26
    if-ne v0, v10, :cond_32

    :try_start_28
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v2, v8, v9}, Lcom/android/server/am/SluggishDetector$IoInfo$IoInfoData;->-set0(Lcom/android/server/am/SluggishDetector$IoInfo$IoInfoData;J)J

    :cond_2f
    :goto_2f
    if-ne v0, v11, :cond_55

    :cond_31
    return-object v2

    :cond_32
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v2, v8, v9}, Lcom/android/server/am/SluggishDetector$IoInfo$IoInfoData;->-set1(Lcom/android/server/am/SluggishDetector$IoInfo$IoInfoData;J)J
    :try_end_39
    .catch Ljava/lang/NumberFormatException; {:try_start_28 .. :try_end_39} :catch_3a

    goto :goto_2f

    :catch_3a
    move-exception v1

    sget-object v7, Lcom/android/server/am/SluggishDetector$IoInfo;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getValue() - parseLong : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2f

    :cond_55
    add-int/lit8 v5, v5, 0x1

    goto :goto_13
.end method
