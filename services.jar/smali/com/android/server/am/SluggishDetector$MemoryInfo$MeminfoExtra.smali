.class final Lcom/android/server/am/SluggishDetector$MemoryInfo$MeminfoExtra;
.super Ljava/lang/Object;
.source "SluggishDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/SluggishDetector$MemoryInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MeminfoExtra"
.end annotation


# static fields
.field private static final MEMINFO_EXTRA_PATH:Ljava/lang/String; = "/proc/meminfo_extra"


# instance fields
.field private mSystemHeap:J

.field private mZSwapDevice:J


# direct methods
.method static synthetic -wrap0(Lcom/android/server/am/SluggishDetector$MemoryInfo$MeminfoExtra;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/am/SluggishDetector$MemoryInfo$MeminfoExtra;->refresh()V

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    const-wide/16 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Lcom/android/server/am/SluggishDetector$MemoryInfo$MeminfoExtra;->mSystemHeap:J

    iput-wide v0, p0, Lcom/android/server/am/SluggishDetector$MemoryInfo$MeminfoExtra;->mZSwapDevice:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/SluggishDetector$MemoryInfo$MeminfoExtra;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/am/SluggishDetector$MemoryInfo$MeminfoExtra;-><init>()V

    return-void
.end method

.method private refresh()V
    .registers 13

    const-string/jumbo v5, "/proc/meminfo_extra"

    invoke-static {v5}, Lcom/android/server/am/SluggishDetector;->-wrap0(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_71

    const/4 v5, 0x0

    array-length v6, v2

    :goto_b
    if-ge v5, v6, :cond_71

    aget-object v1, v2, v5

    const-string/jumbo v7, "SystemHeap:"

    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_40

    const-string/jumbo v7, "SystemHeap:"

    const-string/jumbo v8, ""

    invoke-virtual {v1, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "kB"

    const-string/jumbo v9, ""

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    :try_start_30
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/server/am/SluggishDetector$MemoryInfo$MeminfoExtra;->mSystemHeap:J

    iget-wide v8, p0, Lcom/android/server/am/SluggishDetector$MemoryInfo$MeminfoExtra;->mSystemHeap:J

    const-wide/16 v10, 0x400

    div-long/2addr v8, v10

    iput-wide v8, p0, Lcom/android/server/am/SluggishDetector$MemoryInfo$MeminfoExtra;->mSystemHeap:J
    :try_end_3d
    .catch Ljava/lang/NumberFormatException; {:try_start_30 .. :try_end_3d} :catch_72

    :cond_3d
    :goto_3d
    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    :cond_40
    const-string/jumbo v7, "ZSwapDevice:"

    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3d

    const-string/jumbo v7, "ZSwapDevice:"

    const-string/jumbo v8, ""

    invoke-virtual {v1, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "kB"

    const-string/jumbo v9, ""

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    :try_start_61
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/server/am/SluggishDetector$MemoryInfo$MeminfoExtra;->mZSwapDevice:J

    iget-wide v8, p0, Lcom/android/server/am/SluggishDetector$MemoryInfo$MeminfoExtra;->mZSwapDevice:J

    const-wide/16 v10, 0x400

    div-long/2addr v8, v10

    iput-wide v8, p0, Lcom/android/server/am/SluggishDetector$MemoryInfo$MeminfoExtra;->mZSwapDevice:J
    :try_end_6e
    .catch Ljava/lang/NumberFormatException; {:try_start_61 .. :try_end_6e} :catch_6f

    goto :goto_3d

    :catch_6f
    move-exception v0

    goto :goto_3d

    :cond_71
    return-void

    :catch_72
    move-exception v0

    goto :goto_3d
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcom/android/server/am/SluggishDetector$MemoryInfo$MeminfoExtra;->mSystemHeap:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/server/am/SluggishDetector$MemoryInfo$MeminfoExtra;->mZSwapDevice:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
