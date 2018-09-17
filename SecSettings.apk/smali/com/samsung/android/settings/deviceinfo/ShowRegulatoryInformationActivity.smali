.class public Lcom/samsung/android/settings/deviceinfo/ShowRegulatoryInformationActivity;
.super Lcom/android/settings/core/InstrumentedActivity;
.source "ShowRegulatoryInformationActivity.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedActivity;-><init>()V

    return-void
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
    const-string/jumbo v10, "ShowRegulatoryInformationActivity"

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

.method private getManufactureCountryHasNoCoprFile()Ljava/lang/String;
    .registers 4

    const v2, 0x7f121615

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/deviceinfo/ShowRegulatoryInformationActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "ro.product.name"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "dream"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_20

    const-string/jumbo v2, "gracer"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_28

    :cond_20
    const v2, 0x7f121613

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/deviceinfo/ShowRegulatoryInformationActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_27
    :goto_27
    return-object v0

    :cond_28
    const-string/jumbo v2, "a7y17"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4c

    const-string/jumbo v2, "j3y17"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4c

    const-string/jumbo v2, "j5y17"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4c

    const-string/jumbo v2, "j7y17"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_27

    :cond_4c
    const v2, 0x7f121616

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/deviceinfo/ShowRegulatoryInformationActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_27
.end method

.method private getPreIdentifyingMarks()Ljava/lang/String;
    .registers 5

    const-string/jumbo v1, "MSIP-CMM-SEC-"

    const-string/jumbo v2, "R-CMM-SEC-"

    const-string/jumbo v3, "ro.product.name"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "dream"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_70

    const-string/jumbo v3, "gracer"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_70

    const-string/jumbo v3, "a7y17"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_70

    const-string/jumbo v3, "j3y17"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_70

    const-string/jumbo v3, "j5y17"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_70

    const-string/jumbo v3, "j7y17"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_70

    const-string/jumbo v3, "great"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_70

    const-string/jumbo v3, "elite"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_70

    const-string/jumbo v3, "jackpot"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_70

    const-string/jumbo v3, "gtactive2"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_70

    const-string/jumbo v3, "gta2s"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_74

    :cond_70
    const-string/jumbo v3, "MSIP-CMM-SEC-"

    return-object v3

    :cond_74
    const-string/jumbo v3, "R-CMM-SEC-"

    return-object v3
.end method

.method private getRegulatoryFilePath(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const-string/jumbo v2, "persist.sys.omc_etcpath"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_45

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_45

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2a
    const-string/jumbo v2, "ShowRegulatoryInformationActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "take Regulatory Info from : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_45
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "/system/etc/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2a
.end method

.method private getSafetyCheckingNumber(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_a

    const-string/jumbo v3, ""

    return-object v3

    :cond_a
    const-string/jumbo v2, "YU10256-17006"

    const-string/jumbo v1, "YU10256-17005"

    const-string/jumbo v0, "YU10256-17004"

    const-string/jumbo v3, "SM-T395N"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    const-string/jumbo v3, "YU10256-17006"

    return-object v3

    :cond_20
    const-string/jumbo v3, "SM-T385S"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2d

    :cond_29
    const-string/jumbo v3, "YU10256-17005"

    return-object v3

    :cond_2d
    const-string/jumbo v3, "SM-T385K"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_29

    const-string/jumbo v3, "SM-T385L"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_29

    const-string/jumbo v3, "SM-T380"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4c

    const-string/jumbo v3, "YU10256-17004"

    return-object v3

    :cond_4c
    const-string/jumbo v3, ""

    return-object v3
.end method

.method private getTruncatedIdxDelta(Ljava/lang/String;I)I
    .registers 4

    const-string/jumbo v0, "SM-A530N"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x0

    return v0

    :cond_b
    return p2
.end method

.method private translateManufactureCountry(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    move-object v0, p1

    const-string/jumbo v1, "KOREA"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    const v1, 0x7f121613

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/deviceinfo/ShowRegulatoryInformationActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_11
    :goto_11
    return-object v0

    :cond_12
    const-string/jumbo v1, "VIETNAM"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23

    const v1, 0x7f121616

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/deviceinfo/ShowRegulatoryInformationActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    :cond_23
    const-string/jumbo v1, "CHINA"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_34

    const v1, 0x7f121610

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/deviceinfo/ShowRegulatoryInformationActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    :cond_34
    const-string/jumbo v1, "INDIA"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_45

    const v1, 0x7f121611

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/deviceinfo/ShowRegulatoryInformationActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    :cond_45
    const-string/jumbo v1, "INDONESIA"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_56

    const v1, 0x7f121612

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/deviceinfo/ShowRegulatoryInformationActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    :cond_56
    const-string/jumbo v1, "ARGENTINA"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_67

    const v1, 0x7f12160e

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/deviceinfo/ShowRegulatoryInformationActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    :cond_67
    const-string/jumbo v1, "BRAZIL"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    const v1, 0x7f12160f

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/deviceinfo/ShowRegulatoryInformationActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_11
.end method


# virtual methods
.method public getMetricsCategory()I
    .registers 2

    const/16 v0, 0x28

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 40

    invoke-super/range {p0 .. p1}, Lcom/android/settings/core/InstrumentedActivity;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo v35, "ShowRegulatoryInformationActivity"

    const-string/jumbo v36, "ShowRegulatoryInformationActivity onCreate"

    invoke-static/range {v35 .. v36}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v17

    if-eqz v17, :cond_455

    const v35, 0x7f0d025b

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/deviceinfo/ShowRegulatoryInformationActivity;->setContentView(I)V

    :goto_1c
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/deviceinfo/ShowRegulatoryInformationActivity;->mContext:Landroid/content/Context;

    const v35, 0x7f121620

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/deviceinfo/ShowRegulatoryInformationActivity;->setTitle(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/deviceinfo/ShowRegulatoryInformationActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    if-eqz v7, :cond_39

    const/16 v35, 0x1

    move/from16 v0, v35

    invoke-virtual {v7, v0}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_39
    const v35, 0x7f0a06dc

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/deviceinfo/ShowRegulatoryInformationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    if-eqz v17, :cond_480

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/deviceinfo/ShowRegulatoryInformationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v35

    const v36, 0x7f0805ae

    invoke-static/range {v35 .. v36}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const-string/jumbo v35, "phone"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/deviceinfo/ShowRegulatoryInformationActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/telephony/TelephonyManager;

    const-string/jumbo v35, "ro.product.model"

    invoke-static/range {v35 .. v35}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    const v35, 0x7f121618

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/deviceinfo/ShowRegulatoryInformationActivity;->getString(I)Ljava/lang/String;

    move-result-object v22

    const v35, 0x7f12161a

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/deviceinfo/ShowRegulatoryInformationActivity;->getString(I)Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/deviceinfo/ShowRegulatoryInformationActivity;->getManufactureCountry()Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_a0

    const-string/jumbo v35, ""

    move-object/from16 v0, v35

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-nez v35, :cond_a0

    const-string/jumbo v35, "NONE"

    move-object/from16 v0, v20

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_461

    :cond_a0
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/deviceinfo/ShowRegulatoryInformationActivity;->getManufactureCountryHasNoCoprFile()Ljava/lang/String;

    move-result-object v20

    :goto_a4
    const-string/jumbo v13, ""

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v35

    if-eqz v35, :cond_46b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/deviceinfo/ShowRegulatoryInformationActivity;->mContext:Landroid/content/Context;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v35

    if-eqz v35, :cond_46b

    const v35, 0x7f12160d

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/deviceinfo/ShowRegulatoryInformationActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    :goto_c4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/deviceinfo/ShowRegulatoryInformationActivity;->mContext:Landroid/content/Context;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils;->getDeviceRated(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v35

    if-nez v35, :cond_ec

    const-string/jumbo v35, "DC "

    const-string/jumbo v36, ""

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-virtual {v4, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v35

    const-string/jumbo v36, ";"

    const-string/jumbo v37, " \u2393;"

    invoke-virtual/range {v35 .. v37}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    :cond_ec
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/deviceinfo/ShowRegulatoryInformationActivity;->getPreIdentifyingMarks()Ljava/lang/String;

    move-result-object v25

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v35

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string/jumbo v36, "-"

    const-string/jumbo v37, ""

    move-object/from16 v0, v24

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/deviceinfo/ShowRegulatoryInformationActivity;->getSafetyCheckingNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/deviceinfo/ShowRegulatoryInformationActivity;->mContext:Landroid/content/Context;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lcom/android/settings/Utils;->isShopDemo(Landroid/content/Context;)Z

    move-result v35

    if-nez v35, :cond_12f

    invoke-static {}, Lcom/android/settings/Utils;->isLDUModel()Z

    move-result v35

    if-eqz v35, :cond_478

    :cond_12f
    const/16 v33, 0x2

    :goto_131
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v35

    if-eqz v35, :cond_145

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/deviceinfo/ShowRegulatoryInformationActivity;->mContext:Landroid/content/Context;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v35

    if-eqz v35, :cond_145

    const/16 v33, 0x0

    :cond_145
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v33

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/deviceinfo/ShowRegulatoryInformationActivity;->getTruncatedIdxDelta(Ljava/lang/String;I)I

    move-result v33

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v35

    sub-int v35, v35, v33

    const/16 v36, 0x0

    move/from16 v0, v36

    move/from16 v1, v35

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v35, "ril.manufacturedate"

    invoke-static/range {v35 .. v35}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v35

    if-nez v35, :cond_17e

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v35

    add-int/lit8 v35, v35, -0x2

    const/16 v36, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v36

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    :cond_17e
    const-string/jumbo v35, "ril.barcode"

    invoke-static/range {v35 .. v35}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v35

    if-nez v35, :cond_199

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v35

    const/16 v36, 0x3

    move/from16 v0, v36

    move/from16 v1, v35

    invoke-virtual {v8, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    :cond_199
    const-string/jumbo v16, ""

    if-eqz v32, :cond_220

    const/16 v35, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v35

    if-nez v35, :cond_220

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v35

    const/16 v36, 0xe

    move/from16 v0, v35

    move/from16 v1, v36

    if-lt v0, v1, :cond_220

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v36, 0x0

    const/16 v37, 0x6

    move-object/from16 v0, v16

    move/from16 v1, v36

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string/jumbo v36, "/"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const/16 v36, 0x6

    const/16 v37, 0x8

    move-object/from16 v0, v16

    move/from16 v1, v36

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string/jumbo v36, "/"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const/16 v36, 0x8

    const/16 v37, 0xe

    move-object/from16 v0, v16

    move/from16 v1, v36

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string/jumbo v36, "/"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const/16 v36, 0xe

    const/16 v37, 0xf

    move-object/from16 v0, v16

    move/from16 v1, v36

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    :cond_220
    const-string/jumbo v35, "ril.serialnumber"

    invoke-static/range {v35 .. v35}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    const-string/jumbo v3, "1588-3366"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const v35, 0x7f12161c

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/deviceinfo/ShowRegulatoryInformationActivity;->getString(I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v31

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string/jumbo v36, ":"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string/jumbo v36, "\n"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v35, 0x7f121619

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/deviceinfo/ShowRegulatoryInformationActivity;->getString(I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v31

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string/jumbo v36, ":"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string/jumbo v36, "\n"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v35, 0x7f12161b

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/deviceinfo/ShowRegulatoryInformationActivity;->getString(I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v31

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string/jumbo v36, ":"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string/jumbo v36, "\n"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v35, 0x7f121614

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/deviceinfo/ShowRegulatoryInformationActivity;->getString(I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v31

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string/jumbo v36, ":"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string/jumbo v36, "\n"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v35, 0x7f12160c

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/deviceinfo/ShowRegulatoryInformationActivity;->getString(I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v31

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string/jumbo v36, ":"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string/jumbo v36, "\n"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v35, 0x7f121609

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/deviceinfo/ShowRegulatoryInformationActivity;->getString(I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v31

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string/jumbo v36, ":"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string/jumbo v36, "\n"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v31

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string/jumbo v36, "\n"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v35

    if-eqz v35, :cond_342

    move-object/from16 v0, v31

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string/jumbo v36, ""

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string/jumbo v36, "\n"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_342
    const v35, 0x7f121617

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/deviceinfo/ShowRegulatoryInformationActivity;->getString(I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v31

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string/jumbo v36, ":"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string/jumbo v36, "\n"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/deviceinfo/ShowRegulatoryInformationActivity;->mContext:Landroid/content/Context;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lcom/android/settings/Utils;->isShopDemo(Landroid/content/Context;)Z

    move-result v35

    if-nez v35, :cond_3e0

    invoke-static {}, Lcom/android/settings/Utils;->isLDUModel()Z

    move-result v35

    xor-int/lit8 v35, v35, 0x1

    if-eqz v35, :cond_3e0

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v35

    if-eqz v35, :cond_47c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/deviceinfo/ShowRegulatoryInformationActivity;->mContext:Landroid/content/Context;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v35

    :goto_38e
    xor-int/lit8 v35, v35, 0x1

    if-eqz v35, :cond_3e0

    const v35, 0x7f12160a

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/deviceinfo/ShowRegulatoryInformationActivity;->getString(I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v31

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string/jumbo v36, ":"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string/jumbo v36, "\n"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v35, 0x7f121608

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/deviceinfo/ShowRegulatoryInformationActivity;->getString(I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v31

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string/jumbo v36, ":"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string/jumbo v36, "\n"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3e0
    const v35, 0x7f12161d

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/deviceinfo/ShowRegulatoryInformationActivity;->getString(I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v31

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string/jumbo v36, ":"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string/jumbo v36, "\n"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v35, 0x7f121607

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/deviceinfo/ShowRegulatoryInformationActivity;->getString(I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v31

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string/jumbo v36, ":"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string/jumbo v36, "\n"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v35, 0x7f12161f

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/deviceinfo/ShowRegulatoryInformationActivity;->getString(I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v31

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v35, 0x7f0a0231

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/deviceinfo/ShowRegulatoryInformationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v34

    check-cast v34, Landroid/widget/TextView;

    move-object/from16 v0, v34

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_454
    return-void

    :cond_455
    const v35, 0x7f0d025a

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/deviceinfo/ShowRegulatoryInformationActivity;->setContentView(I)V

    goto/16 :goto_1c

    :cond_461
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/deviceinfo/ShowRegulatoryInformationActivity;->translateManufactureCountry(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    goto/16 :goto_a4

    :cond_46b
    const v35, 0x7f12160b

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/deviceinfo/ShowRegulatoryInformationActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_c4

    :cond_478
    const/16 v33, 0x1

    goto/16 :goto_131

    :cond_47c
    const/16 v35, 0x0

    goto/16 :goto_38e

    :cond_480
    const-string/jumbo v35, "regulatory_info.png"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/deviceinfo/ShowRegulatoryInformationActivity;->getRegulatoryFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v35, "ro.csc.country_code"

    invoke-static/range {v35 .. v35}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v35, "COSTA RICA"

    move-object/from16 v0, v35

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_4da

    const-string/jumbo v35, "ro.multisim.simslotcount"

    invoke-static/range {v35 .. v35}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    const-string/jumbo v35, "ShowRegulatoryInformationActivity"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v37, "Applying Regulatory Info for Costa Rica CSC. Sim Slots number = "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v35, "2"

    move-object/from16 v0, v35

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_4da

    const-string/jumbo v35, "regulatory_info_ds.png"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/deviceinfo/ShowRegulatoryInformationActivity;->getRegulatoryFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_4da
    const-string/jumbo v35, "ro.product.name"

    invoke-static/range {v35 .. v35}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string/jumbo v35, "zero"

    move-object/from16 v0, v19

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v35

    if-nez v35, :cond_5ed

    const-string/jumbo v35, "SCV31"

    move-object/from16 v0, v19

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v35

    if-nez v35, :cond_5ed

    const-string/jumbo v35, "marinelteuc"

    move-object/from16 v0, v19

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v35

    if-nez v35, :cond_5ed

    const-string/jumbo v35, "SC-05G"

    move-object/from16 v0, v19

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v35

    if-nez v35, :cond_5ed

    const-string/jumbo v35, "SC-04G"

    move-object/from16 v0, v19

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v35

    if-nez v35, :cond_5ed

    const-string/jumbo v35, "404SC"

    move-object/from16 v0, v19

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    :goto_52d
    if-eqz v6, :cond_596

    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v35

    if-eqz v35, :cond_596

    const-string/jumbo v35, "phone"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/deviceinfo/ShowRegulatoryInformationActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/telephony/TelephonyManager;

    const/16 v35, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_5fa

    const-string/jumbo v35, "35222107"

    move-object/from16 v0, v16

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v35

    if-nez v35, :cond_582

    const-string/jumbo v35, "35232307"

    move-object/from16 v0, v16

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v35

    if-nez v35, :cond_582

    const-string/jumbo v35, "35420707"

    move-object/from16 v0, v16

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v35

    if-nez v35, :cond_582

    const-string/jumbo v35, "35422107"

    move-object/from16 v0, v16

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_5f0

    :cond_582
    const-string/jumbo v35, "ShowRegulatoryInformationActivity"

    const-string/jumbo v36, "S6 JPN - Regulatory Info / VN"

    invoke-static/range {v35 .. v36}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v35, "regulatory_info_vn.png"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/deviceinfo/ShowRegulatoryInformationActivity;->getRegulatoryFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_596
    :goto_596
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v35

    const-string/jumbo v36, "CscFeature_Setting_ConfigRevisionForRegulatoryInfo"

    invoke-virtual/range {v35 .. v36}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    const-string/jumbo v35, "ro.revision"

    invoke-static/range {v35 .. v35}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static/range {v26 .. v26}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v35

    if-nez v35, :cond_5e4

    const-string/jumbo v35, ";"

    move-object/from16 v0, v26

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v27

    const/4 v14, 0x0

    :goto_5ba
    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v35, v0

    move/from16 v0, v35

    if-ge v14, v0, :cond_5e4

    aget-object v35, v27, v14

    const-string/jumbo v36, ","

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    const/16 v35, 0x0

    aget-object v35, v18, v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_604

    const/16 v35, 0x1

    aget-object v35, v18, v35

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/deviceinfo/ShowRegulatoryInformationActivity;->getRegulatoryFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_5e4
    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_454

    :cond_5ed
    const/4 v6, 0x1

    goto/16 :goto_52d

    :cond_5f0
    const-string/jumbo v35, "ShowRegulatoryInformationActivity"

    const-string/jumbo v36, "S6 JPN - Regulatory Info"

    invoke-static/range {v35 .. v36}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_596

    :cond_5fa
    const-string/jumbo v35, "ShowRegulatoryInformationActivity"

    const-string/jumbo v36, "S6 JPN - IMEI is null"

    invoke-static/range {v35 .. v36}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_596

    :cond_604
    add-int/lit8 v14, v14, 0x1

    goto :goto_5ba
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
