.class public Lcom/samsung/android/settings/WarrantyInfo;
.super Lcom/android/internal/app/AlertActivity;
.source "WarrantyInfo.java"


# instance fields
.field private FILE_PATH_CONTACT_US:Ljava/lang/String;

.field private FILE_PATH_GENERAL_TERMS:Ljava/lang/String;

.field private FILE_PATH_PRODUCT_WARRANTY:Ljava/lang/String;

.field private FILE_PATH_WARRANTY_EXCEPTION:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/settings/WarrantyInfo;->FILE_PATH_GENERAL_TERMS:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/settings/WarrantyInfo;->FILE_PATH_WARRANTY_EXCEPTION:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/settings/WarrantyInfo;->FILE_PATH_PRODUCT_WARRANTY:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/settings/WarrantyInfo;->FILE_PATH_CONTACT_US:Ljava/lang/String;

    return-void
.end method

.method private getWarrantyInfoFilePath(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const-string/jumbo v3, "persist.sys.omc_etcpath"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_8
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "/system/serviceinfo/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_56

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "/system/serviceinfo/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_3b
    :goto_3b
    const-string/jumbo v3, "WarrantyInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "take WarrantyInfo from : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_55
    return-object v2

    :cond_56
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "/system/etc/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_8a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "/system/etc/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3b

    :cond_8a
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3b

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_c4
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_c4} :catch_c7

    move-result-object v2

    goto/16 :goto_3b

    :catch_c7
    move-exception v0

    const-string/jumbo v3, "WarrantyInfo"

    const-string/jumbo v4, "fail to find a file"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_55
.end method

.method private readCSCFile(Ljava/lang/String;)Ljava/lang/String;
    .registers 19

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v1, 0x0

    :try_start_4
    new-instance v8, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_b} :catch_e1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_b} :catch_9b
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_b} :catch_82
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_b} :catch_69
    .catchall {:try_start_4 .. :try_end_b} :catchall_b9

    :try_start_b
    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_10
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_10} :catch_e4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_b .. :try_end_10} :catch_f3
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_10} :catch_105
    .catch Ljava/lang/NullPointerException; {:try_start_b .. :try_end_10} :catch_11b
    .catchall {:try_start_b .. :try_end_10} :catchall_cf

    :try_start_10
    new-instance v12, Ljava/io/InputStreamReader;

    const-string/jumbo v15, "UTF-8"

    invoke-direct {v12, v10, v15}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_18
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_18} :catch_e8
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_10 .. :try_end_18} :catch_f6
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_18} :catch_109
    .catch Ljava/lang/NullPointerException; {:try_start_10 .. :try_end_18} :catch_11f
    .catchall {:try_start_10 .. :try_end_18} :catchall_d2

    :try_start_18
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v12}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1d
    .catch Ljava/io/FileNotFoundException; {:try_start_18 .. :try_end_1d} :catch_ed
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_18 .. :try_end_1d} :catch_fa
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1d} :catch_10e
    .catch Ljava/lang/NullPointerException; {:try_start_18 .. :try_end_1d} :catch_124
    .catchall {:try_start_18 .. :try_end_1d} :catchall_d6

    :try_start_1d
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    :goto_22
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_4c

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "\n"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_32
    .catch Ljava/io/FileNotFoundException; {:try_start_1d .. :try_end_32} :catch_33
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1d .. :try_end_32} :catch_ff
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_32} :catch_114
    .catch Ljava/lang/NullPointerException; {:try_start_1d .. :try_end_32} :catch_12a
    .catchall {:try_start_1d .. :try_end_32} :catchall_db

    goto :goto_22

    :catch_33
    move-exception v3

    move-object v1, v2

    move-object v11, v12

    move-object v9, v10

    move-object v7, v8

    :goto_38
    :try_start_38
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_b9

    if-eqz v9, :cond_40

    :try_start_3d
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V

    :cond_40
    if-eqz v11, :cond_45

    invoke-virtual {v11}, Ljava/io/InputStreamReader;->close()V

    :cond_45
    if-eqz v1, :cond_4a

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_4a} :catch_b4

    :cond_4a
    :goto_4a
    const/4 v15, 0x0

    return-object v15

    :cond_4c
    :try_start_4c
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_53
    .catch Ljava/io/FileNotFoundException; {:try_start_4c .. :try_end_53} :catch_33
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4c .. :try_end_53} :catch_ff
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_53} :catch_114
    .catch Ljava/lang/NullPointerException; {:try_start_4c .. :try_end_53} :catch_12a
    .catchall {:try_start_4c .. :try_end_53} :catchall_db

    move-result-object v15

    if-eqz v10, :cond_59

    :try_start_56
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V

    :cond_59
    if-eqz v12, :cond_5e

    invoke-virtual {v12}, Ljava/io/InputStreamReader;->close()V

    :cond_5e
    if-eqz v2, :cond_63

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_63} :catch_64

    :cond_63
    :goto_63
    return-object v15

    :catch_64
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_63

    :catch_69
    move-exception v6

    :goto_6a
    :try_start_6a
    invoke-virtual {v6}, Ljava/lang/NullPointerException;->printStackTrace()V
    :try_end_6d
    .catchall {:try_start_6a .. :try_end_6d} :catchall_b9

    if-eqz v9, :cond_72

    :try_start_6f
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V

    :cond_72
    if-eqz v11, :cond_77

    invoke-virtual {v11}, Ljava/io/InputStreamReader;->close()V

    :cond_77
    if-eqz v1, :cond_4a

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_7c
    .catch Ljava/io/IOException; {:try_start_6f .. :try_end_7c} :catch_7d

    goto :goto_4a

    :catch_7d
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4a

    :catch_82
    move-exception v4

    :goto_83
    :try_start_83
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_86
    .catchall {:try_start_83 .. :try_end_86} :catchall_b9

    if-eqz v9, :cond_8b

    :try_start_88
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V

    :cond_8b
    if-eqz v11, :cond_90

    invoke-virtual {v11}, Ljava/io/InputStreamReader;->close()V

    :cond_90
    if-eqz v1, :cond_4a

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_95
    .catch Ljava/io/IOException; {:try_start_88 .. :try_end_95} :catch_96

    goto :goto_4a

    :catch_96
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4a

    :catch_9b
    move-exception v5

    :goto_9c
    :try_start_9c
    invoke-virtual {v5}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V
    :try_end_9f
    .catchall {:try_start_9c .. :try_end_9f} :catchall_b9

    if-eqz v9, :cond_a4

    :try_start_a1
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V

    :cond_a4
    if-eqz v11, :cond_a9

    invoke-virtual {v11}, Ljava/io/InputStreamReader;->close()V

    :cond_a9
    if-eqz v1, :cond_4a

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_ae
    .catch Ljava/io/IOException; {:try_start_a1 .. :try_end_ae} :catch_af

    goto :goto_4a

    :catch_af
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4a

    :catch_b4
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4a

    :catchall_b9
    move-exception v15

    :goto_ba
    if-eqz v9, :cond_bf

    :try_start_bc
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V

    :cond_bf
    if-eqz v11, :cond_c4

    invoke-virtual {v11}, Ljava/io/InputStreamReader;->close()V

    :cond_c4
    if-eqz v1, :cond_c9

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_c9
    .catch Ljava/io/IOException; {:try_start_bc .. :try_end_c9} :catch_ca

    :cond_c9
    :goto_c9
    throw v15

    :catch_ca
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_c9

    :catchall_cf
    move-exception v15

    move-object v7, v8

    goto :goto_ba

    :catchall_d2
    move-exception v15

    move-object v9, v10

    move-object v7, v8

    goto :goto_ba

    :catchall_d6
    move-exception v15

    move-object v11, v12

    move-object v9, v10

    move-object v7, v8

    goto :goto_ba

    :catchall_db
    move-exception v15

    move-object v1, v2

    move-object v11, v12

    move-object v9, v10

    move-object v7, v8

    goto :goto_ba

    :catch_e1
    move-exception v3

    goto/16 :goto_38

    :catch_e4
    move-exception v3

    move-object v7, v8

    goto/16 :goto_38

    :catch_e8
    move-exception v3

    move-object v9, v10

    move-object v7, v8

    goto/16 :goto_38

    :catch_ed
    move-exception v3

    move-object v11, v12

    move-object v9, v10

    move-object v7, v8

    goto/16 :goto_38

    :catch_f3
    move-exception v5

    move-object v7, v8

    goto :goto_9c

    :catch_f6
    move-exception v5

    move-object v9, v10

    move-object v7, v8

    goto :goto_9c

    :catch_fa
    move-exception v5

    move-object v11, v12

    move-object v9, v10

    move-object v7, v8

    goto :goto_9c

    :catch_ff
    move-exception v5

    move-object v1, v2

    move-object v11, v12

    move-object v9, v10

    move-object v7, v8

    goto :goto_9c

    :catch_105
    move-exception v4

    move-object v7, v8

    goto/16 :goto_83

    :catch_109
    move-exception v4

    move-object v9, v10

    move-object v7, v8

    goto/16 :goto_83

    :catch_10e
    move-exception v4

    move-object v11, v12

    move-object v9, v10

    move-object v7, v8

    goto/16 :goto_83

    :catch_114
    move-exception v4

    move-object v1, v2

    move-object v11, v12

    move-object v9, v10

    move-object v7, v8

    goto/16 :goto_83

    :catch_11b
    move-exception v6

    move-object v7, v8

    goto/16 :goto_6a

    :catch_11f
    move-exception v6

    move-object v9, v10

    move-object v7, v8

    goto/16 :goto_6a

    :catch_124
    move-exception v6

    move-object v11, v12

    move-object v9, v10

    move-object v7, v8

    goto/16 :goto_6a

    :catch_12a
    move-exception v6

    move-object v1, v2

    move-object v11, v12

    move-object v9, v10

    move-object v7, v8

    goto/16 :goto_6a
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 12

    const/4 v8, 0x0

    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/WarrantyInfo;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v7, "Option"

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    const-string/jumbo v7, "WarrantyInfo"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "option "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v6, :cond_2e

    invoke-virtual {p0}, Lcom/samsung/android/settings/WarrantyInfo;->finish()V

    :cond_2e
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v7, 0x7f0d0375

    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    const v7, 0x7f0a0961

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const-string/jumbo v1, ""

    iget-object v0, p0, Lcom/samsung/android/settings/WarrantyInfo;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const-string/jumbo v7, "general_terms.txt"

    invoke-direct {p0, v7}, Lcom/samsung/android/settings/WarrantyInfo;->getWarrantyInfoFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/settings/WarrantyInfo;->FILE_PATH_GENERAL_TERMS:Ljava/lang/String;

    const-string/jumbo v7, "warranty_exceptions.txt"

    invoke-direct {p0, v7}, Lcom/samsung/android/settings/WarrantyInfo;->getWarrantyInfoFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/settings/WarrantyInfo;->FILE_PATH_WARRANTY_EXCEPTION:Ljava/lang/String;

    const-string/jumbo v7, "product_warranty.txt"

    invoke-direct {p0, v7}, Lcom/samsung/android/settings/WarrantyInfo;->getWarrantyInfoFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/settings/WarrantyInfo;->FILE_PATH_PRODUCT_WARRANTY:Ljava/lang/String;

    const-string/jumbo v7, "contact_us.txt"

    invoke-direct {p0, v7}, Lcom/samsung/android/settings/WarrantyInfo;->getWarrantyInfoFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/settings/WarrantyInfo;->FILE_PATH_CONTACT_US:Ljava/lang/String;

    packed-switch v6, :pswitch_data_da

    :goto_6f
    iput-object v5, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v7, 0x104000a

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/WarrantyInfo;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/samsung/android/settings/WarrantyInfo;->setupAlert()V

    return-void

    :pswitch_7e
    iget-object v7, p0, Lcom/samsung/android/settings/WarrantyInfo;->FILE_PATH_GENERAL_TERMS:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/samsung/android/settings/WarrantyInfo;->readCSCFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/WarrantyInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f120c8b

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6f

    :pswitch_95
    iget-object v7, p0, Lcom/samsung/android/settings/WarrantyInfo;->FILE_PATH_WARRANTY_EXCEPTION:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/samsung/android/settings/WarrantyInfo;->readCSCFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/WarrantyInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f121e76

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6f

    :pswitch_ac
    iget-object v7, p0, Lcom/samsung/android/settings/WarrantyInfo;->FILE_PATH_PRODUCT_WARRANTY:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/samsung/android/settings/WarrantyInfo;->readCSCFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/WarrantyInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f121560

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6f

    :pswitch_c3
    iget-object v7, p0, Lcom/samsung/android/settings/WarrantyInfo;->FILE_PATH_CONTACT_US:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/samsung/android/settings/WarrantyInfo;->readCSCFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/WarrantyInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f120647

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6f

    :pswitch_data_da
    .packed-switch 0x1
        :pswitch_7e
        :pswitch_95
        :pswitch_ac
        :pswitch_c3
    .end packed-switch
.end method

.method protected onDestroy()V
    .registers 1

    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    return-void
.end method
