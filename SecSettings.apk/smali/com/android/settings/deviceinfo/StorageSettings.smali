.class public Lcom/android/settings/deviceinfo/StorageSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "StorageSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/deviceinfo/StorageSettings$1;,
        Lcom/android/settings/deviceinfo/StorageSettings$2;,
        Lcom/android/settings/deviceinfo/StorageSettings$3;,
        Lcom/android/settings/deviceinfo/StorageSettings$4;,
        Lcom/android/settings/deviceinfo/StorageSettings$DiskInitFragment;,
        Lcom/android/settings/deviceinfo/StorageSettings$MountTask;,
        Lcom/android/settings/deviceinfo/StorageSettings$SummaryProvider;,
        Lcom/android/settings/deviceinfo/StorageSettings$UnmountTask;,
        Lcom/android/settings/deviceinfo/StorageSettings$VolumeUnmountedFragment;
    }
.end annotation


# static fields
.field static final COLOR_PRIVATE:[I

.field static final COLOR_PUBLIC:I

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

.field private static mIsCallPrivteVolume:Z

.field private static sTotalInternalStorage:J


# instance fields
.field private isPreferenceTreeClick:Z

.field mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mExternalCategory:Landroid/support/v7/preference/PreferenceCategory;

.field private mInternalCategory:Landroid/support/v7/preference/PreferenceCategory;

.field private mInternalSummary:Lcom/android/settings/deviceinfo/StorageSummaryPreference;

.field private final mStorageListener:Landroid/os/storage/StorageEventListener;

.field private mStorageManager:Landroid/os/storage/StorageManager;


# direct methods
.method static synthetic -get0(Lcom/android/settings/deviceinfo/StorageSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -set0(Z)Z
    .registers 1

    sput-boolean p0, Lcom/android/settings/deviceinfo/StorageSettings;->mIsCallPrivteVolume:Z

    return p0
.end method

.method static synthetic -wrap0(Landroid/os/storage/VolumeInfo;)Z
    .registers 2

    invoke-static {p0}, Lcom/android/settings/deviceinfo/StorageSettings;->isInteresting(Landroid/os/storage/VolumeInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/settings/deviceinfo/StorageSettings;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageSettings;->refresh()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/settings/deviceinfo/StorageSettings;Ljava/lang/String;IILandroid/os/Bundle;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/deviceinfo/StorageSettings;->startFragmentForBixby(Ljava/lang/String;IILandroid/os/Bundle;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 4

    const/4 v3, 0x0

    const-string/jumbo v0, "#ff9e9e9e"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/settings/deviceinfo/StorageSettings;->COLOR_PUBLIC:I

    const/4 v0, 0x5

    new-array v0, v0, [I

    const-string/jumbo v1, "#ff26a69a"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    aput v1, v0, v3

    const-string/jumbo v1, "#ffab47bc"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    const-string/jumbo v1, "#fff2a600"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x2

    aput v1, v0, v2

    const-string/jumbo v1, "#ffec407a"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x3

    aput v1, v0, v2

    const-string/jumbo v1, "#ffc0ca33"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x4

    aput v1, v0, v2

    sput-object v0, Lcom/android/settings/deviceinfo/StorageSettings;->COLOR_PRIVATE:[I

    sput-boolean v3, Lcom/android/settings/deviceinfo/StorageSettings;->mIsCallPrivteVolume:Z

    new-instance v0, Lcom/android/settings/deviceinfo/StorageSettings$2;

    invoke-direct {v0}, Lcom/android/settings/deviceinfo/StorageSettings$2;-><init>()V

    sput-object v0, Lcom/android/settings/deviceinfo/StorageSettings;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

    new-instance v0, Lcom/android/settings/deviceinfo/StorageSettings$3;

    invoke-direct {v0}, Lcom/android/settings/deviceinfo/StorageSettings$3;-><init>()V

    sput-object v0, Lcom/android/settings/deviceinfo/StorageSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/deviceinfo/StorageSettings;->isPreferenceTreeClick:Z

    new-instance v0, Lcom/android/settings/deviceinfo/StorageSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/StorageSettings$1;-><init>(Lcom/android/settings/deviceinfo/StorageSettings;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageSettings;->mStorageListener:Landroid/os/storage/StorageEventListener;

    new-instance v0, Lcom/android/settings/deviceinfo/StorageSettings$4;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/StorageSettings$4;-><init>(Lcom/android/settings/deviceinfo/StorageSettings;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    return-void
.end method

.method private static isInteresting(Landroid/os/storage/VolumeInfo;)Z
    .registers 2

    invoke-virtual {p0}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_c

    const/4 v0, 0x0

    return v0

    :pswitch_9
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_9
        :pswitch_9
    .end packed-switch
.end method

.method private declared-synchronized refresh()V
    .registers 41

    monitor-enter p0

    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/StorageSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/StorageSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/deviceinfo/StorageSettings;->mInternalCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v2}, Landroid/support/v7/preference/PreferenceCategory;->removeAll()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/deviceinfo/StorageSettings;->mExternalCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v2}, Landroid/support/v7/preference/PreferenceCategory;->removeAll()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/deviceinfo/StorageSettings;->mInternalCategory:Landroid/support/v7/preference/PreferenceCategory;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/deviceinfo/StorageSettings;->mInternalSummary:Lcom/android/settings/deviceinfo/StorageSummaryPreference;

    invoke-virtual {v2, v5}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    const/16 v28, 0x0

    const-wide/16 v32, 0x0

    const-wide/16 v30, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/deviceinfo/StorageSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v2}, Landroid/os/storage/StorageManager;->getVolumes()Ljava/util/List;

    move-result-object v39

    invoke-static {}, Landroid/os/storage/VolumeInfo;->getDescriptionComparator()Ljava/util/Comparator;

    move-result-object v2

    move-object/from16 v0, v39

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface/range {v39 .. v39}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v38

    move/from16 v29, v28

    :goto_42
    invoke-interface/range {v38 .. v38}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c8

    invoke-interface/range {v38 .. v38}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/storage/VolumeInfo;

    invoke-virtual {v4}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v2

    const/4 v5, 0x1

    if-ne v2, v5, :cond_a0

    sget-wide v8, Lcom/android/settings/deviceinfo/StorageSettings;->sTotalInternalStorage:J

    invoke-static {v4, v8, v9}, Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;->getTotalSize(Landroid/os/storage/VolumeInfo;J)J

    move-result-wide v6

    sget-object v2, Lcom/android/settings/deviceinfo/StorageSettings;->COLOR_PRIVATE:[I

    add-int/lit8 v28, v29, 0x1

    sget-object v5, Lcom/android/settings/deviceinfo/StorageSettings;->COLOR_PRIVATE:[I

    array-length v5, v5

    rem-int v5, v29, v5

    aget v16, v2, v5

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings/deviceinfo/StorageSettings;->mInternalCategory:Landroid/support/v7/preference/PreferenceCategory;

    new-instance v2, Lcom/android/settings/deviceinfo/StorageVolumePreference;

    sget v5, Lcom/android/settings/deviceinfo/StorageSettings;->COLOR_PUBLIC:I

    invoke-direct/range {v2 .. v7}, Lcom/android/settings/deviceinfo/StorageVolumePreference;-><init>(Landroid/content/Context;Landroid/os/storage/VolumeInfo;IJ)V

    invoke-virtual {v8, v2}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    invoke-virtual {v4}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v2

    if-eqz v2, :cond_9d

    invoke-virtual {v4}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v24

    const-string/jumbo v2, "private"

    invoke-virtual {v4}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_93

    invoke-static {v4}, Lcom/samsung/android/settings/deviceinfo/StorageUtils;->getTotalSize(Landroid/os/storage/VolumeInfo;)J

    move-result-wide v24

    :cond_93
    invoke-static {v4}, Lcom/samsung/android/settings/deviceinfo/StorageUtils;->getAvailableSize(Landroid/os/storage/VolumeInfo;)J

    move-result-wide v8

    sub-long v8, v24, v8

    add-long v32, v32, v8

    add-long v30, v30, v24

    :cond_9d
    :goto_9d
    move/from16 v29, v28

    goto :goto_42

    :cond_a0
    invoke-virtual {v4}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v2

    if-nez v2, :cond_306

    const-string/jumbo v2, "privatemode"

    invoke-virtual {v4}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_306

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/deviceinfo/StorageSettings;->mExternalCategory:Landroid/support/v7/preference/PreferenceCategory;

    new-instance v8, Lcom/android/settings/deviceinfo/StorageVolumePreference;

    sget v11, Lcom/android/settings/deviceinfo/StorageSettings;->COLOR_PUBLIC:I

    const-wide/16 v12, 0x0

    move-object v9, v3

    move-object v10, v4

    invoke-direct/range {v8 .. v13}, Lcom/android/settings/deviceinfo/StorageVolumePreference;-><init>(Landroid/content/Context;Landroid/os/storage/VolumeInfo;IJ)V

    invoke-virtual {v2, v8}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    move/from16 v28, v29

    goto :goto_9d

    :cond_c8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/deviceinfo/StorageSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v2}, Landroid/os/storage/StorageManager;->getVolumeRecords()Ljava/util/List;

    move-result-object v36

    invoke-interface/range {v36 .. v36}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v35

    :cond_d4
    :goto_d4
    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_13b

    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/os/storage/VolumeRecord;

    invoke-virtual/range {v34 .. v34}, Landroid/os/storage/VolumeRecord;->getType()I

    move-result v2

    const/4 v5, 0x1

    if-ne v2, v5, :cond_d4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/deviceinfo/StorageSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual/range {v34 .. v34}, Landroid/os/storage/VolumeRecord;->getFsUuid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/os/storage/StorageManager;->findVolumeByUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v2

    if-nez v2, :cond_d4

    const v2, 0x7f0805f4

    invoke-virtual {v3, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    sget v2, Lcom/android/settings/deviceinfo/StorageSettings;->COLOR_PUBLIC:I

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    new-instance v27, Landroid/support/v7/preference/Preference;

    move-object/from16 v0, v27

    invoke-direct {v0, v3}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    invoke-virtual/range {v34 .. v34}, Landroid/os/storage/VolumeRecord;->getFsUuid()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/Preference;->setKey(Ljava/lang/String;)V

    invoke-virtual/range {v34 .. v34}, Landroid/os/storage/VolumeRecord;->getNickname()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    const v2, 0x1040335

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    move-object/from16 v0, v27

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/deviceinfo/StorageSettings;->mInternalCategory:Landroid/support/v7/preference/PreferenceCategory;

    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z
    :try_end_137
    .catchall {:try_start_1 .. :try_end_137} :catchall_138

    goto :goto_d4

    :catchall_138
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_13b
    :try_start_13b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/deviceinfo/StorageSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v2}, Landroid/os/storage/StorageManager;->getDisks()Ljava/util/List;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_147
    :goto_147
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_196

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/os/storage/DiskInfo;

    move-object/from16 v0, v17

    iget v2, v0, Landroid/os/storage/DiskInfo;->volumeCount:I

    if-nez v2, :cond_147

    move-object/from16 v0, v17

    iget-wide v8, v0, Landroid/os/storage/DiskInfo;->size:J

    const-wide/16 v12, 0x0

    cmp-long v2, v8, v12

    if-lez v2, :cond_147

    new-instance v27, Landroid/support/v7/preference/Preference;

    move-object/from16 v0, v27

    invoke-direct {v0, v3}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    invoke-virtual/range {v17 .. v17}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/Preference;->setKey(Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v17}, Landroid/os/storage/DiskInfo;->getDescription()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    const v2, 0x104033b

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    const v2, 0x7f0802ef

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/Preference;->setIcon(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/deviceinfo/StorageSettings;->mExternalCategory:Landroid/support/v7/preference/PreferenceCategory;

    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_147

    :cond_196
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/StorageSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v5, 0x0

    move-wide/from16 v0, v32

    invoke-static {v2, v0, v1, v5}, Lcom/samsung/android/settings/deviceinfo/SecFormatter;->formatBytes(Landroid/content/res/Resources;JI)Landroid/text/format/Formatter$BytesResult;

    move-result-object v37

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/deviceinfo/StorageSettings;->mInternalSummary:Lcom/android/settings/deviceinfo/StorageSummaryPreference;

    const v5, 0x7f121abc

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/settings/deviceinfo/StorageSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/CharSequence;

    move-object/from16 v0, v37

    iget-object v9, v0, Landroid/text/format/Formatter$BytesResult;->value:Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v9, v8, v11

    move-object/from16 v0, v37

    iget-object v9, v0, Landroid/text/format/Formatter$BytesResult;->units:Ljava/lang/String;

    const/4 v11, 0x1

    aput-object v9, v8, v11

    invoke-static {v5, v8}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/android/settings/deviceinfo/StorageSummaryPreference;->setTitle(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/deviceinfo/StorageSettings;->mInternalSummary:Lcom/android/settings/deviceinfo/StorageSummaryPreference;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    move-wide/from16 v0, v30

    invoke-static {v3, v0, v1}, Lcom/samsung/android/settings/deviceinfo/SecFormatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v5, v9

    const v8, 0x7f121acc

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v5}, Lcom/android/settings/deviceinfo/StorageSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/android/settings/deviceinfo/StorageSummaryPreference;->setSummary(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/deviceinfo/StorageSettings;->mInternalCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v2}, Landroid/support/v7/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v2

    if-lez v2, :cond_1f7

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/StorageSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/deviceinfo/StorageSettings;->mInternalCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v2, v5}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    :cond_1f7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/deviceinfo/StorageSettings;->mExternalCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v2}, Landroid/support/v7/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v2

    if-lez v2, :cond_20c

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/StorageSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/deviceinfo/StorageSettings;->mExternalCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v2, v5}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    :cond_20c
    invoke-static {}, Lcom/android/settings/Utils;->isSupportBixby()Z

    move-result v2

    if-eqz v2, :cond_21e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/deviceinfo/StorageSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isRuleRunning()Z
    :try_end_219
    .catchall {:try_start_13b .. :try_end_219} :catchall_138

    move-result v2

    if-eqz v2, :cond_21e

    monitor-exit p0

    return-void

    :cond_21e
    :try_start_21e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/deviceinfo/StorageSettings;->mInternalCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v2}, Landroid/support/v7/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v2

    const/4 v5, 0x2

    if-ne v2, v5, :cond_239

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/deviceinfo/StorageSettings;->mExternalCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v2}, Landroid/support/v7/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v2

    if-nez v2, :cond_239

    sget-boolean v2, Lcom/android/settings/deviceinfo/StorageSettings;->mIsCallPrivteVolume:Z

    xor-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_23f

    :cond_239
    invoke-static {v3}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2d0

    :cond_23f
    const/16 v23, 0x1

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_259

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/StorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    instance-of v2, v2, Lcom/android/settings/SettingsActivity;

    if-eqz v2, :cond_259

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/StorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v2}, Lcom/android/settings/SettingsActivity;->onIsHidingHeaders()Z

    move-result v23

    :cond_259
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/settings/deviceinfo/StorageSettings;->mIsCallPrivteVolume:Z

    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "android.os.storage.extra.VOLUME_ID"

    const-string/jumbo v5, "private"

    invoke-virtual {v10, v2, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/StorageSettings;->getIntent()Landroid/content/Intent;

    move-result-object v21

    const-string/jumbo v2, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->getSalesCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d2

    if-eqz v21, :cond_2d2

    const-string/jumbo v2, "relative_link"

    const/4 v5, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2d2

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2d2

    new-instance v22, Landroid/content/Intent;

    invoke-direct/range {v22 .. v22}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.android.settings"

    const-string/jumbo v5, "com.android.settings.Settings$StorageDashboardRelativeSettingsActivity"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "android.os.storage.extra.VOLUME_ID"

    const-string/jumbo v5, "private"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "relative_link"

    const/4 v5, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StorageSettings;->startActivity(Landroid/content/Intent;)V

    :goto_2bc
    if-eqz v23, :cond_2d0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/StorageSettings;->finish()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/StorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    instance-of v2, v2, Lcom/android/settings/Settings$StorageDashboardActivity;

    if-eqz v2, :cond_2d0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/StorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V
    :try_end_2d0
    .catchall {:try_start_21e .. :try_end_2d0} :catchall_138

    :cond_2d0
    monitor-exit p0

    return-void

    :cond_2d2
    if-nez v23, :cond_2db

    :try_start_2d4
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/StorageSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->popBackStack()V

    :cond_2db
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/StorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const-class v2, Lcom/android/settings/deviceinfo/StorageDashboardFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/StorageSettings;->getMetricsCategory()I

    move-result v15

    const/4 v11, 0x0

    const v12, 0x7f121ab8

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v8 .. v15}, Lcom/android/settings/Utils;->onBuildStartFragmentIntent(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ILjava/lang/CharSequence;ZI)Landroid/content/Intent;

    move-result-object v22

    const-string/jumbo v2, "show_drawer_menu"

    const/4 v5, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/StorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_305
    .catchall {:try_start_2d4 .. :try_end_305} :catchall_138

    goto :goto_2bc

    :cond_306
    move/from16 v28, v29

    goto/16 :goto_9d
.end method

.method private startFragmentForBixby(Ljava/lang/String;IILandroid/os/Bundle;)V
    .registers 11

    move-object v0, p0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/deviceinfo/StorageSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    return-void
.end method


# virtual methods
.method protected getHelpResource()I
    .registers 2

    const v0, 0x7f120d03

    return v0
.end method

.method public getMetricsCategory()I
    .registers 2

    const/16 v0, 0x2a

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 8

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-class v1, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    iput-object v1, p0, Lcom/android/settings/deviceinfo/StorageSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageSettings;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v1, v2}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    sget-wide v2, Lcom/android/settings/deviceinfo/StorageSettings;->sTotalInternalStorage:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gtz v1, :cond_28

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v1}, Landroid/os/storage/StorageManager;->getPrimaryStorageSize()J

    move-result-wide v2

    sput-wide v2, Lcom/android/settings/deviceinfo/StorageSettings;->sTotalInternalStorage:J

    :cond_28
    const v1, 0x7f150052

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/StorageSettings;->addPreferencesFromResource(I)V

    const-string/jumbo v1, "storage_internal"

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/StorageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v1, p0, Lcom/android/settings/deviceinfo/StorageSettings;->mInternalCategory:Landroid/support/v7/preference/PreferenceCategory;

    const-string/jumbo v1, "storage_external"

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/StorageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v1, p0, Lcom/android/settings/deviceinfo/StorageSettings;->mExternalCategory:Landroid/support/v7/preference/PreferenceCategory;

    new-instance v1, Lcom/android/settings/deviceinfo/StorageSummaryPreference;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/deviceinfo/StorageSummaryPreference;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/deviceinfo/StorageSettings;->mInternalSummary:Lcom/android/settings/deviceinfo/StorageSummaryPreference;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/StorageSettings;->setHasOptionsMenu(Z)V

    new-instance v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v1, p0, Lcom/android/settings/deviceinfo/StorageSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-void
.end method

.method public onPause()V
    .registers 3

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageSettings;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "StorageSettings"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .registers 12

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v9, 0x1

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v7

    instance-of v0, p1, Lcom/android/settings/deviceinfo/StorageVolumePreference;

    if-eqz v0, :cond_df

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v7}, Landroid/os/storage/StorageManager;->findVolumeById(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v8

    if-nez v8, :cond_14

    return v4

    :cond_14
    invoke-virtual {v8}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v0

    if-nez v0, :cond_50

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v1, "volume_unmounted"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v6

    check-cast v6, Lcom/android/settings/deviceinfo/StorageSettings$VolumeUnmountedFragment;

    if-eqz v6, :cond_48

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_48

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_48

    const-string/jumbo v0, "StorageSettings"

    const-string/jumbo v1, "Close already open dialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6}, Lcom/android/settings/deviceinfo/StorageSettings$VolumeUnmountedFragment;->dismiss()V

    const/4 v6, 0x0

    :cond_48
    invoke-virtual {v8}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/deviceinfo/StorageSettings$VolumeUnmountedFragment;->show(Landroid/app/Fragment;Ljava/lang/String;)V

    return v9

    :cond_50
    invoke-virtual {v8}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_62

    invoke-virtual {v8}, Landroid/os/storage/VolumeInfo;->getDiskId()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f121a8b

    invoke-static {p0, v1, v0}, Lcom/android/settings/deviceinfo/StorageSettings$DiskInitFragment;->show(Landroid/app/Fragment;ILjava/lang/String;)V

    return v9

    :cond_62
    invoke-virtual {v8}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v0

    if-eq v0, v9, :cond_6f

    invoke-virtual {v8}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_70

    :cond_6f
    return v9

    :cond_70
    invoke-virtual {v8}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v0

    if-ne v0, v9, :cond_b6

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "android.os.storage.extra.VOLUME_ID"

    invoke-virtual {v8}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "private"

    invoke-virtual {v8}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a1

    const-class v0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f121ab8

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/deviceinfo/StorageSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    :goto_a0
    return v9

    :cond_a1
    sget-wide v0, Lcom/android/settings/deviceinfo/StorageSettings;->sTotalInternalStorage:J

    invoke-static {v8, v0, v1}, Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;->getTotalSize(Landroid/os/storage/VolumeInfo;J)J

    move-result-wide v0

    invoke-static {v5, v0, v1}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->setVolumeSize(Landroid/os/Bundle;J)V

    const-class v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/deviceinfo/StorageSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    goto :goto_a0

    :cond_b6
    invoke-virtual {v8}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v0

    if-nez v0, :cond_109

    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/StorageSettings;->isPreferenceTreeClick:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_109

    iput-boolean v9, p0, Lcom/android/settings/deviceinfo/StorageSettings;->isPreferenceTreeClick:Z

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "android.os.storage.extra.VOLUME_ID"

    invoke-virtual {v8}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-class v0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/deviceinfo/StorageSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    return v9

    :cond_df
    const-string/jumbo v0, "disk:"

    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ef

    const v0, 0x7f121a8d

    invoke-static {p0, v0, v7}, Lcom/android/settings/deviceinfo/StorageSettings$DiskInitFragment;->show(Landroid/app/Fragment;ILjava/lang/String;)V

    return v9

    :cond_ef
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "android.os.storage.extra.FS_UUID"

    invoke-virtual {v5, v0, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-class v0, Lcom/android/settings/deviceinfo/PrivateVolumeForget;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f121aa1

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/deviceinfo/StorageSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    return v9

    :cond_109
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .registers 5

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    iput-boolean v2, p0, Lcom/android/settings/deviceinfo/StorageSettings;->isPreferenceTreeClick:Z

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageSettings;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    sput-boolean v2, Lcom/android/settings/deviceinfo/StorageSettings;->mIsCallPrivteVolume:Z

    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageSettings;->refresh()V

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v3, "StorageSettings"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    return-void
.end method
