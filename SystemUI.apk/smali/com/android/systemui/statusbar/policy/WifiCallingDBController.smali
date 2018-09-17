.class public Lcom/android/systemui/statusbar/policy/WifiCallingDBController;
.super Ljava/lang/Object;
.source "WifiCallingDBController.java"


# static fields
.field public static final CONTENT_URI_VOWIFISETTING_TABLE:Landroid/net/Uri;

.field public static final CONTENT_URI_VOWIFISETTING_TABLE2:Landroid/net/Uri;

.field public static final CONTENT_URI_WFCLAUNCHSTATE_TABLE:Landroid/net/Uri;

.field private static sVoWifiEnabledState:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string/jumbo v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "iwlansettings"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "todos"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "vowifisetting"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiCallingDBController;->CONTENT_URI_VOWIFISETTING_TABLE:Landroid/net/Uri;

    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string/jumbo v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "iwlansettings"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "todos"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "vowifisetting2"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiCallingDBController;->CONTENT_URI_VOWIFISETTING_TABLE2:Landroid/net/Uri;

    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string/jumbo v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "com.sec.unifiedwfc.wfcprovider"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "wfc_fw_support"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiCallingDBController;->CONTENT_URI_WFCLAUNCHSTATE_TABLE:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getCurrentPhoneID(Landroid/content/Context;)I
    .registers 4

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/systemui/Rune;->supportDualIms()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-static {p0}, Lcom/android/systemui/statusbar/DeviceState;->getVoWifiEnableState(Landroid/content/Context;)I

    move-result v1

    sput v1, Lcom/android/systemui/statusbar/policy/WifiCallingDBController;->sVoWifiEnabledState:I

    sget v1, Lcom/android/systemui/statusbar/policy/WifiCallingDBController;->sVoWifiEnabledState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_14

    const/4 v0, 0x0

    :goto_13
    return v0

    :cond_14
    sget v1, Lcom/android/systemui/statusbar/policy/WifiCallingDBController;->sVoWifiEnabledState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1b

    const/4 v0, 0x1

    goto :goto_13

    :cond_1b
    invoke-static {}, Lcom/android/systemui/statusbar/DeviceState;->getDefaultDataPhoneId()I

    move-result v0

    goto :goto_13

    :cond_20
    invoke-static {}, Lcom/android/systemui/statusbar/DeviceState;->getDefaultDataPhoneId()I

    move-result v0

    goto :goto_13
.end method

.method public static getInt(Landroid/content/Context;Ljava/lang/String;I)I
    .registers 5

    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/WifiCallingDBController;->getCurrentPhoneID(Landroid/content/Context;)I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/policy/WifiCallingDBController;->getInt(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v1

    return v1
.end method

.method public static getInt(Landroid/content/Context;Ljava/lang/String;II)I
    .registers 20

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v3, v1

    move/from16 v7, p2

    const/4 v12, 0x0

    const/4 v13, 0x0

    :try_start_a
    invoke-static {}, Lcom/android/systemui/Rune;->supportDualIms()Z

    move-result v1

    if-eqz v1, :cond_bc

    const-string/jumbo v1, "wifi_call_enable"

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_bc

    move/from16 v14, p2

    move/from16 v15, p2

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/statusbar/policy/WifiCallingDBController;->CONTENT_URI_VOWIFISETTING_TABLE:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    if-eqz v12, :cond_41

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_41

    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-object/from16 v0, p1

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    :cond_41
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/statusbar/policy/WifiCallingDBController;->CONTENT_URI_VOWIFISETTING_TABLE2:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    if-eqz v13, :cond_63

    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_63

    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-object/from16 v0, p1

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    :cond_63
    const-string/jumbo v1, "WifiCallingDBController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getInt() "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ", sVoWifiEnabledState = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v4, Lcom/android/systemui/statusbar/policy/WifiCallingDBController;->sVoWifiEnabledState:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v1, Lcom/android/systemui/statusbar/policy/WifiCallingDBController;->sVoWifiEnabledState:I
    :try_end_97
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_97} :catch_13c
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_97} :catch_12b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_97} :catch_11b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a .. :try_end_97} :catch_10b
    .catchall {:try_start_a .. :try_end_97} :catchall_14d

    const/4 v2, 0x3

    if-ne v1, v2, :cond_ae

    if-nez v14, :cond_ac

    if-nez v15, :cond_ac

    const/4 v7, 0x0

    :cond_9f
    :goto_9f
    if-eqz v12, :cond_a5

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    const/4 v12, 0x0

    :cond_a5
    if-eqz v13, :cond_ab

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :goto_aa
    const/4 v13, 0x0

    :cond_ab
    return v7

    :cond_ac
    const/4 v7, 0x1

    goto :goto_9f

    :cond_ae
    :try_start_ae
    sget v1, Lcom/android/systemui/statusbar/policy/WifiCallingDBController;->sVoWifiEnabledState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_b5

    move v7, v14

    goto :goto_9f

    :cond_b5
    sget v1, Lcom/android/systemui/statusbar/policy/WifiCallingDBController;->sVoWifiEnabledState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_9f

    move v7, v15

    goto :goto_9f

    :cond_bc
    const-string/jumbo v1, "launch_state"

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ea

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/statusbar/policy/WifiCallingDBController;->CONTENT_URI_WFCLAUNCHSTATE_TABLE:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    :goto_d4
    if-eqz v12, :cond_108

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_108

    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-object/from16 v0, p1

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    goto :goto_9f

    :cond_ea
    if-nez p3, :cond_fa

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/statusbar/policy/WifiCallingDBController;->CONTENT_URI_VOWIFISETTING_TABLE:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    goto :goto_d4

    :cond_fa
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/statusbar/policy/WifiCallingDBController;->CONTENT_URI_VOWIFISETTING_TABLE2:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_106
    .catch Ljava/lang/NumberFormatException; {:try_start_ae .. :try_end_106} :catch_13c
    .catch Ljava/lang/IllegalStateException; {:try_start_ae .. :try_end_106} :catch_12b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_ae .. :try_end_106} :catch_11b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_ae .. :try_end_106} :catch_10b
    .catchall {:try_start_ae .. :try_end_106} :catchall_14d

    move-result-object v12

    goto :goto_d4

    :cond_108
    move/from16 v7, p2

    goto :goto_9f

    :catch_10b
    move-exception v8

    :try_start_10c
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_10f
    .catchall {:try_start_10c .. :try_end_10f} :catchall_14d

    if-eqz v12, :cond_115

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    const/4 v12, 0x0

    :cond_115
    if-eqz v13, :cond_ab

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto :goto_aa

    :catch_11b
    move-exception v9

    :try_start_11c
    invoke-virtual {v9}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_11f
    .catchall {:try_start_11c .. :try_end_11f} :catchall_14d

    if-eqz v12, :cond_125

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    const/4 v12, 0x0

    :cond_125
    if-eqz v13, :cond_ab

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto :goto_aa

    :catch_12b
    move-exception v10

    :try_start_12c
    invoke-virtual {v10}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_12f
    .catchall {:try_start_12c .. :try_end_12f} :catchall_14d

    if-eqz v12, :cond_135

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    const/4 v12, 0x0

    :cond_135
    if-eqz v13, :cond_ab

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto/16 :goto_aa

    :catch_13c
    move-exception v11

    :try_start_13d
    invoke-virtual {v11}, Ljava/lang/NumberFormatException;->printStackTrace()V
    :try_end_140
    .catchall {:try_start_13d .. :try_end_140} :catchall_14d

    if-eqz v12, :cond_146

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    const/4 v12, 0x0

    :cond_146
    if-eqz v13, :cond_ab

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto/16 :goto_aa

    :catchall_14d
    move-exception v1

    if-eqz v12, :cond_154

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    const/4 v12, 0x0

    :cond_154
    if-eqz v13, :cond_15a

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    const/4 v13, 0x0

    :cond_15a
    throw v1
.end method

.method public static setInt(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 4

    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/WifiCallingDBController;->getCurrentPhoneID(Landroid/content/Context;)I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/policy/WifiCallingDBController;->setInt(Landroid/content/Context;Ljava/lang/String;II)V

    return-void
.end method

.method public static setInt(Landroid/content/Context;Ljava/lang/String;II)V
    .registers 12

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :try_start_c
    invoke-static {}, Lcom/android/systemui/Rune;->supportDualIms()Z

    move-result v4

    if-eqz v4, :cond_73

    const-string/jumbo v4, "wifi_call_enable"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_73

    sget v4, Lcom/android/systemui/statusbar/policy/WifiCallingDBController;->sVoWifiEnabledState:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_47

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/systemui/statusbar/policy/WifiCallingDBController;->CONTENT_URI_VOWIFISETTING_TABLE:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v3, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/systemui/statusbar/policy/WifiCallingDBController;->CONTENT_URI_VOWIFISETTING_TABLE2:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v3, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_36
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_36} :catch_58
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_36} :catch_6e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c .. :try_end_36} :catch_81

    :cond_36
    :goto_36
    const-string/jumbo v4, "wifi_call_when_roaming"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_92

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, p1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_46
    return-void

    :cond_47
    :try_start_47
    sget v4, Lcom/android/systemui/statusbar/policy/WifiCallingDBController;->sVoWifiEnabledState:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_5d

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/systemui/statusbar/policy/WifiCallingDBController;->CONTENT_URI_VOWIFISETTING_TABLE:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v3, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_57
    .catch Ljava/lang/NumberFormatException; {:try_start_47 .. :try_end_57} :catch_58
    .catch Ljava/lang/IllegalArgumentException; {:try_start_47 .. :try_end_57} :catch_6e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_47 .. :try_end_57} :catch_81

    goto :goto_36

    :catch_58
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_36

    :cond_5d
    :try_start_5d
    sget v4, Lcom/android/systemui/statusbar/policy/WifiCallingDBController;->sVoWifiEnabledState:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_36

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/systemui/statusbar/policy/WifiCallingDBController;->CONTENT_URI_VOWIFISETTING_TABLE2:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v3, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_6d
    .catch Ljava/lang/NumberFormatException; {:try_start_5d .. :try_end_6d} :catch_58
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5d .. :try_end_6d} :catch_6e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5d .. :try_end_6d} :catch_81

    goto :goto_36

    :catch_6e
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_36

    :cond_73
    if-nez p3, :cond_86

    :try_start_75
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/systemui/statusbar/policy/WifiCallingDBController;->CONTENT_URI_VOWIFISETTING_TABLE:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v3, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_80
    .catch Ljava/lang/NumberFormatException; {:try_start_75 .. :try_end_80} :catch_58
    .catch Ljava/lang/IllegalArgumentException; {:try_start_75 .. :try_end_80} :catch_6e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_75 .. :try_end_80} :catch_81

    goto :goto_36

    :catch_81
    move-exception v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    goto :goto_36

    :cond_86
    :try_start_86
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/systemui/statusbar/policy/WifiCallingDBController;->CONTENT_URI_VOWIFISETTING_TABLE2:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v3, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_91
    .catch Ljava/lang/NumberFormatException; {:try_start_86 .. :try_end_91} :catch_58
    .catch Ljava/lang/IllegalArgumentException; {:try_start_86 .. :try_end_91} :catch_6e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_86 .. :try_end_91} :catch_81

    goto :goto_36

    :cond_92
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, p1, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_46
.end method
