.class public Lcom/samsung/android/settings/deviceinfo/ShowRegulatoryInformationKORActivity;
.super Lcom/android/settings/core/InstrumentedActivity;
.source "ShowRegulatoryInformationKORActivity.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedActivity;-><init>()V

    const-string/jumbo v0, "ShowRegulatoryInformationKORActivity"

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/ShowRegulatoryInformationKORActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method private getActualInformation(Ljava/lang/String;)Ljava/lang/String;
    .registers 16

    const v9, 0x7f121617

    const v13, 0x7f12160a

    const v12, 0x7f121608

    const/16 v11, 0xe

    const/4 v10, 0x0

    const v8, 0x7f12161d

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/deviceinfo/ShowRegulatoryInformationKORActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_40

    const-string/jumbo v8, "ril.serialnumber"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const v9, 0x7f12161d

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/deviceinfo/ShowRegulatoryInformationKORActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8

    :cond_40
    invoke-virtual {p0, v13}, Lcom/samsung/android/settings/deviceinfo/ShowRegulatoryInformationKORActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_96

    const-string/jumbo v8, "ril.barcode"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_7d

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x3

    invoke-virtual {v0, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v13}, Lcom/samsung/android/settings/deviceinfo/ShowRegulatoryInformationKORActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8

    :cond_7d
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v13}, Lcom/samsung/android/settings/deviceinfo/ShowRegulatoryInformationKORActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8

    :cond_96
    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/deviceinfo/ShowRegulatoryInformationKORActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_ed

    const-string/jumbo v8, "ril.manufacturedate"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_d4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x2

    invoke-virtual {v3, v10, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/deviceinfo/ShowRegulatoryInformationKORActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8

    :cond_d4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/deviceinfo/ShowRegulatoryInformationKORActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8

    :cond_ed
    invoke-virtual {p0, v12}, Lcom/samsung/android/settings/deviceinfo/ShowRegulatoryInformationKORActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_18e

    const-string/jumbo v8, "phone"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/deviceinfo/ShowRegulatoryInformationKORActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/TelephonyManager;

    if-eqz v7, :cond_175

    invoke-virtual {v7, v10}, Landroid/telephony/TelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_175

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    if-lt v8, v11, :cond_158

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v9, 0x6

    invoke-virtual {v2, v10, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x6

    const/16 v10, 0x8

    invoke-virtual {v2, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v2, v9, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0xf

    invoke-virtual {v2, v11, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_158
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v12}, Lcom/samsung/android/settings/deviceinfo/ShowRegulatoryInformationKORActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8

    :cond_175
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v12}, Lcom/samsung/android/settings/deviceinfo/ShowRegulatoryInformationKORActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8

    :cond_18e
    const v8, 0x7f121609

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/deviceinfo/ShowRegulatoryInformationKORActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1e9

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const v9, 0x7f121609

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/deviceinfo/ShowRegulatoryInformationKORActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v8, p0, Lcom/samsung/android/settings/deviceinfo/ShowRegulatoryInformationKORActivity;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils;->getDeviceRated(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1e8

    const-string/jumbo v8, "DC "

    const-string/jumbo v9, ""

    invoke-virtual {v4, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, ";"

    const-string/jumbo v10, " \u2393;"

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8

    :cond_1e8
    return-object v6

    :cond_1e9
    const v8, 0x7f121614

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/deviceinfo/ShowRegulatoryInformationKORActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_232

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const v9, 0x7f121614

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/deviceinfo/ShowRegulatoryInformationKORActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/ShowRegulatoryInformationKORActivity;->getManufactureCountry()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_231

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/deviceinfo/ShowRegulatoryInformationKORActivity;->translateManufactureCountry(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8

    :cond_231
    return-object v6

    :cond_232
    return-object p1
.end method

.method private getCharSet(Ljava/io/File;)Ljava/lang/String;
    .registers 12

    const/16 v9, 0xff

    const/16 v8, 0xfe

    const/4 v4, 0x0

    const/4 v6, 0x4

    new-array v0, v6, [B

    const-string/jumbo v1, "EUC-KR"

    :try_start_b
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_10} :catch_c8
    .catchall {:try_start_b .. :try_end_10} :catchall_d7

    const/4 v6, 0x0

    const/4 v7, 0x4

    :try_start_12
    invoke-virtual {v5, v0, v6, v7}, Ljava/io/FileInputStream;->read([BII)I

    const-string/jumbo v1, "EUC-KR"

    const/4 v6, 0x0

    aget-byte v6, v0, v6

    and-int/lit16 v6, v6, 0xff

    const/16 v7, 0xef

    if-ne v6, v7, :cond_59

    const/4 v6, 0x1

    aget-byte v6, v0, v6

    and-int/lit16 v6, v6, 0xff

    const/16 v7, 0xbb

    if-ne v6, v7, :cond_59

    const/4 v6, 0x2

    aget-byte v6, v0, v6

    and-int/lit16 v6, v6, 0xff

    const/16 v7, 0xbf

    if-ne v6, v7, :cond_59

    const-string/jumbo v1, "UTF-8"

    :goto_36
    const-string/jumbo v6, "ShowRegulatoryInformationKORActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "charSet = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_50} :catch_e9
    .catchall {:try_start_12 .. :try_end_50} :catchall_e6

    if-eqz p1, :cond_53

    const/4 p1, 0x0

    :cond_53
    if-eqz v5, :cond_58

    :try_start_55
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_58} :catch_c3

    :cond_58
    :goto_58
    return-object v1

    :cond_59
    const/4 v6, 0x0

    :try_start_5a
    aget-byte v6, v0, v6

    and-int/lit16 v6, v6, 0xff

    if-ne v6, v8, :cond_6b

    const/4 v6, 0x1

    aget-byte v6, v0, v6

    and-int/lit16 v6, v6, 0xff

    if-ne v6, v9, :cond_6b

    const-string/jumbo v1, "UTF-16BE"

    goto :goto_36

    :cond_6b
    const/4 v6, 0x0

    aget-byte v6, v0, v6

    and-int/lit16 v6, v6, 0xff

    if-ne v6, v9, :cond_7d

    const/4 v6, 0x1

    aget-byte v6, v0, v6

    and-int/lit16 v6, v6, 0xff

    if-ne v6, v8, :cond_7d

    const-string/jumbo v1, "UTF-16LE"

    goto :goto_36

    :cond_7d
    const/4 v6, 0x0

    aget-byte v6, v0, v6

    and-int/lit16 v6, v6, 0xff

    if-nez v6, :cond_9d

    const/4 v6, 0x1

    aget-byte v6, v0, v6

    and-int/lit16 v6, v6, 0xff

    if-nez v6, :cond_9d

    const/4 v6, 0x0

    aget-byte v6, v0, v6

    and-int/lit16 v6, v6, 0xff

    if-ne v6, v8, :cond_9d

    const/4 v6, 0x1

    aget-byte v6, v0, v6

    and-int/lit16 v6, v6, 0xff

    if-ne v6, v9, :cond_9d

    const-string/jumbo v1, "UTF-32BE"

    goto :goto_36

    :cond_9d
    const/4 v6, 0x0

    aget-byte v6, v0, v6

    and-int/lit16 v6, v6, 0xff

    if-ne v6, v9, :cond_be

    const/4 v6, 0x1

    aget-byte v6, v0, v6

    and-int/lit16 v6, v6, 0xff

    if-ne v6, v8, :cond_be

    const/4 v6, 0x0

    aget-byte v6, v0, v6

    and-int/lit16 v6, v6, 0xff

    if-nez v6, :cond_be

    const/4 v6, 0x1

    aget-byte v6, v0, v6

    and-int/lit16 v6, v6, 0xff

    if-nez v6, :cond_be

    const-string/jumbo v1, "UTF-32LE"

    goto/16 :goto_36

    :cond_be
    const-string/jumbo v1, "EUC-KR"
    :try_end_c1
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_c1} :catch_e9
    .catchall {:try_start_5a .. :try_end_c1} :catchall_e6

    goto/16 :goto_36

    :catch_c3
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_58

    :catch_c8
    move-exception v3

    :goto_c9
    if-eqz p1, :cond_cc

    const/4 p1, 0x0

    :cond_cc
    if-eqz v4, :cond_d1

    :try_start_ce
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_d1
    .catch Ljava/io/IOException; {:try_start_ce .. :try_end_d1} :catch_d2

    :cond_d1
    :goto_d1
    return-object v1

    :catch_d2
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_d1

    :catchall_d7
    move-exception v6

    :goto_d8
    if-eqz p1, :cond_db

    const/4 p1, 0x0

    :cond_db
    if-eqz v4, :cond_e0

    :try_start_dd
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_e0
    .catch Ljava/io/IOException; {:try_start_dd .. :try_end_e0} :catch_e1

    :cond_e0
    :goto_e0
    return-object v1

    :catch_e1
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_e0

    :catchall_e6
    move-exception v6

    move-object v4, v5

    goto :goto_d8

    :catch_e9
    move-exception v3

    move-object v4, v5

    goto :goto_c9
.end method

.method private getManufactureCountry()Ljava/lang/String;
    .registers 13

    const-string/jumbo v7, "/efs/FactoryApp/copr"

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v1, 0x0

    :try_start_6
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_b} :catch_2c
    .catchall {:try_start_6 .. :try_end_b} :catchall_47

    :try_start_b
    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_10} :catch_5d
    .catchall {:try_start_b .. :try_end_10} :catchall_56

    :try_start_10
    invoke-virtual {v9}, Ljava/io/FileInputStream;->available()I

    move-result v10

    new-array v0, v10, [B

    invoke-virtual {v9, v0}, Ljava/io/FileInputStream;->read([B)I

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_1e} :catch_60
    .catchall {:try_start_10 .. :try_end_1e} :catchall_59

    if-eqz v6, :cond_64

    const/4 v5, 0x0

    :goto_21
    if-eqz v9, :cond_26

    :try_start_23
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_26} :catch_27

    :cond_26
    :goto_26
    return-object v2

    :catch_27
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_26

    :catch_2c
    move-exception v4

    :goto_2d
    :try_start_2d
    const-string/jumbo v10, "ShowRegulatoryInformationKORActivity"

    const-string/jumbo v11, "/copr/ - file null"

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_39
    .catchall {:try_start_2d .. :try_end_39} :catchall_47

    if-eqz v5, :cond_3c

    const/4 v5, 0x0

    :cond_3c
    if-eqz v8, :cond_41

    :try_start_3e
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_41} :catch_42

    :cond_41
    :goto_41
    return-object v1

    :catch_42
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_41

    :catchall_47
    move-exception v10

    :goto_48
    if-eqz v5, :cond_4b

    const/4 v5, 0x0

    :cond_4b
    if-eqz v8, :cond_50

    :try_start_4d
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_50} :catch_51

    :cond_50
    :goto_50
    return-object v1

    :catch_51
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_50

    :catchall_56
    move-exception v10

    move-object v5, v6

    goto :goto_48

    :catchall_59
    move-exception v10

    move-object v8, v9

    move-object v5, v6

    goto :goto_48

    :catch_5d
    move-exception v4

    move-object v5, v6

    goto :goto_2d

    :catch_60
    move-exception v4

    move-object v8, v9

    move-object v5, v6

    goto :goto_2d

    :cond_64
    move-object v5, v6

    goto :goto_21
.end method

.method private getRegulatoryInformationFromFile()Ljava/lang/String;
    .registers 25

    const-string/jumbo v11, "regulatory_info_kor.txt"

    const-string/jumbo v21, "persist.sys.omc_etcpath"

    invoke-static/range {v21 .. v21}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const/4 v12, 0x0

    const/16 v18, 0x0

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_15a

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "/"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v21, "ShowRegulatoryInformationKORActivity"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "take Regulatory Info from : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/4 v2, 0x0

    :try_start_53
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_58
    .catch Ljava/io/FileNotFoundException; {:try_start_53 .. :try_end_58} :catch_109
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_53 .. :try_end_58} :catch_ed
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_58} :catch_d1
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_58} :catch_b5
    .catchall {:try_start_53 .. :try_end_58} :catchall_141

    :try_start_58
    new-instance v14, Ljava/io/FileInputStream;

    invoke-direct {v14, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_5d
    .catch Ljava/io/FileNotFoundException; {:try_start_58 .. :try_end_5d} :catch_16f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_58 .. :try_end_5d} :catch_183
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_5d} :catch_19b
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_5d} :catch_1b3
    .catchall {:try_start_58 .. :try_end_5d} :catchall_15b

    :try_start_5d
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/samsung/android/settings/deviceinfo/ShowRegulatoryInformationKORActivity;->getCharSet(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    new-instance v16, Ljava/io/InputStreamReader;

    move-object/from16 v0, v16

    invoke-direct {v0, v14, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_6a
    .catch Ljava/io/FileNotFoundException; {:try_start_5d .. :try_end_6a} :catch_172
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5d .. :try_end_6a} :catch_187
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_6a} :catch_19f
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_6a} :catch_1b7
    .catchall {:try_start_5d .. :try_end_6a} :catchall_15e

    :try_start_6a
    new-instance v3, Ljava/io/BufferedReader;

    move-object/from16 v0, v16

    invoke-direct {v3, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_71
    .catch Ljava/io/FileNotFoundException; {:try_start_6a .. :try_end_71} :catch_176
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_6a .. :try_end_71} :catch_18c
    .catch Ljava/io/IOException; {:try_start_6a .. :try_end_71} :catch_1a4
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_71} :catch_1bc
    .catchall {:try_start_6a .. :try_end_71} :catchall_162

    :try_start_71
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v3, :cond_99

    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v19

    :goto_7c
    if-eqz v19, :cond_99

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/deviceinfo/ShowRegulatoryInformationKORActivity;->getActualInformation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "\n"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v19

    goto :goto_7c

    :cond_99
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_9c
    .catch Ljava/io/FileNotFoundException; {:try_start_71 .. :try_end_9c} :catch_17c
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_71 .. :try_end_9c} :catch_193
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_9c} :catch_1ab
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_9c} :catch_1c3
    .catchall {:try_start_71 .. :try_end_9c} :catchall_168

    move-result-object v18

    if-eqz v10, :cond_1cb

    const/4 v9, 0x0

    :goto_a0
    if-eqz v14, :cond_a5

    :try_start_a2
    invoke-virtual {v14}, Ljava/io/FileInputStream;->close()V

    :cond_a5
    if-eqz v16, :cond_aa

    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStreamReader;->close()V

    :cond_aa
    if-eqz v3, :cond_af

    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_af
    .catch Ljava/io/IOException; {:try_start_a2 .. :try_end_af} :catch_b0

    :cond_af
    :goto_af
    return-object v18

    :catch_b0
    move-exception v6

    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_af

    :catch_b5
    move-exception v8

    :goto_b6
    :try_start_b6
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_b9
    .catchall {:try_start_b6 .. :try_end_b9} :catchall_141

    if-eqz v9, :cond_bc

    const/4 v9, 0x0

    :cond_bc
    if-eqz v13, :cond_c1

    :try_start_be
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V

    :cond_c1
    if-eqz v15, :cond_c6

    invoke-virtual {v15}, Ljava/io/InputStreamReader;->close()V

    :cond_c6
    if-eqz v2, :cond_cb

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_cb
    .catch Ljava/io/IOException; {:try_start_be .. :try_end_cb} :catch_cc

    :cond_cb
    :goto_cb
    return-object v18

    :catch_cc
    move-exception v6

    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_cb

    :catch_d1
    move-exception v6

    :goto_d2
    :try_start_d2
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V
    :try_end_d5
    .catchall {:try_start_d2 .. :try_end_d5} :catchall_141

    if-eqz v9, :cond_d8

    const/4 v9, 0x0

    :cond_d8
    if-eqz v13, :cond_dd

    :try_start_da
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V

    :cond_dd
    if-eqz v15, :cond_e2

    invoke-virtual {v15}, Ljava/io/InputStreamReader;->close()V

    :cond_e2
    if-eqz v2, :cond_e7

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_e7
    .catch Ljava/io/IOException; {:try_start_da .. :try_end_e7} :catch_e8

    :cond_e7
    :goto_e7
    return-object v18

    :catch_e8
    move-exception v6

    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_e7

    :catch_ed
    move-exception v7

    :goto_ee
    :try_start_ee
    invoke-virtual {v7}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V
    :try_end_f1
    .catchall {:try_start_ee .. :try_end_f1} :catchall_141

    if-eqz v9, :cond_f4

    const/4 v9, 0x0

    :cond_f4
    if-eqz v13, :cond_f9

    :try_start_f6
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V

    :cond_f9
    if-eqz v15, :cond_fe

    invoke-virtual {v15}, Ljava/io/InputStreamReader;->close()V

    :cond_fe
    if-eqz v2, :cond_103

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_103
    .catch Ljava/io/IOException; {:try_start_f6 .. :try_end_103} :catch_104

    :cond_103
    :goto_103
    return-object v18

    :catch_104
    move-exception v6

    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_103

    :catch_109
    move-exception v5

    :goto_10a
    :try_start_10a
    const-string/jumbo v21, "ShowRegulatoryInformationKORActivity"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, " is not exist"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_129
    .catchall {:try_start_10a .. :try_end_129} :catchall_141

    if-eqz v9, :cond_12c

    const/4 v9, 0x0

    :cond_12c
    if-eqz v13, :cond_131

    :try_start_12e
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V

    :cond_131
    if-eqz v15, :cond_136

    invoke-virtual {v15}, Ljava/io/InputStreamReader;->close()V

    :cond_136
    if-eqz v2, :cond_13b

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_13b
    .catch Ljava/io/IOException; {:try_start_12e .. :try_end_13b} :catch_13c

    :cond_13b
    :goto_13b
    return-object v18

    :catch_13c
    move-exception v6

    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_13b

    :catchall_141
    move-exception v21

    :goto_142
    if-eqz v9, :cond_145

    const/4 v9, 0x0

    :cond_145
    if-eqz v13, :cond_14a

    :try_start_147
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V

    :cond_14a
    if-eqz v15, :cond_14f

    invoke-virtual {v15}, Ljava/io/InputStreamReader;->close()V

    :cond_14f
    if-eqz v2, :cond_154

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_154
    .catch Ljava/io/IOException; {:try_start_147 .. :try_end_154} :catch_155

    :cond_154
    :goto_154
    return-object v18

    :catch_155
    move-exception v6

    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_154

    :cond_15a
    return-object v18

    :catchall_15b
    move-exception v21

    move-object v9, v10

    goto :goto_142

    :catchall_15e
    move-exception v21

    move-object v13, v14

    move-object v9, v10

    goto :goto_142

    :catchall_162
    move-exception v21

    move-object/from16 v15, v16

    move-object v13, v14

    move-object v9, v10

    goto :goto_142

    :catchall_168
    move-exception v21

    move-object v2, v3

    move-object/from16 v15, v16

    move-object v13, v14

    move-object v9, v10

    goto :goto_142

    :catch_16f
    move-exception v5

    move-object v9, v10

    goto :goto_10a

    :catch_172
    move-exception v5

    move-object v13, v14

    move-object v9, v10

    goto :goto_10a

    :catch_176
    move-exception v5

    move-object/from16 v15, v16

    move-object v13, v14

    move-object v9, v10

    goto :goto_10a

    :catch_17c
    move-exception v5

    move-object v2, v3

    move-object/from16 v15, v16

    move-object v13, v14

    move-object v9, v10

    goto :goto_10a

    :catch_183
    move-exception v7

    move-object v9, v10

    goto/16 :goto_ee

    :catch_187
    move-exception v7

    move-object v13, v14

    move-object v9, v10

    goto/16 :goto_ee

    :catch_18c
    move-exception v7

    move-object/from16 v15, v16

    move-object v13, v14

    move-object v9, v10

    goto/16 :goto_ee

    :catch_193
    move-exception v7

    move-object v2, v3

    move-object/from16 v15, v16

    move-object v13, v14

    move-object v9, v10

    goto/16 :goto_ee

    :catch_19b
    move-exception v6

    move-object v9, v10

    goto/16 :goto_d2

    :catch_19f
    move-exception v6

    move-object v13, v14

    move-object v9, v10

    goto/16 :goto_d2

    :catch_1a4
    move-exception v6

    move-object/from16 v15, v16

    move-object v13, v14

    move-object v9, v10

    goto/16 :goto_d2

    :catch_1ab
    move-exception v6

    move-object v2, v3

    move-object/from16 v15, v16

    move-object v13, v14

    move-object v9, v10

    goto/16 :goto_d2

    :catch_1b3
    move-exception v8

    move-object v9, v10

    goto/16 :goto_b6

    :catch_1b7
    move-exception v8

    move-object v13, v14

    move-object v9, v10

    goto/16 :goto_b6

    :catch_1bc
    move-exception v8

    move-object/from16 v15, v16

    move-object v13, v14

    move-object v9, v10

    goto/16 :goto_b6

    :catch_1c3
    move-exception v8

    move-object v2, v3

    move-object/from16 v15, v16

    move-object v13, v14

    move-object v9, v10

    goto/16 :goto_b6

    :cond_1cb
    move-object v9, v10

    goto/16 :goto_a0
.end method

.method private setKCimage()V
    .registers 5

    const v2, 0x7f0a06dc

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/deviceinfo/ShowRegulatoryInformationKORActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/ShowRegulatoryInformationKORActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0805ae

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private translateManufactureCountry(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    move-object v0, p1

    const-string/jumbo v1, "KOREA"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    const v1, 0x7f121613

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/deviceinfo/ShowRegulatoryInformationKORActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_11
    return-object v0

    :cond_12
    const-string/jumbo v1, "VIETNAM"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23

    const v1, 0x7f121616

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/deviceinfo/ShowRegulatoryInformationKORActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    :cond_23
    const-string/jumbo v1, "CHINA"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_34

    const v1, 0x7f121610

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/deviceinfo/ShowRegulatoryInformationKORActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    :cond_34
    const-string/jumbo v1, "INDIA"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_45

    const v1, 0x7f121611

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/deviceinfo/ShowRegulatoryInformationKORActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    :cond_45
    const-string/jumbo v1, "INDONESIA"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_56

    const v1, 0x7f121612

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/deviceinfo/ShowRegulatoryInformationKORActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    :cond_56
    const-string/jumbo v1, "ARGENTINA"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_67

    const v1, 0x7f12160e

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/deviceinfo/ShowRegulatoryInformationKORActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    :cond_67
    const-string/jumbo v1, "BRAZIL"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_78

    const v1, 0x7f12160f

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/deviceinfo/ShowRegulatoryInformationKORActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    :cond_78
    const v1, 0x7f121c8a

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/deviceinfo/ShowRegulatoryInformationKORActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_11
.end method


# virtual methods
.method public getMetricsCategory()I
    .registers 2

    const/16 v0, 0x28

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6

    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedActivity;->onCreate(Landroid/os/Bundle;)V

    iput-object p0, p0, Lcom/samsung/android/settings/deviceinfo/ShowRegulatoryInformationKORActivity;->mContext:Landroid/content/Context;

    const v2, 0x7f0d025b

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/deviceinfo/ShowRegulatoryInformationKORActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/ShowRegulatoryInformationKORActivity;->setKCimage()V

    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/ShowRegulatoryInformationKORActivity;->getRegulatoryInformationFromFile()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_25

    const v2, 0x7f0a0231

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/deviceinfo/ShowRegulatoryInformationKORActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_24
    return-void

    :cond_25
    const-string/jumbo v2, "ShowRegulatoryInformationKORActivity"

    const-string/jumbo v3, "omc path is null"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/ShowRegulatoryInformationKORActivity;->finish()V

    goto :goto_24
.end method

.method protected onDestroy()V
    .registers 1

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedActivity;->onDestroy()V

    return-void
.end method

.method public onResume()V
    .registers 1

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedActivity;->onResume()V

    return-void
.end method

.method protected onStop()V
    .registers 1

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedActivity;->onStop()V

    return-void
.end method
