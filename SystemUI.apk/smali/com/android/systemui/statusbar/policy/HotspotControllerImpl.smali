.class public Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;
.super Ljava/lang/Object;
.source "HotspotControllerImpl.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/HotspotController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$AllowedDevice;,
        Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$OnStartTetheringCallback;,
        Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$Receiver;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field static currentMccMnc:Ljava/lang/String;

.field private static final mHotspotActionForSimStatus:Ljava/lang/String;


# instance fields
.field private final HOSTAPD_ACCEPT:Ljava/lang/String;

.field private final HOSTAPD_ACCEPT_BUFFER_SIZE:I

.field private mAllowedDeviceList:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$AllowedDevice;",
            ">;"
        }
    .end annotation
.end field

.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/policy/HotspotController$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private final mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private mHotspotState:I

.field private final mReceiver:Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$Receiver;

.field private mWaitingForCallback:Z

.field private final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static synthetic -get0()Z
    .registers 1

    sget-boolean v0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->DEBUG:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mHotspotActionForSimStatus:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;)I
    .registers 2

    iget v0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mHotspotState:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;I)I
    .registers 2

    iput p1, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mHotspotState:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mWaitingForCallback:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->fireCallback()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->fireCallback(Z)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->fireUpdateDevicesCallback(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    const-string/jumbo v0, "HotspotController"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->DEBUG:Z

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_Wifi_ConfigHotSpotActionForSimStatus"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mHotspotActionForSimStatus:Ljava/lang/String;

    const-string/jumbo v0, ""

    sput-object v0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->currentMccMnc:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$Receiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$Receiver;-><init>(Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$Receiver;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mReceiver:Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$Receiver;

    const-string/jumbo v0, "/data/misc/wifi_hostapd/hostapd.accept"

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->HOSTAPD_ACCEPT:Ljava/lang/String;

    const/16 v0, 0x40

    iput v0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->HOSTAPD_ACCEPT_BUFFER_SIZE:I

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-void
.end method

.method private fireCallback()V
    .registers 5

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mWaitingForCallback:Z

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_6
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/HotspotController$Callback;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/HotspotController$Callback;->onHotspotPrepared()V
    :try_end_1b
    .catchall {:try_start_6 .. :try_end_1b} :catchall_1c

    goto :goto_c

    :catchall_1c
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_1f
    monitor-exit v3

    return-void
.end method

.method private fireCallback(Z)V
    .registers 6

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mWaitingForCallback:Z

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_6
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/HotspotController$Callback;

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/policy/HotspotController$Callback;->onHotspotChanged(Z)V
    :try_end_1b
    .catchall {:try_start_6 .. :try_end_1b} :catchall_1c

    goto :goto_c

    :catchall_1c
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_1f
    monitor-exit v3

    return-void
.end method

.method private fireUpdateDevicesCallback(Z)V
    .registers 6

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/HotspotController$Callback;

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/policy/HotspotController$Callback;->onUpdateConnectedDevices(Z)V
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_19

    goto :goto_9

    :catchall_19
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_1c
    monitor-exit v3

    return-void
.end method

.method private getAllowedDeviceName(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mAllowedDeviceList:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$AllowedDevice;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$AllowedDevice;->getMac()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$AllowedDevice;->getName()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_21
    const/4 v2, 0x0

    return-object v2
.end method

.method private readAllowedDeviceListFile()V
    .registers 9

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mAllowedDeviceList:Ljava/util/Vector;

    if-nez v6, :cond_b

    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mAllowedDeviceList:Ljava/util/Vector;

    :cond_b
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mAllowedDeviceList:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->clear()V

    const/4 v0, 0x0

    :try_start_11
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    const-string/jumbo v7, "/data/misc/wifi_hostapd/hostapd.accept"

    invoke-direct {v6, v7}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v7, 0x40

    invoke-direct {v1, v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_20} :catch_70
    .catchall {:try_start_11 .. :try_end_20} :catchall_61

    :cond_20
    :goto_20
    :try_start_20
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_50

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string/jumbo v6, "#"

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_20

    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mAllowedDeviceList:Ljava/util/Vector;

    new-instance v7, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$AllowedDevice;

    invoke-direct {v7, v4, v5}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$AllowedDevice;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_44} :catch_45
    .catchall {:try_start_20 .. :try_end_44} :catchall_6d

    goto :goto_20

    :catch_45
    move-exception v3

    move-object v0, v1

    :goto_47
    :try_start_47
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4a
    .catchall {:try_start_47 .. :try_end_4a} :catchall_61

    if-eqz v0, :cond_4f

    :try_start_4c
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_4f} :catch_5c

    :cond_4f
    :goto_4f
    return-void

    :cond_50
    if-eqz v1, :cond_55

    :try_start_52
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_55} :catch_57

    :cond_55
    :goto_55
    move-object v0, v1

    goto :goto_4f

    :catch_57
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_55

    :catch_5c
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4f

    :catchall_61
    move-exception v6

    :goto_62
    if-eqz v0, :cond_67

    :try_start_64
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_67} :catch_68

    :cond_67
    :goto_67
    throw v6

    :catch_68
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_67

    :catchall_6d
    move-exception v6

    move-object v0, v1

    goto :goto_62

    :catch_70
    move-exception v3

    goto :goto_47
.end method

.method private static stateToString(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_1a

    const/4 v0, 0x0

    return-object v0

    :pswitch_5
    const-string/jumbo v0, "DISABLED"

    return-object v0

    :pswitch_9
    const-string/jumbo v0, "DISABLING"

    return-object v0

    :pswitch_d
    const-string/jumbo v0, "ENABLED"

    return-object v0

    :pswitch_11
    const-string/jumbo v0, "ENABLING"

    return-object v0

    :pswitch_15
    const-string/jumbo v0, "FAILED"

    return-object v0

    nop

    :pswitch_data_1a
    .packed-switch 0xa
        :pswitch_9
        :pswitch_5
        :pswitch_11
        :pswitch_d
        :pswitch_15
    .end packed-switch
.end method


# virtual methods
.method public addCallback(Lcom/android/systemui/statusbar/policy/HotspotController$Callback;)V
    .registers 6

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v1

    if-eqz p1, :cond_d

    :try_start_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_41

    move-result v0

    if-eqz v0, :cond_f

    :cond_d
    monitor-exit v1

    return-void

    :cond_f
    :try_start_f
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_2d

    const-string/jumbo v0, "HotspotController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "addCallback "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2d
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mReceiver:Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$Receiver;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$Receiver;->setListening(Z)V
    :try_end_3f
    .catchall {:try_start_f .. :try_end_3f} :catchall_41

    monitor-exit v1

    return-void

    :catchall_41
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public bridge synthetic addCallback(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/android/systemui/statusbar/policy/HotspotController$Callback;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->addCallback(Lcom/android/systemui/statusbar/policy/HotspotController$Callback;)V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5

    const-string/jumbo v0, "HotspotController state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "  mHotspotEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mHotspotState:I

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->stateToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getConnectedDeviceList()[Ljava/lang/String;
    .registers 21

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->isHotspotEnabled()Z

    move-result v17

    if-nez v17, :cond_9

    const/16 v17, 0x0

    return-object v17

    :cond_9
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiManager;->getWifiApStaList()Ljava/lang/String;

    move-result-object v14

    const/4 v6, 0x0

    if-eqz v14, :cond_11f

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v17

    div-int/lit8 v13, v17, 0x12

    sget-boolean v17, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->DEBUG:Z

    if-eqz v17, :cond_3d

    const-string/jumbo v17, "HotspotController"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "staList = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3d
    const-string/jumbo v17, "HotspotController"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "staList.length() = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, ",  num = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v13, :cond_11f

    new-array v6, v13, [Ljava/lang/String;

    const-string/jumbo v17, " "

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    array-length v0, v15

    move/from16 v16, v0

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->readAllowedDeviceListFile()V

    :try_start_7b
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v17, Ljava/io/FileReader;

    const-string/jumbo v18, "/data/misc/dhcp/dnsmasq.leases"

    invoke-direct/range {v17 .. v18}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v18, 0x2000

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v4, v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_8e
    .catch Ljava/io/IOException; {:try_start_7b .. :try_end_8e} :catch_15d
    .catch Ljava/lang/NumberFormatException; {:try_start_7b .. :try_end_8e} :catch_15f
    .catchall {:try_start_7b .. :try_end_8e} :catchall_14e

    :cond_8e
    :goto_8e
    :try_start_8e
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_13d

    const-string/jumbo v17, " "

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    const/4 v11, 0x0

    :goto_9e
    if-ge v11, v13, :cond_8e

    array-length v0, v8

    move/from16 v17, v0

    const/16 v18, 0x4

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_139

    const/16 v17, 0x0

    aget-object v17, v8, v17

    if-eqz v17, :cond_139

    const/16 v17, 0x1

    aget-object v17, v8, v17

    if-eqz v17, :cond_139

    const/16 v17, 0x2

    aget-object v17, v8, v17

    if-eqz v17, :cond_139

    const/16 v17, 0x3

    aget-object v17, v8, v17

    if-eqz v17, :cond_139

    move/from16 v0, v16

    if-ge v11, v0, :cond_139

    aget-object v17, v15, v11

    if-eqz v17, :cond_139

    const/16 v17, 0x1

    aget-object v17, v8, v17

    aget-object v18, v15, v11

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_139

    const/16 v17, 0x3

    aget-object v17, v8, v17

    const-string/jumbo v18, "*"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_120

    const-string/jumbo v7, "Connected device"

    :goto_e7
    aget-object v17, v15, v11

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->getAllowedDeviceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_125

    aput-object v2, v6, v11

    const-string/jumbo v17, "HotspotController"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "isContains allowedDeviceName = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_113
    .catch Ljava/io/IOException; {:try_start_8e .. :try_end_113} :catch_115
    .catch Ljava/lang/NumberFormatException; {:try_start_8e .. :try_end_113} :catch_129
    .catchall {:try_start_8e .. :try_end_113} :catchall_15a

    goto/16 :goto_8e

    :catch_115
    move-exception v9

    move-object v3, v4

    :goto_117
    :try_start_117
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V
    :try_end_11a
    .catchall {:try_start_117 .. :try_end_11a} :catchall_14e

    if-eqz v3, :cond_11f

    :try_start_11c
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_11f
    .catch Ljava/io/IOException; {:try_start_11c .. :try_end_11f} :catch_149

    :cond_11f
    :goto_11f
    return-object v6

    :cond_120
    const/16 v17, 0x3

    :try_start_122
    aget-object v7, v8, v17

    goto :goto_e7

    :cond_125
    aput-object v7, v6, v11
    :try_end_127
    .catch Ljava/io/IOException; {:try_start_122 .. :try_end_127} :catch_115
    .catch Ljava/lang/NumberFormatException; {:try_start_122 .. :try_end_127} :catch_129
    .catchall {:try_start_122 .. :try_end_127} :catchall_15a

    goto/16 :goto_8e

    :catch_129
    move-exception v10

    move-object v3, v4

    :goto_12b
    :try_start_12b
    invoke-virtual {v10}, Ljava/lang/NumberFormatException;->printStackTrace()V
    :try_end_12e
    .catchall {:try_start_12b .. :try_end_12e} :catchall_14e

    if-eqz v3, :cond_11f

    :try_start_130
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_133
    .catch Ljava/io/IOException; {:try_start_130 .. :try_end_133} :catch_134

    goto :goto_11f

    :catch_134
    move-exception v9

    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_11f

    :cond_139
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_9e

    :cond_13d
    if-eqz v4, :cond_142

    :try_start_13f
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_142
    .catch Ljava/io/IOException; {:try_start_13f .. :try_end_142} :catch_144

    :cond_142
    :goto_142
    move-object v3, v4

    goto :goto_11f

    :catch_144
    move-exception v9

    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_142

    :catch_149
    move-exception v9

    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_11f

    :catchall_14e
    move-exception v17

    :goto_14f
    if-eqz v3, :cond_154

    :try_start_151
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_154
    .catch Ljava/io/IOException; {:try_start_151 .. :try_end_154} :catch_155

    :cond_154
    :goto_154
    throw v17

    :catch_155
    move-exception v9

    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_154

    :catchall_15a
    move-exception v17

    move-object v3, v4

    goto :goto_14f

    :catch_15d
    move-exception v9

    goto :goto_117

    :catch_15f
    move-exception v10

    goto :goto_12b
.end method

.method public isHotspotEnabled()Z
    .registers 3

    iget v0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mHotspotState:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isHotspotSupported()Z
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->isTetheringSupported()Z

    move-result v1

    if-eqz v1, :cond_29

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-eqz v1, :cond_29

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->isUserAdmin(I)Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    if-nez v1, :cond_29

    const/4 v0, 0x1

    :cond_29
    return v0
.end method

.method public isHotspotTransient()Z
    .registers 4

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mWaitingForCallback:Z

    if-nez v1, :cond_b

    iget v1, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mHotspotState:I

    const/16 v2, 0xc

    if-ne v1, v2, :cond_c

    :cond_b
    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public removeCallback(Lcom/android/systemui/statusbar/policy/HotspotController$Callback;)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    :cond_3
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_21

    const-string/jumbo v0, "HotspotController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeCallback "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_24
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mReceiver:Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$Receiver;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$Receiver;->setListening(Z)V
    :try_end_36
    .catchall {:try_start_24 .. :try_end_36} :catchall_38

    monitor-exit v1

    return-void

    :catchall_38
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public bridge synthetic removeCallback(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/android/systemui/statusbar/policy/HotspotController$Callback;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->removeCallback(Lcom/android/systemui/statusbar/policy/HotspotController$Callback;)V

    return-void
.end method

.method public setHotspotEnabled(Z)V
    .registers 5

    const-string/jumbo v0, "HotspotController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setHotspotEnabled : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/net/wifi/WifiManager;->semSetWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    return-void
.end method
