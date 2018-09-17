.class public Lcom/samsung/android/settings/wifi/WifiConnectivityUtils;
.super Ljava/lang/Object;
.source "WifiConnectivityUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/wifi/WifiConnectivityUtils$1;
    }
.end annotation


# static fields
.field private static mServer:Ljava/net/InetAddress;

.field private static mUrl:Ljava/lang/String;

.field private static mWiFiActionListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private static mWifiNetwork:Landroid/net/Network;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/settings/wifi/WifiConnectivityUtils;->mWifiNetwork:Landroid/net/Network;

    new-instance v0, Lcom/samsung/android/settings/wifi/WifiConnectivityUtils$1;

    invoke-direct {v0}, Lcom/samsung/android/settings/wifi/WifiConnectivityUtils$1;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/wifi/WifiConnectivityUtils;->mWiFiActionListener:Landroid/net/wifi/WifiManager$ActionListener;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static forgetNetWork(Landroid/net/wifi/WifiManager;)V
    .registers 7

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_4d

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_4d

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    const-string/jumbo v3, "SetupWizard --> WifiConnectivityUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Forgetting Wi-Fi networks "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " NetworkId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    sget-object v4, Lcom/samsung/android/settings/wifi/WifiConnectivityUtils;->mWiFiActionListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {p0, v3, v4}, Landroid/net/wifi/WifiManager;->forget(ILandroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_10

    :cond_4d
    return-void
.end method

.method public static getWifiNetworkID(Landroid/net/wifi/WifiManager;)I
    .registers 3

    if-eqz p0, :cond_d

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v1

    return v1

    :cond_d
    const/4 v1, -0x1

    return v1
.end method

.method public static isCaptivePortalNetwork()Z
    .registers 8

    const/4 v7, 0x0

    const-string/jumbo v5, "SetupWizard --> WifiConnectivityUtils"

    const-string/jumbo v6, "Checking internet connection availibility..."

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Lcom/samsung/android/settings/wifi/WifiConnectivityUtils;->mServer:Ljava/net/InetAddress;

    if-nez v5, :cond_18

    const-string/jumbo v5, "SetupWizard --> WifiConnectivityUtils"

    const-string/jumbo v6, "mServer == null"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_18
    const/4 v4, 0x0

    const/4 v2, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "http://"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/wifi/WifiConnectivityUtils;->mServer:Ljava/net/InetAddress;

    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "/generate_204"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/samsung/android/settings/wifi/WifiConnectivityUtils;->mUrl:Ljava/lang/String;

    const-string/jumbo v5, "SetupWizard --> WifiConnectivityUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Checking connection : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/wifi/WifiConnectivityUtils;->mUrl:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_59
    new-instance v3, Ljava/net/URL;

    sget-object v5, Lcom/samsung/android/settings/wifi/WifiConnectivityUtils;->mUrl:Ljava/lang/String;

    invoke-direct {v3, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/samsung/android/settings/wifi/WifiConnectivityUtils;->mWifiNetwork:Landroid/net/Network;

    if-nez v5, :cond_dd

    const-string/jumbo v5, "SetupWizard --> WifiConnectivityUtils"

    const-string/jumbo v6, "Opening regular connection"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v4, v0

    :goto_75
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    const/16 v5, 0x1388

    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/16 v5, 0x1388

    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    const-string/jumbo v5, "SetupWizard --> WifiConnectivityUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Url connection response code: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_ab
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_ab} :catch_ff
    .catchall {:try_start_59 .. :try_end_ab} :catchall_124

    move-result v5

    const/16 v6, 0xcc

    if-eq v5, v6, :cond_f1

    const/4 v2, 0x1

    :goto_b1
    if-eqz v4, :cond_bd

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    :try_start_b6
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_bd
    .catch Ljava/io/IOException; {:try_start_b6 .. :try_end_bd} :catch_f3

    :cond_bd
    :goto_bd
    const-string/jumbo v6, "SetupWizard --> WifiConnectivityUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Internet connection "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz v2, :cond_13e

    const-string/jumbo v5, "NOT available"

    :goto_d1
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_dd
    :try_start_dd
    const-string/jumbo v5, "SetupWizard --> WifiConnectivityUtils"

    const-string/jumbo v6, "Opening network connection"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Lcom/samsung/android/settings/wifi/WifiConnectivityUtils;->mWifiNetwork:Landroid/net/Network;

    invoke-virtual {v5, v3}, Landroid/net/Network;->openConnection(Ljava/net/URL;)Ljava/net/URLConnection;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v4, v0
    :try_end_f0
    .catch Ljava/io/IOException; {:try_start_dd .. :try_end_f0} :catch_ff
    .catchall {:try_start_dd .. :try_end_f0} :catchall_124

    goto :goto_75

    :cond_f1
    const/4 v2, 0x0

    goto :goto_b1

    :catch_f3
    move-exception v1

    const-string/jumbo v5, "SetupWizard --> WifiConnectivityUtils"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_bd

    :catch_ff
    move-exception v1

    const/4 v2, 0x1

    :try_start_101
    const-string/jumbo v5, "SetupWizard --> WifiConnectivityUtils"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10b
    .catchall {:try_start_101 .. :try_end_10b} :catchall_124

    if-eqz v4, :cond_bd

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    :try_start_110
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_117
    .catch Ljava/io/IOException; {:try_start_110 .. :try_end_117} :catch_118

    goto :goto_bd

    :catch_118
    move-exception v1

    const-string/jumbo v5, "SetupWizard --> WifiConnectivityUtils"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_bd

    :catchall_124
    move-exception v5

    if-eqz v4, :cond_131

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    :try_start_12a
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_131
    .catch Ljava/io/IOException; {:try_start_12a .. :try_end_131} :catch_132

    :cond_131
    :goto_131
    throw v5

    :catch_132
    move-exception v1

    const-string/jumbo v6, "SetupWizard --> WifiConnectivityUtils"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_131

    :cond_13e
    const-string/jumbo v5, "available"

    goto :goto_d1
.end method

.method public static isConnWifi(Landroid/content/Context;)Z
    .registers 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string/jumbo v4, "connectivity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_20

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_20

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    if-ne v4, v2, :cond_1e

    :goto_1d
    return v2

    :cond_1e
    move v2, v3

    goto :goto_1d

    :cond_20
    const-string/jumbo v2, "SetupWizard --> WifiConnectivityUtils"

    const-string/jumbo v4, "wifi not available"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method public static isDataAvailable(Landroid/content/Context;)Z
    .registers 6

    const-string/jumbo v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_3f

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v2, v3, :cond_3f

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v2, v3, :cond_3f

    const-string/jumbo v2, "SetupWizard --> WifiConnectivityUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getTypeName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    return v2

    :cond_3f
    const-string/jumbo v2, "SetupWizard --> WifiConnectivityUtils"

    const-string/jumbo v3, "wifi/data not available"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return v2
.end method

.method public static isOnlyDreamqDevice()Z
    .registers 2

    const-string/jumbo v0, "dreamqltesq"

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isTabE8Device()Z
    .registers 2

    const-string/jumbo v0, "gtesltevzw"

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isTabEDevice()Z
    .registers 2

    const-string/jumbo v0, "gtelltevzw"

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isTabS2Device()Z
    .registers 2

    const-string/jumbo v0, "gts210ltevzw"

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isTabS2RefreshDevice()Z
    .registers 2

    const-string/jumbo v0, "gts210veltevzw"

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isTablet()Z
    .registers 1

    invoke-static {}, Lcom/samsung/android/settings/wifi/WifiConnectivityUtils;->isTabE8Device()Z

    move-result v0

    if-nez v0, :cond_17

    invoke-static {}, Lcom/samsung/android/settings/wifi/WifiConnectivityUtils;->isTabEDevice()Z

    move-result v0

    if-nez v0, :cond_17

    invoke-static {}, Lcom/samsung/android/settings/wifi/WifiConnectivityUtils;->isTabS2Device()Z

    move-result v0

    if-nez v0, :cond_17

    invoke-static {}, Lcom/samsung/android/settings/wifi/WifiConnectivityUtils;->isTabS2RefreshDevice()Z

    move-result v0

    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x1

    goto :goto_16
.end method

.method public static isWiFiConnectionAvailable(Landroid/content/Context;)Z
    .registers 13

    const/4 v11, 0x1

    const/4 v6, 0x0

    const/4 v8, 0x0

    const-string/jumbo v5, "SetupWizard --> WifiConnectivityUtils"

    const-string/jumbo v7, "Checking Wi-Fi network availibility..."

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v5, "connectivity"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-nez v0, :cond_21

    const-string/jumbo v5, "SetupWizard --> WifiConnectivityUtils"

    const-string/jumbo v7, "ConnectivityManager is null"

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_21
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object v4

    sput-object v8, Lcom/samsung/android/settings/wifi/WifiConnectivityUtils;->mWifiNetwork:Landroid/net/Network;

    array-length v7, v4

    move v5, v6

    :goto_29
    if-ge v5, v7, :cond_64

    aget-object v2, v4, v5

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v3

    const-string/jumbo v8, "SetupWizard --> WifiConnectivityUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "NetworkInfo: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_72

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v8

    if-ne v8, v11, :cond_72

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v8

    if-eqz v8, :cond_72

    const-string/jumbo v5, "SetupWizard --> WifiConnectivityUtils"

    const-string/jumbo v7, "Connected Wi-Fi network found"

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sput-object v2, Lcom/samsung/android/settings/wifi/WifiConnectivityUtils;->mWifiNetwork:Landroid/net/Network;

    :cond_64
    sget-object v5, Lcom/samsung/android/settings/wifi/WifiConnectivityUtils;->mWifiNetwork:Landroid/net/Network;

    if-nez v5, :cond_75

    const-string/jumbo v5, "SetupWizard --> WifiConnectivityUtils"

    const-string/jumbo v7, "No connected Wi-Fi network found"

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_72
    add-int/lit8 v5, v5, 0x1

    goto :goto_29

    :cond_75
    const-string/jumbo v5, "SetupWizard --> WifiConnectivityUtils"

    const-string/jumbo v7, "Checking host lookup..."

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v5, "connectivitycheck.android.com"

    invoke-static {v5}, Lcom/samsung/android/settings/wifi/WifiConnectivityUtils;->lookupHost(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v5

    sput-object v5, Lcom/samsung/android/settings/wifi/WifiConnectivityUtils;->mServer:Ljava/net/InetAddress;

    sget-object v5, Lcom/samsung/android/settings/wifi/WifiConnectivityUtils;->mServer:Ljava/net/InetAddress;

    if-eqz v5, :cond_9d

    sget-object v5, Lcom/samsung/android/settings/wifi/WifiConnectivityUtils;->mServer:Ljava/net/InetAddress;

    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_a7

    const-string/jumbo v5, "SetupWizard --> WifiConnectivityUtils"

    const-string/jumbo v7, "Host lookup failed. Invalid host address"

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_9d
    const-string/jumbo v5, "SetupWizard --> WifiConnectivityUtils"

    const-string/jumbo v7, "Host lookup failed. Unknown host"

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_a7
    const-string/jumbo v5, "SetupWizard --> WifiConnectivityUtils"

    const-string/jumbo v6, "Host lookup OK"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v11
.end method

.method private static lookupHost(Ljava/lang/String;)Ljava/net/InetAddress;
    .registers 8

    const/4 v6, 0x0

    :try_start_1
    sget-object v3, Lcom/samsung/android/settings/wifi/WifiConnectivityUtils;->mWifiNetwork:Landroid/net/Network;

    if-nez v3, :cond_14

    invoke-static {p0}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;
    :try_end_8
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_8} :catch_1b

    move-result-object v2

    :goto_9
    const/4 v3, 0x0

    array-length v4, v2

    :goto_b
    if-ge v3, v4, :cond_23

    aget-object v0, v2, v3

    instance-of v5, v0, Ljava/net/Inet4Address;

    if-eqz v5, :cond_20

    return-object v0

    :cond_14
    :try_start_14
    sget-object v3, Lcom/samsung/android/settings/wifi/WifiConnectivityUtils;->mWifiNetwork:Landroid/net/Network;

    invoke-virtual {v3, p0}, Landroid/net/Network;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;
    :try_end_19
    .catch Ljava/net/UnknownHostException; {:try_start_14 .. :try_end_19} :catch_1b

    move-result-object v2

    goto :goto_9

    :catch_1b
    move-exception v1

    invoke-virtual {v1}, Ljava/net/UnknownHostException;->printStackTrace()V

    return-object v6

    :cond_20
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_23
    return-object v6
.end method

.method public static setCustomTitle(Landroid/app/Activity;)V
    .registers 5

    invoke-static {}, Lcom/samsung/android/settings/wifi/WifiConnectivityUtils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v3, -0x7ffff400

    or-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :goto_1d
    return-void

    :cond_1e
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    or-int/lit16 v0, v0, 0x400

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_1d
.end method
