.class public Lcom/android/server/am/multiwindow/MultiWindowSettingFeaturesObserver;
.super Landroid/database/ContentObserver;
.source "MultiWindowSettingFeaturesObserver.java"

# interfaces
.implements Lcom/android/server/am/multiwindow/MultiWindowFeaturesObserver;


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "MultiWindowSettingFeaturesObserver"

.field private static final sGlobalSettingToTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field private static final sIntegerDefaultKeyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sSecureSettingToTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field private static final sSecureSettingToTypeMapForUser:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field private static final sSystemSettingToTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field private static final sSystemSettingToTypeMapForUser:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mController:Lcom/android/server/am/MultiWindowFeaturesController;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/am/multiwindow/MultiWindowSettingFeaturesObserver;->sSecureSettingToTypeMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/am/multiwindow/MultiWindowSettingFeaturesObserver;->sSystemSettingToTypeMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/am/multiwindow/MultiWindowSettingFeaturesObserver;->sGlobalSettingToTypeMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/am/multiwindow/MultiWindowSettingFeaturesObserver;->sSecureSettingToTypeMapForUser:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/am/multiwindow/MultiWindowSettingFeaturesObserver;->sSystemSettingToTypeMapForUser:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/am/multiwindow/MultiWindowSettingFeaturesObserver;->sIntegerDefaultKeyMap:Ljava/util/Map;

    sget-object v0, Lcom/android/server/am/multiwindow/MultiWindowSettingFeaturesObserver;->sSystemSettingToTypeMapForUser:Ljava/util/Map;

    const-string/jumbo v1, "db_popup_view_shortcut"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/am/multiwindow/MultiWindowSettingFeaturesObserver;->sIntegerDefaultKeyMap:Ljava/util/Map;

    const-string/jumbo v1, "db_popup_view_shortcut"

    new-instance v2, Ljava/lang/Integer;

    const/4 v3, -0x1

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/am/multiwindow/MultiWindowSettingFeaturesObserver;->sSecureSettingToTypeMapForUser:Ljava/util/Map;

    const-string/jumbo v1, "game_multiwindow_enaable"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/am/multiwindow/MultiWindowSettingFeaturesObserver;->sIntegerDefaultKeyMap:Ljava/util/Map;

    const-string/jumbo v1, "game_multiwindow_enaable"

    new-instance v2, Ljava/lang/Integer;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/am/MultiWindowFeaturesController;)V
    .registers 4

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/server/am/multiwindow/MultiWindowSettingFeaturesObserver;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/server/am/multiwindow/MultiWindowSettingFeaturesObserver;->mController:Lcom/android/server/am/MultiWindowFeaturesController;

    return-void
.end method

.method private populate(Landroid/os/Bundle;Ljava/util/Map;I)Z
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;I)Z"
        }
    .end annotation

    const/4 v4, 0x0

    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_9
    :goto_9
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_2e8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Class;

    const-class v16, Ljava/lang/String;

    move-object/from16 v0, v16

    if-ne v10, v0, :cond_c5

    sget-object v16, Lcom/android/server/am/multiwindow/MultiWindowSettingFeaturesObserver;->sSecureSettingToTypeMap:Ljava/util/Map;

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    if-ne v0, v1, :cond_58

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/multiwindow/MultiWindowSettingFeaturesObserver;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v0, v9}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    :goto_3f
    if-eqz v13, :cond_9

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    xor-int/lit8 v16, v16, 0x1

    if-eqz v16, :cond_9

    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x1

    goto :goto_9

    :cond_58
    sget-object v16, Lcom/android/server/am/multiwindow/MultiWindowSettingFeaturesObserver;->sSystemSettingToTypeMap:Ljava/util/Map;

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    if-ne v0, v1, :cond_71

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/multiwindow/MultiWindowSettingFeaturesObserver;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v0, v9}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    goto :goto_3f

    :cond_71
    sget-object v16, Lcom/android/server/am/multiwindow/MultiWindowSettingFeaturesObserver;->sGlobalSettingToTypeMap:Ljava/util/Map;

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    if-ne v0, v1, :cond_8a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/multiwindow/MultiWindowSettingFeaturesObserver;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v0, v9}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    goto :goto_3f

    :cond_8a
    sget-object v16, Lcom/android/server/am/multiwindow/MultiWindowSettingFeaturesObserver;->sSecureSettingToTypeMapForUser:Ljava/util/Map;

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    if-ne v0, v1, :cond_a5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/multiwindow/MultiWindowSettingFeaturesObserver;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, p3

    invoke-static {v0, v9, v1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    goto :goto_3f

    :cond_a5
    sget-object v16, Lcom/android/server/am/multiwindow/MultiWindowSettingFeaturesObserver;->sSystemSettingToTypeMapForUser:Ljava/util/Map;

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    if-ne v0, v1, :cond_c0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/multiwindow/MultiWindowSettingFeaturesObserver;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, p3

    invoke-static {v0, v9, v1}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    goto :goto_3f

    :cond_c0
    const-string/jumbo v13, ""

    goto/16 :goto_3f

    :cond_c5
    sget-object v16, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v16

    if-ne v10, v0, :cond_187

    sget-object v16, Lcom/android/server/am/multiwindow/MultiWindowSettingFeaturesObserver;->sIntegerDefaultKeyMap:Ljava/util/Map;

    move-object/from16 v0, v16

    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    if-eqz v6, :cond_109

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    :goto_db
    sget-object v16, Lcom/android/server/am/multiwindow/MultiWindowSettingFeaturesObserver;->sSecureSettingToTypeMap:Ljava/util/Map;

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    if-ne v0, v1, :cond_10b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/multiwindow/MultiWindowSettingFeaturesObserver;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v0, v9, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    :goto_f7
    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v16

    move/from16 v0, v16

    if-eq v12, v0, :cond_9

    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v4, 0x1

    goto/16 :goto_9

    :cond_109
    const/4 v5, 0x0

    goto :goto_db

    :cond_10b
    sget-object v16, Lcom/android/server/am/multiwindow/MultiWindowSettingFeaturesObserver;->sSystemSettingToTypeMap:Ljava/util/Map;

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    if-ne v0, v1, :cond_128

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/multiwindow/MultiWindowSettingFeaturesObserver;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v0, v9, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    goto :goto_f7

    :cond_128
    sget-object v16, Lcom/android/server/am/multiwindow/MultiWindowSettingFeaturesObserver;->sGlobalSettingToTypeMap:Ljava/util/Map;

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    if-ne v0, v1, :cond_145

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/multiwindow/MultiWindowSettingFeaturesObserver;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v0, v9, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    goto :goto_f7

    :cond_145
    sget-object v16, Lcom/android/server/am/multiwindow/MultiWindowSettingFeaturesObserver;->sSecureSettingToTypeMapForUser:Ljava/util/Map;

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    if-ne v0, v1, :cond_164

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/multiwindow/MultiWindowSettingFeaturesObserver;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    move/from16 v2, p3

    invoke-static {v0, v9, v1, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v12

    goto :goto_f7

    :cond_164
    sget-object v16, Lcom/android/server/am/multiwindow/MultiWindowSettingFeaturesObserver;->sSystemSettingToTypeMapForUser:Ljava/util/Map;

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    if-ne v0, v1, :cond_184

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/multiwindow/MultiWindowSettingFeaturesObserver;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    move/from16 v2, p3

    invoke-static {v0, v9, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v12

    goto/16 :goto_f7

    :cond_184
    const/4 v12, 0x0

    goto/16 :goto_f7

    :cond_187
    sget-object v16, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v16

    if-ne v10, v0, :cond_237

    sget-object v16, Lcom/android/server/am/multiwindow/MultiWindowSettingFeaturesObserver;->sSecureSettingToTypeMap:Ljava/util/Map;

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    if-ne v0, v1, :cond_1bb

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/multiwindow/MultiWindowSettingFeaturesObserver;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v0, v9, v1}, Landroid/provider/Settings$Secure;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v11

    :goto_1a9
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v16

    cmpl-float v16, v11, v16

    if-eqz v16, :cond_9

    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v11}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const/4 v4, 0x1

    goto/16 :goto_9

    :cond_1bb
    sget-object v16, Lcom/android/server/am/multiwindow/MultiWindowSettingFeaturesObserver;->sSystemSettingToTypeMap:Ljava/util/Map;

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    if-ne v0, v1, :cond_1d8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/multiwindow/MultiWindowSettingFeaturesObserver;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v0, v9, v1}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v11

    goto :goto_1a9

    :cond_1d8
    sget-object v16, Lcom/android/server/am/multiwindow/MultiWindowSettingFeaturesObserver;->sGlobalSettingToTypeMap:Ljava/util/Map;

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    if-ne v0, v1, :cond_1f5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/multiwindow/MultiWindowSettingFeaturesObserver;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v0, v9, v1}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v11

    goto :goto_1a9

    :cond_1f5
    sget-object v16, Lcom/android/server/am/multiwindow/MultiWindowSettingFeaturesObserver;->sSecureSettingToTypeMapForUser:Ljava/util/Map;

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    if-ne v0, v1, :cond_214

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/multiwindow/MultiWindowSettingFeaturesObserver;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    move/from16 v2, p3

    invoke-static {v0, v9, v1, v2}, Landroid/provider/Settings$Secure;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v11

    goto :goto_1a9

    :cond_214
    sget-object v16, Lcom/android/server/am/multiwindow/MultiWindowSettingFeaturesObserver;->sSystemSettingToTypeMapForUser:Ljava/util/Map;

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    if-ne v0, v1, :cond_234

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/multiwindow/MultiWindowSettingFeaturesObserver;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    move/from16 v2, p3

    invoke-static {v0, v9, v1, v2}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v11

    goto/16 :goto_1a9

    :cond_234
    const/4 v11, 0x0

    goto/16 :goto_1a9

    :cond_237
    sget-object v16, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v16

    if-ne v10, v0, :cond_9

    sget-object v16, Lcom/android/server/am/multiwindow/MultiWindowSettingFeaturesObserver;->sSecureSettingToTypeMap:Ljava/util/Map;

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    if-ne v0, v1, :cond_26b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/multiwindow/MultiWindowSettingFeaturesObserver;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-wide/16 v18, 0x0

    move-object/from16 v0, v16

    move-wide/from16 v1, v18

    invoke-static {v0, v9, v1, v2}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v14

    :goto_259
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v16

    cmp-long v16, v14, v16

    if-eqz v16, :cond_9

    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v14, v15}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/4 v4, 0x1

    goto/16 :goto_9

    :cond_26b
    sget-object v16, Lcom/android/server/am/multiwindow/MultiWindowSettingFeaturesObserver;->sSystemSettingToTypeMap:Ljava/util/Map;

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    if-ne v0, v1, :cond_288

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/multiwindow/MultiWindowSettingFeaturesObserver;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-wide/16 v18, 0x0

    move-object/from16 v0, v16

    move-wide/from16 v1, v18

    invoke-static {v0, v9, v1, v2}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v14

    goto :goto_259

    :cond_288
    sget-object v16, Lcom/android/server/am/multiwindow/MultiWindowSettingFeaturesObserver;->sGlobalSettingToTypeMap:Ljava/util/Map;

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    if-ne v0, v1, :cond_2a5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/multiwindow/MultiWindowSettingFeaturesObserver;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-wide/16 v18, 0x0

    move-object/from16 v0, v16

    move-wide/from16 v1, v18

    invoke-static {v0, v9, v1, v2}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v14

    goto :goto_259

    :cond_2a5
    sget-object v16, Lcom/android/server/am/multiwindow/MultiWindowSettingFeaturesObserver;->sSecureSettingToTypeMapForUser:Ljava/util/Map;

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    if-ne v0, v1, :cond_2c4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/multiwindow/MultiWindowSettingFeaturesObserver;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-wide/16 v18, 0x0

    move-object/from16 v0, v16

    move-wide/from16 v1, v18

    move/from16 v3, p3

    invoke-static {v0, v9, v1, v2, v3}, Landroid/provider/Settings$Secure;->getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)J

    move-result-wide v14

    goto :goto_259

    :cond_2c4
    sget-object v16, Lcom/android/server/am/multiwindow/MultiWindowSettingFeaturesObserver;->sSystemSettingToTypeMapForUser:Ljava/util/Map;

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    if-ne v0, v1, :cond_2e4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/multiwindow/MultiWindowSettingFeaturesObserver;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-wide/16 v18, 0x0

    move-object/from16 v0, v16

    move-wide/from16 v1, v18

    move/from16 v3, p3

    invoke-static {v0, v9, v1, v2, v3}, Landroid/provider/Settings$System;->getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)J

    move-result-wide v14

    goto/16 :goto_259

    :cond_2e4
    const-wide/16 v14, 0x0

    goto/16 :goto_259

    :cond_2e8
    return v4
.end method


# virtual methods
.method public beginObserveMultiWindowSettings()V
    .registers 8

    const/4 v6, 0x0

    const-string/jumbo v3, "MultiWindowSettingFeaturesObserver"

    const-string/jumbo v4, "beginObserveMultiWindowSettings"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/android/server/am/multiwindow/MultiWindowSettingFeaturesObserver;->sSecureSettingToTypeMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_48

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string/jumbo v3, "MultiWindowSettingFeaturesObserver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "beginObserveMultiWindowSettings : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/am/multiwindow/MultiWindowSettingFeaturesObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v2, v6, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_14

    :cond_48
    sget-object v3, Lcom/android/server/am/multiwindow/MultiWindowSettingFeaturesObserver;->sSystemSettingToTypeMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_52
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_86

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string/jumbo v3, "MultiWindowSettingFeaturesObserver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "beginObserveMultiWindowSettings : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/am/multiwindow/MultiWindowSettingFeaturesObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v2, v6, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_52

    :cond_86
    sget-object v3, Lcom/android/server/am/multiwindow/MultiWindowSettingFeaturesObserver;->sGlobalSettingToTypeMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_90
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string/jumbo v3, "MultiWindowSettingFeaturesObserver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "beginObserveMultiWindowSettings : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/am/multiwindow/MultiWindowSettingFeaturesObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v2, v6, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_90

    :cond_c4
    invoke-virtual {p0, v6}, Lcom/android/server/am/multiwindow/MultiWindowSettingFeaturesObserver;->beginObserveMultiWindowSettingsForSingleUser(I)V

    return-void
.end method

.method public beginObserveMultiWindowSettingsForSingleUser(I)V
    .registers 9

    const/4 v6, 0x0

    const-string/jumbo v3, "MultiWindowSettingFeaturesObserver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "beginObserveMultiWindowSettingsForSingleUser(u"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/android/server/am/multiwindow/MultiWindowSettingFeaturesObserver;->sSecureSettingToTypeMapForUser:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_60

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string/jumbo v3, "MultiWindowSettingFeaturesObserver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "beginObserveMultiWindowSettings : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/am/multiwindow/MultiWindowSettingFeaturesObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v2, v6, p0, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    goto :goto_2c

    :cond_60
    sget-object v3, Lcom/android/server/am/multiwindow/MultiWindowSettingFeaturesObserver;->sSystemSettingToTypeMapForUser:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string/jumbo v3, "MultiWindowSettingFeaturesObserver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "beginObserveMultiWindowSettings : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/am/multiwindow/MultiWindowSettingFeaturesObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v2, v6, p0, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    goto :goto_6a

    :cond_9e
    return-void
.end method

.method public endObserveMultiWindowSettingsForSingleUser([II)V
    .registers 8

    const/4 v1, 0x0

    const-string/jumbo v2, "MultiWindowSettingFeaturesObserver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "endObserveMultiWindowSettingsForSingleUser(u"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/am/multiwindow/MultiWindowSettingFeaturesObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/android/server/am/multiwindow/MultiWindowSettingFeaturesObserver;->beginObserveMultiWindowSettings()V

    array-length v2, p1

    :goto_2f
    if-ge v1, v2, :cond_3e

    aget v0, p1, v1

    if-eqz v0, :cond_37

    if-ne v0, p2, :cond_3a

    :cond_37
    :goto_37
    add-int/lit8 v1, v1, 0x1

    goto :goto_2f

    :cond_3a
    invoke-virtual {p0, v0}, Lcom/android/server/am/multiwindow/MultiWindowSettingFeaturesObserver;->beginObserveMultiWindowSettingsForSingleUser(I)V

    goto :goto_37

    :cond_3e
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;I)V
    .registers 7

    const-string/jumbo v0, "MultiWindowSettingFeaturesObserver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onChange(u"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") : uri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/am/multiwindow/MultiWindowSettingFeaturesObserver;->mController:Lcom/android/server/am/MultiWindowFeaturesController;

    invoke-virtual {v0, p3}, Lcom/android/server/am/MultiWindowFeaturesController;->notifyFeaturesChanged(I)V

    return-void
.end method

.method public populateFeatures(Landroid/os/Bundle;I)I
    .registers 8

    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x0

    sget-object v1, Lcom/android/server/am/multiwindow/MultiWindowSettingFeaturesObserver;->sSecureSettingToTypeMap:Ljava/util/Map;

    invoke-direct {p0, p1, v1, p2}, Lcom/android/server/am/multiwindow/MultiWindowSettingFeaturesObserver;->populate(Landroid/os/Bundle;Ljava/util/Map;I)Z

    move-result v1

    if-eqz v1, :cond_36

    move v1, v2

    :goto_d
    or-int/lit8 v0, v1, 0x0

    sget-object v1, Lcom/android/server/am/multiwindow/MultiWindowSettingFeaturesObserver;->sSystemSettingToTypeMap:Ljava/util/Map;

    invoke-direct {p0, p1, v1, p2}, Lcom/android/server/am/multiwindow/MultiWindowSettingFeaturesObserver;->populate(Landroid/os/Bundle;Ljava/util/Map;I)Z

    move-result v1

    if-eqz v1, :cond_38

    move v1, v2

    :goto_18
    or-int/2addr v0, v1

    sget-object v1, Lcom/android/server/am/multiwindow/MultiWindowSettingFeaturesObserver;->sGlobalSettingToTypeMap:Ljava/util/Map;

    invoke-direct {p0, p1, v1, p2}, Lcom/android/server/am/multiwindow/MultiWindowSettingFeaturesObserver;->populate(Landroid/os/Bundle;Ljava/util/Map;I)Z

    move-result v1

    if-eqz v1, :cond_3a

    :goto_21
    or-int/2addr v0, v2

    sget-object v1, Lcom/android/server/am/multiwindow/MultiWindowSettingFeaturesObserver;->sSecureSettingToTypeMapForUser:Ljava/util/Map;

    invoke-direct {p0, p1, v1, p2}, Lcom/android/server/am/multiwindow/MultiWindowSettingFeaturesObserver;->populate(Landroid/os/Bundle;Ljava/util/Map;I)Z

    move-result v1

    if-eqz v1, :cond_3c

    move v1, v4

    :goto_2b
    or-int/2addr v0, v1

    sget-object v1, Lcom/android/server/am/multiwindow/MultiWindowSettingFeaturesObserver;->sSystemSettingToTypeMapForUser:Ljava/util/Map;

    invoke-direct {p0, p1, v1, p2}, Lcom/android/server/am/multiwindow/MultiWindowSettingFeaturesObserver;->populate(Landroid/os/Bundle;Ljava/util/Map;I)Z

    move-result v1

    if-eqz v1, :cond_3e

    :goto_34
    or-int/2addr v0, v4

    return v0

    :cond_36
    move v1, v3

    goto :goto_d

    :cond_38
    move v1, v3

    goto :goto_18

    :cond_3a
    move v2, v3

    goto :goto_21

    :cond_3c
    move v1, v3

    goto :goto_2b

    :cond_3e
    move v4, v3

    goto :goto_34
.end method
