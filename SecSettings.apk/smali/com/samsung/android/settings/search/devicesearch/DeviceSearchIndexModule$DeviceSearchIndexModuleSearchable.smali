.class public Lcom/samsung/android/settings/search/devicesearch/DeviceSearchIndexModule$DeviceSearchIndexModuleSearchable;
.super Ljava/lang/Object;
.source "DeviceSearchIndexModule.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyfinder/index/api/modules/IndexModuleSearchable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/search/devicesearch/DeviceSearchIndexModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeviceSearchIndexModuleSearchable"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mRealCount:I

.field private mRootMenu:Ljava/lang/String;

.field private mSettingsCategory:Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/category/SearchResultCategory;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/search/devicesearch/DeviceSearchIndexModule$DeviceSearchIndexModuleSearchable;->mContext:Landroid/content/Context;

    return-void
.end method

.method private createResultData(Landroid/database/Cursor;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/settings/search/devicesearch/DeviceSearchIndexModule$DeviceSearchData;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyfinder/index/api/exception/IndexResultException;
        }
    .end annotation

    const/16 v16, 0x0

    const/16 v19, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/16 v19, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/16 v19, 0x8

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const/16 v19, 0x10

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/16 v19, 0xd

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/16 v19, 0xe

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    const/16 v19, 0xf

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/16 v19, 0x12

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    const/16 v19, 0x11

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v15

    const/16 v19, 0x12

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v19, ">"

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v22

    const/16 v18, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_148

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v19, v0

    const/16 v25, 0x1

    move/from16 v0, v19

    move/from16 v1, v25

    if-le v0, v1, :cond_169

    const/16 v19, 0x0

    aget-object v18, v22, v19

    :goto_8f
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x6

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    const-string/jumbo v24, "com.android.settings"

    if-nez v20, :cond_ac

    const/16 v19, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    :cond_ac
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_16d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/search/devicesearch/DeviceSearchIndexModule$DeviceSearchIndexModuleSearchable;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const v25, 0x7f1218c8

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    :goto_c3
    const-string/jumbo v19, "com.google.android.gms"

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_d6

    const-string/jumbo v24, "com.android.settings"

    const v7, 0x7f080676

    :cond_d6
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1, v9, v8}, Lcom/samsung/android/settings/search/devicesearch/DeviceSearchIndexModule$DeviceSearchIndexModuleSearchable;->getTileIconColor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v17

    const/16 v19, 0x4

    move/from16 v0, v19

    if-ne v11, v0, :cond_19e

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "android.resource://"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v25, "/"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v16

    :goto_115
    const/16 v21, 0x0

    if-eqz v15, :cond_13b

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v23

    array-length v0, v15

    move/from16 v19, v0

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v25

    move/from16 v2, v19

    invoke-virtual {v0, v15, v1, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    const/16 v19, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    invoke-virtual/range {v23 .. v23}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v21

    invoke-virtual/range {v23 .. v23}, Landroid/os/Parcel;->recycle()V

    :cond_13b
    new-instance v4, Lcom/samsung/android/settings/search/devicesearch/DeviceSearchIndexModule$DeviceSearchData;

    const/16 v19, 0x0

    invoke-direct/range {v4 .. v19}, Lcom/samsung/android/settings/search/devicesearch/DeviceSearchIndexModule$DeviceSearchData;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;[BLandroid/net/Uri;ILjava/lang/String;Lcom/samsung/android/settings/search/devicesearch/DeviceSearchIndexModule$DeviceSearchData;)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_148
    const-string/jumbo v19, "DeviceSearch"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "already added : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Lcom/samsung/android/settingslib/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_169
    move-object/from16 v18, v10

    goto/16 :goto_8f

    :cond_16d
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/search/devicesearch/DeviceSearchIndexModule$DeviceSearchIndexModuleSearchable;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    const v26, 0x7f1218c8

    invoke-virtual/range {v25 .. v26}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v25, " > "

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_c3

    :cond_19e
    const/16 v16, 0x0

    goto/16 :goto_115
.end method

.method private getContext()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/search/devicesearch/DeviceSearchIndexModule$DeviceSearchIndexModuleSearchable;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private getSettingSearchResult(Ljava/util/ArrayList;)Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/SearchResult;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/settings/search/devicesearch/DeviceSearchIndexModule$DeviceSearchData;",
            ">;)",
            "Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/SearchResult;"
        }
    .end annotation

    new-instance v12, Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/SearchResult;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v12, v2}, Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/SearchResult;-><init>(I)V

    const/4 v11, 0x0

    :goto_a
    :try_start_a
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v11, v2, :cond_9e

    invoke-virtual {p1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/search/devicesearch/DeviceSearchIndexModule$DeviceSearchData;

    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.settings.REQUEST_FINDO_SEARCH_CALL_SETTING_MENU"

    invoke-direct {v4, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/search/devicesearch/DeviceSearchIndexModule$DeviceSearchIndexModuleSearchable;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/samsung/android/settings/search/SecSearchActivity;

    invoke-virtual {v4, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const v2, 0x8000

    invoke-virtual {v4, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string/jumbo v2, "id"

    iget-object v3, v0, Lcom/samsung/android/settings/search/devicesearch/DeviceSearchIndexModule$DeviceSearchData;->mId:Ljava/lang/String;

    invoke-virtual {v4, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x0

    new-instance v1, Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/item/SearchResultSettingsItem;

    iget-wide v2, v0, Lcom/samsung/android/settings/search/devicesearch/DeviceSearchIndexModule$DeviceSearchData;->mObjectId:J

    iget-object v5, v0, Lcom/samsung/android/settings/search/devicesearch/DeviceSearchIndexModule$DeviceSearchData;->mIcon:Landroid/net/Uri;

    iget v6, v0, Lcom/samsung/android/settings/search/devicesearch/DeviceSearchIndexModule$DeviceSearchData;->mIconColor:I

    iget-object v7, v0, Lcom/samsung/android/settings/search/devicesearch/DeviceSearchIndexModule$DeviceSearchData;->mTitle:Ljava/lang/String;

    iget-object v8, v0, Lcom/samsung/android/settings/search/devicesearch/DeviceSearchIndexModule$DeviceSearchData;->mMenuPath:Ljava/lang/String;

    iget-object v9, v0, Lcom/samsung/android/settings/search/devicesearch/DeviceSearchIndexModule$DeviceSearchData;->mSummaryOn:Ljava/lang/String;

    invoke-direct/range {v1 .. v9}, Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/item/SearchResultSettingsItem;-><init>(JLandroid/content/Intent;Landroid/net/Uri;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/settings/search/devicesearch/DeviceSearchIndexModule$DeviceSearchIndexModuleSearchable;->mRealCount:I

    if-ne v2, v11, :cond_7d

    new-instance v2, Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/category/SearchResultCategory;

    iget-object v3, p0, Lcom/samsung/android/settings/search/devicesearch/DeviceSearchIndexModule$DeviceSearchIndexModuleSearchable;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    iget v7, p0, Lcom/samsung/android/settings/search/devicesearch/DeviceSearchIndexModule$DeviceSearchIndexModuleSearchable;->mRealCount:I

    sub-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const v6, 0x7f121622

    invoke-virtual {v3, v6, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/category/SearchResultCategory;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/samsung/android/settings/search/devicesearch/DeviceSearchIndexModule$DeviceSearchIndexModuleSearchable;->mSettingsCategory:Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/category/SearchResultCategory;

    iget-object v2, p0, Lcom/samsung/android/settings/search/devicesearch/DeviceSearchIndexModule$DeviceSearchIndexModuleSearchable;->mSettingsCategory:Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/category/SearchResultCategory;

    invoke-virtual {v12, v2}, Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/SearchResult;->addCategory(Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/category/SearchResultCategory;)V

    :cond_75
    :goto_75
    iget-object v2, p0, Lcom/samsung/android/settings/search/devicesearch/DeviceSearchIndexModule$DeviceSearchIndexModuleSearchable;->mSettingsCategory:Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/category/SearchResultCategory;

    invoke-virtual {v2, v1}, Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/category/SearchResultCategory;->addResultItem(Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/item/SearchResultItem;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_a

    :cond_7d
    iget-object v2, v0, Lcom/samsung/android/settings/search/devicesearch/DeviceSearchIndexModule$DeviceSearchData;->mRootMenu:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/settings/search/devicesearch/DeviceSearchIndexModule$DeviceSearchIndexModuleSearchable;->mRootMenu:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_75

    new-instance v2, Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/category/SearchResultCategory;

    iget-object v3, v0, Lcom/samsung/android/settings/search/devicesearch/DeviceSearchIndexModule$DeviceSearchData;->mRootMenu:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/category/SearchResultCategory;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/samsung/android/settings/search/devicesearch/DeviceSearchIndexModule$DeviceSearchIndexModuleSearchable;->mSettingsCategory:Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/category/SearchResultCategory;

    iget-object v2, v0, Lcom/samsung/android/settings/search/devicesearch/DeviceSearchIndexModule$DeviceSearchData;->mRootMenu:Ljava/lang/String;

    iput-object v2, p0, Lcom/samsung/android/settings/search/devicesearch/DeviceSearchIndexModule$DeviceSearchIndexModuleSearchable;->mRootMenu:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/settings/search/devicesearch/DeviceSearchIndexModule$DeviceSearchIndexModuleSearchable;->mSettingsCategory:Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/category/SearchResultCategory;

    invoke-virtual {v12, v2}, Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/SearchResult;->addCategory(Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/category/SearchResultCategory;)V
    :try_end_99
    .catch Lcom/samsung/android/app/galaxyfinder/index/api/exception/IndexResultException; {:try_start_a .. :try_end_99} :catch_9a

    goto :goto_75

    :catch_9a
    move-exception v10

    invoke-virtual {v10}, Lcom/samsung/android/app/galaxyfinder/index/api/exception/IndexResultException;->printStackTrace()V

    :cond_9e
    return-object v12
.end method

.method private getTileIconColor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 7

    iget-object v1, p0, Lcom/samsung/android/settings/search/devicesearch/DeviceSearchIndexModule$DeviceSearchIndexModuleSearchable;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060099

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v1

    if-eqz v1, :cond_21

    iget-object v1, p0, Lcom/samsung/android/settings/search/devicesearch/DeviceSearchIndexModule$DeviceSearchIndexModuleSearchable;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isSupportGraceUXHeroView(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_22

    iget-object v1, p0, Lcom/samsung/android/settings/search/devicesearch/DeviceSearchIndexModule$DeviceSearchIndexModuleSearchable;->mContext:Landroid/content/Context;

    invoke-static {v1, p3}, Lcom/android/settings/Utils;->getTileIconColor(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    :cond_21
    :goto_21
    return v0

    :cond_22
    iget-object v1, p0, Lcom/samsung/android/settings/search/devicesearch/DeviceSearchIndexModule$DeviceSearchIndexModuleSearchable;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    iget-object v1, p0, Lcom/samsung/android/settings/search/devicesearch/DeviceSearchIndexModule$DeviceSearchIndexModuleSearchable;->mContext:Landroid/content/Context;

    invoke-static {v1, p2}, Lcom/android/settings/Utils;->getOutsideTileIconColor(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    goto :goto_21
.end method


# virtual methods
.method public getLegacySearchActivity()Landroid/content/ComponentName;
    .registers 4
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/samsung/android/settings/search/devicesearch/DeviceSearchIndexModule$DeviceSearchIndexModuleSearchable;->mContext:Landroid/content/Context;

    const-class v2, Lcom/samsung/android/settings/sfinderconnect/SFinderConnectProvider;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method public getSearchResult(Ljava/lang/String;I)Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/SearchResult;
    .registers 14

    const/4 v8, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :try_start_c
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/search/devicesearch/DeviceSearchIndexModule$DeviceSearchIndexModuleSearchable;->getSearchReultCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_24

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_15} :catch_51
    .catchall {:try_start_c .. :try_end_15} :catchall_a5

    :cond_15
    :try_start_15
    invoke-direct {p0, v1, v0, v6}, Lcom/samsung/android/settings/search/devicesearch/DeviceSearchIndexModule$DeviceSearchIndexModuleSearchable;->createResultData(Landroid/database/Cursor;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_18
    .catch Lcom/samsung/android/app/galaxyfinder/index/api/exception/IndexResultException; {:try_start_15 .. :try_end_18} :catch_4c
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_18} :catch_51
    .catchall {:try_start_15 .. :try_end_18} :catchall_a5

    :goto_18
    :try_start_18
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-nez v7, :cond_15

    const/4 v7, 0x0

    iput-object v7, p0, Lcom/samsung/android/settings/search/devicesearch/DeviceSearchIndexModule$DeviceSearchIndexModuleSearchable;->mRootMenu:Ljava/lang/String;

    const/4 v7, 0x0

    iput-object v7, p0, Lcom/samsung/android/settings/search/devicesearch/DeviceSearchIndexModule$DeviceSearchIndexModuleSearchable;->mSettingsCategory:Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/category/SearchResultCategory;
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_24} :catch_51
    .catchall {:try_start_18 .. :try_end_24} :catchall_a5

    :cond_24
    if-eqz v1, :cond_29

    :try_start_26
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_29} :catch_7b
    .catch Ljava/lang/IllegalStateException; {:try_start_26 .. :try_end_29} :catch_2c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_26 .. :try_end_29} :catch_5f
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_26 .. :try_end_29} :catch_88

    :cond_29
    :goto_29
    if-eqz v8, :cond_47

    :try_start_2b
    throw v8
    :try_end_2c
    .catch Ljava/lang/IllegalStateException; {:try_start_2b .. :try_end_2c} :catch_2c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2b .. :try_end_2c} :catch_5f
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_2b .. :try_end_2c} :catch_88

    :catch_2c
    move-exception v5

    const-string/jumbo v7, "DeviceSearchIndexModuleSearchable"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "IllegalStateException"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/settingslib/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_47
    :goto_47
    invoke-direct {p0, v6}, Lcom/samsung/android/settings/search/devicesearch/DeviceSearchIndexModule$DeviceSearchIndexModuleSearchable;->getSettingSearchResult(Ljava/util/ArrayList;)Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/SearchResult;

    move-result-object v7

    return-object v7

    :catch_4c
    move-exception v4

    :try_start_4d
    invoke-virtual {v4}, Lcom/samsung/android/app/galaxyfinder/index/api/exception/IndexResultException;->printStackTrace()V
    :try_end_50
    .catch Ljava/lang/Throwable; {:try_start_4d .. :try_end_50} :catch_51
    .catchall {:try_start_4d .. :try_end_50} :catchall_a5

    goto :goto_18

    :catch_51
    move-exception v7

    :try_start_52
    throw v7
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_53

    :catchall_53
    move-exception v8

    move-object v10, v8

    move-object v8, v7

    move-object v7, v10

    :goto_57
    if-eqz v1, :cond_5c

    :try_start_59
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_5c
    .catch Ljava/lang/Throwable; {:try_start_59 .. :try_end_5c} :catch_7d
    .catch Ljava/lang/IllegalStateException; {:try_start_59 .. :try_end_5c} :catch_2c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_59 .. :try_end_5c} :catch_5f
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_59 .. :try_end_5c} :catch_88

    :cond_5c
    :goto_5c
    if-eqz v8, :cond_a4

    :try_start_5e
    throw v8
    :try_end_5f
    .catch Ljava/lang/IllegalStateException; {:try_start_5e .. :try_end_5f} :catch_2c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5e .. :try_end_5f} :catch_5f
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_5e .. :try_end_5f} :catch_88

    :catch_5f
    move-exception v3

    const-string/jumbo v7, "DeviceSearchIndexModuleSearchable"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "SQLiteException"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/settingslib/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_47

    :catch_7b
    move-exception v8

    goto :goto_29

    :catch_7d
    move-exception v9

    if-nez v8, :cond_82

    move-object v8, v9

    goto :goto_5c

    :cond_82
    if-eq v8, v9, :cond_5c

    :try_start_84
    invoke-virtual {v8, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_87
    .catch Ljava/lang/IllegalStateException; {:try_start_84 .. :try_end_87} :catch_2c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_84 .. :try_end_87} :catch_5f
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_84 .. :try_end_87} :catch_88

    goto :goto_5c

    :catch_88
    move-exception v2

    const-string/jumbo v7, "DeviceSearchIndexModuleSearchable"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "CursorIndexOutOfBoundsException"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/settingslib/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_47

    :cond_a4
    :try_start_a4
    throw v7
    :try_end_a5
    .catch Ljava/lang/IllegalStateException; {:try_start_a4 .. :try_end_a5} :catch_2c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a4 .. :try_end_a5} :catch_5f
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_a4 .. :try_end_a5} :catch_88

    :catchall_a5
    move-exception v7

    goto :goto_57
.end method

.method public getSearchReultCursor(Ljava/lang/String;)Landroid/database/Cursor;
    .registers 15

    const/4 v12, 0x0

    iget-object v11, p0, Lcom/samsung/android/settings/search/devicesearch/DeviceSearchIndexModule$DeviceSearchIndexModuleSearchable;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/samsung/android/settings/search/model/SecIndexModel;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/search/model/SecIndexModel;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/android/settings/search/devicesearch/DeviceSearchIndexModule$DeviceSearchIndexModuleSearchable;->mContext:Landroid/content/Context;

    invoke-static {v11, p1}, Lcom/samsung/android/settings/search/model/SecSettingSearch;->getDataRelatedKeywords(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    const/4 v6, 0x0

    if-eqz v9, :cond_14

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v6

    :cond_14
    const/4 v1, 0x2

    const/4 v0, 0x2

    mul-int/lit8 v11, v6, 0x2

    add-int/lit8 v2, v11, 0x4

    new-array v5, v2, [Landroid/database/Cursor;

    const/4 v3, 0x0

    const/4 v3, 0x1

    invoke-virtual {v10, p1}, Lcom/samsung/android/settings/search/model/SecIndexModel;->searchTile(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    aput-object v11, v5, v12

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v10, p1}, Lcom/samsung/android/settings/search/model/SecIndexModel;->searchSubMenu(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    aput-object v11, v5, v3

    add-int/lit8 v3, v4, 0x1

    invoke-virtual {v10, p1}, Lcom/samsung/android/settings/search/model/SecIndexModel;->searchTileByKeyword(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    aput-object v11, v5, v4

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v10, p1}, Lcom/samsung/android/settings/search/model/SecIndexModel;->searchSubMenuByKeyword(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    aput-object v11, v5, v3

    const/4 v7, 0x0

    move v8, v7

    :goto_3e
    if-ge v4, v2, :cond_55

    if-ge v8, v6, :cond_55

    add-int/lit8 v3, v4, 0x1

    add-int/lit8 v7, v8, 0x1

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/search/model/SecIndexModel;->searchSubMenu(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    aput-object v11, v5, v4

    move v8, v7

    move v4, v3

    goto :goto_3e

    :cond_55
    aget-object v11, v5, v12

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v11

    const/4 v12, 0x1

    aget-object v12, v5, v12

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v12

    add-int/2addr v11, v12

    iput v11, p0, Lcom/samsung/android/settings/search/devicesearch/DeviceSearchIndexModule$DeviceSearchIndexModuleSearchable;->mRealCount:I

    new-instance v11, Landroid/database/MergeCursor;

    invoke-direct {v11, v5}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    return-object v11
.end method

.method public makeAppLaunchIntent()Landroid/content/Intent;
    .registers 5
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/samsung/android/settings/search/devicesearch/DeviceSearchIndexModule$DeviceSearchIndexModuleSearchable;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/settings/Settings;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {v1}, Landroid/content/Intent;->makeMainActivity(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    const v1, 0x8000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method public makeInAppSearchIntent()Landroid/content/Intent;
    .registers 5
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/samsung/android/settings/search/devicesearch/DeviceSearchIndexModule$DeviceSearchIndexModuleSearchable;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/settings/Settings;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {v1}, Landroid/content/Intent;->makeMainActivity(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    const v1, 0x8000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    return-object v0
.end method
