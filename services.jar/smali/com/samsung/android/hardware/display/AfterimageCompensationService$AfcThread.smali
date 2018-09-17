.class Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;
.super Ljava/lang/Thread;
.source "AfterimageCompensationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hardware/display/AfterimageCompensationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AfcThread"
.end annotation


# instance fields
.field i:I

.field index:I

.field mAvgCoprRoi:[D

.field mAvgLuminance:D

.field mDataValid:Z

.field final synthetic this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

.field xRGB:I

.field xRGBindex:I


# direct methods
.method private constructor <init>(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)V
    .registers 4

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-boolean v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->mDataValid:Z

    iput v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->i:I

    iput v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->xRGB:I

    iput v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->xRGBindex:I

    iput v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->index:I

    const/16 v0, 0xc

    new-array v0, v0, [D

    iput-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->mAvgCoprRoi:[D

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->mAvgLuminance:D

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/hardware/display/AfterimageCompensationService;Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;-><init>(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    const v10, 0x10c8e0

    const/16 v9, 0xc

    const/4 v8, 0x0

    :cond_6
    :goto_6
    :try_start_6
    iget-object v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v1}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-get0(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z

    move-result v1

    if-eqz v1, :cond_2c4

    const-wide/16 v2, 0x2710

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    iget-object v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v1}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-wrap0(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->mDataValid:Z

    iget-boolean v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->mDataValid:Z

    if-eqz v1, :cond_2a0

    iget-object v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v1}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-get5(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v1

    if-ltz v1, :cond_3a

    iget-object v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v1}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-get5(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v1

    if-ge v1, v10, :cond_3a

    iget-object v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v1}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-get5(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-set0(Lcom/samsung/android/hardware/display/AfterimageCompensationService;I)I

    :cond_3a
    const-string/jumbo v1, "AfterimageCompensationService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "AfcThread interpolationCount - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-get5(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v1}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-get5(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v1

    if-ltz v1, :cond_251

    iget-object v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v1}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-get5(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v1

    if-gt v1, v10, :cond_251

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->i:I

    :goto_6d
    iget v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->i:I

    if-ge v1, v9, :cond_172

    iget-boolean v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->mDataValid:Z

    if-eqz v1, :cond_115

    iget-object v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v1}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-get9(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)[I

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->i:I

    aget v1, v1, v2

    if-ltz v1, :cond_14a

    iget-object v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v1}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-get9(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)[I

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->i:I

    aget v1, v1, v2

    const/16 v2, 0x100

    if-gt v1, v2, :cond_14a

    iget-object v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v1}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-get9(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)[I

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->i:I

    aget v1, v1, v2

    iput v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->xRGB:I

    iget v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->i:I

    rem-int/lit8 v1, v1, 0x3

    iput v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->index:I

    const-string/jumbo v1, "AfterimageCompensationService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "XRGB _i = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->i:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", xRGB = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-get10(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)[[I

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->index:I

    aget-object v3, v3, v4

    iget v4, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->xRGB:I

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", average - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-get4(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)[D

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->i:I

    aget-wide v4, v3, v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->mAvgCoprRoi:[D

    iget v2, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->i:I

    iget-object v3, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    iget-object v4, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v4}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-get5(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v5}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-get10(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)[[I

    move-result-object v5

    iget v6, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->index:I

    aget-object v5, v5, v6

    iget v6, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->xRGB:I

    aget v5, v5, v6

    iget-object v6, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-get4(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)[D

    move-result-object v6

    iget v7, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->i:I

    aget-wide v6, v6, v7

    invoke-static {v3, v4, v5, v6, v7}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-wrap1(Lcom/samsung/android/hardware/display/AfterimageCompensationService;IID)D

    move-result-wide v4

    aput-wide v4, v1, v2

    :cond_115
    :goto_115
    iget v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->i:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->i:I
    :try_end_11b
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_11b} :catch_11d
    .catchall {:try_start_6 .. :try_end_11b} :catchall_150

    goto/16 :goto_6d

    :catch_11d
    move-exception v0

    :try_start_11e
    iget-object v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v1}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-get2(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z

    move-result v1

    if-eqz v1, :cond_129

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_129
    .catchall {:try_start_11e .. :try_end_129} :catchall_150

    :cond_129
    const-string/jumbo v1, "AfterimageCompensationService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "AfcThread is Terminated - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-get5(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_149
    return-void

    :cond_14a
    :try_start_14a
    iget-boolean v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->mDataValid:Z

    and-int/2addr v1, v8

    iput-boolean v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->mDataValid:Z
    :try_end_14f
    .catch Ljava/lang/Exception; {:try_start_14a .. :try_end_14f} :catch_11d
    .catchall {:try_start_14a .. :try_end_14f} :catchall_150

    goto :goto_115

    :catchall_150
    move-exception v1

    const-string/jumbo v2, "AfterimageCompensationService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "AfcThread is Terminated - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v4}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-get5(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    throw v1

    :cond_172
    :try_start_172
    iget-boolean v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->mDataValid:Z

    if-eqz v1, :cond_1a8

    iget-object v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v1}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-get11(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v1

    if-ltz v1, :cond_214

    iget-object v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v1}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-get11(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v1

    int-to-double v2, v1

    const-wide v4, 0x4097700000000000L    # 1500.0

    cmpg-double v1, v2, v4

    if-gtz v1, :cond_214

    iget-object v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    iget-object v2, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v2}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-get5(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-get11(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v4}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-get6(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    move-result-wide v4

    invoke-static {v1, v2, v3, v4, v5}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-wrap1(Lcom/samsung/android/hardware/display/AfterimageCompensationService;IID)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->mAvgLuminance:D

    :cond_1a8
    :goto_1a8
    iget-boolean v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->mDataValid:Z

    if-eqz v1, :cond_274

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->i:I

    :goto_1af
    iget v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->i:I

    if-ge v1, v9, :cond_21a

    iget-object v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v1}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-get4(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)[D

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->i:I

    iget-object v3, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->mAvgCoprRoi:[D

    iget v4, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->i:I

    aget-wide v4, v3, v4

    aput-wide v4, v1, v2

    iget-object v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v1}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-get3(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)[I

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->i:I

    iget-object v3, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-get4(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)[D

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->i:I

    aget-wide v4, v3, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v3, v4

    aput v3, v1, v2

    const-string/jumbo v1, "AfterimageCompensationService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Average XRGB - i = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->i:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-get4(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)[D

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->i:I

    aget-wide v4, v3, v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->i:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->i:I

    goto :goto_1af

    :cond_214
    iget-boolean v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->mDataValid:Z

    and-int/2addr v1, v8

    iput-boolean v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->mDataValid:Z

    goto :goto_1a8

    :cond_21a
    iget-object v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    iget-wide v2, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->mAvgLuminance:D

    invoke-static {v1, v2, v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-set2(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)D

    iget-object v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    iget-object v2, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v2}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-get6(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v1, v2}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-set1(Lcom/samsung/android/hardware/display/AfterimageCompensationService;I)I

    const-string/jumbo v1, "AfterimageCompensationService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Average interpolationLuminance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-get6(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_251
    :goto_251
    iget-object v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v1}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-get1(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v1}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-get8(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Ljava/lang/Thread;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v1}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-get8(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Ljava/lang/Thread;

    move-result-object v2

    monitor-enter v2
    :try_end_268
    .catch Ljava/lang/Exception; {:try_start_172 .. :try_end_268} :catch_11d
    .catchall {:try_start_172 .. :try_end_268} :catchall_150

    :try_start_268
    iget-object v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v1}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-get8(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->wait()V
    :try_end_271
    .catchall {:try_start_268 .. :try_end_271} :catchall_2c1

    :try_start_271
    monitor-exit v2

    goto/16 :goto_6

    :cond_274
    iget-object v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v1}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-get5(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-set0(Lcom/samsung/android/hardware/display/AfterimageCompensationService;I)I

    const-string/jumbo v1, "AfterimageCompensationService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Read XRGB or Luminance Data is Out of Bound - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-get5(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_251

    :cond_2a0
    const-string/jumbo v1, "AfterimageCompensationService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Read COPR_ROI or Luminance Data is Out of Bound - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-get5(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_251

    :catchall_2c1
    move-exception v1

    monitor-exit v2

    throw v1
    :try_end_2c4
    .catch Ljava/lang/Exception; {:try_start_271 .. :try_end_2c4} :catch_11d
    .catchall {:try_start_271 .. :try_end_2c4} :catchall_150

    :cond_2c4
    const-string/jumbo v1, "AfterimageCompensationService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "AfcThread is Terminated - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-get5(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_149
.end method
