.class public Lcom/android/server/usb/SemUsbBackend;
.super Ljava/lang/Object;
.source "SemUsbBackend.java"


# static fields
.field private static final MPS_CODE_PATH:Ljava/lang/String; = "/efs/imei/mps_code.dat"

.field private static final SALES_CODE_PATH:Ljava/lang/String; = "/system/csc/sales_code.dat"

.field private static final TAG:Ljava/lang/String; = "SemUsbBackend"

.field private static final USB_PERSISTENT_DUALROLE_PROPERTY:Ljava/lang/String; = "persist.sys.usb.dualrole"

.field private static mContext:Landroid/content/Context;


# instance fields
.field private mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

.field private mIsUnlocked:Z

.field private mPort:Landroid/hardware/usb/UsbPort;

.field private mPortManager:Lcom/android/server/usb/UsbPortManager;

.field private mPortStatus:Landroid/hardware/usb/UsbPortStatus;

.field private final mRestricted:Z

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/usb/UsbPortManager;Lcom/android/server/usb/UsbDeviceManager;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p1, Lcom/android/server/usb/SemUsbBackend;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.hardware.usb.action.USB_STATE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "unlocked"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/usb/SemUsbBackend;->mIsUnlocked:Z

    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/usb/SemUsbBackend;->mUserManager:Landroid/os/UserManager;

    iget-object v1, p0, Lcom/android/server/usb/SemUsbBackend;->mUserManager:Landroid/os/UserManager;

    const-string/jumbo v2, "no_usb_file_transfer"

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/usb/SemUsbBackend;->mRestricted:Z

    iput-object p2, p0, Lcom/android/server/usb/SemUsbBackend;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    iput-object p3, p0, Lcom/android/server/usb/SemUsbBackend;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {p0}, Lcom/android/server/usb/SemUsbBackend;->updateUsbPort()V

    return-void
.end method

.method private modeToPower(I)I
    .registers 4

    const/4 v0, 0x1

    and-int/lit8 v1, p1, 0x1

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x2

    goto :goto_5
.end method

.method private setUsbFunction(I)V
    .registers 5

    const-string/jumbo v0, "SemUsbBackend"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "USB connection setUsbFunction : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p1, :pswitch_data_8a

    :pswitch_1d
    const-string/jumbo v0, "SemUsbBackend"

    const-string/jumbo v1, "USB connection setUsbFunction :  + UsbManager.USB_FUNCTION_SEC_CHARGING"

    invoke-static {v0, v1}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/usb/SemUsbBackend;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    const-string/jumbo v1, "sec_charging"

    invoke-virtual {v0, v1}, Lcom/android/server/usb/UsbDeviceManager;->setCurrentFunctions(Ljava/lang/String;)V

    :goto_2e
    return-void

    :pswitch_2f
    const-string/jumbo v0, "SemUsbBackend"

    const-string/jumbo v1, "USB connection setUsbFunction : + UsbManager.USB_FUNCTION_MTP"

    invoke-static {v0, v1}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/usb/SemUsbBackend;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    const-string/jumbo v1, "mtp"

    invoke-virtual {v0, v1}, Lcom/android/server/usb/UsbDeviceManager;->setCurrentFunctions(Ljava/lang/String;)V

    goto :goto_2e

    :pswitch_41
    const-string/jumbo v0, "SemUsbBackend"

    const-string/jumbo v1, "USB connection setUsbFunction :  + UsbManager.USB_FUNCTION_PTP"

    invoke-static {v0, v1}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/usb/SemUsbBackend;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    const-string/jumbo v1, "ptp"

    invoke-virtual {v0, v1}, Lcom/android/server/usb/UsbDeviceManager;->setCurrentFunctions(Ljava/lang/String;)V

    goto :goto_2e

    :pswitch_53
    const-string/jumbo v0, "SemUsbBackend"

    const-string/jumbo v1, "USB connection setUsbFunction :  + UsbManager.USB_FUNCTION_MIDI"

    invoke-static {v0, v1}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/usb/SemUsbBackend;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    const-string/jumbo v1, "midi"

    invoke-virtual {v0, v1}, Lcom/android/server/usb/UsbDeviceManager;->setCurrentFunctions(Ljava/lang/String;)V

    goto :goto_2e

    :pswitch_65
    const-string/jumbo v0, "SemUsbBackend"

    const-string/jumbo v1, "USB connection setUsbFunction :  + UsbManager.USB_FUNCTION_MASS_STORAGE"

    invoke-static {v0, v1}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/usb/SemUsbBackend;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    const-string/jumbo v1, "mass_storage"

    invoke-virtual {v0, v1}, Lcom/android/server/usb/UsbDeviceManager;->setCurrentFunctions(Ljava/lang/String;)V

    goto :goto_2e

    :pswitch_77
    const-string/jumbo v0, "SemUsbBackend"

    const-string/jumbo v1, "USB connection setUsbFunction :  + UsbManager.USB_FUNCTION_MTP_GADGET"

    invoke-static {v0, v1}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/usb/SemUsbBackend;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    const-string/jumbo v1, "mtp,conn_gadget"

    invoke-virtual {v0, v1}, Lcom/android/server/usb/UsbDeviceManager;->setCurrentFunctions(Ljava/lang/String;)V

    goto :goto_2e

    nop

    :pswitch_data_8a
    .packed-switch 0x2
        :pswitch_2f
        :pswitch_1d
        :pswitch_41
        :pswitch_1d
        :pswitch_53
        :pswitch_1d
        :pswitch_65
        :pswitch_1d
        :pswitch_77
    .end packed-switch
.end method


# virtual methods
.method public getCurrentMode()I
    .registers 4

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/server/usb/SemUsbBackend;->mPort:Landroid/hardware/usb/UsbPort;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/server/usb/SemUsbBackend;->mPortStatus:Landroid/hardware/usb/UsbPortStatus;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbPortStatus;->getCurrentPowerRole()I

    move-result v0

    if-ne v0, v2, :cond_17

    const-string/jumbo v0, "SemUsbBackend"

    const-string/jumbo v1, "USB connection getCurrentMode : 1"

    invoke-static {v0, v1}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_17
    const-string/jumbo v0, "SemUsbBackend"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "USB connection getCurrentMode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/usb/SemUsbBackend;->getUsbDataMode()I

    move-result v2

    or-int/lit8 v2, v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/usb/SemUsbBackend;->getUsbDataMode()I

    move-result v0

    or-int/lit8 v0, v0, 0x0

    return v0
.end method

.method public getSalesCode()Ljava/lang/String;
    .registers 15

    const-string/jumbo v8, "null"

    const/4 v4, 0x0

    const/4 v0, 0x0

    :try_start_5
    new-instance v7, Ljava/io/File;

    const-string/jumbo v10, "/efs/imei/mps_code.dat"

    invoke-direct {v7, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v9, Ljava/io/File;

    const-string/jumbo v10, "/system/csc/sales_code.dat"

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_42

    const-string/jumbo v10, "SemUsbBackend"

    const-string/jumbo v11, "mps exists"

    invoke-static {v10, v11}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Ljava/io/FileReader;

    const-string/jumbo v10, "/efs/imei/mps_code.dat"

    invoke-direct {v5, v10}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_2c
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_2c} :catch_6f
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_2c} :catch_da
    .catchall {:try_start_5 .. :try_end_2c} :catchall_126

    :try_start_2c
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_31
    .catch Ljava/io/FileNotFoundException; {:try_start_2c .. :try_end_31} :catch_159
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_31} :catch_162
    .catchall {:try_start_2c .. :try_end_31} :catchall_152

    :try_start_31
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_34
    .catch Ljava/io/FileNotFoundException; {:try_start_31 .. :try_end_34} :catch_15d
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_34} :catch_166
    .catchall {:try_start_31 .. :try_end_34} :catchall_155

    move-result-object v8

    move-object v0, v1

    move-object v4, v5

    :goto_37
    if-eqz v4, :cond_3c

    :try_start_39
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V

    :cond_3c
    if-eqz v0, :cond_41

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_41} :catch_b9

    :cond_41
    :goto_41
    return-object v8

    :cond_42
    :try_start_42
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_65

    const-string/jumbo v10, "SemUsbBackend"

    const-string/jumbo v11, "sales_code exists"

    invoke-static {v10, v11}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Ljava/io/FileReader;

    const-string/jumbo v10, "/system/csc/sales_code.dat"

    invoke-direct {v5, v10}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_59
    .catch Ljava/io/FileNotFoundException; {:try_start_42 .. :try_end_59} :catch_6f
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_59} :catch_da
    .catchall {:try_start_42 .. :try_end_59} :catchall_126

    :try_start_59
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_5e
    .catch Ljava/io/FileNotFoundException; {:try_start_59 .. :try_end_5e} :catch_159
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_5e} :catch_162
    .catchall {:try_start_59 .. :try_end_5e} :catchall_152

    :try_start_5e
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_61
    .catch Ljava/io/FileNotFoundException; {:try_start_5e .. :try_end_61} :catch_15d
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_61} :catch_166
    .catchall {:try_start_5e .. :try_end_61} :catchall_155

    move-result-object v8

    move-object v0, v1

    move-object v4, v5

    goto :goto_37

    :cond_65
    :try_start_65
    const-string/jumbo v10, "SemUsbBackend"

    const-string/jumbo v11, "Both dat does not exist"

    invoke-static {v10, v11}, Lcom/android/server/utils/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6e
    .catch Ljava/io/FileNotFoundException; {:try_start_65 .. :try_end_6e} :catch_6f
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_6e} :catch_da
    .catchall {:try_start_65 .. :try_end_6e} :catchall_126

    goto :goto_37

    :catch_6f
    move-exception v2

    :goto_70
    :try_start_70
    const-string/jumbo v10, "SemUsbBackend"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "File not Found exception: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/utils/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8e
    .catchall {:try_start_70 .. :try_end_8e} :catchall_126

    if-eqz v4, :cond_93

    :try_start_90
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V

    :cond_93
    if-eqz v0, :cond_41

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_98
    .catch Ljava/io/IOException; {:try_start_90 .. :try_end_98} :catch_99

    goto :goto_41

    :catch_99
    move-exception v6

    const-string/jumbo v10, "SemUsbBackend"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "IOException(iex): "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/utils/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_41

    :catch_b9
    move-exception v6

    const-string/jumbo v10, "SemUsbBackend"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "IOException(iex): "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/utils/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_41

    :catch_da
    move-exception v3

    :goto_db
    :try_start_db
    const-string/jumbo v10, "SemUsbBackend"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "IOException: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/utils/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f9
    .catchall {:try_start_db .. :try_end_f9} :catchall_126

    if-eqz v4, :cond_fe

    :try_start_fb
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V

    :cond_fe
    if-eqz v0, :cond_41

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_103
    .catch Ljava/io/IOException; {:try_start_fb .. :try_end_103} :catch_105

    goto/16 :goto_41

    :catch_105
    move-exception v6

    const-string/jumbo v10, "SemUsbBackend"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "IOException(iex): "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/utils/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_41

    :catchall_126
    move-exception v10

    :goto_127
    if-eqz v4, :cond_12c

    :try_start_129
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V

    :cond_12c
    if-eqz v0, :cond_131

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_131
    .catch Ljava/io/IOException; {:try_start_129 .. :try_end_131} :catch_132

    :cond_131
    :goto_131
    throw v10

    :catch_132
    move-exception v6

    const-string/jumbo v11, "SemUsbBackend"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "IOException(iex): "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/server/utils/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_131

    :catchall_152
    move-exception v10

    move-object v4, v5

    goto :goto_127

    :catchall_155
    move-exception v10

    move-object v0, v1

    move-object v4, v5

    goto :goto_127

    :catch_159
    move-exception v2

    move-object v4, v5

    goto/16 :goto_70

    :catch_15d
    move-exception v2

    move-object v0, v1

    move-object v4, v5

    goto/16 :goto_70

    :catch_162
    move-exception v3

    move-object v4, v5

    goto/16 :goto_db

    :catch_166
    move-exception v3

    move-object v0, v1

    move-object v4, v5

    goto/16 :goto_db
.end method

.method public getSupportedPowerRole()I
    .registers 2

    iget-object v0, p0, Lcom/android/server/usb/SemUsbBackend;->mPortStatus:Landroid/hardware/usb/UsbPortStatus;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/server/usb/SemUsbBackend;->mPortStatus:Landroid/hardware/usb/UsbPortStatus;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbPortStatus;->getCurrentPowerRole()I

    move-result v0

    return v0

    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public getUsbDataMode()I
    .registers 4

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/android/server/usb/SemUsbBackend;->mIsUnlocked:Z

    if-nez v0, :cond_f

    const-string/jumbo v0, "SemUsbBackend"

    const-string/jumbo v1, "USB connection getUsbDataMode : None"

    invoke-static {v0, v1}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_f
    iget-object v0, p0, Lcom/android/server/usb/SemUsbBackend;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    const-string/jumbo v1, "mtp"

    invoke-virtual {v0, v1}, Lcom/android/server/usb/UsbDeviceManager;->isFunctionEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    const-string/jumbo v0, "SemUsbBackend"

    const-string/jumbo v1, "USB connection getUsbDataMode : mtp"

    invoke-static {v0, v1}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    return v0

    :cond_25
    iget-object v0, p0, Lcom/android/server/usb/SemUsbBackend;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    const-string/jumbo v1, "ptp"

    invoke-virtual {v0, v1}, Lcom/android/server/usb/UsbDeviceManager;->isFunctionEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3b

    const-string/jumbo v0, "SemUsbBackend"

    const-string/jumbo v1, "USB connection getUsbDataMode : ptp"

    invoke-static {v0, v1}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x4

    return v0

    :cond_3b
    iget-object v0, p0, Lcom/android/server/usb/SemUsbBackend;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    const-string/jumbo v1, "midi"

    invoke-virtual {v0, v1}, Lcom/android/server/usb/UsbDeviceManager;->isFunctionEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_51

    const-string/jumbo v0, "SemUsbBackend"

    const-string/jumbo v1, "USB connection getUsbDataMode : midi"

    invoke-static {v0, v1}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x6

    return v0

    :cond_51
    iget-object v0, p0, Lcom/android/server/usb/SemUsbBackend;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    const-string/jumbo v1, "mass_storage"

    invoke-virtual {v0, v1}, Lcom/android/server/usb/UsbDeviceManager;->isFunctionEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_68

    const-string/jumbo v0, "SemUsbBackend"

    const-string/jumbo v1, "USB connection getUsbDataMode : mass_storage"

    invoke-static {v0, v1}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x8

    return v0

    :cond_68
    iget-object v0, p0, Lcom/android/server/usb/SemUsbBackend;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    const-string/jumbo v1, "sec_charging"

    invoke-virtual {v0, v1}, Lcom/android/server/usb/UsbDeviceManager;->isFunctionEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7d

    const-string/jumbo v0, "SemUsbBackend"

    const-string/jumbo v1, "USB connection getUsbDataMode : sec_charging"

    invoke-static {v0, v1}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_7d
    iget-object v0, p0, Lcom/android/server/usb/SemUsbBackend;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    const-string/jumbo v1, "mtp,conn_gadget"

    invoke-virtual {v0, v1}, Lcom/android/server/usb/UsbDeviceManager;->isFunctionEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_94

    const-string/jumbo v0, "SemUsbBackend"

    const-string/jumbo v1, "USB connection getUsbDataMode : mtp,conn_gadget"

    invoke-static {v0, v1}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xa

    return v0

    :cond_94
    return v2
.end method

.method public isModeSupported(I)Z
    .registers 10

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string/jumbo v2, "SemUsbBackend"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isModeSupported - mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/android/server/usb/SemUsbBackend;->mRestricted:Z

    if-eqz v2, :cond_2c

    and-int/lit8 v2, p1, 0xe

    if-eqz v2, :cond_2c

    and-int/lit8 v2, p1, 0xe

    const/4 v3, 0x6

    if-eq v2, v3, :cond_2c

    return v5

    :cond_2c
    const-string/jumbo v2, "SemUsbBackend"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isModeSupported - mPort : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/usb/SemUsbBackend;->mPort:Landroid/hardware/usb/UsbPort;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/usb/SemUsbBackend;->mPort:Landroid/hardware/usb/UsbPort;

    if-eqz v2, :cond_ba

    invoke-direct {p0, p1}, Lcom/android/server/usb/SemUsbBackend;->modeToPower(I)I

    move-result v0

    const-string/jumbo v2, "SemUsbBackend"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isModeSupported - power : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    and-int/lit8 v2, p1, 0xe

    if-eqz v2, :cond_8f

    iget-object v2, p0, Lcom/android/server/usb/SemUsbBackend;->mPortStatus:Landroid/hardware/usb/UsbPortStatus;

    invoke-virtual {v2, v0, v7}, Landroid/hardware/usb/UsbPortStatus;->isRoleCombinationSupported(II)Z

    move-result v1

    const-string/jumbo v2, "SemUsbBackend"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "We have a port and data, need to be in device mode :  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_8f
    iget-object v2, p0, Lcom/android/server/usb/SemUsbBackend;->mPortStatus:Landroid/hardware/usb/UsbPortStatus;

    invoke-virtual {v2, v0, v7}, Landroid/hardware/usb/UsbPortStatus;->isRoleCombinationSupported(II)Z

    move-result v2

    if-nez v2, :cond_b8

    iget-object v2, p0, Lcom/android/server/usb/SemUsbBackend;->mPortStatus:Landroid/hardware/usb/UsbPortStatus;

    invoke-virtual {v2, v0, v6}, Landroid/hardware/usb/UsbPortStatus;->isRoleCombinationSupported(II)Z

    move-result v1

    :goto_9d
    const-string/jumbo v2, "SemUsbBackend"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "No data needed, we can do this power mode in either device or host. : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_b8
    const/4 v1, 0x1

    goto :goto_9d

    :cond_ba
    and-int/lit8 v2, p1, 0x1

    if-eq v2, v6, :cond_da

    const/4 v1, 0x1

    :goto_bf
    const-string/jumbo v2, "SemUsbBackend"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "No port, support sink modes only : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_da
    const/4 v1, 0x0

    goto :goto_bf
.end method

.method public isSupportPowerRole()Z
    .registers 3

    const-string/jumbo v0, "true"

    const-string/jumbo v1, "persist.sys.usb.dualrole"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    return v0

    :cond_12
    const/4 v0, 0x0

    return v0
.end method

.method public setMode(I)V
    .registers 9

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/server/usb/SemUsbBackend;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    if-eqz v2, :cond_76

    iget-object v2, p0, Lcom/android/server/usb/SemUsbBackend;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v2}, Lcom/android/server/usb/UsbDeviceManager;->rmSetNextUsbModeToDefault()V

    :goto_d
    iget-object v2, p0, Lcom/android/server/usb/SemUsbBackend;->mPort:Landroid/hardware/usb/UsbPort;

    if-eqz v2, :cond_52

    invoke-direct {p0, p1}, Lcom/android/server/usb/SemUsbBackend;->modeToPower(I)I

    move-result v1

    and-int/lit8 v2, p1, 0xe

    if-nez v2, :cond_80

    iget-object v2, p0, Lcom/android/server/usb/SemUsbBackend;->mPortStatus:Landroid/hardware/usb/UsbPortStatus;

    invoke-virtual {v2, v1, v5}, Landroid/hardware/usb/UsbPortStatus;->isRoleCombinationSupported(II)Z

    move-result v2

    if-eqz v2, :cond_80

    const/4 v0, 0x1

    :goto_22
    const-string/jumbo v2, "SemUsbBackend"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setMode : powerRole - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " /dataRole - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/usb/SemUsbBackend;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    iget-object v3, p0, Lcom/android/server/usb/SemUsbBackend;->mPort:Landroid/hardware/usb/UsbPort;

    invoke-virtual {v3}, Landroid/hardware/usb/UsbPort;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1, v0, v6}, Lcom/android/server/usb/UsbPortManager;->setPortRoles(Ljava/lang/String;IILcom/android/internal/util/IndentingPrintWriter;)V

    :cond_52
    if-ne v1, v5, :cond_56

    if-eq v0, v5, :cond_82

    :cond_56
    const-string/jumbo v2, "SemUsbBackend"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "USB connection setMode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    and-int/lit8 v2, p1, 0xe

    invoke-direct {p0, v2}, Lcom/android/server/usb/SemUsbBackend;->setUsbFunction(I)V

    :goto_75
    return-void

    :cond_76
    const-string/jumbo v2, "SemUsbBackend"

    const-string/jumbo v3, "setMode : mDeviceManager is null"

    invoke-static {v2, v3}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    :cond_80
    const/4 v0, 0x2

    goto :goto_22

    :cond_82
    const-string/jumbo v2, "SemUsbBackend"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "USB connection setMode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " - skip!!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_75
.end method

.method updateUsbPort()V
    .registers 8

    iget-object v4, p0, Lcom/android/server/usb/SemUsbBackend;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    invoke-virtual {v4}, Lcom/android/server/usb/UsbPortManager;->getPorts()[Landroid/hardware/usb/UsbPort;

    move-result-object v2

    if-eqz v2, :cond_7a

    array-length v0, v2

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_7a

    iget-object v4, p0, Lcom/android/server/usb/SemUsbBackend;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    aget-object v5, v2, v1

    invoke-virtual {v5}, Landroid/hardware/usb/UsbPort;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/usb/UsbPortManager;->getPortStatus(Ljava/lang/String;)Landroid/hardware/usb/UsbPortStatus;

    move-result-object v3

    const-string/jumbo v4, "SemUsbBackend"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateUsbPort() status = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_7b

    const-string/jumbo v4, "SemUsbBackend"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateUsbPort() status.isConnected() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Landroid/hardware/usb/UsbPortStatus;->isConnected()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Landroid/hardware/usb/UsbPortStatus;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_7b

    aget-object v4, v2, v1

    iput-object v4, p0, Lcom/android/server/usb/SemUsbBackend;->mPort:Landroid/hardware/usb/UsbPort;

    iput-object v3, p0, Lcom/android/server/usb/SemUsbBackend;->mPortStatus:Landroid/hardware/usb/UsbPortStatus;

    const-string/jumbo v4, "SemUsbBackend"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateUsbPort() mPort = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/usb/SemUsbBackend;->mPort:Landroid/hardware/usb/UsbPort;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7a
    return-void

    :cond_7b
    const-string/jumbo v4, "SemUsbBackend"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateUsbPort() mPort = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/usb/SemUsbBackend;->mPort:Landroid/hardware/usb/UsbPort;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_a
.end method
