.class public Lcom/samsung/android/settings/deviceinfo/OmcUtils;
.super Ljava/lang/Object;
.source "OmcUtils.java"


# static fields
.field public static instance:Lcom/samsung/android/settings/deviceinfo/OmcUtils;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/samsung/android/settings/deviceinfo/OmcUtils;

    invoke-direct {v0}, Lcom/samsung/android/settings/deviceinfo/OmcUtils;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/deviceinfo/OmcUtils;->instance:Lcom/samsung/android/settings/deviceinfo/OmcUtils;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getPhoneCount(Landroid/content/Context;)I
    .registers 4

    const-string/jumbo v1, "phone"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_d

    const/4 v1, 0x1

    return v1

    :cond_d
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    return v1
.end method

.method private readCarrierId()Ljava/lang/String;
    .registers 3

    const-string/jumbo v0, "ro.boot.carrierid"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private readDeviceID()Ljava/lang/String;
    .registers 2

    invoke-static {}, Landroid/os/Build;->getSerial()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private readOMCNetworkCode(I)Ljava/lang/String;
    .registers 4

    if-nez p1, :cond_d

    const-string/jumbo v0, "ro.csc.omcnw_code"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ro.csc.omcnw_code"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private readOMCVersion()Ljava/lang/String;
    .registers 11

    const/4 v7, 0x0

    const/4 v2, 0x0

    :try_start_2
    new-instance v3, Ljava/io/FileInputStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "persist.sys.omc_path"

    const-string/jumbo v8, ""

    invoke-static {v6, v8}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "omc.info"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2b} :catch_74
    .catchall {:try_start_2 .. :try_end_2b} :catchall_90

    :try_start_2b
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    const-string/jumbo v5, "UTF-8"

    invoke-interface {v4, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    :goto_39
    const/4 v5, 0x1

    if-eq v1, v5, :cond_67

    const/4 v5, 0x2

    if-ne v1, v5, :cond_62

    const-string/jumbo v5, "version"

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_62

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;
    :try_end_4f
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_4f} :catch_97
    .catchall {:try_start_2b .. :try_end_4f} :catchall_93

    move-result-object v6

    if-eqz v3, :cond_55

    :try_start_52
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_55
    .catch Ljava/lang/Throwable; {:try_start_52 .. :try_end_55} :catch_5f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_52 .. :try_end_55} :catch_59
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_55} :catch_59

    :cond_55
    move-object v5, v7

    :goto_56
    if-eqz v5, :cond_61

    :try_start_58
    throw v5
    :try_end_59
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_58 .. :try_end_59} :catch_59
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_59} :catch_59

    :catch_59
    move-exception v0

    move-object v2, v3

    :goto_5b
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_5e
    return-object v7

    :catch_5f
    move-exception v5

    goto :goto_56

    :cond_61
    return-object v6

    :cond_62
    :try_start_62
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_65
    .catch Ljava/lang/Throwable; {:try_start_62 .. :try_end_65} :catch_97
    .catchall {:try_start_62 .. :try_end_65} :catchall_93

    move-result v1

    goto :goto_39

    :cond_67
    if-eqz v3, :cond_6c

    :try_start_69
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_6c
    .catch Ljava/lang/Throwable; {:try_start_69 .. :try_end_6c} :catch_70
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_69 .. :try_end_6c} :catch_59
    .catch Ljava/io/IOException; {:try_start_69 .. :try_end_6c} :catch_59

    :cond_6c
    move-object v5, v7

    :goto_6d
    if-eqz v5, :cond_72

    :try_start_6f
    throw v5
    :try_end_70
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6f .. :try_end_70} :catch_59
    .catch Ljava/io/IOException; {:try_start_6f .. :try_end_70} :catch_59

    :catch_70
    move-exception v5

    goto :goto_6d

    :cond_72
    move-object v2, v3

    goto :goto_5e

    :catch_74
    move-exception v5

    :goto_75
    :try_start_75
    throw v5
    :try_end_76
    .catchall {:try_start_75 .. :try_end_76} :catchall_76

    :catchall_76
    move-exception v6

    move-object v9, v6

    move-object v6, v5

    move-object v5, v9

    :goto_7a
    if-eqz v2, :cond_7f

    :try_start_7c
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_7f
    .catch Ljava/lang/Throwable; {:try_start_7c .. :try_end_7f} :catch_84
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7c .. :try_end_7f} :catch_82
    .catch Ljava/io/IOException; {:try_start_7c .. :try_end_7f} :catch_82

    :cond_7f
    :goto_7f
    if-eqz v6, :cond_8f

    :try_start_81
    throw v6

    :catch_82
    move-exception v0

    goto :goto_5b

    :catch_84
    move-exception v8

    if-nez v6, :cond_89

    move-object v6, v8

    goto :goto_7f

    :cond_89
    if-eq v6, v8, :cond_7f

    invoke-virtual {v6, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_7f

    :cond_8f
    throw v5
    :try_end_90
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_81 .. :try_end_90} :catch_82
    .catch Ljava/io/IOException; {:try_start_81 .. :try_end_90} :catch_82

    :catchall_90
    move-exception v5

    move-object v6, v7

    goto :goto_7a

    :catchall_93
    move-exception v5

    move-object v2, v3

    move-object v6, v7

    goto :goto_7a

    :catch_97
    move-exception v5

    move-object v2, v3

    goto :goto_75
.end method

.method private readSalesCode()Ljava/lang/String;
    .registers 2

    invoke-static {}, Landroid/os/SemSystemProperties;->getSalesCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getOmcSummary(Landroid/content/Context;)Ljava/lang/String;
    .registers 10

    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/OmcUtils;->readOMCVersion()Ljava/lang/String;

    move-result-object v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/deviceinfo/OmcUtils;->getPhoneCount(Landroid/content/Context;)I

    move-result v4

    const/4 v0, 0x0

    :goto_e
    if-ge v0, v4, :cond_2d

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/deviceinfo/OmcUtils;->readOMCNetworkCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1d

    :goto_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_1d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-eqz v5, :cond_29

    const-string/jumbo v5, ","

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1a

    :cond_2d
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_79

    const-string/jumbo v5, ""

    :goto_3b
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/OmcUtils;->readDeviceID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/OmcUtils;->readSalesCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/OmcUtils;->readCarrierId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    :cond_79
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/OmcUtils;->readOMCVersion()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, "\n"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_3b
.end method

.method public isOMCVersionSupport()Z
    .registers 9

    const/4 v4, 0x0

    const-string/jumbo v5, "persist.sys.omc_support"

    const-string/jumbo v6, "false"

    invoke-static {v5, v6}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v5

    const-string/jumbo v6, "SEC_FLOATING_FEATURE_COMMON_CONFIG_OMC_VERSION"

    const-string/jumbo v7, "0"

    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x0

    :try_start_1a
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_1d
    .catch Ljava/lang/NumberFormatException; {:try_start_1a .. :try_end_1d} :catch_2f

    move-result v1

    :goto_1e
    const-string/jumbo v5, "true"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2e

    const/high16 v5, 0x40a00000    # 5.0f

    cmpl-float v5, v1, v5

    if-ltz v5, :cond_2e

    const/4 v4, 0x1

    :cond_2e
    return v4

    :catch_2f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_1e
.end method
