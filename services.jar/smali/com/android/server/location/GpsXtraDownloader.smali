.class public Lcom/android/server/location/GpsXtraDownloader;
.super Ljava/lang/Object;
.source "GpsXtraDownloader.java"


# static fields
.field private static final CONNECTION_TIMEOUT_MS:I

.field private static final DEBUG:Z

.field private static final DEFAULT_USER_AGENT:Ljava/lang/String; = "Android"

.field private static final MAXIMUM_CONTENT_LENGTH_BYTES:J = 0xf4240L

.field private static final TAG:Ljava/lang/String; = "GpsXtraDownloader"


# instance fields
.field private mNextServerIndex:I

.field private final mUserAgent:Ljava/lang/String;

.field private final mXtraServers:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-string/jumbo v0, "GpsXtraDownloader"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/location/GpsXtraDownloader;->DEBUG:Z

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1e

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    long-to-int v0, v0

    sput v0, Lcom/android/server/location/GpsXtraDownloader;->CONNECTION_TIMEOUT_MS:I

    return-void
.end method

.method constructor <init>(Ljava/util/Properties;)V
    .registers 12

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const-string/jumbo v7, "XTRA_SERVER_1"

    invoke-virtual {p1, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v7, "XTRA_SERVER_2"

    invoke-virtual {p1, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v7, "XTRA_SERVER_3"

    invoke-virtual {p1, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v4, :cond_1e

    const/4 v1, 0x1

    :cond_1e
    if-eqz v5, :cond_22

    add-int/lit8 v1, v1, 0x1

    :cond_22
    if-eqz v6, :cond_26

    add-int/lit8 v1, v1, 0x1

    :cond_26
    const-string/jumbo v7, "XTRA_USER_AGENT"

    invoke-virtual {p1, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_46

    const-string/jumbo v7, "Android"

    iput-object v7, p0, Lcom/android/server/location/GpsXtraDownloader;->mUserAgent:Ljava/lang/String;

    :goto_38
    if-nez v1, :cond_49

    const-string/jumbo v7, "GpsXtraDownloader"

    const-string/jumbo v8, "No XTRA servers were specified in the GPS configuration"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v9, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    :goto_45
    return-void

    :cond_46
    iput-object v0, p0, Lcom/android/server/location/GpsXtraDownloader;->mUserAgent:Ljava/lang/String;

    goto :goto_38

    :cond_49
    new-array v7, v1, [Ljava/lang/String;

    iput-object v7, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v4, :cond_75

    iget-object v7, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    const/4 v1, 0x1

    aput-object v4, v7, v8

    move v2, v1

    :goto_56
    if-eqz v5, :cond_5f

    iget-object v7, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    add-int/lit8 v1, v2, 0x1

    aput-object v5, v7, v2

    move v2, v1

    :cond_5f
    if-eqz v6, :cond_73

    iget-object v7, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    add-int/lit8 v1, v2, 0x1

    aput-object v6, v7, v2

    :goto_67
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    invoke-virtual {v3, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    iput v7, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    goto :goto_45

    :cond_73
    move v1, v2

    goto :goto_67

    :cond_75
    move v2, v1

    goto :goto_56
.end method


# virtual methods
.method protected doDownload(Ljava/lang/String;)[B
    .registers 19

    sget-boolean v10, Lcom/android/server/location/GpsXtraDownloader;->DEBUG:Z

    if-eqz v10, :cond_20

    const-string/jumbo v10, "GpsXtraDownloader"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Downloading XTRA data from "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    const/4 v4, 0x0

    :try_start_21
    new-instance v10, Ljava/net/URL;

    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v4, v0

    const-string/jumbo v10, "Accept"

    const-string/jumbo v11, "*/*, application/vnd.wap.mms-message, application/vnd.wap.sic"

    invoke-virtual {v4, v10, v11}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v10, "x-wap-profile"

    const-string/jumbo v11, "http://www.openmobilealliance.org/tech/profiles/UAPROF/ccppschema-20021212#"

    invoke-virtual {v4, v10, v11}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    sget v10, Lcom/android/server/location/GpsXtraDownloader;->CONNECTION_TIMEOUT_MS:I

    invoke-virtual {v4, v10}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    sget v10, Lcom/android/server/location/GpsXtraDownloader;->CONNECTION_TIMEOUT_MS:I

    invoke-virtual {v4, v10}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v9

    const/16 v10, 0xc8

    if-eq v9, v10, :cond_7c

    sget-boolean v10, Lcom/android/server/location/GpsXtraDownloader;->DEBUG:Z

    if-eqz v10, :cond_75

    const-string/jumbo v10, "GpsXtraDownloader"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "HTTP error downloading gps XTRA: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_75
    .catch Ljava/net/SocketTimeoutException; {:try_start_21 .. :try_end_75} :catch_b7
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_75} :catch_e1
    .catchall {:try_start_21 .. :try_end_75} :catchall_10d

    :cond_75
    const/4 v10, 0x0

    if-eqz v4, :cond_7b

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_7b
    return-object v10

    :cond_7c
    const/4 v11, 0x0

    const/4 v7, 0x0

    :try_start_7e
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v10, 0x400

    new-array v2, v10, [B

    :cond_8b
    invoke-virtual {v7, v2}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v10, -0x1

    if-eq v5, v10, :cond_d5

    const/4 v10, 0x0

    invoke-virtual {v3, v2, v10, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v10

    int-to-long v12, v10

    const-wide/32 v14, 0xf4240

    cmp-long v10, v12, v14

    if-lez v10, :cond_8b

    sget-boolean v10, Lcom/android/server/location/GpsXtraDownloader;->DEBUG:Z

    if-eqz v10, :cond_af

    const-string/jumbo v10, "GpsXtraDownloader"

    const-string/jumbo v12, "XTRA file too large"

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_af
    .catch Ljava/lang/Throwable; {:try_start_7e .. :try_end_af} :catch_fd
    .catchall {:try_start_7e .. :try_end_af} :catchall_120

    :cond_af
    if-eqz v7, :cond_b4

    :try_start_b1
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_b4
    .catch Ljava/lang/Throwable; {:try_start_b1 .. :try_end_b4} :catch_cc
    .catch Ljava/net/SocketTimeoutException; {:try_start_b1 .. :try_end_b4} :catch_b7
    .catch Ljava/io/IOException; {:try_start_b1 .. :try_end_b4} :catch_e1
    .catchall {:try_start_b1 .. :try_end_b4} :catchall_10d

    :cond_b4
    :goto_b4
    if-eqz v11, :cond_ce

    :try_start_b6
    throw v11
    :try_end_b7
    .catch Ljava/net/SocketTimeoutException; {:try_start_b6 .. :try_end_b7} :catch_b7
    .catch Ljava/io/IOException; {:try_start_b6 .. :try_end_b7} :catch_e1
    .catchall {:try_start_b6 .. :try_end_b7} :catchall_10d

    :catch_b7
    move-exception v6

    :try_start_b8
    sget-boolean v10, Lcom/android/server/location/GpsXtraDownloader;->DEBUG:Z

    if-eqz v10, :cond_c5

    const-string/jumbo v10, "GpsXtraDownloader"

    const-string/jumbo v11, "Error downloading gps XTRA: "

    invoke-static {v10, v11, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c5
    .catchall {:try_start_b8 .. :try_end_c5} :catchall_10d

    :cond_c5
    if-eqz v4, :cond_ca

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_ca
    :goto_ca
    const/4 v10, 0x0

    return-object v10

    :catch_cc
    move-exception v11

    goto :goto_b4

    :cond_ce
    const/4 v10, 0x0

    if-eqz v4, :cond_d4

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_d4
    return-object v10

    :cond_d5
    :try_start_d5
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_d8
    .catch Ljava/lang/Throwable; {:try_start_d5 .. :try_end_d8} :catch_fd
    .catchall {:try_start_d5 .. :try_end_d8} :catchall_120

    move-result-object v10

    if-eqz v7, :cond_de

    :try_start_db
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_de
    .catch Ljava/lang/Throwable; {:try_start_db .. :try_end_de} :catch_f5
    .catch Ljava/net/SocketTimeoutException; {:try_start_db .. :try_end_de} :catch_b7
    .catch Ljava/io/IOException; {:try_start_db .. :try_end_de} :catch_e1
    .catchall {:try_start_db .. :try_end_de} :catchall_10d

    :cond_de
    :goto_de
    if-eqz v11, :cond_f7

    :try_start_e0
    throw v11
    :try_end_e1
    .catch Ljava/net/SocketTimeoutException; {:try_start_e0 .. :try_end_e1} :catch_b7
    .catch Ljava/io/IOException; {:try_start_e0 .. :try_end_e1} :catch_e1
    .catchall {:try_start_e0 .. :try_end_e1} :catchall_10d

    :catch_e1
    move-exception v8

    :try_start_e2
    sget-boolean v10, Lcom/android/server/location/GpsXtraDownloader;->DEBUG:Z

    if-eqz v10, :cond_ef

    const-string/jumbo v10, "GpsXtraDownloader"

    const-string/jumbo v11, "Error downloading gps XTRA: "

    invoke-static {v10, v11, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_ef
    .catchall {:try_start_e2 .. :try_end_ef} :catchall_10d

    :cond_ef
    if-eqz v4, :cond_ca

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_ca

    :catch_f5
    move-exception v11

    goto :goto_de

    :cond_f7
    if-eqz v4, :cond_fc

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_fc
    return-object v10

    :catch_fd
    move-exception v10

    :try_start_fe
    throw v10
    :try_end_ff
    .catchall {:try_start_fe .. :try_end_ff} :catchall_ff

    :catchall_ff
    move-exception v11

    move-object/from16 v16, v11

    move-object v11, v10

    move-object/from16 v10, v16

    :goto_105
    if-eqz v7, :cond_10a

    :try_start_107
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_10a
    .catch Ljava/lang/Throwable; {:try_start_107 .. :try_end_10a} :catch_114
    .catch Ljava/net/SocketTimeoutException; {:try_start_107 .. :try_end_10a} :catch_b7
    .catch Ljava/io/IOException; {:try_start_107 .. :try_end_10a} :catch_e1
    .catchall {:try_start_107 .. :try_end_10a} :catchall_10d

    :cond_10a
    :goto_10a
    if-eqz v11, :cond_11f

    :try_start_10c
    throw v11
    :try_end_10d
    .catch Ljava/net/SocketTimeoutException; {:try_start_10c .. :try_end_10d} :catch_b7
    .catch Ljava/io/IOException; {:try_start_10c .. :try_end_10d} :catch_e1
    .catchall {:try_start_10c .. :try_end_10d} :catchall_10d

    :catchall_10d
    move-exception v10

    if-eqz v4, :cond_113

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_113
    throw v10

    :catch_114
    move-exception v12

    if-nez v11, :cond_119

    move-object v11, v12

    goto :goto_10a

    :cond_119
    if-eq v11, v12, :cond_10a

    :try_start_11b
    invoke-virtual {v11, v12}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_10a

    :cond_11f
    throw v10
    :try_end_120
    .catch Ljava/net/SocketTimeoutException; {:try_start_11b .. :try_end_120} :catch_b7
    .catch Ljava/io/IOException; {:try_start_11b .. :try_end_120} :catch_e1
    .catchall {:try_start_11b .. :try_end_120} :catchall_10d

    :catchall_120
    move-exception v10

    goto :goto_105
.end method

.method downloadXtraData()[B
    .registers 6

    const/4 v4, 0x0

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    iget-object v3, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    if-nez v3, :cond_9

    return-object v4

    :cond_9
    if-nez v1, :cond_32

    const/16 v3, -0xf7

    invoke-static {v3}, Landroid/net/TrafficStats;->getAndSetThreadStatsTag(I)I

    move-result v0

    :try_start_11
    iget-object v3, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    iget v4, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    aget-object v3, v3, v4

    invoke-virtual {p0, v3}, Lcom/android/server/location/GpsXtraDownloader;->doDownload(Ljava/lang/String;)[B
    :try_end_1a
    .catchall {:try_start_11 .. :try_end_1a} :catchall_33

    move-result-object v1

    invoke-static {v0}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    iget v3, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    iget v3, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    iget-object v4, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    array-length v4, v4

    if-ne v3, v4, :cond_2e

    const/4 v3, 0x0

    iput v3, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    :cond_2e
    iget v3, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    if-ne v3, v2, :cond_9

    :cond_32
    return-object v1

    :catchall_33
    move-exception v3

    invoke-static {v0}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    throw v3
.end method
