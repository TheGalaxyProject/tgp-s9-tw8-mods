.class public Lcom/samsung/android/settings/rz/ChangeLog;
.super Landroid/app/Fragment;
.source "ChangeLog.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 15

    const/4 v2, 0x0

    const/4 v6, 0x0

    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v9, 0x800

    new-array v8, v9, [C

    new-instance v3, Ljava/io/FileReader;

    const-string v9, "/system/changelog.txt"

    invoke-direct {v3, v9}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_12} :catch_60
    .catchall {:try_start_2 .. :try_end_12} :catchall_52

    :goto_12
    :try_start_12
    invoke-virtual {v3, v8}, Ljava/io/InputStreamReader;->read([C)I

    move-result v4

    if-ltz v4, :cond_44

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_1c} :catch_1d
    .catchall {:try_start_12 .. :try_end_1c} :catchall_5d

    goto :goto_12

    :catch_1d
    move-exception v1

    move-object v2, v3

    :goto_1f
    const v9, 0x7f1222ab

    :try_start_22
    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/rz/ChangeLog;->getString(I)Ljava/lang/String;
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_52

    move-result-object v6

    if-eqz v2, :cond_2b

    :try_start_28
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2b} :catch_59

    :cond_2b
    :goto_2b
    new-instance v7, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/rz/ChangeLog;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v7, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v5, Landroid/widget/ScrollView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/rz/ChangeLog;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v5, v9}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v7}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    return-object v5

    :cond_44
    :try_start_44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_47} :catch_1d
    .catchall {:try_start_44 .. :try_end_47} :catchall_5d

    move-result-object v6

    if-eqz v3, :cond_4d

    :try_start_4a
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_4d} :catch_4f

    :cond_4d
    move-object v2, v3

    goto :goto_2b

    :catch_4f
    move-exception v9

    move-object v2, v3

    goto :goto_2b

    :catchall_52
    move-exception v9

    :goto_53
    if-eqz v2, :cond_58

    :try_start_55
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_58} :catch_5b

    :cond_58
    :goto_58
    throw v9

    :catch_59
    move-exception v9

    goto :goto_2b

    :catch_5b
    move-exception v10

    goto :goto_58

    :catchall_5d
    move-exception v9

    move-object v2, v3

    goto :goto_53

    :catch_60
    move-exception v1

    goto :goto_1f
.end method
