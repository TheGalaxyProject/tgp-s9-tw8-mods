.class public Lcom/samsung/android/settings/fmm/NVStore;
.super Ljava/lang/Object;
.source "NVStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/fmm/NVStore$datatype;
    }
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field mNvData:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/fmm/NVStore;->mNvData:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/settings/fmm/NVStore;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/NVStore;->ReaddataFromNv()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/fmm/NVStore;->mNvData:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public GetMTStatus()Z
    .registers 8

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/samsung/android/settings/fmm/NVStore;->mNvData:Ljava/lang/String;

    if-nez v3, :cond_7

    return v5

    :cond_7
    new-instance v1, Ljava/util/StringTokenizer;

    iget-object v3, p0, Lcom/samsung/android/settings/fmm/NVStore;->mNvData:Ljava/lang/String;

    const-string/jumbo v4, ";"

    invoke-direct {v1, v3, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v3

    new-array v2, v3, [Ljava/lang/String;

    const/4 v0, 0x0

    :goto_18
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_27

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    :cond_27
    const/4 v3, 0x2

    if-ge v0, v3, :cond_2b

    return v5

    :cond_2b
    aget-object v3, v2, v6

    const-string/jumbo v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_37

    return v6

    :cond_37
    return v5
.end method

.method public GetPhPWD()Ljava/lang/String;
    .registers 9

    const/16 v7, 0x8

    const/4 v6, 0x0

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/samsung/android/settings/fmm/NVStore;->mNvData:Ljava/lang/String;

    if-nez v3, :cond_9

    return-object v5

    :cond_9
    new-instance v1, Ljava/util/StringTokenizer;

    iget-object v3, p0, Lcom/samsung/android/settings/fmm/NVStore;->mNvData:Ljava/lang/String;

    const-string/jumbo v4, ";"

    invoke-direct {v1, v3, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v3

    new-array v2, v3, [Ljava/lang/String;

    const/4 v0, 0x0

    :goto_1a
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_29

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    :cond_29
    const/4 v3, 0x1

    if-ge v0, v3, :cond_2d

    return-object v5

    :cond_2d
    aget-object v3, v2, v6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v3, v7, :cond_3d

    aget-object v3, v2, v6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v3, v7, :cond_3e

    :cond_3d
    return-object v5

    :cond_3e
    aget-object v3, v2, v6

    return-object v3
.end method

.method public GetRec1()Ljava/lang/String;
    .registers 6

    iget-object v3, p0, Lcom/samsung/android/settings/fmm/NVStore;->mNvData:Ljava/lang/String;

    if-nez v3, :cond_8

    const-string/jumbo v3, "none"

    return-object v3

    :cond_8
    new-instance v1, Ljava/util/StringTokenizer;

    iget-object v3, p0, Lcom/samsung/android/settings/fmm/NVStore;->mNvData:Ljava/lang/String;

    const-string/jumbo v4, ";"

    invoke-direct {v1, v3, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v3

    new-array v2, v3, [Ljava/lang/String;

    const/4 v0, 0x0

    :goto_19
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_28

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    :cond_28
    const/4 v3, 0x4

    if-ge v0, v3, :cond_2f

    const-string/jumbo v3, "none"

    return-object v3

    :cond_2f
    const/4 v3, 0x3

    aget-object v3, v2, v3

    return-object v3
.end method

.method public GetRec2()Ljava/lang/String;
    .registers 6

    iget-object v3, p0, Lcom/samsung/android/settings/fmm/NVStore;->mNvData:Ljava/lang/String;

    if-nez v3, :cond_8

    const-string/jumbo v3, "none"

    return-object v3

    :cond_8
    new-instance v1, Ljava/util/StringTokenizer;

    iget-object v3, p0, Lcom/samsung/android/settings/fmm/NVStore;->mNvData:Ljava/lang/String;

    const-string/jumbo v4, ";"

    invoke-direct {v1, v3, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v3

    new-array v2, v3, [Ljava/lang/String;

    const/4 v0, 0x0

    :goto_19
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_28

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    :cond_28
    const/4 v3, 0x5

    if-ge v0, v3, :cond_2f

    const-string/jumbo v3, "none"

    return-object v3

    :cond_2f
    const/4 v3, 0x4

    aget-object v3, v2, v3

    return-object v3
.end method

.method public GetRec3()Ljava/lang/String;
    .registers 6

    iget-object v3, p0, Lcom/samsung/android/settings/fmm/NVStore;->mNvData:Ljava/lang/String;

    if-nez v3, :cond_8

    const-string/jumbo v3, "none"

    return-object v3

    :cond_8
    new-instance v1, Ljava/util/StringTokenizer;

    iget-object v3, p0, Lcom/samsung/android/settings/fmm/NVStore;->mNvData:Ljava/lang/String;

    const-string/jumbo v4, ";"

    invoke-direct {v1, v3, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v3

    new-array v2, v3, [Ljava/lang/String;

    const/4 v0, 0x0

    :goto_19
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_28

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    :cond_28
    const/4 v3, 0x6

    if-ge v0, v3, :cond_2f

    const-string/jumbo v3, "none"

    return-object v3

    :cond_2f
    const/4 v3, 0x5

    aget-object v3, v2, v3

    return-object v3
.end method

.method public GetRec4()Ljava/lang/String;
    .registers 6

    iget-object v3, p0, Lcom/samsung/android/settings/fmm/NVStore;->mNvData:Ljava/lang/String;

    if-nez v3, :cond_8

    const-string/jumbo v3, "none"

    return-object v3

    :cond_8
    new-instance v1, Ljava/util/StringTokenizer;

    iget-object v3, p0, Lcom/samsung/android/settings/fmm/NVStore;->mNvData:Ljava/lang/String;

    const-string/jumbo v4, ";"

    invoke-direct {v1, v3, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v3

    new-array v2, v3, [Ljava/lang/String;

    const/4 v0, 0x0

    :goto_19
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_28

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    :cond_28
    const/4 v3, 0x7

    if-ge v0, v3, :cond_2f

    const-string/jumbo v3, "none"

    return-object v3

    :cond_2f
    const/4 v3, 0x6

    aget-object v3, v2, v3

    return-object v3
.end method

.method public GetRec5()Ljava/lang/String;
    .registers 6

    iget-object v3, p0, Lcom/samsung/android/settings/fmm/NVStore;->mNvData:Ljava/lang/String;

    if-nez v3, :cond_8

    const-string/jumbo v3, "none"

    return-object v3

    :cond_8
    new-instance v1, Ljava/util/StringTokenizer;

    iget-object v3, p0, Lcom/samsung/android/settings/fmm/NVStore;->mNvData:Ljava/lang/String;

    const-string/jumbo v4, ";"

    invoke-direct {v1, v3, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v3

    new-array v2, v3, [Ljava/lang/String;

    const/4 v0, 0x0

    :goto_19
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_28

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    :cond_28
    const/16 v3, 0x8

    if-ge v0, v3, :cond_30

    const-string/jumbo v3, "none"

    return-object v3

    :cond_30
    const/4 v3, 0x7

    aget-object v3, v2, v3

    return-object v3
.end method

.method public GetSenderName()Ljava/lang/String;
    .registers 7

    const/4 v5, 0x2

    iget-object v3, p0, Lcom/samsung/android/settings/fmm/NVStore;->mNvData:Ljava/lang/String;

    if-nez v3, :cond_9

    const-string/jumbo v3, "Not Mentioned"

    return-object v3

    :cond_9
    new-instance v1, Ljava/util/StringTokenizer;

    iget-object v3, p0, Lcom/samsung/android/settings/fmm/NVStore;->mNvData:Ljava/lang/String;

    const-string/jumbo v4, ";"

    invoke-direct {v1, v3, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v3

    new-array v2, v3, [Ljava/lang/String;

    const/4 v0, 0x0

    :goto_1a
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_29

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    :cond_29
    const/4 v3, 0x3

    if-ge v0, v3, :cond_30

    const-string/jumbo v3, "Not Mentioned"

    return-object v3

    :cond_30
    aget-object v3, v2, v5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x20

    if-le v3, v4, :cond_3e

    const-string/jumbo v3, "Not Mentioned"

    return-object v3

    :cond_3e
    aget-object v3, v2, v5

    return-object v3
.end method

.method public GetSmsMsg()Ljava/lang/String;
    .registers 7

    const/16 v5, 0x8

    iget-object v3, p0, Lcom/samsung/android/settings/fmm/NVStore;->mNvData:Ljava/lang/String;

    if-nez v3, :cond_a

    const-string/jumbo v3, "Keep this message."

    return-object v3

    :cond_a
    new-instance v1, Ljava/util/StringTokenizer;

    iget-object v3, p0, Lcom/samsung/android/settings/fmm/NVStore;->mNvData:Ljava/lang/String;

    const-string/jumbo v4, ";"

    invoke-direct {v1, v3, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v3

    new-array v2, v3, [Ljava/lang/String;

    const/4 v0, 0x0

    :goto_1b
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_2a

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    :cond_2a
    const/16 v3, 0x9

    if-ge v0, v3, :cond_32

    const-string/jumbo v3, "Keep this message."

    return-object v3

    :cond_32
    aget-object v3, v2, v5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x50

    if-le v3, v4, :cond_40

    const-string/jumbo v3, "Keep this message."

    return-object v3

    :cond_40
    aget-object v3, v2, v5

    return-object v3
.end method

.method public GetStoredICCID()Ljava/lang/String;
    .registers 7

    const/16 v5, 0xb

    iget-object v3, p0, Lcom/samsung/android/settings/fmm/NVStore;->mNvData:Ljava/lang/String;

    if-nez v3, :cond_a

    const-string/jumbo v3, "00000000"

    return-object v3

    :cond_a
    new-instance v1, Ljava/util/StringTokenizer;

    iget-object v3, p0, Lcom/samsung/android/settings/fmm/NVStore;->mNvData:Ljava/lang/String;

    const-string/jumbo v4, ";"

    invoke-direct {v1, v3, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v3

    new-array v2, v3, [Ljava/lang/String;

    const/4 v0, 0x0

    :goto_1b
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_2a

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    :cond_2a
    const/16 v3, 0xc

    if-ge v0, v3, :cond_32

    const-string/jumbo v3, "00000000"

    return-object v3

    :cond_32
    aget-object v3, v2, v5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x14

    if-le v3, v4, :cond_40

    const-string/jumbo v3, "00000000"

    return-object v3

    :cond_40
    aget-object v3, v2, v5

    return-object v3
.end method

.method public GetStoredIMSI()Ljava/lang/String;
    .registers 7

    const/16 v5, 0x9

    iget-object v3, p0, Lcom/samsung/android/settings/fmm/NVStore;->mNvData:Ljava/lang/String;

    if-nez v3, :cond_a

    const-string/jumbo v3, "0000"

    return-object v3

    :cond_a
    new-instance v1, Ljava/util/StringTokenizer;

    iget-object v3, p0, Lcom/samsung/android/settings/fmm/NVStore;->mNvData:Ljava/lang/String;

    const-string/jumbo v4, ";"

    invoke-direct {v1, v3, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v3

    new-array v2, v3, [Ljava/lang/String;

    const/4 v0, 0x0

    :goto_1b
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_2a

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    :cond_2a
    const/16 v3, 0xa

    if-ge v0, v3, :cond_32

    const-string/jumbo v3, "0000"

    return-object v3

    :cond_32
    aget-object v3, v2, v5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x15

    if-le v3, v4, :cond_40

    const-string/jumbo v3, "0000"

    return-object v3

    :cond_40
    aget-object v3, v2, v5

    return-object v3
.end method

.method public GetStoredIMSI2()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "0000"

    return-object v0
.end method

.method public IsPhLockeEnabled()Z
    .registers 7

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/samsung/android/settings/fmm/NVStore;->mNvData:Ljava/lang/String;

    if-nez v3, :cond_6

    return v5

    :cond_6
    new-instance v1, Ljava/util/StringTokenizer;

    iget-object v3, p0, Lcom/samsung/android/settings/fmm/NVStore;->mNvData:Ljava/lang/String;

    const-string/jumbo v4, ";"

    invoke-direct {v1, v3, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v3

    new-array v2, v3, [Ljava/lang/String;

    const/4 v0, 0x0

    :goto_17
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_26

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    :cond_26
    const/16 v3, 0xb

    if-ge v0, v3, :cond_2b

    return v5

    :cond_2b
    const/16 v3, 0xa

    aget-object v3, v2, v3

    const-string/jumbo v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_3a

    const/4 v3, 0x1

    return v3

    :cond_3a
    return v5
.end method

.method public ReaddataFromNv()Ljava/lang/String;
    .registers 14

    const/4 v12, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v0, 0x0

    :try_start_4
    const-string/jumbo v6, "/efs/sec_efs/mobiletracker.txt"

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_c} :catch_3d
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_c} :catch_2d
    .catchall {:try_start_4 .. :try_end_c} :catchall_4d

    :try_start_c
    new-instance v9, Ljava/io/InputStreamReader;

    invoke-direct {v9, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_11
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_11} :catch_64
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_11} :catch_6b
    .catchall {:try_start_c .. :try_end_11} :catchall_5d

    const/16 v11, 0x100

    :try_start_13
    new-array v7, v11, [C

    invoke-virtual {v9, v7}, Ljava/io/InputStreamReader;->read([C)I

    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v7}, Ljava/lang/String;-><init>([C)V
    :try_end_1d
    .catch Ljava/io/FileNotFoundException; {:try_start_13 .. :try_end_1d} :catch_67
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_1d} :catch_6e
    .catchall {:try_start_13 .. :try_end_1d} :catchall_60

    move-object v0, v10

    if-eqz v9, :cond_23

    :try_start_20
    invoke-virtual {v9}, Ljava/io/InputStreamReader;->close()V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_23} :catch_29

    :cond_23
    :goto_23
    if-eqz v5, :cond_28

    :try_start_25
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_28} :catch_2b

    :cond_28
    :goto_28
    return-object v10

    :catch_29
    move-exception v3

    goto :goto_23

    :catch_2b
    move-exception v3

    goto :goto_28

    :catch_2d
    move-exception v2

    :goto_2e
    if-eqz v8, :cond_33

    :try_start_30
    invoke-virtual {v8}, Ljava/io/InputStreamReader;->close()V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_33} :catch_39

    :cond_33
    :goto_33
    if-eqz v4, :cond_38

    :try_start_35
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_38} :catch_3b

    :cond_38
    :goto_38
    return-object v12

    :catch_39
    move-exception v3

    goto :goto_33

    :catch_3b
    move-exception v3

    goto :goto_38

    :catch_3d
    move-exception v1

    :goto_3e
    if-eqz v8, :cond_43

    :try_start_40
    invoke-virtual {v8}, Ljava/io/InputStreamReader;->close()V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_43} :catch_49

    :cond_43
    :goto_43
    if-eqz v4, :cond_48

    :try_start_45
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_48} :catch_4b

    :cond_48
    :goto_48
    return-object v12

    :catch_49
    move-exception v3

    goto :goto_43

    :catch_4b
    move-exception v3

    goto :goto_48

    :catchall_4d
    move-exception v11

    :goto_4e
    if-eqz v8, :cond_53

    :try_start_50
    invoke-virtual {v8}, Ljava/io/InputStreamReader;->close()V
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_53} :catch_59

    :cond_53
    :goto_53
    if-eqz v4, :cond_58

    :try_start_55
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_58} :catch_5b

    :cond_58
    :goto_58
    throw v11

    :catch_59
    move-exception v3

    goto :goto_53

    :catch_5b
    move-exception v3

    goto :goto_58

    :catchall_5d
    move-exception v11

    move-object v4, v5

    goto :goto_4e

    :catchall_60
    move-exception v11

    move-object v8, v9

    move-object v4, v5

    goto :goto_4e

    :catch_64
    move-exception v1

    move-object v4, v5

    goto :goto_3e

    :catch_67
    move-exception v1

    move-object v8, v9

    move-object v4, v5

    goto :goto_3e

    :catch_6b
    move-exception v2

    move-object v4, v5

    goto :goto_2e

    :catch_6e
    move-exception v2

    move-object v8, v9

    move-object v4, v5

    goto :goto_2e
.end method

.method public writedata(Ljava/lang/String;Lcom/samsung/android/settings/fmm/NVStore$datatype;)V
    .registers 15

    const-string/jumbo v6, ""

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/NVStore;->ReaddataFromNv()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/samsung/android/settings/fmm/NVStore;->mNvData:Ljava/lang/String;

    sget-object v9, Lcom/samsung/android/settings/fmm/NVStore$datatype;->PHPWD:Lcom/samsung/android/settings/fmm/NVStore$datatype;

    if-ne p2, v9, :cond_11a

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/NVStore;->GetMTStatus()Z

    move-result v9

    if-eqz v9, :cond_115

    const-string/jumbo v5, "1"

    :goto_17
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/NVStore;->GetSenderName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/NVStore;->GetRec1()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/NVStore;->GetRec2()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/NVStore;->GetRec3()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/NVStore;->GetRec4()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/NVStore;->GetRec5()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/NVStore;->GetSmsMsg()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/NVStore;->GetStoredIMSI()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/NVStore;->IsPhLockeEnabled()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/NVStore;->GetStoredIMSI2()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_d0
    iput-object v6, p0, Lcom/samsung/android/settings/fmm/NVStore;->mNvData:Ljava/lang/String;

    iget-object v9, p0, Lcom/samsung/android/settings/fmm/NVStore;->mContext:Landroid/content/Context;

    if-eqz v9, :cond_f9

    iget-object v9, p0, Lcom/samsung/android/settings/fmm/NVStore;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "mt_pwd"

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/NVStore;->GetPhPWD()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/NVStore;->GetMTStatus()Z

    move-result v9

    if-eqz v9, :cond_2c6

    iget-object v9, p0, Lcom/samsung/android/settings/fmm/NVStore;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "mt_state"

    const/4 v11, 0x1

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_f9
    :goto_f9
    :try_start_f9
    const-string/jumbo v4, "/efs/sec_efs/mobiletracker.txt"

    new-instance v8, Ljava/io/RandomAccessFile;

    const-string/jumbo v9, "rw"

    invoke-direct {v8, v4, v9}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_104
    .catch Ljava/io/FileNotFoundException; {:try_start_f9 .. :try_end_104} :catch_2ee
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_f9 .. :try_end_104} :catch_2e3
    .catch Ljava/io/IOException; {:try_start_f9 .. :try_end_104} :catch_2d8
    .catchall {:try_start_f9 .. :try_end_104} :catchall_2f9

    :try_start_104
    const-string/jumbo v9, "UTF-8"

    invoke-virtual {v6, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_10e
    .catch Ljava/io/FileNotFoundException; {:try_start_104 .. :try_end_10e} :catch_305
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_104 .. :try_end_10e} :catch_308
    .catch Ljava/io/IOException; {:try_start_104 .. :try_end_10e} :catch_30b
    .catchall {:try_start_104 .. :try_end_10e} :catchall_302

    if-eqz v8, :cond_113

    :try_start_110
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->close()V
    :try_end_113
    .catch Ljava/io/IOException; {:try_start_110 .. :try_end_113} :catch_2d5

    :cond_113
    :goto_113
    move-object v7, v8

    :cond_114
    :goto_114
    return-void

    :cond_115
    const-string/jumbo v5, "0"

    goto/16 :goto_17

    :cond_11a
    sget-object v9, Lcom/samsung/android/settings/fmm/NVStore$datatype;->PHLOCK_STATE:Lcom/samsung/android/settings/fmm/NVStore$datatype;

    if-ne p2, v9, :cond_1e7

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/NVStore;->GetMTStatus()Z

    move-result v9

    if-eqz v9, :cond_1e2

    const-string/jumbo v5, "1"

    :goto_127
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/NVStore;->GetPhPWD()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/NVStore;->GetSenderName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/NVStore;->GetRec1()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/NVStore;->GetRec2()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/NVStore;->GetRec3()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/NVStore;->GetRec4()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/NVStore;->GetRec5()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/NVStore;->GetSmsMsg()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/NVStore;->GetStoredIMSI()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/NVStore;->GetStoredIMSI2()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_d0

    :cond_1e2
    const-string/jumbo v5, "0"

    goto/16 :goto_127

    :cond_1e7
    sget-object v9, Lcom/samsung/android/settings/fmm/NVStore$datatype;->ENABLE_PHLOCK_FIRST:Lcom/samsung/android/settings/fmm/NVStore$datatype;

    if-ne p2, v9, :cond_2b3

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/NVStore;->GetMTStatus()Z

    move-result v9

    if-eqz v9, :cond_2ae

    const-string/jumbo v5, "1"

    :goto_1f4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/NVStore;->GetSenderName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/NVStore;->GetRec1()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/NVStore;->GetRec2()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/NVStore;->GetRec3()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/NVStore;->GetRec4()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/NVStore;->GetRec5()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/NVStore;->GetSmsMsg()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/NVStore;->GetStoredIMSI()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "1"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/NVStore;->GetStoredIMSI2()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_d0

    :cond_2ae
    const-string/jumbo v5, "0"

    goto/16 :goto_1f4

    :cond_2b3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_d0

    :cond_2c6
    iget-object v9, p0, Lcom/samsung/android/settings/fmm/NVStore;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "mt_state"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_f9

    :catch_2d5
    move-exception v3

    goto/16 :goto_113

    :catch_2d8
    move-exception v1

    :goto_2d9
    if-eqz v7, :cond_114

    :try_start_2db
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2de
    .catch Ljava/io/IOException; {:try_start_2db .. :try_end_2de} :catch_2e0

    goto/16 :goto_114

    :catch_2e0
    move-exception v3

    goto/16 :goto_114

    :catch_2e3
    move-exception v2

    :goto_2e4
    if-eqz v7, :cond_114

    :try_start_2e6
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2e9
    .catch Ljava/io/IOException; {:try_start_2e6 .. :try_end_2e9} :catch_2eb

    goto/16 :goto_114

    :catch_2eb
    move-exception v3

    goto/16 :goto_114

    :catch_2ee
    move-exception v0

    :goto_2ef
    if-eqz v7, :cond_114

    :try_start_2f1
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2f4
    .catch Ljava/io/IOException; {:try_start_2f1 .. :try_end_2f4} :catch_2f6

    goto/16 :goto_114

    :catch_2f6
    move-exception v3

    goto/16 :goto_114

    :catchall_2f9
    move-exception v9

    :goto_2fa
    if-eqz v7, :cond_2ff

    :try_start_2fc
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2ff
    .catch Ljava/io/IOException; {:try_start_2fc .. :try_end_2ff} :catch_300

    :cond_2ff
    :goto_2ff
    throw v9

    :catch_300
    move-exception v3

    goto :goto_2ff

    :catchall_302
    move-exception v9

    move-object v7, v8

    goto :goto_2fa

    :catch_305
    move-exception v0

    move-object v7, v8

    goto :goto_2ef

    :catch_308
    move-exception v2

    move-object v7, v8

    goto :goto_2e4

    :catch_30b
    move-exception v1

    move-object v7, v8

    goto :goto_2d9
.end method
